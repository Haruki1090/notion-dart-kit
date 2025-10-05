// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlockContentImpl _$$BlockContentImplFromJson(Map<String, dynamic> json) =>
    _$BlockContentImpl(
      richText: (json['richText'] as List<dynamic>?)
              ?.map((e) => RichText.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      color: $enumDecodeNullable(_$BlockColorEnumMap, json['color']) ??
          BlockColor.defaultColor,
      isToggleable: json['isToggleable'] as bool? ?? false,
    );

Map<String, dynamic> _$$BlockContentImplToJson(_$BlockContentImpl instance) =>
    <String, dynamic>{
      'richText': instance.richText,
      'color': _$BlockColorEnumMap[instance.color]!,
      'isToggleable': instance.isToggleable,
    };

const _$BlockColorEnumMap = {
  BlockColor.defaultColor: 'default',
  BlockColor.gray: 'gray',
  BlockColor.brown: 'brown',
  BlockColor.orange: 'orange',
  BlockColor.yellow: 'yellow',
  BlockColor.green: 'green',
  BlockColor.blue: 'blue',
  BlockColor.purple: 'purple',
  BlockColor.pink: 'pink',
  BlockColor.red: 'red',
  BlockColor.grayBackground: 'gray_background',
  BlockColor.brownBackground: 'brown_background',
  BlockColor.orangeBackground: 'orange_background',
  BlockColor.yellowBackground: 'yellow_background',
  BlockColor.greenBackground: 'green_background',
  BlockColor.blueBackground: 'blue_background',
  BlockColor.purpleBackground: 'purple_background',
  BlockColor.pinkBackground: 'pink_background',
  BlockColor.redBackground: 'red_background',
};

_$ToDoContentImpl _$$ToDoContentImplFromJson(Map<String, dynamic> json) =>
    _$ToDoContentImpl(
      richText: (json['richText'] as List<dynamic>?)
              ?.map((e) => RichText.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      color: $enumDecodeNullable(_$BlockColorEnumMap, json['color']) ??
          BlockColor.defaultColor,
      checked: json['checked'] as bool? ?? false,
    );

Map<String, dynamic> _$$ToDoContentImplToJson(_$ToDoContentImpl instance) =>
    <String, dynamic>{
      'richText': instance.richText,
      'color': _$BlockColorEnumMap[instance.color]!,
      'checked': instance.checked,
    };

_$CodeContentImpl _$$CodeContentImplFromJson(Map<String, dynamic> json) =>
    _$CodeContentImpl(
      richText: (json['richText'] as List<dynamic>?)
              ?.map((e) => RichText.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      caption: (json['caption'] as List<dynamic>?)
              ?.map((e) => RichText.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      language: json['language'] as String? ?? 'plain text',
    );

Map<String, dynamic> _$$CodeContentImplToJson(_$CodeContentImpl instance) =>
    <String, dynamic>{
      'richText': instance.richText,
      'caption': instance.caption,
      'language': instance.language,
    };
