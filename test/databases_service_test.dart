import 'package:test/test.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';

void main() {
  group('Database Model Tests', () {
    test('Database.fromJson parses correctly', () {
      final json = {
        'object': 'database',
        'id': '248104cd-477e-80fd-b757-e945d38000bd',
        'created_time': '2025-08-07T10:11:07.504Z',
        'last_edited_time': '2025-08-10T15:53:11.386Z',
        'created_by': {
          'object': 'user',
          'id': 'user123',
        },
        'last_edited_by': {
          'object': 'user',
          'id': 'user456',
        },
        'parent': {
          'type': 'page_id',
          'page_id': '255104cd-477e-808c-b279-d39ab803a7d2',
        },
        'title': [
          {
            'type': 'text',
            'text': {
              'content': 'My Task Tracker',
              'link': null,
            },
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
      expect(database.dataSources.first.id,
          '248104cd-477e-80af-bc30-000bd28de8f9');
      expect(database.dataSources.first.name, 'My Task Tracker');
    });

    test('Database.toJson serializes correctly', () {
      final database = Database(
        id: 'db123',
        createdTime: DateTime.parse('2025-08-07T10:11:07.504Z'),
        lastEditedTime: DateTime.parse('2025-08-10T15:53:11.386Z'),
        createdBy: User.person(
          id: 'user123',
          person: const PersonInfo(email: 'test@example.com'),
        ),
        lastEditedBy: User.person(
          id: 'user456',
          person: const PersonInfo(email: 'test2@example.com'),
        ),
        parent: const Parent.page(pageId: 'page123'),
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
      final json = {
        'id': 'ds123',
        'name': 'My Data Source',
      };

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
}
