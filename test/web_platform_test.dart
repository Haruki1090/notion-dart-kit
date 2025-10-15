import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('NotionClient Web Platform Tests', () {
    test('should create NotionClient instance', () {
      final client = NotionClient(token: 'test-token');
      expect(client, isNotNull);
      expect(client.token, equals('test-token'));

      // リソースをクリーンアップ
      client.close();
    });

    test('should initialize logger for web platform', () {
      // Webプラットフォームでロガーが初期化できることを確認
      expect(() {
        NotionLogger.instance.initialize(isDebugMode: true);
      }, returnsNormally);
    });

    test('should have all required services', () {
      final client = NotionClient(token: 'test-token');

      // すべてのサービスが利用可能であることを確認
      expect(client.users, isNotNull);
      expect(client.pages, isNotNull);
      expect(client.databases, isNotNull);
      expect(client.dataSources, isNotNull);
      expect(client.blocks, isNotNull);
      expect(client.search, isNotNull);
      expect(client.fileUploads, isNotNull);

      client.close();
    });

    test('should handle retry queue on web platform', () {
      final client = NotionClient(token: 'test-token');

      // リトライキューが利用可能であることを確認
      expect(client.retryQueue, isNotNull);

      client.close();
    });
  });
}
