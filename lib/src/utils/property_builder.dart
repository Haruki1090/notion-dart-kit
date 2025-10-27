/// PropertyBuilder API for creating Notion property values
///
/// This API provides a fluent interface for creating property values
/// without deeply nested Maps. Use this when creating or updating pages.
///
/// Example:
/// ```dart
/// final properties = {
///   'Title': PropertyBuilder.title('My Page')
///     .bold()
///     .color('blue')
///     .toJson(),
///   'Status': PropertyBuilder.select('In Progress'),
///   'Priority': PropertyBuilder.number(5),
///   'Due Date': PropertyBuilder.date(
///     start: DateTime.now().add(Duration(days: 7)),
///   ).toJson(),
/// };
/// ```
library;

/// Main entry point for building property values
///
/// Provides static factory methods for creating different property types.
/// Simple properties return Maps directly, complex properties return builders
/// that support method chaining.
class PropertyBuilder {
  /// Private constructor to prevent instantiation
  PropertyBuilder._();

  // ========================================
  // Simple Properties (direct Map return)
  // ========================================

  /// Creates a number property
  ///
  /// Example:
  /// ```dart
  /// {'Priority': PropertyBuilder.number(5)}
  /// ```
  static Map<String, dynamic> number(num value) => {'number': value};

  /// Creates a checkbox property
  ///
  /// Example:
  /// ```dart
  /// {'Completed': PropertyBuilder.checkbox(true)}
  /// ```
  static Map<String, dynamic> checkbox(bool value) => {'checkbox': value};

  /// Creates a URL property
  ///
  /// Example:
  /// ```dart
  /// {'Link': PropertyBuilder.url('https://example.com')}
  /// ```
  static Map<String, dynamic> url(String? url) => {'url': url};

  /// Creates an email property
  ///
  /// Example:
  /// ```dart
  /// {'Email': PropertyBuilder.email('user@example.com')}
  /// ```
  static Map<String, dynamic> email(String? email) => {'email': email};

  /// Creates a phone number property
  ///
  /// Example:
  /// ```dart
  /// {'Phone': PropertyBuilder.phone('+1-234-567-8900')}
  /// ```
  static Map<String, dynamic> phone(String? phone) => {'phone_number': phone};

  /// Creates a select property
  ///
  /// Example:
  /// ```dart
  /// {'Status': PropertyBuilder.select('In Progress')}
  /// ```
  static Map<String, dynamic> select(String name) => {
        'select': {'name': name},
      };

  /// Creates a multi-select property
  ///
  /// Example:
  /// ```dart
  /// {'Tags': PropertyBuilder.multiSelect(['urgent', 'bug'])}
  /// ```
  static Map<String, dynamic> multiSelect(List<String> names) => {
        'multi_select': names.map((name) => {'name': name}).toList(),
      };

  /// Creates a status property
  ///
  /// Example:
  /// ```dart
  /// {'Status': PropertyBuilder.status('Done')}
  /// ```
  static Map<String, dynamic> status(String name) => {
        'status': {'name': name},
      };

  /// Creates a relation property
  ///
  /// Example:
  /// ```dart
  /// {'Related Pages': PropertyBuilder.relation(['page_id_1', 'page_id_2'])}
  /// ```
  static Map<String, dynamic> relation(List<String> pageIds) => {
        'relation': pageIds.map((id) => {'id': id}).toList(),
      };

  // ========================================
  // Complex Properties (builder return)
  // ========================================

  /// Creates a title property builder
  ///
  /// Title properties support rich text formatting. Use the builder methods
  /// to apply formatting, then call `.toJson()` to get the final Map.
  ///
  /// Example:
  /// ```dart
  /// {'Title': PropertyBuilder.title('My Page')
  ///   .bold()
  ///   .color('blue')
  ///   .toJson()}
  /// ```
  static TitlePropertyBuilder title(String text) => TitlePropertyBuilder(text);

  /// Creates a rich text property builder
  ///
  /// Rich text properties support rich text formatting. Use the builder methods
  /// to apply formatting, then call `.toJson()` to get the final Map.
  ///
  /// Example:
  /// ```dart
  /// {'Description': PropertyBuilder.richText('Important note')
  ///   .italic()
  ///   .color('red')
  ///   .toJson()}
  /// ```
  static RichTextPropertyBuilder richText(String text) =>
      RichTextPropertyBuilder(text);

  /// Creates a date property builder
  ///
  /// Example:
  /// ```dart
  /// // Single date
  /// {'Due Date': PropertyBuilder.date(
  ///   start: DateTime.now(),
  /// ).toJson()}
  ///
  /// // Date range
  /// {'Due Date': PropertyBuilder.date(
  ///   start: DateTime.now(),
  ///   end: DateTime.now().add(Duration(days: 7)),
  /// ).toJson()}
  /// ```
  static DatePropertyBuilder date({required DateTime start, DateTime? end}) =>
      DatePropertyBuilder(start: start, end: end);

  /// Creates a people property
  ///
  /// Example:
  /// ```dart
  /// {'Assignees': PropertyBuilder.people(['user_id_1', 'user_id_2'])}
  /// ```
  static Map<String, dynamic> people(List<String> userIds) => {
        'people': userIds.map((id) => {'id': id}).toList(),
      };

