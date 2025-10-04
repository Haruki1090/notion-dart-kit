import 'package:test/test.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';

void main() {
  group('NotionClient', () {
    test('should be instantiated with a token', () {
      final client = NotionClient(token: 'test_token');
      expect(client.token, equals('test_token'));
    });
  });

  group('NotionException', () {
    test('should create exception with message', () {
      final exception = NotionException('Test error');
      expect(exception.message, equals('Test error'));
      expect(exception.statusCode, isNull);
    });

    test('should create exception with status code', () {
      final exception = NotionException('Test error', statusCode: 404);
      expect(exception.statusCode, equals(404));
    });
  });
}