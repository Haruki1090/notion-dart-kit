import 'dart:async';

/// Priority levels for retry tasks.
enum RetryPriority { high, normal, low }

int _priorityScore(RetryPriority p) =>
    p == RetryPriority.high ? 2 : (p == RetryPriority.normal ? 1 : 0);

/// Abstract persistence layer for the retry queue.
///
/// Note: Persisting executable closures is not supported. If persistence is
/// required, persist only task descriptors and rehydrate executors on load.
abstract class RetryQueueStorage {
  Future<void> save(List<RetryQueueEntry> entries);
  Future<List<RetryQueueEntry>> load();
}

/// In-memory storage (default). Provides no persistence across process restarts.
class InMemoryRetryQueueStorage implements RetryQueueStorage {
  List<RetryQueueEntry> _snapshot = const [];

  @override
  Future<void> save(List<RetryQueueEntry> entries) async {
    _snapshot =
        entries.map((e) => e.copyForPersistence()).toList(growable: false);
  }

  @override
  Future<List<RetryQueueEntry>> load() async =>
      // Executable closures are not persisted; caller must reattach executors.
      _snapshot.map((e) => e.copyForPersistence()).toList(growable: false);
}

/// A function that executes the task.
typedef RetryExecutor<T> = Future<T> Function();

/// A function that decides whether an error is retryable for this task.
typedef IsRetryable = bool Function(Object error);

/// Optional extractor for Retry-After duration from an error.
typedef GetRetryAfter = Duration? Function(Object error);

/// Internal queue entry with scheduling metadata.
class RetryQueueEntry {
  RetryQueueEntry({
    required this.id,
    required this.priority,
    required this.maxRetries,
    required this.initialBackoff,
    required this.maxBackoff,
    required this.isRetryable,
    required this.getRetryAfter,
    this.executor,
    DateTime? scheduledAt,
    this.attempt = 0,
    this.persistKey,
    this.payload,
  }) : scheduledAt = scheduledAt ?? DateTime.now();

  final String id;
  final RetryPriority priority;
  final int maxRetries;
  final Duration initialBackoff;
  final Duration maxBackoff;
  final IsRetryable isRetryable;
  final GetRetryAfter? getRetryAfter;
  RetryExecutor<dynamic>? executor; // nullable when loaded from storage
  final String? persistKey;
  final Map<String, dynamic>? payload;

  int attempt;
  DateTime scheduledAt;

  RetryQueueEntry copyForPersistence() => RetryQueueEntry(
        id: id,
        priority: priority,
        maxRetries: maxRetries,
        initialBackoff: initialBackoff,
        maxBackoff: maxBackoff,
        isRetryable: isRetryable,
        getRetryAfter: getRetryAfter,
        scheduledAt: scheduledAt,
        attempt: attempt,
        persistKey: persistKey,
        payload: payload == null ? null : Map<String, dynamic>.from(payload!),
      );
}

/// Retry queue with priority scheduling and exponential backoff.
class RetryQueue {
  RetryQueue({
    this.maxConcurrent = 1,
    this.defaultMaxRetries = 5,
    this.defaultInitialBackoff = const Duration(seconds: 2),
    this.defaultMaxBackoff = const Duration(minutes: 1),
    RetryQueueStorage? storage,
  }) : _storage = storage ?? InMemoryRetryQueueStorage();

  final int maxConcurrent;
  final int defaultMaxRetries;
  final Duration defaultInitialBackoff;
  final Duration defaultMaxBackoff;
  final RetryQueueStorage _storage;

  final List<RetryQueueEntry> _entries = <RetryQueueEntry>[];
  int _running = 0;
  Timer? _tickTimer;
  bool _started = false;
  static const Duration _tickInterval = Duration(milliseconds: 100);

  /// Start background processing.
  void start() {
    if (_started) {
      return;
    }
    _started = true;
    _scheduleTick();
  }

  /// Stop background processing.
  void stop() {
    _started = false;
    _tickTimer?.cancel();
    _tickTimer = null;
  }

  /// Close and release resources.
  void close() {
    stop();
  }

