import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('BlockContent serialization uses snake_case Notion keys', () {
    test('BlockContent.toJson emits rich_text / color / is_toggleable', () {
      const content = BlockContent(isToggleable: true);
      final json = content.toJson();

      expect(json.containsKey('rich_text'), true);
      expect(json.containsKey('color'), true);
      expect(json['color'], 'default');
      expect(json['is_toggleable'], true);
      // Must NOT use the camelCase keys from the default json_serializable output.
      expect(json.containsKey('richText'), false);
      expect(json.containsKey('isToggleable'), false);
    });

    test('BlockContent.toJson omits is_toggleable when null', () {
      const content = BlockContent(isToggleable: null);
      expect(content.toJson().containsKey('is_toggleable'), false);
    });

    test('ToDoContent.toJson emits rich_text / color / checked', () {
      const content = ToDoContent(checked: true);
      final json = content.toJson();

      expect(json.containsKey('rich_text'), true);
      expect(json['checked'], true);
      expect(json.containsKey('richText'), false);
    });

    test('CodeContent.toJson emits rich_text / caption / language', () {
      const content = CodeContent(language: 'dart');
      final json = content.toJson();

      expect(json.containsKey('rich_text'), true);
      expect(json.containsKey('caption'), true);
      expect(json['language'], 'dart');
    });

    test('Block.toJson nests snake_case content for heading blocks', () {
      final block = Block.heading1(
        id: 'h1',
        parent: const Parent.page(pageId: 'p'),
        createdTime: DateTime.parse('2026-01-01T00:00:00.000Z'),
        lastEditedTime: DateTime.parse('2026-01-01T00:00:00.000Z'),
        createdBy: const User.person(id: 'u', person: PersonInfo()),
        lastEditedBy: const User.person(id: 'u', person: PersonInfo()),
        hasChildren: false,
        archived: false,
        inTrash: false,
        content: const BlockContent(),
      );

      final heading = block.toJson()['heading_1'] as Map<String, dynamic>;
      expect(heading.containsKey('rich_text'), true);
      expect(heading.containsKey('is_toggleable'), true);
      expect(heading.containsKey('richText'), false);
    });
  });
}
