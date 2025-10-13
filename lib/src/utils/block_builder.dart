/// BlockBuilder API for creating Notion block objects
///
/// This API provides a fluent interface for creating block objects
/// without verbose nested structures. Use this when appending blocks to pages.
///
/// Example:
/// ```dart
/// // Simple blocks
/// final block = BlockBuilder.paragraph('Hello World').toJson();
///
/// // With formatting
/// final callout = BlockBuilder.callout('Important note')
///   .icon('⚠️')
///   .color('yellow_background')
///   .toJson();
///
/// // Append to page
/// await client.blocks.appendChildren('page_id', [
///   BlockBuilder.paragraph('Introduction').toJson(),
///   BlockBuilder.heading2('Section 1').toJson(),
///   BlockBuilder.bulletedListItem('First item').toJson(),
/// ]);
/// ```
library;

import 'rich_text_builder.dart';

/// Main entry point for building block objects
///
/// Provides static factory methods for creating different block types.
class BlockBuilder {
  /// Private constructor to prevent instantiation
  BlockBuilder._();

  // ========================================
  // Text Blocks
  // ========================================

  /// Creates a paragraph block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.paragraph('Hello World').toJson();
  /// ```
  static ParagraphBlockBuilder paragraph([String? text]) =>
      ParagraphBlockBuilder(text);

  /// Creates a heading 1 block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.heading1('Chapter Title').toJson();
  /// ```
  static HeadingBlockBuilder heading1(String text) =>
      HeadingBlockBuilder._(text, 1);

  /// Creates a heading 2 block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.heading2('Section Title').toJson();
  /// ```
  static HeadingBlockBuilder heading2(String text) =>
      HeadingBlockBuilder._(text, 2);

  /// Creates a heading 3 block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.heading3('Subsection Title').toJson();
  /// ```
  static HeadingBlockBuilder heading3(String text) =>
      HeadingBlockBuilder._(text, 3);

  /// Creates a quote block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.quote('This is a quote').toJson();
  /// ```
  static QuoteBlockBuilder quote(String text) => QuoteBlockBuilder(text);

  /// Creates a callout block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.callout('Important note')
  ///   .icon('⚠️')
  ///   .color('yellow_background')
  ///   .toJson();
  /// ```
  static CalloutBlockBuilder callout(String text) => CalloutBlockBuilder(text);

  // ========================================
  // List Blocks
  // ========================================

  /// Creates a bulleted list item block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.bulletedListItem('First item').toJson();
  /// ```
  static ListItemBlockBuilder bulletedListItem(String text) =>
      ListItemBlockBuilder._(text, 'bulleted_list_item');

  /// Creates a numbered list item block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.numberedListItem('First item').toJson();
  /// ```
  static ListItemBlockBuilder numberedListItem(String text) =>
      ListItemBlockBuilder._(text, 'numbered_list_item');

  /// Creates a to-do block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.toDo('Task 1').checked().toJson();
  /// ```
  static ToDoBlockBuilder toDo(String text) => ToDoBlockBuilder(text);

  /// Creates a toggle block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.toggle('Click to expand')
  ///   .children([
  ///     BlockBuilder.paragraph('Hidden content').toJson(),
  ///   ])
  ///   .toJson();
  /// ```
  static ToggleBlockBuilder toggle(String text) => ToggleBlockBuilder(text);

  // ========================================
  // Code Block
  // ========================================

  /// Creates a code block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.code(
  ///   'print("Hello")',
  ///   language: 'python',
  /// ).toJson();
  /// ```
  static CodeBlockBuilder code(
    String code, {
    String language = 'plain text',
  }) =>
      CodeBlockBuilder(code, language);

  // ========================================
  // Layout Blocks
  // ========================================

  /// Creates a divider block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.divider().toJson();
  /// ```
  static DividerBlockBuilder divider() => DividerBlockBuilder();

  /// Creates a table of contents block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.tableOfContents().toJson();
  /// ```
  static TableOfContentsBlockBuilder tableOfContents() =>
      TableOfContentsBlockBuilder();

  /// Creates a breadcrumb block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.breadcrumb().toJson();
  /// ```
  static BreadcrumbBlockBuilder breadcrumb() => BreadcrumbBlockBuilder();

