import 'package:freezed_annotation/freezed_annotation.dart';

import 'block_content.dart';
import 'parent.dart';
import 'rich_text.dart';
import 'user.dart';

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

  /// Callout block
  const factory Block.callout({
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
    Map<String, dynamic>? icon,
  }) = _CalloutBlock;

  /// Image block
  const factory Block.image({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required Map<String, dynamic> file,
  }) = _ImageBlock;

  /// Video block
  const factory Block.video({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required Map<String, dynamic> file,
  }) = _VideoBlock;

  /// File block
  const factory Block.file({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required Map<String, dynamic> file,
    List<RichText>? caption,
    String? name,
  }) = _FileBlock;

  /// PDF block
  const factory Block.pdf({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required Map<String, dynamic> file,
    List<RichText>? caption,
  }) = _PdfBlock;

  /// Bookmark block
  const factory Block.bookmark({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required String url,
    List<RichText>? caption,
  }) = _BookmarkBlock;

  /// Embed block
  const factory Block.embed({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required String url,
  }) = _EmbedBlock;

  /// Link preview block
  const factory Block.linkPreview({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required String url,
  }) = _LinkPreviewBlock;

  /// Table block
  const factory Block.table({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required int tableWidth,
    required bool hasColumnHeader,
    required bool hasRowHeader,
  }) = _TableBlock;

  /// Table row block
  const factory Block.tableRow({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required List<List<RichText>> cells,
  }) = _TableRowBlock;

  /// Table of contents block
  const factory Block.tableOfContents({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required String color,
  }) = _TableOfContentsBlock;

  /// Column list block
  const factory Block.columnList({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
  }) = _ColumnListBlock;

  /// Column block
  const factory Block.column({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    double? widthRatio,
  }) = _ColumnBlock;

  /// Breadcrumb block
  const factory Block.breadcrumb({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
  }) = _BreadcrumbBlock;

  /// Equation block
  const factory Block.equation({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required String expression,
  }) = _EquationBlock;

  /// Synced block
  const factory Block.syncedBlock({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    String? syncedFromBlockId,
  }) = _SyncedBlock;

  /// Template block
  const factory Block.template({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required List<RichText> richText,
  }) = _TemplateBlock;

  /// Child page block
  const factory Block.childPage({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required String title,
  }) = _ChildPageBlock;

  /// Child database block
  const factory Block.childDatabase({
    required String id,
    required Parent parent,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required bool hasChildren,
    required bool archived,
    required bool inTrash,
    required String title,
  }) = _ChildDatabaseBlock;

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
            json['bulleted_list_item'] as Map<String, dynamic>,
          ),
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
            json['numbered_list_item'] as Map<String, dynamic>,
          ),
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
      case 'callout':
        return Block.callout(
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
              BlockContent.fromJson(json['callout'] as Map<String, dynamic>),
          icon: (json['callout'] as Map<String, dynamic>)['icon']
              as Map<String, dynamic>?,
        );
      case 'image':
        return Block.image(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          file: json['image'] as Map<String, dynamic>,
        );
      case 'video':
        return Block.video(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          file: json['video'] as Map<String, dynamic>,
        );
      case 'file':
        final fileData = json['file'] as Map<String, dynamic>;
        return Block.file(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          file: fileData,
          caption: fileData['caption'] != null
              ? (fileData['caption'] as List)
                  .map((e) => RichText.fromJson(e as Map<String, dynamic>))
                  .toList()
              : null,
          name: fileData['name'] as String?,
        );
      case 'pdf':
        final pdfData = json['pdf'] as Map<String, dynamic>;
        return Block.pdf(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          file: pdfData,
          caption: pdfData['caption'] != null
              ? (pdfData['caption'] as List)
                  .map((e) => RichText.fromJson(e as Map<String, dynamic>))
                  .toList()
              : null,
        );
      case 'bookmark':
        final bookmarkData = json['bookmark'] as Map<String, dynamic>;
        return Block.bookmark(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          url: bookmarkData['url'] as String,
          caption: bookmarkData['caption'] != null
              ? (bookmarkData['caption'] as List)
                  .map((e) => RichText.fromJson(e as Map<String, dynamic>))
                  .toList()
              : null,
        );
      case 'embed':
        return Block.embed(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          url: (json['embed'] as Map<String, dynamic>)['url'] as String,
        );
      case 'link_preview':
        return Block.linkPreview(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          url: (json['link_preview'] as Map<String, dynamic>)['url'] as String,
        );
      case 'table':
        final tableData = json['table'] as Map<String, dynamic>;
        return Block.table(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          tableWidth: tableData['table_width'] as int,
          hasColumnHeader: tableData['has_column_header'] as bool? ?? false,
          hasRowHeader: tableData['has_row_header'] as bool? ?? false,
        );
      case 'table_row':
        final rowData = json['table_row'] as Map<String, dynamic>;
        return Block.tableRow(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          cells: (rowData['cells'] as List)
              .map(
                (cell) => (cell as List)
                    .map((e) => RichText.fromJson(e as Map<String, dynamic>))
                    .toList(),
              )
              .toList(),
        );
      case 'table_of_contents':
        final tocData = json['table_of_contents'] as Map<String, dynamic>;
        return Block.tableOfContents(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          color: tocData['color'] as String? ?? 'default',
        );
      case 'column_list':
        return Block.columnList(
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
      case 'column':
        final columnData = json['column'] as Map<String, dynamic>;
        return Block.column(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          widthRatio: columnData['width_ratio'] as double?,
        );
      case 'breadcrumb':
        return Block.breadcrumb(
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
      case 'equation':
        final equationData = json['equation'] as Map<String, dynamic>;
        return Block.equation(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          expression: equationData['expression'] as String,
        );
      case 'synced_block':
        final syncedData = json['synced_block'] as Map<String, dynamic>;
        return Block.syncedBlock(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          syncedFromBlockId: syncedData['synced_from'] != null
              ? (syncedData['synced_from'] as Map<String, dynamic>)['block_id']
                  as String?
              : null,
        );
      case 'template':
        final templateData = json['template'] as Map<String, dynamic>;
        return Block.template(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          richText: (templateData['rich_text'] as List)
              .map((e) => RichText.fromJson(e as Map<String, dynamic>))
              .toList(),
        );
      case 'child_page':
        final childPageData = json['child_page'] as Map<String, dynamic>;
        return Block.childPage(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          title: childPageData['title'] as String,
        );
      case 'child_database':
        final childDbData = json['child_database'] as Map<String, dynamic>;
        return Block.childDatabase(
          id: id,
          parent: parent,
          createdTime: createdTime,
          lastEditedTime: lastEditedTime,
          createdBy: createdBy,
          lastEditedBy: lastEditedBy,
          hasChildren: hasChildren,
          archived: archived,
          inTrash: inTrash,
          title: childDbData['title'] as String,
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
  Map<String, dynamic> toJson() => when(
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
        ) =>
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
        heading1: (
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
        ) =>
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
        heading2: (
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
        ) =>
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
        heading3: (
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
        ) =>
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
        bulletedListItem: (
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
        ) =>
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
        numberedListItem: (
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
        ) =>
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
        ) =>
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
        toggle: (
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
        ) =>
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
        code: (
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
        ) =>
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
        quote: (
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
        ) =>
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
        divider: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
        ) =>
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
        callout: (
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
          icon,
        ) =>
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
          'type': 'callout',
          'callout': {
            ...content.toJson(),
            if (icon != null) 'icon': icon,
          },
        },
        image: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          file,
        ) =>
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
          'type': 'image',
          'image': file,
        },
        video: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          file,
        ) =>
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
          'type': 'video',
          'video': file,
        },
        file: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          file,
          caption,
          name,
        ) =>
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
          'type': 'file',
          'file': {
            ...file,
            if (caption != null)
              'caption': caption.map((e) => e.toJson()).toList(),
            if (name != null) 'name': name,
          },
        },
        pdf: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          file,
          caption,
        ) =>
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
          'type': 'pdf',
          'pdf': {
            ...file,
            if (caption != null)
              'caption': caption.map((e) => e.toJson()).toList(),
          },
        },
        bookmark: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          url,
          caption,
        ) =>
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
          'type': 'bookmark',
          'bookmark': {
            'url': url,
            if (caption != null)
              'caption': caption.map((e) => e.toJson()).toList(),
          },
        },
        embed: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          url,
        ) =>
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
          'type': 'embed',
          'embed': {'url': url},
        },
        linkPreview: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          url,
        ) =>
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
          'type': 'link_preview',
          'link_preview': {'url': url},
        },
        table: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          tableWidth,
          hasColumnHeader,
          hasRowHeader,
        ) =>
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
          'type': 'table',
          'table': {
            'table_width': tableWidth,
            'has_column_header': hasColumnHeader,
            'has_row_header': hasRowHeader,
          },
        },
        tableRow: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          cells,
        ) =>
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
          'type': 'table_row',
          'table_row': {
            'cells': cells
                .map((cell) => cell.map((e) => e.toJson()).toList())
                .toList(),
          },
        },
        tableOfContents: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          color,
        ) =>
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
          'type': 'table_of_contents',
          'table_of_contents': {
            'color': color,
          },
        },
        columnList: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
        ) =>
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
          'type': 'column_list',
          'column_list': {},
        },
        column: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          widthRatio,
        ) =>
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
          'type': 'column',
          'column': {
            if (widthRatio != null) 'width_ratio': widthRatio,
          },
        },
        breadcrumb: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
        ) =>
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
          'type': 'breadcrumb',
          'breadcrumb': {},
        },
        equation: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          expression,
        ) =>
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
          'type': 'equation',
          'equation': {'expression': expression},
        },
        syncedBlock: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          syncedFromBlockId,
        ) =>
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
          'type': 'synced_block',
          'synced_block': {
            if (syncedFromBlockId != null)
              'synced_from': {'block_id': syncedFromBlockId},
          },
        },
        template: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          richText,
        ) =>
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
          'type': 'template',
          'template': {
            'rich_text': richText.map((e) => e.toJson()).toList(),
          },
        },
        childPage: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          title,
        ) =>
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
          'type': 'child_page',
          'child_page': {'title': title},
        },
        childDatabase: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
          title,
        ) =>
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
          'type': 'child_database',
          'child_database': {'title': title},
        },
        unsupported: (
          id,
          parent,
          createdTime,
          lastEditedTime,
          createdBy,
          lastEditedBy,
          hasChildren,
          archived,
          inTrash,
        ) =>
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
