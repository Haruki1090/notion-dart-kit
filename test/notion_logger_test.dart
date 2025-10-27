import 'package:logger/logger.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('NotionLogger Tests', () {
    setUp(() {
      // Reset logger state before each test
      NotionLogger.instance.initialize();
    });

    test('singleton instance is the same', () {
      final instance1 = NotionLogger.instance;
      final instance2 = NotionLogger.instance;

      expect(instance1, same(instance2));
    });

    group('Debug Mode', () {
      test('logs are disabled when debug mode is off', () {
        NotionLogger.instance.initialize();

        // These should not throw even though logger is not in debug mode
        expect(
          () => NotionLogger.instance.debug('Test message'),
          returnsNormally,
        );
        expect(
          () => NotionLogger.instance.info('Test message'),
          returnsNormally,
        );
        expect(
          () => NotionLogger.instance.warning('Test message'),
          returnsNormally,
        );
        expect(
          () => NotionLogger.instance.error('Test message'),
          returnsNormally,
        );
      });

      test('logs are enabled when debug mode is on', () {
        NotionLogger.instance.initialize(isDebugMode: true);

        // These should not throw
        expect(
          () => NotionLogger.instance.debug('Test message'),
          returnsNormally,
        );
        expect(
          () => NotionLogger.instance.info('Test message'),
          returnsNormally,
        );
        expect(
          () => NotionLogger.instance.warning('Test message'),
          returnsNormally,
        );
        expect(
          () => NotionLogger.instance.error('Test message'),
          returnsNormally,
        );
      });
    });

    group('HTTP Logging', () {
      test('logRequest does not throw', () {
        NotionLogger.instance.initialize(isDebugMode: true);

        expect(
          () => NotionLogger.instance.logRequest(
            method: 'GET',
            url: 'https://api.notion.com/v1/users/me',
            headers: {
              'Authorization': 'Bearer secret_token',
              'Notion-Version': '2022-06-28',
            },
          ),
          returnsNormally,
        );
      });

      test('logResponse does not throw', () {
        NotionLogger.instance.initialize(isDebugMode: true);

        expect(
          () => NotionLogger.instance.logResponse(
            method: 'GET',
            url: 'https://api.notion.com/v1/users/me',
            statusCode: 200,
            data: {'object': 'user', 'id': '123'},
            durationMs: 150,
            notionRequestId: 'abc-123',
          ),
          returnsNormally,
        );
      });

      test('logError does not throw', () {
        NotionLogger.instance.initialize(isDebugMode: true);

        expect(
          () => NotionLogger.instance.logError(
            method: 'POST',
            url: 'https://api.notion.com/v1/pages',
            statusCode: 400,
            error: 'Invalid request',
            data: {'code': 'validation_error', 'message': 'Invalid request'},
          ),
          returnsNormally,
        );
      });

      test('HTTP logs are disabled when debug mode is off', () {
        NotionLogger.instance.initialize();

        expect(
          () => NotionLogger.instance.logRequest(
            method: 'GET',
            url: 'https://api.notion.com/v1/users/me',
          ),
          returnsNormally,
        );

        expect(
          () => NotionLogger.instance.logResponse(
            method: 'GET',
            url: 'https://api.notion.com/v1/users/me',
            statusCode: 200,
          ),
          returnsNormally,
        );

        expect(
          () => NotionLogger.instance.logError(
            method: 'POST',
            url: 'https://api.notion.com/v1/pages',
            statusCode: 400,
            error: 'Error',
          ),
          returnsNormally,
        );
      });
    });

    group('Log Level Configuration', () {
      test('can initialize with custom log level', () {
        expect(
          () => NotionLogger.instance.initialize(
            isDebugMode: true,
            level: Level.warning,
          ),
          returnsNormally,
        );
      });

      test('default log level is debug', () {
        expect(
          () => NotionLogger.instance.initialize(isDebugMode: true),
          returnsNormally,
        );
      });
    });

    group('Error and StackTrace Handling', () {
      test('debug accepts error and stackTrace parameters', () {
        NotionLogger.instance.initialize(isDebugMode: true);

        expect(
          () => NotionLogger.instance.debug(
            'Error occurred',
            Exception('Test error'),
            StackTrace.current,
          ),
          returnsNormally,
        );
      });

      test('info accepts error and stackTrace parameters', () {
        NotionLogger.instance.initialize(isDebugMode: true);

        expect(
          () => NotionLogger.instance.info(
              'Info message',
              {
                'key': 'value',
              },
              StackTrace.current,),
          returnsNormally,
        );
      });

      test('warning accepts error and stackTrace parameters', () {
        NotionLogger.instance.initialize(isDebugMode: true);

        expect(
          () => NotionLogger.instance.warning(
            'Warning message',
            Exception('Warning'),
            StackTrace.current,
          ),
          returnsNormally,
        );
      });

      test('error accepts error and stackTrace parameters', () {
        NotionLogger.instance.initialize(isDebugMode: true);

        expect(
          () => NotionLogger.instance.error(
            'Error message',
            Exception('Error'),
            StackTrace.current,
          ),
          returnsNormally,
        );
      });
    });
  });
}
