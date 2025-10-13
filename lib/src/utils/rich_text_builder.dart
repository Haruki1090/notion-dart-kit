/// RichTextBuilder API for creating Notion rich text objects
///
/// This API provides a fluent interface for creating rich text objects
/// without verbose nested structures. Use this when creating block content.
///
/// Example:
/// ```dart
/// // Simple text
/// final richText = RichTextBuilder.text('Hello World').toJson();
///
/// // With formatting
/// final formatted = RichTextBuilder.text('Important')
///   .bold()
///   .color('red')
///   .toJson();
///
/// // Rich text array for blocks
/// final paragraph = {
///   'paragraph': {
///     'rich_text': [
///       RichTextBuilder.text('Normal, ').toJson(),
///       RichTextBuilder.text('bold, ').bold().toJson(),
///       RichTextBuilder.text('italic').italic().toJson(),
///     ]
///   }
/// };
/// ```
library;

/// Main entry point for building rich text objects
///
/// Provides static factory methods for creating different rich text types:
/// text, mentions, and equations.
class RichTextBuilder {
  /// Private constructor to prevent instantiation
  RichTextBuilder._();

  /// Creates a text rich text builder
  ///
  /// Example:
  /// ```dart
  /// final text = RichTextBuilder.text('Hello World')
  ///   .bold()
  ///   .color('blue')
  ///   .toJson();
  /// ```
  static TextRichTextBuilder text(String content) =>
      TextRichTextBuilder(content);

  /// Creates a user mention
  ///
  /// Example:
  /// ```dart
  /// final mention = RichTextBuilder.mentionUser('user_id').toJson();
  /// ```
  static MentionRichTextBuilder mentionUser(String userId) =>
      MentionRichTextBuilder.user(userId);

  /// Creates a page mention
  ///
  /// Example:
  /// ```dart
  /// final mention = RichTextBuilder.mentionPage('page_id').toJson();
  /// ```
  static MentionRichTextBuilder mentionPage(String pageId) =>
      MentionRichTextBuilder.page(pageId);

  /// Creates a database mention
  ///
  /// Example:
  /// ```dart
  /// final mention = RichTextBuilder.mentionDatabase('database_id').toJson();
  /// ```
  static MentionRichTextBuilder mentionDatabase(String databaseId) =>
      MentionRichTextBuilder.database(databaseId);

  /// Creates a date mention
  ///
  /// Example:
  /// ```dart
  /// final mention = RichTextBuilder.mentionDate(
  ///   start: DateTime.now(),
  /// ).toJson();
  /// ```
  static MentionRichTextBuilder mentionDate({
    required DateTime start,
    DateTime? end,
  }) =>
      MentionRichTextBuilder.date(start: start, end: end);

  /// Creates a link preview mention
  ///
  /// Example:
  /// ```dart
  /// final mention = RichTextBuilder.mentionLinkPreview(
  ///   'https://example.com'
  /// ).toJson();
  /// ```
  static MentionRichTextBuilder mentionLinkPreview(String url) =>
      MentionRichTextBuilder.linkPreview(url);

  /// Creates an equation
  ///
  /// Example:
  /// ```dart
  /// final equation = RichTextBuilder.equation('E = mc^2').toJson();
  /// ```
  static EquationRichTextBuilder equation(String expression) =>
      EquationRichTextBuilder(expression);

  /// Helper method to create a simple plain text array
  ///
  /// This is a convenience method for the common case of a single
  /// plain text string in a rich text array.
  ///
  /// Example:
  /// ```dart
  /// final richTextArray = RichTextBuilder.plainArray('Simple text');
  /// // Equivalent to: [RichTextBuilder.text('Simple text').toJson()]
  /// ```
  static List<Map<String, dynamic>> plainArray(String text) =>
      [RichTextBuilder.text(text).toJson()];
}

// ========================================
// Builder Classes
// ========================================

/// Builder for text rich text with formatting
class TextRichTextBuilder {
  TextRichTextBuilder(this._content);

  final String _content;
  bool _bold = false;
  bool _italic = false;
  bool _strikethrough = false;
  bool _underline = false;
  bool _code = false;
  String _color = 'default';
  String? _link;

  /// Makes the text bold
  TextRichTextBuilder bold() {
    _bold = true;
    return this;
  }

  /// Makes the text italic
  TextRichTextBuilder italic() {
    _italic = true;
    return this;
  }

  /// Makes the text strikethrough
  TextRichTextBuilder strikethrough() {
    _strikethrough = true;
    return this;
  }

  /// Makes the text underlined
  TextRichTextBuilder underline() {
    _underline = true;
    return this;
  }

  /// Makes the text code-formatted
  TextRichTextBuilder code() {
    _code = true;
    return this;
  }

  /// Sets the text color
  ///
  /// Valid colors: default, gray, brown, orange, yellow, green, blue, purple,
  /// pink, red, gray_background, brown_background, orange_background,
  /// yellow_background, green_background, blue_background, purple_background,
  /// pink_background, red_background
  TextRichTextBuilder color(String color) {
    _color = color;
    return this;
  }

