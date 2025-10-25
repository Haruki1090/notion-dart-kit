import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('PropertyItem', () {
    test('should create PropertyItem from JSON', () {
      final json = {
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
              'color': 'default',
            },
            'plain_text': 'Test Title',
            'href': null,
          },
        ],
        'next_url': null,
      };

      final propertyItem = PropertyItem.fromJson(json);

      expect(propertyItem.object, 'property_item');
      expect(propertyItem.id, 'title');
      expect(propertyItem.type, 'title');
      expect(propertyItem.nextUrl, null);

      propertyItem.value.when(
        title: (id, title) {
          expect(id, 'title');
          expect(title.length, 1);
          expect(title[0].plainText, 'Test Title');
        },
        checkbox: (_, __) => fail('Should be title property'),
        richText: (_, __) => fail('Should be title property'),
        number: (_, __) => fail('Should be title property'),
        select: (_, __) => fail('Should be title property'),
        multiSelect: (_, __) => fail('Should be title property'),
        status: (_, __) => fail('Should be title property'),
        date: (_, __) => fail('Should be title property'),
        people: (_, __) => fail('Should be title property'),
        files: (_, __) => fail('Should be title property'),
        email: (_, __) => fail('Should be title property'),
        phoneNumber: (_, __) => fail('Should be title property'),
        url: (_, __) => fail('Should be title property'),
        createdTime: (_, __) => fail('Should be title property'),
        createdBy: (_, __) => fail('Should be title property'),
        lastEditedTime: (_, __) => fail('Should be title property'),
        lastEditedBy: (_, __) => fail('Should be title property'),
        formula: (_, __) => fail('Should be title property'),
        relation: (_, __) => fail('Should be title property'),
        rollup: (_, __) => fail('Should be title property'),
        uniqueId: (_, __) => fail('Should be title property'),
        verification: (_, __) => fail('Should be title property'),
      );
    });
  });

  group('PropertyItemList', () {
    test('should create PropertyItemList from JSON', () {
      final json = {
        'object': 'list',
        'type': 'property_item',
        'results': [
          {
            'object': 'property_item',
            'id': 'relation_id',
            'type': 'relation',
            'relation': [
              {'id': 'page-id-1'},
            ],
          },
        ],
        'property_item': {
          'id': 'relation_id',
          'type': 'relation',
          'relation': [],
        },
        'next_url': null,
        'has_more': false,
        'next_cursor': null,
      };

      final propertyItemList = PropertyItemList.fromJson(json);

      expect(propertyItemList.object, 'list');
      expect(propertyItemList.type, 'property_item');
      expect(propertyItemList.results.length, 1);
      expect(propertyItemList.hasMore, false);
      expect(propertyItemList.nextUrl, null);
      expect(propertyItemList.nextCursor, null);

      expect(propertyItemList.results[0].id, 'relation_id');
      expect(propertyItemList.results[0].type, 'relation');

      expect(propertyItemList.propertyItem.id, 'relation_id');
      expect(propertyItemList.propertyItem.type, 'relation');
    });
  });
}