  // ========================================
  // Media Blocks
  // ========================================

  /// Creates an image block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.image('https://example.com/image.jpg').toJson();
  /// ```
  static MediaBlockBuilder image(String url) =>
      MediaBlockBuilder._(url, 'image');

  /// Creates a video block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.video('https://example.com/video.mp4').toJson();
  /// ```
  static MediaBlockBuilder video(String url) =>
      MediaBlockBuilder._(url, 'video');

  /// Creates a file block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.file('https://example.com/file.pdf').toJson();
  /// ```
  static MediaBlockBuilder file(String url) => MediaBlockBuilder._(url, 'file');

  /// Creates a pdf block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.pdf('https://example.com/document.pdf').toJson();
  /// ```
  static MediaBlockBuilder pdf(String url) => MediaBlockBuilder._(url, 'pdf');

  // ========================================
  // Advanced Blocks
  // ========================================

  /// Creates a bookmark block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.bookmark('https://example.com')
  ///   .caption('Example website')
  ///   .toJson();
  /// ```
  static BookmarkBlockBuilder bookmark(String url) => BookmarkBlockBuilder(url);

  /// Creates an embed block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.embed('https://example.com').toJson();
  /// ```
  static EmbedBlockBuilder embed(String url) => EmbedBlockBuilder(url);

  /// Creates an equation block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.equation('E = mc^2').toJson();
  /// ```
  static EquationBlockBuilder equation(String expression) =>
      EquationBlockBuilder(expression);

  /// Creates a table block
  ///
  /// Example:
  /// ```dart
  /// final block = BlockBuilder.table(
  ///   rows: [
  ///     ['Header 1', 'Header 2'],
  ///     ['Cell 1', 'Cell 2'],
  ///   ],
  ///   hasColumnHeader: true,
  /// ).toJson();
  /// ```
  static TableBlockBuilder table({
    required List<List<String>> rows,
    int? tableWidth,
    bool hasColumnHeader = false,
    bool hasRowHeader = false,
  }) =>
      TableBlockBuilder(
        rows: rows,
        tableWidth: tableWidth,
        hasColumnHeader: hasColumnHeader,
        hasRowHeader: hasRowHeader,
      );
}

// ========================================
// Builder Classes
// ========================================

/// Builder for paragraph blocks
class ParagraphBlockBuilder {
  ParagraphBlockBuilder([String? text]) {
    if (text != null) {
      _richText.add(RichTextBuilder.text(text).toJson());
    }
  }

  final List<Map<String, dynamic>> _richText = [];
  String _color = 'default';
  List<Map<String, dynamic>> _children = [];

  /// Adds plain text to the paragraph
  ParagraphBlockBuilder addText(String text) {
    _richText.add(RichTextBuilder.text(text).toJson());
    return this;
  }

  /// Adds a rich text element (created with RichTextBuilder)
  ParagraphBlockBuilder addRichText(Map<String, dynamic> richText) {
    _richText.add(richText);
    return this;
  }

  /// Sets the block color
  ParagraphBlockBuilder color(String color) {
    _color = color;
    return this;
  }

  /// Adds child blocks
  ParagraphBlockBuilder children(List<Map<String, dynamic>> children) {
    _children = children;
    return this;
  }

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() => {
        'object': 'block',
        'type': 'paragraph',
        'paragraph': {
          'rich_text': _richText,
          'color': _color,
          if (_children.isNotEmpty) 'children': _children,
        },
      };
}

/// Builder for heading blocks (1, 2, 3)
class HeadingBlockBuilder {
  HeadingBlockBuilder._(this._text, this._level);

  final String _text;
  final int _level;
  String _color = 'default';
  bool _isToggleable = false;
  List<Map<String, dynamic>> _children = [];

  /// Sets the heading color
  HeadingBlockBuilder color(String color) {
    _color = color;
    return this;
  }

  /// Makes the heading toggleable (collapsible)
  HeadingBlockBuilder toggleable() {
    _isToggleable = true;
    return this;
  }

