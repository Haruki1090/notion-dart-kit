import 'package:freezed_annotation/freezed_annotation.dart';
import 'rich_text.dart';

part 'block_content.freezed.dart';
part 'block_content.g.dart';

/// Block colors
enum BlockColor {
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

/// Standard block content (paragraph, headings, lists, etc.)
@freezed
class BlockContent with _$BlockContent {
  const factory BlockContent({
    @Default([]) List<RichText> richText,
    @Default(BlockColor.defaultColor) BlockColor color,
    @Default(false) bool? isToggleable,
  }) = _BlockContent;

  factory BlockContent.fromJson(Map<String, dynamic> json) => BlockContent(
        richText: json['rich_text'] != null
            ? (json['rich_text'] as List)
                .map((e) => RichText.fromJson(e as Map<String, dynamic>))
                .toList()
            : [],
        color: json['color'] != null
            ? BlockColor.values.firstWhere(
                (e) => e.name == (json['color'] as String).replaceAll('_', ''),
                orElse: () => BlockColor.defaultColor,
              )
            : BlockColor.defaultColor,
        isToggleable: json['is_toggleable'] as bool?,
      );
}

/// To-do block content with checked state
@freezed
class ToDoContent with _$ToDoContent {
  const factory ToDoContent({
    @Default([]) List<RichText> richText,
    @Default(BlockColor.defaultColor) BlockColor color,
    @Default(false) bool checked,
  }) = _ToDoContent;

  factory ToDoContent.fromJson(Map<String, dynamic> json) => ToDoContent(
        richText: json['rich_text'] != null
            ? (json['rich_text'] as List)
                .map((e) => RichText.fromJson(e as Map<String, dynamic>))
                .toList()
            : [],
        color: json['color'] != null
            ? BlockColor.values.firstWhere(
                (e) => e.name == (json['color'] as String).replaceAll('_', ''),
                orElse: () => BlockColor.defaultColor,
              )
            : BlockColor.defaultColor,
        checked: json['checked'] as bool? ?? false,
      );
}

/// Code block content with language
@freezed
class CodeContent with _$CodeContent {
  const factory CodeContent({
    @Default([]) List<RichText> richText,
    @Default([]) List<RichText> caption,
    @Default('plain text') String language,
  }) = _CodeContent;

  factory CodeContent.fromJson(Map<String, dynamic> json) => CodeContent(
        richText: json['rich_text'] != null
            ? (json['rich_text'] as List)
                .map((e) => RichText.fromJson(e as Map<String, dynamic>))
                .toList()
            : [],
        caption: json['caption'] != null
            ? (json['caption'] as List)
                .map((e) => RichText.fromJson(e as Map<String, dynamic>))
                .toList()
            : [],
        language: json['language'] as String? ?? 'plain text',
      );
}

/// Extensions for toJson methods
extension BlockContentExtension on BlockContent {
  Map<String, dynamic> toJson() => {
        'rich_text': richText.map((e) => e.toJson()).toList(),
        'color': _blockColorToString(color),
        if (isToggleable != null) 'is_toggleable': isToggleable,
      };
}

extension ToDoContentExtension on ToDoContent {
  Map<String, dynamic> toJson() => {
        'rich_text': richText.map((e) => e.toJson()).toList(),
        'color': _blockColorToString(color),
        'checked': this.checked,
      };
}

extension CodeContentExtension on CodeContent {
  Map<String, dynamic> toJson() => {
        'rich_text': richText.map((e) => e.toJson()).toList(),
        'caption': caption.map((e) => e.toJson()).toList(),
        'language': language,
      };
}

String _blockColorToString(BlockColor color) {
  switch (color) {
    case BlockColor.defaultColor:
      return 'default';
    case BlockColor.gray:
      return 'gray';
    case BlockColor.brown:
      return 'brown';
    case BlockColor.orange:
      return 'orange';
    case BlockColor.yellow:
      return 'yellow';
    case BlockColor.green:
      return 'green';
    case BlockColor.blue:
      return 'blue';
    case BlockColor.purple:
      return 'purple';
    case BlockColor.pink:
      return 'pink';
    case BlockColor.red:
      return 'red';
    case BlockColor.grayBackground:
      return 'gray_background';
    case BlockColor.brownBackground:
      return 'brown_background';
    case BlockColor.orangeBackground:
      return 'orange_background';
    case BlockColor.yellowBackground:
      return 'yellow_background';
    case BlockColor.greenBackground:
      return 'green_background';
    case BlockColor.blueBackground:
      return 'blue_background';
    case BlockColor.purpleBackground:
      return 'purple_background';
    case BlockColor.pinkBackground:
      return 'pink_background';
    case BlockColor.redBackground:
      return 'red_background';
  }
}
