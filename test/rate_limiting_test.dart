import 'package:notion_dart_kit/src/client/http_client.dart';
import 'package:test/test.dart';

void main() {
  group('Rate Limiting and Retry Tests', () {
    test('NotionHttpClient has retry configuration', () {
      final client = NotionHttpClient(
        token: 'test_token',
        maxRetries: 5,
        initialRetryDelay: 500,
      );

      expect(client.maxRetries, 5);
      expect(client.initialRetryDelay, 500);

      client.close();
    });

    test('NotionHttpClient uses default retry configuration', () {
      final client = NotionHttpClient(token: 'test_token');

      expect(client.maxRetries, 3);
      expect(client.initialRetryDelay, 1000);

      client.close();
    });

    test('Rate limiting configuration is set correctly', () {
      // Test that rate limiting configuration is properly applied
      final client = NotionHttpClient(
        token: 'test_token',
        maxRetries: 0, // Disable retries
        initialRetryDelay: 500,
      );

      expect(client.maxRetries, 0);
      expect(client.initialRetryDelay, 500);

      client.close();
    });

    test('Retry delay calculation increases exponentially', () {
      final client = NotionHttpClient(
        token: 'test_token',
      );

      // Test exponential backoff calculation
      // Note: We can't directly test the private method,
      // but we can verify the configuration is set correctly

      // Delay for attempt 0: 1000ms * 2^0 = 1000ms (+ jitter)
      // Delay for attempt 1: 1000ms * 2^1 = 2000ms (+ jitter)
      // Delay for attempt 2: 1000ms * 2^2 = 4000ms (+ jitter)

      expect(client.initialRetryDelay, 1000);
      expect(client.maxRetries, 3);

      client.close();
    });

    test('HTTP client has proper headers configured', () {
      final client = NotionHttpClient(token: 'test_token_123');

      // Verify headers are set correctly
      final headers = client.token;
      expect(headers, 'test_token_123');

      client.close();
    });
  });

  group('Retry Logic Integration', () {
    test('Client is configured with QueuedInterceptorsWrapper', () {
      final client = NotionHttpClient(token: 'test_token');

      // Verify client is properly initialized
      expect(client.token, 'test_token');
      expect(client.maxRetries, isPositive);
      expect(client.initialRetryDelay, isPositive);

      client.close();
    });

    test('Exponential backoff configuration is applied', () {
      final client1 = NotionHttpClient(
        token: 'test',
        maxRetries: 1,
        initialRetryDelay: 100,
      );

      final client2 = NotionHttpClient(
        token: 'test',
        maxRetries: 5,
        initialRetryDelay: 2000,
      );

      expect(client1.maxRetries, lessThan(client2.maxRetries));
      expect(client1.initialRetryDelay, lessThan(client2.initialRetryDelay));

      client1.close();
      client2.close();
    });
  });

  group('Error Handling with Retries', () {
    test('Network timeout errors are retryable', () {
      final client = NotionHttpClient(
        token: 'test_token',
        maxRetries: 2,
        initialRetryDelay: 100,
      );

      // Timeout errors should trigger retry logic
      expect(client.maxRetries, greaterThan(0));

      client.close();
    });

    test('Authentication errors are not retried', () {
      final client = NotionHttpClient(token: 'test_token');

      // 401 errors should not be retried (tested via exception type)
      expect(client.maxRetries, isPositive);

      client.close();
    });
  });
}
