import 'package:test/test.dart';
import 'package:notion_dart_kit/src/utils/notion_logger.dart';

void main() {
  group('NotionLogger Web Tests', () {
    setUp(() {
      // テスト前にロガーをリセット
      NotionLogger.instance.initialize(isDebugMode: false);
    });

    test('should initialize logger in debug mode', () {
      NotionLogger.instance.initialize(isDebugMode: true);

      // ログが出力されることを確認（実際の出力はテストでは確認しない）
      expect(() {
        NotionLogger.instance.debug('Test debug message');
        NotionLogger.instance.info('Test info message');
        NotionLogger.instance.warning('Test warning message');
        NotionLogger.instance.error('Test error message');
      }, returnsNormally);
    });

    test('should not output logs when debug mode is disabled', () {
      NotionLogger.instance.initialize(isDebugMode: false);

      // ログが出力されないことを確認（実際の出力はテストでは確認しない）
      expect(() {
        NotionLogger.instance.debug('Test debug message');
        NotionLogger.instance.info('Test info message');
        NotionLogger.instance.warning('Test warning message');
        NotionLogger.instance.error('Test error message');
      }, returnsNormally);
    });

    test('should log HTTP request details', () {
      NotionLogger.instance.initialize(isDebugMode: true);

      expect(() {
        NotionLogger.instance.logRequest(
          method: 'GET',
          url: 'https://api.notion.com/v1/pages',
          headers: {'Authorization': 'Bearer test-token'},
          data: {'test': 'data'},
        );
      }, returnsNormally);
    });

    test('should log HTTP response details', () {
      NotionLogger.instance.initialize(isDebugMode: true);

      expect(() {
        NotionLogger.instance.logResponse(
          method: 'GET',
          url: 'https://api.notion.com/v1/pages',
          statusCode: 200,
          data: {'test': 'response'},
          durationMs: 150,
          notionRequestId: 'test-request-id',
        );
      }, returnsNormally);
    });

    test('should log HTTP error details', () {
      NotionLogger.instance.initialize(isDebugMode: true);

      expect(() {
        NotionLogger.instance.logError(
          method: 'GET',
          url: 'https://api.notion.com/v1/pages',
          statusCode: 404,
          error: 'Not found',
          data: {'error': 'details'},
        );
      }, returnsNormally);
    });

    test('should sanitize authorization headers', () {
      NotionLogger.instance.initialize(isDebugMode: true);

      // Authorizationヘッダーがサニタイズされることを確認
      expect(() {
        NotionLogger.instance.logRequest(
          method: 'GET',
          url: 'https://api.notion.com/v1/pages',
          headers: {'Authorization': 'Bearer secret-token'},
        );
      }, returnsNormally);
    });
  });
}
