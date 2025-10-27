import 'package:freezed_annotation/freezed_annotation.dart';

import 'file.dart';
import 'parent.dart';
import 'property_schema.dart';
import 'rich_text.dart';

part 'data_source.freezed.dart';

/// Represents a Notion data source
///
/// A data source is the actual container for database properties and data.
/// Since Notion API 2025-09-03, databases can have multiple data sources.
@Freezed(toJson: false, fromJson: false)
class DataSource with _$DataSource {
  const factory DataSource({
    required String id,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required Parent parent,
    required Parent databaseParent,
    required List<RichText> title,
    required Map<String, PropertySchema> properties,
    required bool archived,
    required bool isInline,
    required String url,
    PageIcon? icon,
    NotionFile? cover,
  }) = _DataSource;
  const DataSource._();

  factory DataSource.fromJson(Map<String, dynamic> json) => DataSource(
        id: json['id'] as String,
        createdTime: DateTime.parse(json['created_time'] as String),
        lastEditedTime: DateTime.parse(json['last_edited_time'] as String),
        parent: Parent.fromJson(json['parent'] as Map<String, dynamic>),
        databaseParent: Parent.fromJson(
          json['database_parent'] as Map<String, dynamic>,
        ),
        title: (json['title'] as List<dynamic>)
            .map((e) => RichText.fromJson(e as Map<String, dynamic>))
            .toList(),
        properties: (json['properties'] as Map<String, dynamic>).map(
          (key, value) => MapEntry(
            key,
            PropertySchema.fromJson(value as Map<String, dynamic>),
          ),
        ),
        archived: json['archived'] as bool? ?? false,
        isInline: json['is_inline'] as bool,
        url: json['url'] as String,
        icon: json['icon'] != null
            ? PageIcon.fromJson(json['icon'] as Map<String, dynamic>)
            : null,
        cover: json['cover'] != null
            ? NotionFile.fromJson(json['cover'] as Map<String, dynamic>)
            : null,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'created_time': createdTime.toIso8601String(),
        'last_edited_time': lastEditedTime.toIso8601String(),
        'parent': parent.toJson(),
        'database_parent': databaseParent.toJson(),
        'title': title.map((e) => e.toJson()).toList(),
        'properties':
            properties.map((key, value) => MapEntry(key, value.toJson())),
        'archived': archived,
        'is_inline': isInline,
        'url': url,
        if (icon != null) 'icon': icon!.toJson(),
        if (cover != null) 'cover': cover!.toJson(),
      };
}
