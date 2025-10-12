import 'dart:async';

import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('RetryQueue', () {
    test('executes success without retry', () async {
      final queue = RetryQueue();
      queue.start();

      var executed = 0;

      queue.enqueue(
        id: 'ok',
        executor: () async {
          executed += 1;
          return null;
        },
        isRetryable: (_) => true,
      );

      // Allow some time for background processing
      await Future<void>.delayed(const Duration(milliseconds: 200));
      queue.close();

      expect(executed, 1);
    });

    test('retries on retryable error up to maxRetries', () async {
      final queue = RetryQueue(
        defaultMaxRetries: 2,
        defaultInitialBackoff: const Duration(milliseconds: 50),
        defaultMaxBackoff: const Duration(milliseconds: 100),
      );
      queue.start();

      var attempts = 0;

      queue.enqueue(
        id: 'fail-then-drop',
        executor: () async {
          attempts += 1;
          throw Exception('transient');
        },
        isRetryable: (_) => true,
      );

      // Wait long enough for retries
      await Future<void>.delayed(const Duration(seconds: 2));
      queue.close();

      // First + 2 retries = 3 attempts total
      expect(attempts, 3);
    });

    test('respects Retry-After over exponential backoff', () async {
      final queue = RetryQueue(
        defaultMaxRetries: 1,
        defaultInitialBackoff: const Duration(seconds: 5),
        defaultMaxBackoff: const Duration(seconds: 5),
      );
      queue.start();

      final timestamps = <DateTime>[];

      queue.enqueue(
        id: 'retry-after',
        executor: () async {
          timestamps.add(DateTime.now());
          throw Exception('rate');
        },
        isRetryable: (_) => true,
        getRetryAfter: (_) => const Duration(milliseconds: 100),
      );

      await Future<void>.delayed(const Duration(milliseconds: 700));
      queue.close();

      // Two attempts expected (initial + one retry)
      expect(timestamps.length, 2);
      final diff = timestamps[1].difference(timestamps[0]);
      expect(diff.inMilliseconds, greaterThanOrEqualTo(90));
    });
  });
}
