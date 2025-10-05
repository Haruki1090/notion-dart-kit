import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notion_dart_kit/src/models/parent.dart';
import 'package:notion_dart_kit/src/models/user.dart';
import 'package:notion_dart_kit/src/models/block_content.dart';

part 'block.freezed.dart';

/// Base block object representing a piece of content within Notion
@Freezed(toJson: false, fromJson: false)
class Block with _$Block {
  const Block._();

  /// Paragraph block
  const factory Block.paragraph({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required BlockContent content,
  }) = _ParagraphBlock;

  /// Heading 1 block
  const factory Block.heading1({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required BlockContent content,
  }) = _Heading1Block;

  /// Heading 2 block
  const factory Block.heading2({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required BlockContent content,
  }) = _Heading2Block;

  /// Heading 3 block
  const factory Block.heading3({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required BlockContent content,
  }) = _Heading3Block;

  /// Bulleted list item block
  const factory Block.bulletedListItem({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required BlockContent content,
  }) = _BulletedListItemBlock;

  /// Numbered list item block
  const factory Block.numberedListItem({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required BlockContent content,
  }) = _NumberedListItemBlock;

  /// To-do block
  const factory Block.toDo({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required ToDoContent content,
  }) = _ToDoBlock;

  /// Toggle block
  const factory Block.toggle({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required BlockContent content,
  }) = _ToggleBlock;

  /// Code block
  const factory Block.code({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required CodeContent content,
  }) = _CodeBlock;

  /// Quote block
  const factory Block.quote({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required BlockContent content,
  }) = _QuoteBlock;

  /// Divider block
  const factory Block.divider({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
  }) = _DividerBlock;

  /// Unsupported block type
  const factory Block.unsupported({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
  }) = _UnsupportedBlock;

  /// Custom JSON deserialization
  factory Block.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String;
    final id = json['id'] as String;
    final parent = Parent.fromJson(json['parent'] as Map<String, dynamic>);
    final createdTime = DateTime.parse(json['created_time'] as String);
    final lastEditedTime = DateTime.parse(json['last_edited_time'] as String);
    final createdBy = User.fromJson(json['created_by'] as Map<String, dynamic>);
    final lastEditedBy =
        User.fromJson(json['last_edited_by'] as Map<String, dynamic>);
    final hasChildren = json['has_children'] as bool;
    final archived = json['archived'] as bool;
    final inTrash = json['in_trash'] as bool? ?? false;

