import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('Database Model Tests', () {
    test('Database.fromJson parses correctly', () {
      final json = {
        'object': 'database',
        'id': '248104cd-477e-80fd-b757-e945d38000bd',
        'created_time': '2025-08-07T10:11:07.504Z',
        'last_edited_time': '2025-08-10T15:53:11.386Z',
        'created_by': {'object': 'user', 'id': 'user123'},
        'last_edited_by': {'object': 'user', 'id': 'user456'},
        'parent': {
          'type': 'page_id',
          'page_id': '255104cd-477e-808c-b279-d39ab803a7d2',
        },
        'title': [
          {
            'type': 'text',
            'text': {'content': 'My Task Tracker', 'link': null},
            'annotations': {
              'bold': false,
              'italic': false,
              'strikethrough': false,
              'underline': false,
              'code': false,
              'color': 'default',
            },
            'plain_text': 'My Task Tracker',
            'href': null,
          },
        ],
        'data_sources': [
          {
            'id': '248104cd-477e-80af-bc30-000bd28de8f9',
            'name': 'My Task Tracker',
          },
        ],
        'is_inline': false,
        'in_trash': false,
        'archived': false,
        'url': 'https://www.notion.so/248104cd477e80fdb757e945d38000bd',
        'icon': null,
        'cover': null,
      };

      final database = Database.fromJson(json);

      expect(database.id, '248104cd-477e-80fd-b757-e945d38000bd');
      expect(database.isInline, false);
      expect(database.inTrash, false);
      expect(database.archived, false);
      expect(database.title.length, 1);
      expect(database.dataSources.length, 1);
      expect(
        database.dataSources.first.id,
        '248104cd-477e-80af-bc30-000bd28de8f9',
      );
      expect(database.dataSources.first.name, 'My Task Tracker');
    });

    test('Database.toJson serializes correctly', () {
      final database = Database(
        id: 'db123',
        createdTime: DateTime.parse('2025-08-07T10:11:07.504Z'),
        lastEditedTime: DateTime.parse('2025-08-10T15:53:11.386Z'),
        createdBy: const User.person(
          id: 'user123',
          person: PersonInfo(email: 'test@example.com'),
        ),
        lastEditedBy: const User.person(
          id: 'user456',
          person: PersonInfo(email: 'test2@example.com'),
        ),
        parent: const Parent.page(pageId: 'page123'),
        title: [
          const RichText.text(
            text: TextContent(content: 'Test DB'),
            annotations: Annotations(),
            plainText: 'Test DB',
          ),
        ],
        dataSources: [const DataSourceRef(id: 'ds123', name: 'Test DB')],
        archived: false,
        inTrash: false,
        isInline: true,
        url: 'https://www.notion.so/db123',
      );

      final json = database.toJson();

      expect(json['id'], 'db123');
      expect(json['is_inline'], true);
      expect(json['in_trash'], false);
      expect(json['archived'], false);
      expect(json['title'], isA<List>());
      expect(json['data_sources'], isA<List>());
    });

    test('DataSourceRef parses correctly', () {
      final json = {'id': 'ds123', 'name': 'My Data Source'};

      final dataSourceRef = DataSourceRef.fromJson(json);

      expect(dataSourceRef.id, 'ds123');
      expect(dataSourceRef.name, 'My Data Source');
    });
  });

  group('DatabasesService Integration Tests', () {
    // Note: These tests would normally use mocks
    // For now, we only test model serialization
    test('NotionClient has databases service', () {
      final client = NotionClient(token: 'test_token');
      expect(client.databases, isA<DatabasesService>());
      client.close();
    });
  });

  group('Database Query Tests', () {
    test('PaginatedList<Page> can be parsed from query response', () {
      final json = {
        'object': 'list',
        'results': [
          {
            'object': 'page',
            'id': 'page123',
            'created_time': '2025-08-07T10:11:07.504Z',
            'last_edited_time': '2025-08-10T15:53:11.386Z',
            'created_by': {'object': 'user', 'id': 'user123'},
            'last_edited_by': {'object': 'user', 'id': 'user456'},
            'parent': {'type': 'database_id', 'database_id': 'db123'},
            'archived': false,
            'in_trash': false,
            'properties': {
              'Name': {'id': 'title', 'type': 'title', 'title': []},
            },
            'url': 'https://www.notion.so/page123',
          },
        ],
        'next_cursor': null,
        'has_more': false,
        'type': 'page',
      };

      final paginatedList = PaginatedList<Page>.fromJson(json, Page.fromJson);

      expect(paginatedList.results.length, 1);
      expect(paginatedList.hasMore, false);
      expect(paginatedList.nextCursor, null);
      expect(paginatedList.type, 'page');
      expect(paginatedList.results.first.id, 'page123');
    });

    test('Filter and sort structures are correctly formatted', () {
      // Test compound AND filter
      final andFilter = {
        'and': [
          {
            'property': 'Done',
            'checkbox': {'equals': true},
          },
          {
            'property': 'Priority',
            'select': {'equals': 'High'},
          },
        ],
      };

      expect(andFilter['and'], isA<List>());
      expect((andFilter['and']! as List).length, 2);

      // Test compound OR filter
      final orFilter = {
        'or': [
          {
            'property': 'Status',
            'select': {'equals': 'Todo'},
          },
          {
            'property': 'Status',
            'select': {'equals': 'In Progress'},
          },
        ],
      };

      expect(orFilter['or'], isA<List>());
      expect((orFilter['or']! as List).length, 2);

      // Test sorts
      final sorts = [
        {'property': 'Created Time', 'direction': 'descending'},
        {'timestamp': 'last_edited_time', 'direction': 'ascending'},
      ];

      expect(sorts.length, 2);
      expect(sorts[0]['property'], 'Created Time');
      expect(sorts[1]['timestamp'], 'last_edited_time');
    });
  });

  group('Multi-source Database Tests', () {
    test('Database with multiple data sources', () {
      final json = {
        'object': 'database',
        'id': '248104cd-477e-80fd-b757-e945d38000bd',
        'created_time': '2025-08-07T10:11:07.504Z',
        'last_edited_time': '2025-08-10T15:53:11.386Z',
        'created_by': {'object': 'user', 'id': 'user123'},
        'last_edited_by': {'object': 'user', 'id': 'user456'},
        'parent': {
          'type': 'page_id',
          'page_id': '255104cd-477e-808c-b279-d39ab803a7d2',
        },
        'title': [
          {
            'type': 'text',
            'text': {'content': 'Multi-source Database', 'link': null},
            'annotations': {
              'bold': false,
              'italic': false,
              'strikethrough': false,
              'underline': false,
              'code': false,
              'color': 'default',
            },
            'plain_text': 'Multi-source Database',
            'href': null,
          },
        ],
        'data_sources': [
          {
            'id': '248104cd-477e-80af-bc30-000bd28de8f9',
            'name': 'Primary Source',
          },
          {
            'id': '348104cd-477e-80af-bc30-000bd28de8f9',
            'name': 'Secondary Source',
          },
        ],
        'is_inline': false,
        'in_trash': false,
        'archived': false,
        'url': 'https://www.notion.so/248104cd477e80fdb757e945d38000bd',
        'icon': null,
        'cover': null,
      };

      final database = Database.fromJson(json);

      expect(database.dataSources.length, 2);
      expect(
        database.dataSources[0].id,
        '248104cd-477e-80af-bc30-000bd28de8f9',
      );
      expect(database.dataSources[0].name, 'Primary Source');
      expect(
        database.dataSources[1].id,
        '348104cd-477e-80af-bc30-000bd28de8f9',
      );
      expect(database.dataSources[1].name, 'Secondary Source');
    });

    test('DataSourceRef model', () {
      final json = {
        'id': '248104cd-477e-80af-bc30-000bd28de8f9',
        'name': 'Test Data Source',
      };

      final dataSource = DataSourceRef.fromJson(json);

      expect(dataSource.id, '248104cd-477e-80af-bc30-000bd28de8f9');
      expect(dataSource.name, 'Test Data Source');

      final serialized = dataSource.toJson();
      expect(serialized['id'], '248104cd-477e-80af-bc30-000bd28de8f9');
      expect(serialized['name'], 'Test Data Source');
    });

    test('Database with single data source', () {
      final json = {
        'object': 'database',
        'id': '248104cd-477e-80fd-b757-e945d38000bd',
        'created_time': '2025-08-07T10:11:07.504Z',
        'last_edited_time': '2025-08-10T15:53:11.386Z',
        'created_by': {'object': 'user', 'id': 'user123'},
        'last_edited_by': {'object': 'user', 'id': 'user456'},
        'parent': {
          'type': 'page_id',
          'page_id': '255104cd-477e-808c-b279-d39ab803a7d2',
        },
        'title': [
          {
            'type': 'text',
            'text': {'content': 'Single-source Database', 'link': null},
            'annotations': {
              'bold': false,
              'italic': false,
              'strikethrough': false,
              'underline': false,
              'code': false,
              'color': 'default',
            },
            'plain_text': 'Single-source Database',
            'href': null,
          },
        ],
        'data_sources': [
          {
            'id': '248104cd-477e-80af-bc30-000bd28de8f9',
            'name': 'Primary Source',
          },
        ],
        'is_inline': false,
        'in_trash': false,
        'archived': false,
        'url': 'https://www.notion.so/248104cd477e80fdb757e945d38000bd',
        'icon': null,
        'cover': null,
      };

      final database = Database.fromJson(json);

      expect(database.dataSources.length, 1);
      expect(
        database.dataSources[0].id,
        '248104cd-477e-80af-bc30-000bd28de8f9',
      );
      expect(database.dataSources[0].name, 'Primary Source');
    });
  });
}
