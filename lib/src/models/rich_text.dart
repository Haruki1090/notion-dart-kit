import 'package:freezed_annotation/freezed_annotation.dart';

part 'rich_text.freezed.dart';
part 'rich_text.g.dart';

/// Rich text color options
enum RichTextColor {
  @JsonValue('default')
  defaultColor,
  @JsonValue('gray')
  gray,
  @JsonValue('brown')
  brown,
  @JsonValue('orange')
  orange,
  @JsonValue('yellow')
  yellow,
  @JsonValue('green')
  green,
  @JsonValue('blue')
  blue,
  @JsonValue('purple')
  purple,
  @JsonValue('pink')
  pink,
  @JsonValue('red')
  red,
  @JsonValue('gray_background')
  grayBackground,
  @JsonValue('brown_background')
  brownBackground,
  @JsonValue('orange_background')
  orangeBackground,
  @JsonValue('yellow_background')
  yellowBackground,
  @JsonValue('green_background')
  greenBackground,
  @JsonValue('blue_background')
  blueBackground,
  @JsonValue('purple_background')
  purpleBackground,
  @JsonValue('pink_background')
  pinkBackground,
  @JsonValue('red_background')
  redBackground,
}

/// Annotations for styling rich text.
///
/// Defines the visual styling properties for rich text content including
/// formatting options like bold, italic, strikethrough, underline, code,
/// and color.
///
/// Example:
/// ```dart
/// const annotations = Annotations(
///   bold: true,
///   italic: false,
///   color: RichTextColor.blue,
/// );
/// ```
@freezed
class Annotations with _$Annotations {
  const factory Annotations({
    /// Whether the text is bold.
    @Default(false) bool bold,

    /// Whether the text is italic.
    @Default(false) bool italic,

    /// Whether the text has strikethrough.
    @Default(false) bool strikethrough,

    /// Whether the text is underlined.
    @Default(false) bool underline,

    /// Whether the text is formatted as code.
    @Default(false) bool code,

    /// The color of the text.
    @Default(RichTextColor.defaultColor) RichTextColor color,
  }) = _Annotations;

  factory Annotations.fromJson(Map<String, dynamic> json) =>
      _$AnnotationsFromJson(json);
}

/// Text content with optional link.
///
/// Represents the actual text content in a rich text object along with
/// an optional link that can be applied to the text.
///
/// Example:
/// ```dart
/// const textContent = TextContent(
///   content: 'Hello World',
///   link: TextLink(url: 'https://example.com'),
/// );
/// ```
@freezed
class TextContent with _$TextContent {
  const factory TextContent({
    /// The actual text content.
    required String content,

    /// Optional link to apply to the text.
    TextLink? link,
  }) = _TextContent;

  factory TextContent.fromJson(Map<String, dynamic> json) =>
      _$TextContentFromJson(json);
}

/// Link object for text.
///
/// Represents a URL link that can be applied to text content.
///
/// Example:
/// ```dart
/// const textLink = TextLink(url: 'https://example.com');
/// ```
@freezed
class TextLink with _$TextLink {
  const factory TextLink({
    /// The URL of the link.
    required String url,
  }) = _TextLink;

  factory TextLink.fromJson(Map<String, dynamic> json) =>
      _$TextLinkFromJson(json);
}

/// Equation expression.
///
/// Represents a mathematical equation in LaTeX format that can be
/// rendered in rich text.
///
/// Example:
/// ```dart
/// const equation = EquationContent(expression: 'E = mc^2');
/// ```
@freezed
class EquationContent with _$EquationContent {
  const factory EquationContent({
    /// The LaTeX expression for the equation.
    required String expression,
  }) = _EquationContent;

  factory EquationContent.fromJson(Map<String, dynamic> json) =>
      _$EquationContentFromJson(json);
}

/// Mention types
@Freezed(toJson: false, fromJson: false)
class MentionContent with _$MentionContent {
  const MentionContent._();

  const factory MentionContent.database({required String id}) = DatabaseMention;

  const factory MentionContent.date({required DateTime start, DateTime? end}) =
      DateMention;

  const factory MentionContent.linkPreview({required String url}) =
      LinkPreviewMention;

  const factory MentionContent.page({required String id}) = PageMention;

  const factory MentionContent.templateMentionDate({
    required String value, // "today" or "now"
  }) = TemplateMentionDate;

  const factory MentionContent.templateMentionUser({
    required String value, // "me"
  }) = TemplateMentionUser;

  const factory MentionContent.user({required String id}) = UserMention;

