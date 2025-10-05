import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('PaginatedList', () {
    test('fromJson creates PaginatedList correctly', () {
      final json = {
        'object': 'list',
        'type': 'user',
        'results': [
          {
            'object': 'user',
            'id': 'test-id-1',
            'type': 'person',
            'person': {'email': 'test1@example.com'},
          },
          {
            'object': 'user',
            'id': 'test-id-2',
            'type': 'person',
            'person': {'email': 'test2@example.com'},
          },
        ],
        'has_more': true,
        'next_cursor': 'next-cursor-value',
      };

      final paginated = PaginatedList<User>.fromJson(json, User.fromJson);

      expect(paginated.type, 'user');
      expect(paginated.results, hasLength(2));
      expect(paginated.results[0].id, 'test-id-1');
      expect(paginated.results[1].id, 'test-id-2');
      expect(paginated.hasMore, true);
      expect(paginated.nextCursor, 'next-cursor-value');
    });

    test('fromJson handles has_more false and no next_cursor', () {
      final json = {
        'object': 'list',
        'type': 'user',
        'results': [],
        'has_more': false,
      };

      final paginated = PaginatedList<User>.fromJson(json, User.fromJson);

      expect(paginated.hasMore, false);
      expect(paginated.nextCursor, null);
      expect(paginated.results, isEmpty);
    });

    test('toJson converts PaginatedList correctly', () {
      final user1 = User.person(
        id: 'id-1',
        person: const PersonInfo(),
      );
      final user2 = User.person(
        id: 'id-2',
        person: const PersonInfo(),
      );

      final paginated = PaginatedList<User>(
        type: 'user',
        results: [user1, user2],
        hasMore: true,
        nextCursor: 'cursor-123',
      );

      final json = paginated.toJson((user) => user.toJson());

      expect(json['object'], 'list');
      expect(json['type'], 'user');
      expect(json['results'], hasLength(2));
      expect(json['has_more'], true);
      expect(json['next_cursor'], 'cursor-123');
    });
  });
}
