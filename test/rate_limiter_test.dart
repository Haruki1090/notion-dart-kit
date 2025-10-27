import 'package:notion_dart_kit/src/client/rate_limiter.dart';
import 'package:test/test.dart';

void main() {
  group('RateLimiter', () {
    late RateLimiter rateLimiter;

    setUp(() {
      rateLimiter = RateLimiter(initialBackoffMs: 100, maxBackoffMs: 1000);
    });

    test('allows requests within rate limit', () async {
      final startTime = DateTime.now();
      var requestCount = 0;

      // Should allow 3 requests immediately
      for (var i = 0; i < 3; i++) {
        await rateLimiter.execute(
          () async => ++requestCount,
          isRateLimitError: (error) => false,
        );
      }

      final elapsed = DateTime.now().difference(startTime);

      expect(requestCount, equals(3));
      // Should complete almost immediately (within 100ms)
      expect(elapsed.inMilliseconds, lessThan(100));
    });

    test('throttles requests exceeding rate limit', () async {
      final startTime = DateTime.now();
      var requestCount = 0;

      // 4th request should be delayed
      for (var i = 0; i < 4; i++) {
        await rateLimiter.execute(
          () async => ++requestCount,
          isRateLimitError: (error) => false,
        );
      }

      final elapsed = DateTime.now().difference(startTime);

      expect(requestCount, equals(4));
      // Should take at least 1 second (waiting for token refill)
      expect(elapsed.inMilliseconds, greaterThan(900));
    });

    test('retries on rate limit error', () async {
      var attemptCount = 0;

      final result = await rateLimiter.execute(() async {
        attemptCount++;
        if (attemptCount < 3) {
          throw RateLimitError();
        }
        return 'success';
      }, isRateLimitError: (error) => error is RateLimitError,);

      expect(result, equals('success'));
      expect(attemptCount, equals(3));
    });

    test('uses exponential backoff for retries', () async {
      final timestamps = <DateTime>[];

      try {
        await rateLimiter.execute(() async {
          timestamps.add(DateTime.now());
          throw RateLimitError();
        }, isRateLimitError: (error) => error is RateLimitError,);
      } catch (e) {
        // Expected to fail after max retries
      }

      // Should have 4 attempts (initial + 3 retries)
      expect(timestamps.length, equals(4));

      // Check backoff delays
      for (var i = 1; i < timestamps.length; i++) {
        final delay = timestamps[i].difference(timestamps[i - 1]);
        final expectedMinDelay = 100 * (1 << (i - 1)); // 100, 200, 400

        // Allow some tolerance for test execution time
        expect(delay.inMilliseconds, greaterThan(expectedMinDelay - 50));
      }
    });

    test('respects Retry-After header', () async {
      final startTime = DateTime.now();

      try {
        await rateLimiter.execute(
          () async {
            throw RateLimitError();
          },
          isRateLimitError: (error) => error is RateLimitError,
          getRetryAfter: (error) => const Duration(milliseconds: 500),
        );
      } catch (e) {
        // Expected to fail
      }

      final elapsed = DateTime.now().difference(startTime);

      // Should use Retry-After value instead of exponential backoff
      // Total delay = 500ms (retry 1) + 500ms (retry 2) + 500ms (retry 3) = 1500ms
      expect(elapsed.inMilliseconds, greaterThan(1400));
    });

    test('throws error after max retries exceeded', () async {
      var attemptCount = 0;

      expect(
        () => rateLimiter.execute(() async {
          attemptCount++;
          throw RateLimitError();
        }, isRateLimitError: (error) => error is RateLimitError,),
        throwsA(isA<RateLimitError>()),
      );

      // Should have attempted 4 times (initial + 3 retries)
      await Future.delayed(const Duration(milliseconds: 1500));
      expect(attemptCount, equals(4));
    });

    test('does not retry on non-rate-limit errors', () async {
      var attemptCount = 0;

      try {
        await rateLimiter.execute(() async {
          attemptCount++;
          throw Exception('Other error');
        }, isRateLimitError: (error) => error is RateLimitError,);
      } catch (e) {
        // Expected to throw
      }

      // Should only attempt once
      expect(attemptCount, equals(1));
    });

    test('reset() clears rate limiter state', () async {
      // Consume all tokens
      for (var i = 0; i < 3; i++) {
        await rateLimiter.execute(
          () async => i,
          isRateLimitError: (error) => false,
        );
      }

      // Reset should restore tokens
      rateLimiter.reset();

      final startTime = DateTime.now();
      var requestCount = 0;

      // Should allow 3 immediate requests again
      for (var i = 0; i < 3; i++) {
        await rateLimiter.execute(
          () async => ++requestCount,
          isRateLimitError: (error) => false,
        );
      }

      final elapsed = DateTime.now().difference(startTime);

      expect(requestCount, equals(3));
      expect(elapsed.inMilliseconds, lessThan(100));
    });
  });
}

/// Test error class for rate limit simulation
class RateLimitError extends Error {}
