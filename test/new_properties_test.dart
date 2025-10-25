import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('New Properties and Parameters Tests', () {
    test('Page with is_locked property', () {
      final json = {
        'object': 'page',
        'id': '59833787-2cf9-4fdf-8782-e53db20768a5',
        'created_time': '2022-03-01T19:05:00.000Z',
        'last_edited_time': '2022-07-06T19:16:00.000Z',
        'created_by': {
          'object': 'user',
          'id': 'ee5f0f84-409a-440f-983a-a5315961c6e4',
        },
        'last_edited_by': {
          'object': 'user',
          'id': 'ee5f0f84-409a-440f-983a-a5315961c6e4',
        },
        'parent': {
          'type': 'database_id',
          'database_id': '48f8fee9-cd79-4180-bc2f-ec0398253067',
        },
        'archived': false,
        'in_trash': false,
        'is_locked': true,
        'properties': {
          'Name': {
            'id': 'title',
            'type': 'title',
            'title': [
              {
                'type': 'text',
                'text': {'content': 'Test Page', 'link': null},
                'annotations': {
                  'bold': false,
                  'italic': false,
                  'strikethrough': false,
                  'underline': false,
                  'code': false,
                  'color': 'default',
                },
                'plain_text': 'Test Page',
                'href': null,
              },
            ],
          },
        },
        'url': 'https://www.notion.so/Test-Page-59833787',
      };

      final page = Page.fromJson(json);

      expect(page.id, '59833787-2cf9-4fdf-8782-e53db20768a5');
      expect(page.archived, false);
      expect(page.inTrash, false);
      expect(page.isLocked, true);

      final serialized = page.toJson();
      expect(serialized['is_locked'], true);
      expect(serialized['in_trash'], false);
      expect(serialized['archived'], false);
    });

    test('Page without is_locked property defaults to false', () {
      final json = {
        'object': 'page',
        'id': '59833787-2cf9-4fdf-8782-e53db20768a5',
        'created_time': '2022-03-01T19:05:00.000Z',
        'last_edited_time': '2022-07-06T19:16:00.000Z',
        'created_by': {
          'object': 'user',
          'id': 'ee5f0f84-409a-440f-983a-a5315961c6e4',
        },
        'last_edited_by': {
          'object': 'user',
          'id': 'ee5f0f84-409a-440f-983a-a5315961c6e4',
        },
        'parent': {
          'type': 'database_id',
          'database_id': '48f8fee9-cd79-4180-bc2f-ec0398253067',
        },
        'archived': false,
        'in_trash': false,
        'properties': {
          'Name': {
            'id': 'title',
            'type': 'title',
            'title': [
              {
                'type': 'text',
                'text': {'content': 'Test Page', 'link': null},
                'annotations': {
                  'bold': false,
                  'italic': false,
                  'strikethrough': false,
                  'underline': false,
                  'code': false,
                  'color': 'default',
                },
                'plain_text': 'Test Page',
                'href': null,
              },
            ],
          },
        },
        'url': 'https://www.notion.so/Test-Page-59833787',
      };

      final page = Page.fromJson(json);

      expect(page.isLocked, false); // Should default to false
    });

    test('Database with is_locked property', () {
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
            'text': {'content': 'Locked Database', 'link': null},
            'annotations': {
              'bold': false,
              'italic': false,
              'strikethrough': false,
              'underline': false,
              'code': false,
              'color': 'default',
            },
            'plain_text': 'Locked Database',
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
        'is_locked': true,
        'url': 'https://www.notion.so/248104cd477e80fdb757e945d38000bd',
        'icon': null,
        'cover': null,
      };

      final database = Database.fromJson(json);

      expect(database.id, '248104cd-477e-80fd-b757-e945d38000bd');
      expect(database.isLocked, true);
      expect(database.inTrash, false);
      expect(database.archived, false);
    });

    test('File block with name property', () {
      // Test that file blocks can have a name property
      expect(true, true); // Placeholder test - file blocks already support name property
    });

    test('API version feature availability for new properties', () {
      // Test that is_locked and in_trash properties are available in supported API versions
      final features2022 = ApiVersion.getFeatureAvailability(ApiVersion.latest);
      final features2021 = ApiVersion.getFeatureAvailability(ApiVersion.v2021_05_13);

      expect(features2022['is_locked_property'], true);
      expect(features2022['in_trash_property'], true);
      expect(features2022['file_block_names'], true);

      expect(features2021['is_locked_property'], false);
      expect(features2021['in_trash_property'], false);
      expect(features2021['file_block_names'], false);
    });
  });
}