  /// Adds a link to the text
  TextRichTextBuilder link(String url) {
    _link = url;
    return this;
  }

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() => {
        'type': 'text',
        'text': {
          'content': _content,
          if (_link != null) 'link': {'url': _link},
        },
        'annotations': {
          'bold': _bold,
          'italic': _italic,
          'strikethrough': _strikethrough,
          'underline': _underline,
          'code': _code,
          'color': _color,
        },
        'plain_text': _content,
        if (_link != null) 'href': _link,
      };
}

/// Builder for mention rich text
class MentionRichTextBuilder {
  MentionRichTextBuilder.user(this._userId) : _mentionType = _MentionType.user;

  MentionRichTextBuilder.page(this._pageId) : _mentionType = _MentionType.page;

  MentionRichTextBuilder.database(this._databaseId)
      : _mentionType = _MentionType.database;

  MentionRichTextBuilder.date({
    required DateTime start,
    DateTime? end,
  })  : _dateStart = start,
        _dateEnd = end,
        _mentionType = _MentionType.date;

  MentionRichTextBuilder.linkPreview(this._url)
      : _mentionType = _MentionType.linkPreview;

  final _MentionType _mentionType;
  String? _userId;
  String? _pageId;
  String? _databaseId;
  DateTime? _dateStart;
  DateTime? _dateEnd;
  String? _url;

  bool _bold = false;
  bool _italic = false;
  bool _strikethrough = false;
  bool _underline = false;
  bool _code = false;
  String _color = 'default';

  /// Makes the mention text bold
  MentionRichTextBuilder bold() {
    _bold = true;
    return this;
  }

  /// Makes the mention text italic
  MentionRichTextBuilder italic() {
    _italic = true;
    return this;
  }

  /// Makes the mention text strikethrough
  MentionRichTextBuilder strikethrough() {
    _strikethrough = true;
    return this;
  }

  /// Makes the mention text underlined
  MentionRichTextBuilder underline() {
    _underline = true;
    return this;
  }

  /// Makes the mention text code-formatted
  MentionRichTextBuilder code() {
    _code = true;
    return this;
  }

  /// Sets the mention text color
  MentionRichTextBuilder color(String color) {
    _color = color;
    return this;
  }

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> mentionContent;
    String plainText;

    switch (_mentionType) {
      case _MentionType.user:
        mentionContent = {
          'type': 'user',
          'user': {'id': _userId!},
        };
        plainText = '@user';
        break;
      case _MentionType.page:
        mentionContent = {
          'type': 'page',
          'page': {'id': _pageId!},
        };
        plainText = '@page';
        break;
      case _MentionType.database:
        mentionContent = {
          'type': 'database',
          'database': {'id': _databaseId!},
        };
        plainText = '@database';
        break;
      case _MentionType.date:
        mentionContent = {
          'type': 'date',
          'date': {
            'start': _dateStart!.toIso8601String(),
            if (_dateEnd != null) 'end': _dateEnd!.toIso8601String(),
          },
        };
        plainText = _dateStart!.toIso8601String();
        break;
      case _MentionType.linkPreview:
        mentionContent = {
          'type': 'link_preview',
          'link_preview': {'url': _url!},
        };
        plainText = _url!;
        break;
    }

    return {
      'type': 'mention',
      'mention': mentionContent,
      'annotations': {
        'bold': _bold,
        'italic': _italic,
        'strikethrough': _strikethrough,
        'underline': _underline,
        'code': _code,
        'color': _color,
      },
      'plain_text': plainText,
    };
  }
}

/// Internal enum for mention types
enum _MentionType {
  user,
  page,
  database,
  date,
  linkPreview,
}

/// Builder for equation rich text
class EquationRichTextBuilder {
  EquationRichTextBuilder(this._expression);

  final String _expression;
  bool _bold = false;
  bool _italic = false;
  bool _strikethrough = false;
  bool _underline = false;
  bool _code = false;
  String _color = 'default';

  /// Makes the equation text bold (rarely used)
  EquationRichTextBuilder bold() {
    _bold = true;
    return this;
  }

  /// Makes the equation text italic (rarely used)
  EquationRichTextBuilder italic() {
    _italic = true;
    return this;
  }

  /// Makes the equation text strikethrough (rarely used)
  EquationRichTextBuilder strikethrough() {
    _strikethrough = true;
    return this;
  }

  /// Makes the equation text underlined (rarely used)
  EquationRichTextBuilder underline() {
    _underline = true;
    return this;
  }

  /// Makes the equation text code-formatted (rarely used)
  EquationRichTextBuilder code() {
    _code = true;
    return this;
  }

  /// Sets the equation text color
  EquationRichTextBuilder color(String color) {
    _color = color;
    return this;
  }

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() => {
        'type': 'equation',
        'equation': {
          'expression': _expression,
        },
        'annotations': {
          'bold': _bold,
          'italic': _italic,
          'strikethrough': _strikethrough,
          'underline': _underline,
          'code': _code,
          'color': _color,
        },
        'plain_text': _expression,
      };
}
