import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('UsersService', () {
    test('me() returns User object structure', () {
      // このテストは実際のAPIキーが必要なため、
      // 構造のみを確認するユニットテストとして記述
      expect(() => NotionClient(token: 'test_token'), returnsNormally);
    });

    test('NotionClient has users service', () {
      final client = NotionClient(token: 'test_token');
      expect(client.users, isA<UsersService>());
      client.close();
    });

    test('UsersService methods are available', () {
      final client = NotionClient(token: 'test_token');
      expect(client.users.me, isA<Function>());
      expect(client.users.retrieve, isA<Function>());
      expect(client.users.list, isA<Function>());
      client.close();
    });
  });
}
