// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rich_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Annotations _$AnnotationsFromJson(Map<String, dynamic> json) => _Annotations(
      bold: json['bold'] as bool? ?? false,
      italic: json['italic'] as bool? ?? false,
      strikethrough: json['strikethrough'] as bool? ?? false,
      underline: json['underline'] as bool? ?? false,
      code: json['code'] as bool? ?? false,
      color: $enumDecodeNullable(_$RichTextColorEnumMap, json['color']) ??
          RichTextColor.defaultColor,
    );

Map<String, dynamic> _$AnnotationsToJson(_Annotations instance) =>
    <String, dynamic>{
      'bold': instance.bold,
      'italic': instance.italic,
      'strikethrough': instance.strikethrough,
      'underline': instance.underline,
      'code': instance.code,
      'color': _$RichTextColorEnumMap[instance.color]!,
    };

const _$RichTextColorEnumMap = {
  RichTextColor.defaultColor: 'default',
  RichTextColor.gray: 'gray',
  RichTextColor.brown: 'brown',
  RichTextColor.orange: 'orange',
  RichTextColor.yellow: 'yellow',
  RichTextColor.green: 'green',
  RichTextColor.blue: 'blue',
  RichTextColor.purple: 'purple',
  RichTextColor.pink: 'pink',
  RichTextColor.red: 'red',
  RichTextColor.grayBackground: 'gray_background',
  RichTextColor.brownBackground: 'brown_background',
  RichTextColor.orangeBackground: 'orange_background',
  RichTextColor.yellowBackground: 'yellow_background',
  RichTextColor.greenBackground: 'green_background',
  RichTextColor.blueBackground: 'blue_background',
  RichTextColor.purpleBackground: 'purple_background',
  RichTextColor.pinkBackground: 'pink_background',
  RichTextColor.redBackground: 'red_background',
};

_TextContent _$TextContentFromJson(Map<String, dynamic> json) => _TextContent(
      content: json['content'] as String,
      link: json['link'] == null
          ? null
          : TextLink.fromJson(json['link'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextContentToJson(_TextContent instance) =>
    <String, dynamic>{
      'content': instance.content,
      'link': instance.link,
    };

_TextLink _$TextLinkFromJson(Map<String, dynamic> json) => _TextLink(
      url: json['url'] as String,
    );

Map<String, dynamic> _$TextLinkToJson(_TextLink instance) => <String, dynamic>{
      'url': instance.url,
    };

_EquationContent _$EquationContentFromJson(Map<String, dynamic> json) =>
    _EquationContent(
      expression: json['expression'] as String,
    );

Map<String, dynamic> _$EquationContentToJson(_EquationContent instance) =>
    <String, dynamic>{
      'expression': instance.expression,
    };
