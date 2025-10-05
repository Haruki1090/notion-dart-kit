import 'package:notion_dart_kit/src/client/http_client.dart';
import 'package:notion_dart_kit/src/client/rate_limiter.dart';
import 'package:test/test.dart';

void main() {
  group('Rate Limiting and Retry Tests', () {
    test('NotionHttpClient uses default rate limiter', () {
      final client = NotionHttpClient(token: 'test_token');

      // Client should be created successfully with default rate limiter
      expect(client.token, 'test_token');

      client.close();
    });

    test('NotionHttpClient accepts custom rate limiter', () {
      final customRateLimiter = RateLimiter(
        maxRequestsPerSecond: 5,
        maxRetries: 5,
        initialBackoffMs: 500,
        maxBackoffMs: 10000,
      );

      final client = NotionHttpClient(
        token: 'test_token',
        rateLimiter: customRateLimiter,
      );

      // Client should be created successfully with custom rate limiter
      expect(client.token, 'test_token');

      client.close();
    });

    test('Rate limiter configuration is customizable', () {
      final rateLimiter = RateLimiter(
        maxRequestsPerSecond: 5,
        maxRetries: 2,
        initialBackoffMs: 200,
        maxBackoffMs: 5000,
      );

      expect(rateLimiter.maxRequestsPerSecond, 5);
      expect(rateLimiter.maxRetries, 2);
      expect(rateLimiter.initialBackoffMs, 200);
      expect(rateLimiter.maxBackoffMs, 5000);
    });

    test('Rate limiter has sensible defaults', () {
      final rateLimiter = RateLimiter();

      expect(rateLimiter.maxRequestsPerSecond, 3); // Notion API limit
      expect(rateLimiter.maxRetries, 3);
      expect(rateLimiter.initialBackoffMs, 1000);
      expect(rateLimiter.maxBackoffMs, 32000);
    });

    test('HTTP client with rate limiter can be instantiated', () {
      final rateLimiter = RateLimiter(
        maxRequestsPerSecond: 3,
        maxRetries: 3,
      );

      final client = NotionHttpClient(
        token: 'test_token',
        rateLimiter: rateLimiter,
      );

      expect(client, isNotNull);
      expect(client.token, 'test_token');

      client.close();
    });
  });
}
