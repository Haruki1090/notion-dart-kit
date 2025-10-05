import 'package:freezed_annotation/freezed_annotation.dart';

import 'file.dart';
import 'parent.dart';
import 'rich_text.dart';
import 'user.dart';

part 'database.freezed.dart';
part 'database.g.dart';

/// Represents a Notion database - a container for one or more data sources
///
/// A database is an object that contains one or more data sources.
/// Databases can either be displayed inline in the parent page (is_inline: true)
/// or as a full page (is_inline: false).
@Freezed(toJson: false, fromJson: false)
class Database with _$Database {

  const factory Database({
    required String id,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required Parent parent,
    required List<RichText> title,
    required List<DataSourceRef> dataSources,
    required bool archived,
    required bool inTrash,
    required bool isInline,
    required String url,
    List<RichText>? description,
    PageIcon? icon,
    NotionFile? cover,
    String? publicUrl,
    bool? isLocked,
  }) = _Database;
  const Database._();

  factory Database.fromJson(Map<String, dynamic> json) => Database(
      id: json['id'] as String,
      createdTime: DateTime.parse(json['created_time'] as String),
      lastEditedTime: DateTime.parse(json['last_edited_time'] as String),
      createdBy: User.fromJson(json['created_by'] as Map<String, dynamic>),
      lastEditedBy:
          User.fromJson(json['last_edited_by'] as Map<String, dynamic>),
      parent: Parent.fromJson(json['parent'] as Map<String, dynamic>),
      title: (json['title'] as List<dynamic>)
          .map((e) => RichText.fromJson(e as Map<String, dynamic>))
          .toList(),
      dataSources: (json['data_sources'] as List<dynamic>)
          .map((e) => DataSourceRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      archived: json['archived'] as bool? ?? false,
      inTrash: json['in_trash'] as bool? ?? false,
      isInline: json['is_inline'] as bool,
      url: json['url'] as String,
      description: json['description'] != null
          ? (json['description'] as List<dynamic>)
              .map((e) => RichText.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
      icon: json['icon'] != null
          ? PageIcon.fromJson(json['icon'] as Map<String, dynamic>)
          : null,
      cover: json['cover'] != null
          ? NotionFile.fromJson(json['cover'] as Map<String, dynamic>)
          : null,
      publicUrl: json['public_url'] as String?,
      isLocked: json['is_locked'] as bool?,
    );

  Map<String, dynamic> toJson() => {
      'id': id,
      'created_time': createdTime.toIso8601String(),
      'last_edited_time': lastEditedTime.toIso8601String(),
      'created_by': createdBy.toJson(),
      'last_edited_by': lastEditedBy.toJson(),
      'parent': parent.toJson(),
      'title': title.map((e) => e.toJson()).toList(),
      'data_sources': dataSources.map((e) => e.toJson()).toList(),
      'archived': archived,
      'in_trash': inTrash,
      'is_inline': isInline,
      'url': url,
      if (description != null)
        'description': description!.map((e) => e.toJson()).toList(),
      if (icon != null) 'icon': icon!.toJson(),
      if (cover != null) 'cover': cover!.toJson(),
      if (publicUrl != null) 'public_url': publicUrl,
      if (isLocked != null) 'is_locked': isLocked,
    };
}

/// Reference to a data source (minimal info returned with database object)
@freezed
class DataSourceRef with _$DataSourceRef {
  const factory DataSourceRef({
    required String id,
    required String name,
  }) = _DataSourceRef;

  factory DataSourceRef.fromJson(Map<String, dynamic> json) =>
      _$DataSourceRefFromJson(json);
}
