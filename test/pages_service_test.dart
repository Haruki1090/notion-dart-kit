import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('PagesService', () {
    test('NotionClient has pages service', () {
      final client = NotionClient(token: 'test_token');
      expect(client.pages, isA<PagesService>());
      client.close();
    });

    test('Page model structure', () {
      final pageJson = {
        'object': 'page',
        'id': 'test-page-id',
        'created_time': '2023-01-01T00:00:00.000Z',
        'last_edited_time': '2023-01-02T00:00:00.000Z',
        'created_by': {
          'object': 'user',
          'id': 'user-1',
          'type': 'person',
          'person': {'email': 'test@example.com'},
        },
        'last_edited_by': {
          'object': 'user',
          'id': 'user-2',
          'type': 'person',
          'person': {'email': 'editor@example.com'},
        },
        'parent': {'type': 'workspace', 'workspace': true},
        'archived': false,
        'in_trash': false,
        'properties': {
          'Title': {'id': 'title', 'type': 'title'},
        },
        'url': 'https://notion.so/test-page',
      };

      final page = Page.fromJson(pageJson);
      expect(page.id, 'test-page-id');
      expect(page.archived, false);
      expect(page.inTrash, false);
      expect(page.url, 'https://notion.so/test-page');
      expect(page.properties.length, 1);
    });

    test('PageIcon emoji from JSON', () {
      final iconJson = {'type': 'emoji', 'emoji': '🚀'};

      final icon = PageIcon.fromJson(iconJson);
      expect(icon, isA<EmojiPageIcon>());
      icon.map(
        emoji: (emojiIcon) => expect(emojiIcon.emoji, '🚀'),
        file: (_) => fail('Expected emoji icon'),
      );
    });

    test('NotionFile external from JSON', () {
      final fileJson = {
        'type': 'external',
        'external': {'url': 'https://example.com/image.png'},
      };

      final file = NotionFile.fromJson(fileJson);
      expect(file, isA<ExternalFile>());
      file.map(
        external: (externalFile) =>
            expect(externalFile.url, 'https://example.com/image.png'),
        uploaded: (_) => fail('Expected external file'),
      );
    });

    test('PropertyItemList from JSON', () {
      final propertyItemListJson = {
        'object': 'list',
        'type': 'property_item',
        'results': [
          {
            'object': 'property_item',
            'id': 'title',
            'type': 'title',
            'title': [
              {
                'type': 'text',
                'text': {'content': 'Test Title', 'link': null},
                'annotations': {
                  'bold': false,
                  'italic': false,
                  'strikethrough': false,
                  'underline': false,
                  'code': false,
                  'color': 'default'
                },
                'plain_text': 'Test Title',
                'href': null
              }
            ]
          }
        ],
        'property_item': {
          'id': 'title',
          'type': 'title',
          'title': [
            {
              'type': 'text',
              'text': {'content': 'Test Title', 'link': null},
              'annotations': {
                'bold': false,
                'italic': false,
                'strikethrough': false,
                'underline': false,
                'code': false,
                'color': 'default'
              },
              'plain_text': 'Test Title',
              'href': null
            }
          ]
        },
        'next_url': null,
        'has_more': false,
        'next_cursor': null
      };

      final propertyItemList = PropertyItemList.fromJson(propertyItemListJson);
      expect(propertyItemList.object, 'list');
      expect(propertyItemList.type, 'property_item');
      expect(propertyItemList.results.length, 1);
      expect(propertyItemList.hasMore, false);
      
      final firstResult = propertyItemList.results[0];
      expect(firstResult.id, 'title');
      expect(firstResult.type, 'title');
      
      firstResult.value.when(
        title: (id, title) {
          expect(id, 'title');
          expect(title.length, 1);
          expect(title[0].plainText, 'Test Title');
        },
        checkbox: (id, checkbox) => fail('Should be title property'),
        richText: (id, richText) => fail('Should be title property'),
        number: (id, number) => fail('Should be title property'),
        select: (id, select) => fail('Should be title property'),
        multiSelect: (id, multiSelect) => fail('Should be title property'),
        status: (id, status) => fail('Should be title property'),
        date: (id, date) => fail('Should be title property'),
        people: (id, people) => fail('Should be title property'),
        files: (id, files) => fail('Should be title property'),
        email: (id, email) => fail('Should be title property'),
        phoneNumber: (id, phoneNumber) => fail('Should be title property'),
        url: (id, url) => fail('Should be title property'),
        createdTime: (id, createdTime) => fail('Should be title property'),
        createdBy: (id, createdBy) => fail('Should be title property'),
        lastEditedTime: (id, lastEditedTime) => fail('Should be title property'),
        lastEditedBy: (id, lastEditedBy) => fail('Should be title property'),
        formula: (id, formula) => fail('Should be title property'),
        relation: (id, relation) => fail('Should be title property'),
        rollup: (id, rollup) => fail('Should be title property'),
        uniqueId: (id, uniqueId) => fail('Should be title property'),
        verification: (id, verification) => fail('Should be title property'),
      );
    });
  });
}