  factory MentionContent.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String;

    switch (type) {
      case 'database':
        final database = json['database'] as Map<String, dynamic>;
        return MentionContent.database(id: database['id'] as String);
      case 'date':
        final date = json['date'] as Map<String, dynamic>;
        return MentionContent.date(
          start: DateTime.parse(date['start'] as String),
          end: date['end'] != null
              ? DateTime.parse(date['end'] as String)
              : null,
        );
      case 'link_preview':
        final linkPreview = json['link_preview'] as Map<String, dynamic>;
        return MentionContent.linkPreview(url: linkPreview['url'] as String);
      case 'page':
        final page = json['page'] as Map<String, dynamic>;
        return MentionContent.page(id: page['id'] as String);
      case 'template_mention':
        final templateMention =
            json['template_mention'] as Map<String, dynamic>;
        final tmType = templateMention['type'] as String;
        if (tmType == 'template_mention_date') {
          return MentionContent.templateMentionDate(
            value: templateMention['template_mention_date'] as String,
          );
        } else {
          return MentionContent.templateMentionUser(
            value: templateMention['template_mention_user'] as String,
          );
        }
      case 'user':
        final user = json['user'] as Map<String, dynamic>;
        return MentionContent.user(id: user['id'] as String);
      default:
        throw ArgumentError('Unknown mention type: $type');
    }
  }

  Map<String, dynamic> toJson() => when(
        database: (id) => {
          'type': 'database',
          'database': {'id': id},
        },
        date: (start, end) => {
          'type': 'date',
          'date': {
            'start': start.toIso8601String(),
            if (end != null) 'end': end.toIso8601String(),
          },
        },
        linkPreview: (url) => {
          'type': 'link_preview',
          'link_preview': {'url': url},
        },
        page: (id) => {
          'type': 'page',
          'page': {'id': id},
        },
        templateMentionDate: (value) => {
          'type': 'template_mention',
          'template_mention': {
            'type': 'template_mention_date',
            'template_mention_date': value,
          },
        },
        templateMentionUser: (value) => {
          'type': 'template_mention',
          'template_mention': {
            'type': 'template_mention_user',
            'template_mention_user': value,
          },
        },
        user: (id) => {
          'type': 'user',
          'user': {'id': id},
        },
      );
}

/// Rich text object with support for text, mentions, and equations
@Freezed(toJson: false, fromJson: false)
class RichText with _$RichText {
  const RichText._();

  const factory RichText.text({
    required TextContent text,
    required Annotations annotations,
    required String plainText,
    String? href,
  }) = TextRichText;

  const factory RichText.mention({
    required MentionContent mention,
    required Annotations annotations,
    required String plainText,
    String? href,
  }) = MentionRichText;

  const factory RichText.equation({
    required EquationContent equation,
    required Annotations annotations,
    required String plainText,
    String? href,
  }) = EquationRichText;

  factory RichText.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String;
    final annotations = Annotations.fromJson(
      json['annotations'] as Map<String, dynamic>,
    );
    final plainText = json['plain_text'] as String;
    final href = json['href'] as String?;

    switch (type) {
      case 'text':
        return RichText.text(
          text: TextContent.fromJson(json['text'] as Map<String, dynamic>),
          annotations: annotations,
          plainText: plainText,
          href: href,
        );
      case 'mention':
        return RichText.mention(
          mention: MentionContent.fromJson(
            json['mention'] as Map<String, dynamic>,
          ),
          annotations: annotations,
          plainText: plainText,
          href: href,
        );
      case 'equation':
        return RichText.equation(
          equation: EquationContent.fromJson(
            json['equation'] as Map<String, dynamic>,
          ),
          annotations: annotations,
          plainText: plainText,
          href: href,
        );
      default:
        throw ArgumentError('Unknown rich text type: $type');
    }
  }

  Map<String, dynamic> toJson() => when(
        text: (text, annotations, plainText, href) => {
          'type': 'text',
          'text': text.toJson(),
          'annotations': annotations.toJson(),
          'plain_text': plainText,
          if (href != null) 'href': href,
        },
        mention: (mention, annotations, plainText, href) => {
          'type': 'mention',
          'mention': mention.toJson(),
          'annotations': annotations.toJson(),
          'plain_text': plainText,
          if (href != null) 'href': href,
        },
        equation: (equation, annotations, plainText, href) => {
          'type': 'equation',
          'equation': equation.toJson(),
          'annotations': annotations.toJson(),
          'plain_text': plainText,
          if (href != null) 'href': href,
        },
      );
}