  /// Enqueue a task for retry processing.
  void enqueue({
    required String id,
    required RetryExecutor<dynamic> executor,
    required IsRetryable isRetryable,
    GetRetryAfter? getRetryAfter,
    RetryPriority priority = RetryPriority.normal,
    int? maxRetries,
    Duration? initialBackoff,
    Duration? maxBackoff,
    String? persistKey,
    Map<String, dynamic>? payload,
  }) {
    final entry = RetryQueueEntry(
      id: id,
      priority: priority,
      maxRetries: maxRetries ?? defaultMaxRetries,
      initialBackoff: initialBackoff ?? defaultInitialBackoff,
      maxBackoff: maxBackoff ?? defaultMaxBackoff,
      isRetryable: isRetryable,
      getRetryAfter: getRetryAfter,
      executor: executor,
      persistKey: persistKey,
      payload: payload,
    );

    _entries.add(entry);
    _persist();
    _wakeup();
  }

  /// Load entries from storage. Call during app initialization if needed.
  Future<void> loadFromStorage() async {
    final loaded = await _storage.load();
    _entries.clear();
    _entries.addAll(loaded);
  }

  /// Attach executors to entries loaded from storage.
  void attachExecutor(String id, RetryExecutor<dynamic> executor) {
    for (final e in _entries) {
      if (e.id == id) {
        e.executor = executor;
        break;
      }
    }
  }

  void _wakeup() {
    if (!_started) {
      return;
    }
    _scheduleTick(immediate: true);
  }

  void _scheduleTick({bool immediate = false}) {
    _tickTimer?.cancel();
    if (!_started) {
      return;
    }

    if (immediate) {
      _onTick();
      return;
    }

    // Run tick periodically to check schedule.
    _tickTimer = Timer(_tickInterval, _onTick);
  }

  void _onTick() {
    if (!_started) {
      return;
    }

    // Sort by priority desc then scheduledAt asc
    _entries.sort((a, b) {
      final p =
          _priorityScore(b.priority).compareTo(_priorityScore(a.priority));
      if (p != 0) {
        return p;
      }
      return a.scheduledAt.compareTo(b.scheduledAt);
    });

    // Start tasks up to concurrency limit
    while (_running < maxConcurrent) {
      final nextIndex = _nextRunnableIndex();
      if (nextIndex == -1) {
        break;
      }
      final entry = _entries.removeAt(nextIndex);
      _runEntry(entry);
    }

    _scheduleTick();
  }

  int _nextRunnableIndex() {
    final now = DateTime.now();
    for (var i = 0; i < _entries.length; i++) {
      if (!_entries[i].scheduledAt.isAfter(now)) {
        return i;
      }
    }
    return -1;
  }

  void _runEntry(RetryQueueEntry entry) {
    if (entry.executor == null) {
      // Cannot run without executor; skip but keep entry for later attachment.
      return;
    }
    _running++;
    entry.executor!().then((_) {
      // Success: drop the entry
    }).catchError((Object error, StackTrace stack) {
      if (entry.isRetryable(error) && entry.attempt < entry.maxRetries) {
        entry.attempt += 1;
        final backoff = _calculateBackoff(
          attempt: entry.attempt,
          initial: entry.initialBackoff,
          max: entry.maxBackoff,
        );
        final retryAfter = entry.getRetryAfter?.call(error);
        entry.scheduledAt = DateTime.now().add(retryAfter ?? backoff);
        _entries.add(entry);
        _persist();
        _wakeup();
      } else {
        // Drop the entry after exhausting retries or non-retryable error
      }
    }).whenComplete(() {
      _running--;
      if (_started) {
        _wakeup();
      }
    });
  }

  Duration _calculateBackoff({
    required int attempt,
    required Duration initial,
    required Duration max,
  }) {
    final factorMs = initial.inMilliseconds * (1 << (attempt - 1));
    final clamped = factorMs.clamp(initial.inMilliseconds, max.inMilliseconds);
    return Duration(milliseconds: clamped);
  }

  Future<void> _persist() async {
    try {
      await _storage.save(List<RetryQueueEntry>.from(_entries));
    } catch (_) {
      // Persistence failures are non-fatal by design.
    }
  }
}
