import 'package:test/test.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';

void main() {
  group('SearchService Tests', () {
    test('NotionClient has search service', () {
      final client = NotionClient(token: 'test_token');
      expect(client.search, isA<SearchService>());
      client.close();
    });

    test('SearchFilter enum values', () {
      expect(SearchFilter.page, isNotNull);
      expect(SearchFilter.dataSource, isNotNull);
    });

    test('SearchResult page constructor', () {
      final page = Page(
        id: 'page123',
        createdTime: DateTime.parse('2025-01-01T00:00:00.000Z'),
        lastEditedTime: DateTime.parse('2025-01-01T00:00:00.000Z'),
        createdBy: User.person(
          id: 'user1',
          person: const PersonInfo(email: 'test@example.com'),
        ),
        lastEditedBy: User.person(
          id: 'user2',
          person: const PersonInfo(email: 'test2@example.com'),
        ),
        parent: const Parent.page(pageId: 'parent123'),
        archived: false,
        inTrash: false,
        properties: {},
        url: 'https://notion.so/page123',
      );

      final result = SearchResult.page(page);

      expect(result.isPage, true);
      expect(result.isDatabase, false);
      expect(result.asPage.id, 'page123');
    });

    test('SearchResult database constructor', () {
      final database = Database(
        id: 'db123',
        createdTime: DateTime.parse('2025-01-01T00:00:00.000Z'),
        lastEditedTime: DateTime.parse('2025-01-01T00:00:00.000Z'),
        createdBy: User.person(
          id: 'user1',
          person: const PersonInfo(email: 'test@example.com'),
        ),
        lastEditedBy: User.person(
          id: 'user2',
          person: const PersonInfo(email: 'test2@example.com'),
        ),
        parent: const Parent.page(pageId: 'parent123'),
        title: [
          RichText.text(
            text: const TextContent(content: 'Test DB'),
            annotations: const Annotations(),
            plainText: 'Test DB',
          ),
        ],
        dataSources: [
          const DataSourceRef(id: 'ds123', name: 'Test DB'),
        ],
        archived: false,
        inTrash: false,
        isInline: false,
        url: 'https://notion.so/db123',
      );

      final result = SearchResult.database(database);

      expect(result.isPage, false);
      expect(result.isDatabase, true);
      expect(result.asDatabase.id, 'db123');
    });

    test('SearchResult when pattern matching', () {
      final page = Page(
        id: 'page123',
        createdTime: DateTime.parse('2025-01-01T00:00:00.000Z'),
        lastEditedTime: DateTime.parse('2025-01-01T00:00:00.000Z'),
        createdBy: User.person(
          id: 'user1',
          person: const PersonInfo(email: 'test@example.com'),
        ),
        lastEditedBy: User.person(
          id: 'user2',
          person: const PersonInfo(email: 'test2@example.com'),
        ),
        parent: const Parent.page(pageId: 'parent123'),
        archived: false,
        inTrash: false,
        properties: {},
        url: 'https://notion.so/page123',
      );

      final result = SearchResult.page(page);

      final output = result.when(
        page: (p) => 'Page: ${p.id}',
        database: (d) => 'Database: ${d.id}',
      );

      expect(output, 'Page: page123');
    });

    test('SearchResult throws when accessing wrong type', () {
      final page = Page(
        id: 'page123',
        createdTime: DateTime.parse('2025-01-01T00:00:00.000Z'),
        lastEditedTime: DateTime.parse('2025-01-01T00:00:00.000Z'),
        createdBy: User.person(
          id: 'user1',
          person: const PersonInfo(email: 'test@example.com'),
        ),
        lastEditedBy: User.person(
          id: 'user2',
          person: const PersonInfo(email: 'test2@example.com'),
        ),
        parent: const Parent.page(pageId: 'parent123'),
        archived: false,
        inTrash: false,
        properties: {},
        url: 'https://notion.so/page123',
      );

      final result = SearchResult.page(page);

      expect(() => result.asDatabase, throwsStateError);
    });

    test('SearchResults fromJson parses correctly', () {
      final json = <String, dynamic>{
        'object': 'list',
        'type': 'page_or_database',
        'results': <dynamic>[
          <String, dynamic>{
            'object': 'page',
            'id': 'page123',
            'created_time': '2025-01-01T00:00:00.000Z',
            'last_edited_time': '2025-01-01T00:00:00.000Z',
            'created_by': <String, dynamic>{'object': 'user', 'id': 'user1'},
            'last_edited_by': <String, dynamic>{
              'object': 'user',
              'id': 'user2'
            },
            'parent': <String, dynamic>{'type': 'workspace', 'workspace': true},
            'archived': false,
            'in_trash': false,
            'properties': <String, dynamic>{},
            'url': 'https://notion.so/page123',
          },
        ],
        'has_more': false,
        'next_cursor': null,
      };

      final results = SearchResults.fromJson(json);

      expect(results.type, 'page_or_database');
      expect(results.results.length, 1);
      expect(results.hasMore, false);
      expect(results.nextCursor, null);
      expect(results.results.first.isPage, true);
    });
  });
}