  /// Adds child blocks (only for toggleable headings)
  HeadingBlockBuilder children(List<Map<String, dynamic>> children) {
    _children = children;
    return this;
  }

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() {
    final type = 'heading_$_level';
    return {
      'object': 'block',
      'type': type,
      type: {
        'rich_text': [
          RichTextBuilder.text(_text).toJson(),
        ],
        'color': _color,
        'is_toggleable': _isToggleable,
        if (_children.isNotEmpty) 'children': _children,
      },
    };
  }
}

/// Builder for quote blocks
class QuoteBlockBuilder {
  QuoteBlockBuilder(this._text);

  final String _text;
  String _color = 'default';
  List<Map<String, dynamic>> _children = [];

  /// Sets the quote color
  QuoteBlockBuilder color(String color) {
    _color = color;
    return this;
  }

  /// Adds child blocks
  QuoteBlockBuilder children(List<Map<String, dynamic>> children) {
    _children = children;
    return this;
  }

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() => {
        'object': 'block',
        'type': 'quote',
        'quote': {
          'rich_text': [
            RichTextBuilder.text(_text).toJson(),
          ],
          'color': _color,
          if (_children.isNotEmpty) 'children': _children,
        },
      };
}

/// Builder for callout blocks
class CalloutBlockBuilder {
  CalloutBlockBuilder(this._text);

  final String _text;
  String _color = 'default';
  String? _icon;
  List<Map<String, dynamic>> _children = [];

  /// Sets the callout icon (emoji)
  CalloutBlockBuilder icon(String emoji) {
    _icon = emoji;
    return this;
  }

  /// Sets the callout color
  CalloutBlockBuilder color(String color) {
    _color = color;
    return this;
  }

  /// Adds child blocks
  CalloutBlockBuilder children(List<Map<String, dynamic>> children) {
    _children = children;
    return this;
  }

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() => {
        'object': 'block',
        'type': 'callout',
        'callout': {
          'rich_text': [
            RichTextBuilder.text(_text).toJson(),
          ],
          'icon': {
            'type': 'emoji',
            'emoji': _icon ?? '💡',
          },
          'color': _color,
          if (_children.isNotEmpty) 'children': _children,
        },
      };
}

/// Builder for list item blocks (bulleted and numbered)
class ListItemBlockBuilder {
  ListItemBlockBuilder._(this._text, this._type);

  final String _text;
  final String _type;
  String _color = 'default';
  List<Map<String, dynamic>> _children = [];

  /// Sets the list item color
  ListItemBlockBuilder color(String color) {
    _color = color;
    return this;
  }

  /// Adds child blocks (nested list items)
  ListItemBlockBuilder children(List<Map<String, dynamic>> children) {
    _children = children;
    return this;
  }

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() => {
        'object': 'block',
        'type': _type,
        _type: {
          'rich_text': [
            RichTextBuilder.text(_text).toJson(),
          ],
          'color': _color,
          if (_children.isNotEmpty) 'children': _children,
        },
      };
}

/// Builder for to-do blocks
class ToDoBlockBuilder {
  ToDoBlockBuilder(this._text);

  final String _text;
  bool _checked = false;
  String _color = 'default';
  List<Map<String, dynamic>> _children = [];

  /// Marks the to-do as checked
  ToDoBlockBuilder checked([bool value = true]) {
    _checked = value;
    return this;
  }

  /// Sets the to-do color
  ToDoBlockBuilder color(String color) {
    _color = color;
    return this;
  }

  /// Adds child blocks
  ToDoBlockBuilder children(List<Map<String, dynamic>> children) {
    _children = children;
    return this;
  }

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() => {
        'object': 'block',
        'type': 'to_do',
        'to_do': {
          'rich_text': [
            RichTextBuilder.text(_text).toJson(),
          ],
          'checked': _checked,
          'color': _color,
          if (_children.isNotEmpty) 'children': _children,
        },
      };
}

/// Builder for toggle blocks
class ToggleBlockBuilder {
  ToggleBlockBuilder(this._text);

  final String _text;
  String _color = 'default';
  List<Map<String, dynamic>> _children = [];

  /// Sets the toggle color
  ToggleBlockBuilder color(String color) {
    _color = color;
    return this;
  }