  /// Creates a files property
  ///
  /// Example:
  /// ```dart
  /// {'Attachments': PropertyBuilder.files([
  ///   {
  ///     'name': 'document.pdf',
  ///     'type': 'external',
  ///     'external': {'url': 'https://example.com/doc.pdf'},
  ///   }
  /// ])}
  /// ```
  static Map<String, dynamic> files(List<Map<String, dynamic>> fileObjects) => {
        'files': fileObjects,
      };
}

// ========================================
// Builder Classes
// ========================================

/// Builder for title properties with rich text formatting
class TitlePropertyBuilder {
  TitlePropertyBuilder(this._text);

  final String _text;
  bool _bold = false;
  bool _italic = false;
  bool _strikethrough = false;
  bool _underline = false;
  bool _code = false;
  String? _color;
  String? _link;

  /// Makes the text bold
  TitlePropertyBuilder bold() {
    _bold = true;
    return this;
  }

  /// Makes the text italic
  TitlePropertyBuilder italic() {
    _italic = true;
    return this;
  }

  /// Makes the text strikethrough
  TitlePropertyBuilder strikethrough() {
    _strikethrough = true;
    return this;
  }

  /// Makes the text underlined
  TitlePropertyBuilder underline() {
    _underline = true;
    return this;
  }

  /// Makes the text code-formatted
  TitlePropertyBuilder code() {
    _code = true;
    return this;
  }

  /// Sets the text color
  ///
  /// Valid colors: default, gray, brown, orange, yellow, green, blue, purple,
  /// pink, red, gray_background, brown_background, orange_background,
  /// yellow_background, green_background, blue_background, purple_background,
  /// pink_background, red_background
  TitlePropertyBuilder color(String color) {
    _color = color;
    return this;
  }

  /// Adds a link to the text
  TitlePropertyBuilder link(String url) {
    _link = url;
    return this;
  }

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() {
    final richTextObject = <String, dynamic>{
      'type': 'text',
      'text': {
        'content': _text,
        if (_link != null) 'link': {'url': _link},
      },
    };

    // Add annotations if any formatting is applied
    if (_bold ||
        _italic ||
        _strikethrough ||
        _underline ||
        _code ||
        _color != null) {
      richTextObject['annotations'] = {
        'bold': _bold,
        'italic': _italic,
        'strikethrough': _strikethrough,
        'underline': _underline,
        'code': _code,
        'color': _color ?? 'default',
      };
    }

    return {
      'title': [richTextObject],
    };
  }
}

/// Builder for rich text properties with formatting
class RichTextPropertyBuilder {
  RichTextPropertyBuilder(this._text);

  final String _text;
  bool _bold = false;
  bool _italic = false;
  bool _strikethrough = false;
  bool _underline = false;
  bool _code = false;
  String? _color;
  String? _link;

  /// Makes the text bold
  RichTextPropertyBuilder bold() {
    _bold = true;
    return this;
  }

  /// Makes the text italic
  RichTextPropertyBuilder italic() {
    _italic = true;
    return this;
  }

  /// Makes the text strikethrough
  RichTextPropertyBuilder strikethrough() {
    _strikethrough = true;
    return this;
  }

  /// Makes the text underlined
  RichTextPropertyBuilder underline() {
    _underline = true;
    return this;
  }

  /// Makes the text code-formatted
  RichTextPropertyBuilder code() {
    _code = true;
    return this;
  }

  /// Sets the text color
  ///
  /// Valid colors: default, gray, brown, orange, yellow, green, blue, purple,
  /// pink, red, gray_background, brown_background, orange_background,
  /// yellow_background, green_background, blue_background, purple_background,
  /// pink_background, red_background
  RichTextPropertyBuilder color(String color) {
    _color = color;
    return this;
  }

  /// Adds a link to the text
  RichTextPropertyBuilder link(String url) {
    _link = url;
    return this;
  }

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() {
    final richTextObject = <String, dynamic>{
      'type': 'text',
      'text': {
        'content': _text,
        if (_link != null) 'link': {'url': _link},
      },
    };

    // Add annotations if any formatting is applied
    if (_bold ||
        _italic ||
        _strikethrough ||
        _underline ||
        _code ||
        _color != null) {
      richTextObject['annotations'] = {
        'bold': _bold,
        'italic': _italic,
        'strikethrough': _strikethrough,
        'underline': _underline,
        'code': _code,
        'color': _color ?? 'default',
      };
    }

    return {
      'rich_text': [richTextObject],
    };
  }
}

/// Builder for date properties
class DatePropertyBuilder {
  DatePropertyBuilder({required this.start, this.end});

  final DateTime start;
  final DateTime? end;
  String? _timeZone;

  /// Sets the time zone for the date
  ///
  /// Example: 'America/New_York', 'Europe/London', 'Asia/Tokyo'
  DatePropertyBuilder timeZone(String timeZone) {
    _timeZone = timeZone;
    return this;
  }

  /// Converts the builder to a JSON-compatible Map
  Map<String, dynamic> toJson() => {
        'date': {
          'start': start.toIso8601String(),
          if (end != null) 'end': end!.toIso8601String(),
          if (_timeZone != null) 'time_zone': _timeZone,
        },
      };
}
