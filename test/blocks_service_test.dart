import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('Block Model Tests', () {
    test('Block.fromJson parses paragraph block correctly', () {
      final json = {
        'object': 'block',
        'id': 'block123',
        'parent': {'type': 'page_id', 'page_id': 'page123'},
        'created_time': '2025-10-05T10:00:00.000Z',
        'last_edited_time': '2025-10-05T11:00:00.000Z',
        'created_by': {'object': 'user', 'id': 'user123'},
        'last_edited_by': {'object': 'user', 'id': 'user456'},
        'has_children': false,
        'archived': false,
        'in_trash': false,
        'type': 'paragraph',
        'paragraph': {
          'rich_text': [
            {
              'type': 'text',
              'text': {'content': 'Hello World', 'link': null},
              'annotations': {
                'bold': false,
                'italic': false,
                'strikethrough': false,
                'underline': false,
                'code': false,
                'color': 'default',
              },
              'plain_text': 'Hello World',
              'href': null,
            },
          ],
          'color': 'default',
        },
      };

      final block = Block.fromJson(json);

      block.when(
        paragraph: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          content,
        ) {
          expect(id, 'block123');
          expect(hasChildren, false);
          expect(archived, false);
          expect(inTrash, false);
        },
        heading1: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        heading2: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        heading3: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        bulletedListItem: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        numberedListItem: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        toDo: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        toggle: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        code: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        quote: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        divider:
            (_, __, ___, ____, _____, ______, _______, ________, _________) =>
                fail('Should be paragraph'),
        callout: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
          ___________,
        ) =>
            fail('Should be paragraph'),
        image: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        video: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        file: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
          ___________,
          ____________,
        ) =>
            fail('Should be paragraph'),
        pdf: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
          ___________,
        ) =>
            fail('Should be paragraph'),
        bookmark: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
          ___________,
        ) =>
            fail('Should be paragraph'),
        embed: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        linkPreview: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        table: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
          ___________,
          ____________,
        ) =>
            fail('Should be paragraph'),
        tableRow: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        tableOfContents: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        columnList:
            (_, __, ___, ____, _____, ______, _______, ________, _________) =>
                fail('Should be paragraph'),
        column: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        breadcrumb:
            (_, __, ___, ____, _____, ______, _______, ________, _________) =>
                fail('Should be paragraph'),
        equation: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        syncedBlock: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        template: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        childPage: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        childDatabase: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be paragraph'),
        unsupported:
            (_, __, ___, ____, _____, ______, _______, ________, _________) =>
                fail('Should be paragraph'),
      );
    });

    test('Block.toJson serializes paragraph block correctly', () {
      final block = Block.paragraph(
        id: 'block123',
        parent: const Parent.page(pageId: 'page123'),
        createdTime: DateTime.parse('2025-10-05T10:00:00.000Z'),
        lastEditedTime: DateTime.parse('2025-10-05T11:00:00.000Z'),
        createdBy: const User.person(
          id: 'user123',
          person: PersonInfo(email: 'test@example.com'),
        ),
        lastEditedBy: const User.person(
          id: 'user456',
          person: PersonInfo(email: 'test2@example.com'),
        ),
        hasChildren: false,
        archived: false,
        inTrash: false,
        content: const BlockContent(),
      );

      final json = block.toJson();

      expect(json['id'], 'block123');
      expect(json['type'], 'paragraph');
      expect(json['has_children'], false);
      expect(json['archived'], false);
      expect(json['in_trash'], false);
      expect(json['paragraph'], isA<Map<String, dynamic>>());
    });

    test('BlockChildren.fromJson parses correctly', () {
      final json = {
        'object': 'list',
        'results': [
          {
            'object': 'block',
            'id': 'block1',
            'parent': {'type': 'page_id', 'page_id': 'page123'},
            'created_time': '2025-10-05T10:00:00.000Z',
            'last_edited_time': '2025-10-05T11:00:00.000Z',
            'created_by': {'object': 'user', 'id': 'user123'},
            'last_edited_by': {'object': 'user', 'id': 'user456'},
            'has_children': false,
            'archived': false,
            'in_trash': false,
            'type': 'paragraph',
            'paragraph': {'rich_text': [], 'color': 'default'},
          },
        ],
        'next_cursor': null,
        'has_more': false,
      };

      final blockChildren = BlockChildren.fromJson(json);

      expect(blockChildren.object, 'list');
      expect(blockChildren.results.length, 1);
      expect(blockChildren.hasMore, false);
      expect(blockChildren.nextCursor, null);
    });
  });

  group('BlocksService Integration Tests', () {
    test('NotionClient has blocks service', () {
      final client = NotionClient(token: 'test_token');
      expect(client.blocks, isA<BlocksService>());
      client.close();
    });

    test('BlocksService has all CRUD methods', () {
      final client = NotionClient(token: 'test_token');
      final service = client.blocks;

      // Verify all methods exist
      expect(service.retrieve, isA<Function>());
      expect(service.retrieveChildren, isA<Function>());
      expect(service.appendChildren, isA<Function>());
      expect(service.update, isA<Function>());
      expect(service.delete, isA<Function>());

      client.close();
    });
  });

  group('Block Type Tests', () {
    test('Heading block types parse correctly', () {
      final heading1Json = {
        'object': 'block',
        'id': 'h1',
        'parent': {'type': 'page_id', 'page_id': 'page'},
        'created_time': '2025-10-05T10:00:00.000Z',
        'last_edited_time': '2025-10-05T10:00:00.000Z',
        'created_by': {'object': 'user', 'id': 'user'},
        'last_edited_by': {'object': 'user', 'id': 'user'},
        'has_children': false,
        'archived': false,
        'in_trash': false,
        'type': 'heading_1',
        'heading_1': {
          'rich_text': [],
          'color': 'default',
          'is_toggleable': false,
        },
      };

      final block = Block.fromJson(heading1Json);
      expect(
        block.when(
          paragraph: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          heading1: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              true,
          heading2: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          heading3: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          bulletedListItem: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          numberedListItem: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          toDo: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          toggle: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          code: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          quote: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          divider:
              (_, __, ___, ____, _____, ______, _______, ________, _________) =>
                  false,
          callout: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
            ___________,
          ) =>
              false,
          image: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          video: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          file: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
            ___________,
            ____________,
          ) =>
              false,
          pdf: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
            ___________,
          ) =>
              false,
          bookmark: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
            ___________,
          ) =>
              false,
          embed: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          linkPreview: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          table: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
            ___________,
            ____________,
          ) =>
              false,
          tableRow: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          tableOfContents: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          columnList:
              (_, __, ___, ____, _____, ______, _______, ________, _________) =>
                  false,
          column: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          breadcrumb:
              (_, __, ___, ____, _____, ______, _______, ________, _________) =>
                  false,
          equation: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          syncedBlock: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          template: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          childPage: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          childDatabase: (
            _,
            __,
            ___,
            ____,
            _____,
            ______,
            _______,
            ________,
            _________,
            __________,
          ) =>
              false,
          unsupported:
              (_, __, ___, ____, _____, ______, _______, ________, _________) =>
                  false,
        ),
        true,
      );
    });

    test('ToDo block with checked state parses correctly', () {
      final toDoJson = {
        'object': 'block',
        'id': 'todo1',
        'parent': {'type': 'page_id', 'page_id': 'page'},
        'created_time': '2025-10-05T10:00:00.000Z',
        'last_edited_time': '2025-10-05T10:00:00.000Z',
        'created_by': {'object': 'user', 'id': 'user'},
        'last_edited_by': {'object': 'user', 'id': 'user'},
        'has_children': false,
        'archived': false,
        'in_trash': false,
        'type': 'to_do',
        'to_do': {'rich_text': [], 'color': 'default', 'checked': true},
      };

      final block = Block.fromJson(toDoJson);

      block.when(
        paragraph: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        heading1: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        heading2: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        heading3: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        bulletedListItem: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        numberedListItem: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        toDo: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          content,
        ) {
          expect(id, 'todo1');
          expect(content, isA<ToDoContent>());
          final todoContent = content;
          expect(todoContent.checked, true);
        },
        toggle: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        code: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        quote: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        divider:
            (_, __, ___, ____, _____, ______, _______, ________, _________) =>
                fail('Should be todo'),
        callout: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
          ___________,
        ) =>
            fail('Should be todo'),
        image: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        video: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        file: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
          ___________,
          ____________,
        ) =>
            fail('Should be todo'),
        pdf: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
          ___________,
        ) =>
            fail('Should be todo'),
        bookmark: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
          ___________,
        ) =>
            fail('Should be todo'),
        embed: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        linkPreview: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        table: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
          ___________,
          ____________,
        ) =>
            fail('Should be todo'),
        tableRow: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        tableOfContents: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        columnList:
            (_, __, ___, ____, _____, ______, _______, ________, _________) =>
                fail('Should be todo'),
        column: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        breadcrumb:
            (_, __, ___, ____, _____, ______, _______, ________, _________) =>
                fail('Should be todo'),
        equation: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        syncedBlock: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        template: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        childPage: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        childDatabase: (
          _,
          __,
          ___,
          ____,
          _____,
          ______,
          _______,
          ________,
          _________,
          __________,
        ) =>
            fail('Should be todo'),
        unsupported:
            (_, __, ___, ____, _____, ______, _______, ________, _________) =>
                fail('Should be todo'),
      );
    });
  });
}
