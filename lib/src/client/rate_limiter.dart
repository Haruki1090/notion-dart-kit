/// Rate limiter for Notion API requests with exponential backoff support.
///
/// Notion API has a rate limit of 3 requests per second per integration.
/// This rate limiter ensures requests are throttled appropriately and
/// provides exponential backoff retry logic for 429 (rate limit) errors.
library;

/// Rate limiter that enforces request rate limits with exponential backoff.
///
/// Features:
/// - Token bucket algorithm for rate limiting (3 requests/second)
/// - Exponential backoff for retry logic
/// - Configurable max retry attempts
/// - Respects Retry-After header from API responses
class RateLimiter {
  /// Creates a rate limiter with configurable parameters.
  ///
  /// [maxRequestsPerSecond] - Maximum allowed requests per second (default: 3)
  /// [maxRetries] - Maximum retry attempts on rate limit (default: 3)
  /// [initialBackoffMs] - Initial backoff delay in ms (default: 1000)
  /// [maxBackoffMs] - Maximum backoff delay in ms (default: 32000)
  RateLimiter({
    this.maxRequestsPerSecond = 3,
    this.maxRetries = 3,
    this.initialBackoffMs = 1000,
    this.maxBackoffMs = 32000,
  }) : _bucketCapacity = maxRequestsPerSecond,
       _availableTokens = maxRequestsPerSecond,
       _lastRefillTime = DateTime.now();

  /// Maximum requests per second (Notion API limit)
  final int maxRequestsPerSecond;

  /// Maximum number of retry attempts
  final int maxRetries;

  /// Initial backoff delay in milliseconds
  final int initialBackoffMs;

  /// Maximum backoff delay in milliseconds
  final int maxBackoffMs;

  /// Token bucket capacity (equals maxRequestsPerSecond)
  late final int _bucketCapacity;

  /// Current number of available tokens
  int _availableTokens;

  /// Last token refill time
  DateTime _lastRefillTime;

  /// Executes a request with rate limiting and retry logic.
  ///
  /// This method:
  /// 1. Waits for available token (rate limiting)
  /// 2. Executes the request
  /// 3. Retries with exponential backoff on rate limit errors
  ///
  /// [request] - The async function to execute
  /// [isRateLimitError] - Function to check if response is a rate limit error
  /// [getRetryAfter] - Optional function to extract Retry-After header value
  ///
  /// Returns the result of the request function.
  /// Throws the last exception if all retries are exhausted.
  Future<T> execute<T>(
    Future<T> Function() request, {
    required bool Function(dynamic error) isRateLimitError,
    Duration? Function(dynamic error)? getRetryAfter,
  }) async {
    var attempts = 0;

    while (true) {
      // Wait for available token
      await _acquireToken();

      try {
        // Execute request
        return await request();
      } catch (e) {
        // Check if this is a rate limit error
        if (!isRateLimitError(e)) {
          rethrow;
        }

        attempts++;

        // Check if we've exceeded max retries
        if (attempts > maxRetries) {
          rethrow;
        }

        // Calculate backoff delay
        var backoffDelay = _calculateBackoff(attempts);

        // Check for Retry-After header
        if (getRetryAfter != null) {
          final retryAfter = getRetryAfter(e);
          if (retryAfter != null) {
            backoffDelay = retryAfter;
          }
        }

        // Wait before retry
        await Future.delayed(backoffDelay);
      }
    }
  }

  /// Acquires a token from the bucket, waiting if necessary.
  Future<void> _acquireToken() async {
    // Refill tokens based on elapsed time
    _refillTokens();

    // If no tokens available, wait until next refill
    while (_availableTokens <= 0) {
      final now = DateTime.now();
      final timeSinceLastRefill = now.difference(_lastRefillTime);
      final timeUntilNextRefill =
          const Duration(seconds: 1) - timeSinceLastRefill;

      if (timeUntilNextRefill.isNegative) {
        // Should have tokens now, refill and check again
        _refillTokens();
      } else {
        // Wait until next refill time
        await Future.delayed(timeUntilNextRefill);
        _refillTokens();
      }
    }

    // Consume a token
    _availableTokens--;
  }

  /// Refills tokens based on elapsed time.
  void _refillTokens() {
    final now = DateTime.now();
    final elapsed = now.difference(_lastRefillTime);

    // Refill tokens for each elapsed second
    if (elapsed.inSeconds >= 1) {
      final tokensToAdd = elapsed.inSeconds * maxRequestsPerSecond;
      _availableTokens = (_availableTokens + tokensToAdd).clamp(
        0,
        _bucketCapacity,
      );
      _lastRefillTime = now;
    }
  }

  /// Calculates exponential backoff delay for the given attempt number.
  ///
  /// Formula: min(initialBackoff * (2 ^ (attempt - 1)), maxBackoff)
  Duration _calculateBackoff(int attempt) {
    final backoffMs = (initialBackoffMs * (1 << (attempt - 1))).clamp(
      initialBackoffMs,
      maxBackoffMs,
    );
    return Duration(milliseconds: backoffMs);
  }

  /// Resets the rate limiter state.
  ///
  /// Useful for testing or manual state reset.
  void reset() {
    _availableTokens = _bucketCapacity;
    _lastRefillTime = DateTime.now();
  }
}