    switch (type) {
      case 'paragraph':
        return Block.paragraph(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          content:
              BlockContent.fromJson(json['paragraph'] as Map<String, dynamic>),
        );
      case 'heading_1':
        return Block.heading1(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          content:
              BlockContent.fromJson(json['heading_1'] as Map<String, dynamic>),
        );
      case 'heading_2':
        return Block.heading2(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          content:
              BlockContent.fromJson(json['heading_2'] as Map<String, dynamic>),
        );
      case 'heading_3':
        return Block.heading3(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          content:
              BlockContent.fromJson(json['heading_3'] as Map<String, dynamic>),
        );
      case 'bulleted_list_item':
        return Block.bulletedListItem(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          content: BlockContent.fromJson(
              json['bulleted_list_item'] as Map<String, dynamic>),
        );
      case 'numbered_list_item':
        return Block.numberedListItem(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          content: BlockContent.fromJson(
              json['numbered_list_item'] as Map<String, dynamic>),
        );
      case 'to_do':
        return Block.toDo(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          content: ToDoContent.fromJson(json['to_do'] as Map<String, dynamic>),
        );
      case 'toggle':
        return Block.toggle(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          content:
              BlockContent.fromJson(json['toggle'] as Map<String, dynamic>),
        );
      case 'code':
        return Block.code(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          content: CodeContent.fromJson(json['code'] as Map<String, dynamic>),
        );
      case 'quote':
        return Block.quote(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          content: BlockContent.fromJson(json['quote'] as Map<String, dynamic>),
        );
      case 'divider':
        return Block.divider(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
        );
      default:
        return Block.unsupported(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
        );
    }
  }

  /// Custom JSON serialization
  Map<String, dynamic> toJson() {
    return when(
      paragraph: (id, parent, createdTime, lastEditedTime, createdBy,
              lastEditedBy, hasChildren, archived, inTrash, content) =>
          {
        'object': 'block',
        'id': id,
        'parent': parent.toJson(),
        'created_time': createdTime.toIso8601String(),
        'last_edited_time': lastEditedTime.toIso8601String(),
        'created_by': createdBy.toJson(),
        'last_edited_by': lastEditedBy.toJson(),
        'has_children': hasChildren,
        'archived': archived,
        'in_trash': inTrash,
        'type': 'paragraph',
        'paragraph': content.toJson(),
      },
      heading1: (id, parent, createdTime, lastEditedTime, createdBy,
              lastEditedBy, hasChildren, archived, inTrash, content) =>
          {
        'object': 'block',
        'id': id,
        'parent': parent.toJson(),
        'created_time': createdTime.toIso8601String(),
        'last_edited_time': lastEditedTime.toIso8601String(),
        'created_by': createdBy.toJson(),
        'last_edited_by': lastEditedBy.toJson(),
        'has_children': hasChildren,
        'archived': archived,
        'in_trash': inTrash,
        'type': 'heading_1',
        'heading_1': content.toJson(),
      },
      heading2: (id, parent, createdTime, lastEditedTime, createdBy,
              lastEditedBy, hasChildren, archived, inTrash, content) =>
          {
        'object': 'block',
        'id': id,
        'parent': parent.toJson(),
        'created_time': createdTime.toIso8601String(),
        'last_edited_time': lastEditedTime.toIso8601String(),
        'created_by': createdBy.toJson(),
        'last_edited_by': lastEditedBy.toJson(),
        'has_children': hasChildren,
        'archived': archived,
        'in_trash': inTrash,
        'type': 'heading_2',
        'heading_2': content.toJson(),
      },
      heading3: (id, parent, createdTime, lastEditedTime, createdBy,
              lastEditedBy, hasChildren, archived, inTrash, content) =>
          {
        'object': 'block',
        'id': id,
        'parent': parent.toJson(),
        'created_time': createdTime.toIso8601String(),
        'last_edited_time': lastEditedTime.toIso8601String(),
        'created_by': createdBy.toJson(),
        'last_edited_by': lastEditedBy.toJson(),
        'has_children': hasChildren,
        'archived': archived,
        'in_trash': inTrash,
        'type': 'heading_3',
        'heading_3': content.toJson(),
      },
      bulletedListItem: (id, parent, createdTime, lastEditedTime, createdBy,
              lastEditedBy, hasChildren, archived, inTrash, content) =>
          {
        'object': 'block',
        'id': id,
        'parent': parent.toJson(),
        'created_time': createdTime.toIso8601String(),
        'last_edited_time': lastEditedTime.toIso8601String(),
        'created_by': createdBy.toJson(),
        'last_edited_by': lastEditedBy.toJson(),
        'has_children': hasChildren,
        'archived': archived,
        'in_trash': inTrash,
        'type': 'bulleted_list_item',
        'bulleted_list_item': content.toJson(),
      },
      numberedListItem: (id, parent, createdTime, lastEditedTime, createdBy,
              lastEditedBy, hasChildren, archived, inTrash, content) =>
          {
        'object': 'block',
        'id': id,
        'parent': parent.toJson(),
        'created_time': createdTime.toIso8601String(),
        'last_edited_time': lastEditedTime.toIso8601String(),
        'created_by': createdBy.toJson(),
        'last_edited_by': lastEditedBy.toJson(),
        'has_children': hasChildren,
        'archived': archived,
        'in_trash': inTrash,
        'type': 'numbered_list_item',
        'numbered_list_item': content.toJson(),
      },
      toDo: (id, parent, createdTime, lastEditedTime, createdBy, lastEditedBy,
              hasChildren, archived, inTrash, content) =>
          {
        'object': 'block',
        'id': id,
        'parent': parent.toJson(),
        'created_time': createdTime.toIso8601String(),
        'last_edited_time': lastEditedTime.toIso8601String(),
        'created_by': createdBy.toJson(),
        'last_edited_by': lastEditedBy.toJson(),
        'has_children': hasChildren,
        'archived': archived,
        'in_trash': inTrash,
        'type': 'to_do',
        'to_do': content.toJson(),
      },
      toggle: (id, parent, createdTime, lastEditedTime, createdBy, lastEditedBy,
              hasChildren, archived, inTrash, content) =>
          {
        'object': 'block',
        'id': id,
        'parent': parent.toJson(),
        'created_time': createdTime.toIso8601String(),
        'last_edited_time': lastEditedTime.toIso8601String(),
        'created_by': createdBy.toJson(),
        'last_edited_by': lastEditedBy.toJson(),
        'has_children': hasChildren,
        'archived': archived,
        'in_trash': inTrash,
        'type': 'toggle',
        'toggle': content.toJson(),
      },
      code: (id, parent, createdTime, lastEditedTime, createdBy, lastEditedBy,
              hasChildren, archived, inTrash, content) =>
          {
        'object': 'block',
        'id': id,
        'parent': parent.toJson(),
        'created_time': createdTime.toIso8601String(),
        'last_edited_time': lastEditedTime.toIso8601String(),
        'created_by': createdBy.toJson(),
        'last_edited_by': lastEditedBy.toJson(),
        'has_children': hasChildren,
        'archived': archived,
        'in_trash': inTrash,
        'type': 'code',
        'code': content.toJson(),
      },
      quote: (id, parent, createdTime, lastEditedTime, createdBy, lastEditedBy,
              hasChildren, archived, inTrash, content) =>
          {
        'object': 'block',
        'id': id,
        'parent': parent.toJson(),
        'created_time': createdTime.toIso8601String(),
        'last_edited_time': lastEditedTime.toIso8601String(),
        'created_by': createdBy.toJson(),
        'last_edited_by': lastEditedBy.toJson(),
        'has_children': hasChildren,
        'archived': archived,
        'in_trash': inTrash,
        'type': 'quote',
        'quote': content.toJson(),
      },
      divider: (id, parent, createdTime, lastEditedTime, createdBy,
              lastEditedBy, hasChildren, archived, inTrash) =>
          {
        'object': 'block',
        'id': id,
        'parent': parent.toJson(),
        'created_time': createdTime.toIso8601String(),
        'last_edited_time': lastEditedTime.toIso8601String(),
        'created_by': createdBy.toJson(),
        'last_edited_by': lastEditedBy.toJson(),
        'has_children': hasChildren,
        'archived': archived,
        'in_trash': inTrash,
        'type': 'divider',
        'divider': {},
      },
      unsupported: (id, parent, createdTime, lastEditedTime, createdBy,
              lastEditedBy, hasChildren, archived, inTrash) =>
          {
        'object': 'block',
        'id': id,
        'parent': parent.toJson(),
        'created_time': createdTime.toIso8601String(),
        'last_edited_time': lastEditedTime.toIso8601String(),
        'created_by': createdBy.toJson(),
        'last_edited_by': lastEditedBy.toJson(),
        'has_children': hasChildren,
        'archived': archived,
        'in_trash': inTrash,
        'type': 'unsupported',
      },
    );
  }
}