  /// Adds child blocks (toggleable content)
  ToggleBlockBuilder children(List<Map<String, dynamic>> children) {
    _children = children;
    return this;
  }

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() => {
        'object': 'block',
        'type': 'toggle',
        'toggle': {
          'rich_text': [
            RichTextBuilder.text(_text).toJson(),
          ],
          'color': _color,
          if (_children.isNotEmpty) 'children': _children,
        },
      };
}

/// Builder for code blocks
class CodeBlockBuilder {
  CodeBlockBuilder(this._code, this._language);

  final String _code;
  final String _language;
  List<Map<String, dynamic>> _caption = [];

  /// Adds a caption to the code block
  CodeBlockBuilder caption(String text) {
    _caption = [RichTextBuilder.text(text).toJson()];
    return this;
  }

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() => {
        'object': 'block',
        'type': 'code',
        'code': {
          'rich_text': [
            RichTextBuilder.text(_code).toJson(),
          ],
          'language': _language,
          if (_caption.isNotEmpty) 'caption': _caption,
        },
      };
}

/// Builder for divider blocks
class DividerBlockBuilder {
  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() => {
        'object': 'block',
        'type': 'divider',
        'divider': {},
      };
}

/// Builder for table of contents blocks
class TableOfContentsBlockBuilder {
  String _color = 'default';

  /// Sets the table of contents color
  TableOfContentsBlockBuilder color(String color) {
    _color = color;
    return this;
  }

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() => {
        'object': 'block',
        'type': 'table_of_contents',
        'table_of_contents': {
          'color': _color,
        },
      };
}

/// Builder for breadcrumb blocks
class BreadcrumbBlockBuilder {
  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() => {
        'object': 'block',
        'type': 'breadcrumb',
        'breadcrumb': {},
      };
}

/// Builder for media blocks (image, video, file, pdf)
class MediaBlockBuilder {
  MediaBlockBuilder._(this._url, this._type);

  final String _url;
  final String _type;
  List<Map<String, dynamic>> _caption = [];

  /// Adds a caption to the media block
  MediaBlockBuilder caption(String text) {
    _caption = [RichTextBuilder.text(text).toJson()];
    return this;
  }

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() => {
        'object': 'block',
        'type': _type,
        _type: {
          'type': 'external',
          'external': {
            'url': _url,
          },
          if (_caption.isNotEmpty) 'caption': _caption,
        },
      };
}

/// Builder for bookmark blocks
class BookmarkBlockBuilder {
  BookmarkBlockBuilder(this._url);

  final String _url;
  List<Map<String, dynamic>> _caption = [];

  /// Adds a caption to the bookmark
  BookmarkBlockBuilder caption(String text) {
    _caption = [RichTextBuilder.text(text).toJson()];
    return this;
  }

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() => {
        'object': 'block',
        'type': 'bookmark',
        'bookmark': {
          'url': _url,
          if (_caption.isNotEmpty) 'caption': _caption,
        },
      };
}

/// Builder for embed blocks
class EmbedBlockBuilder {
  EmbedBlockBuilder(this._url);

  final String _url;

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() => {
        'object': 'block',
        'type': 'embed',
        'embed': {
          'url': _url,
        },
      };
}

/// Builder for equation blocks
class EquationBlockBuilder {
  EquationBlockBuilder(this._expression);

  final String _expression;

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() => {
        'object': 'block',
        'type': 'equation',
        'equation': {
          'expression': _expression,
        },
      };
}

/// Builder for table blocks
class TableBlockBuilder {
  TableBlockBuilder({
    required this.rows,
    this.tableWidth,
    this.hasColumnHeader = false,
    this.hasRowHeader = false,
  });

  final List<List<String>> rows;
  final int? tableWidth;
  final bool hasColumnHeader;
  final bool hasRowHeader;

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() {
    // Convert rows to table_row blocks
    final tableRows = rows
        .map(
          (row) => {
            'type': 'table_row',
            'table_row': {
              'cells': row
                  .map((cell) => [RichTextBuilder.text(cell).toJson()])
                  .toList(),
            },
          },
        )
        .toList();

    return {
      'object': 'block',
      'type': 'table',
      'table': {
        'table_width': tableWidth ?? rows.first.length,
        'has_column_header': hasColumnHeader,
        'has_row_header': hasRowHeader,
        'children': tableRows,
      },
    };
  }
}
