import 'package:freezed_annotation/freezed_annotation.dart';
import 'user.dart';
import 'parent.dart';
import 'file.dart';

part 'page.freezed.dart';

/// Represents a Notion page
///
/// The Page object contains the property values of a single Notion page.
/// For pages in a database, properties conform to the database schema.
/// For standalone pages, only the title property is available.
@Freezed(toJson: false, fromJson: false)
class Page with _$Page {
  const Page._();

  const factory Page({
    required String id,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required Parent parent,
    required bool archived,
    required bool inTrash,
    required Map<String, LegacyPropertyValue> properties,
    required String url,
    PageIcon? icon,
    NotionFile? cover,
    String? publicUrl,
  }) = _Page;

  factory Page.fromJson(Map<String, dynamic> json) {
    return Page(
      id: json['id'] as String,
      createdTime: DateTime.parse(json['created_time'] as String),
      lastEditedTime: DateTime.parse(json['last_edited_time'] as String),
      createdBy: User.fromJson(json['created_by'] as Map<String, dynamic>),
      lastEditedBy:
          User.fromJson(json['last_edited_by'] as Map<String, dynamic>),
      parent: Parent.fromJson(json['parent'] as Map<String, dynamic>),
      archived: json['archived'] as bool,
      inTrash: json['in_trash'] as bool? ?? false,
      properties: (json['properties'] as Map<String, dynamic>).map(
        (key, value) => MapEntry(
          key,
          LegacyPropertyValue.fromJson(value as Map<String, dynamic>),
        ),
      ),
      url: json['url'] as String,
      icon: json['icon'] != null
          ? PageIcon.fromJson(json['icon'] as Map<String, dynamic>)
          : null,
      cover: json['cover'] != null
          ? NotionFile.fromJson(json['cover'] as Map<String, dynamic>)
          : null,
      publicUrl: json['public_url'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created_time': createdTime.toIso8601String(),
      'last_edited_time': lastEditedTime.toIso8601String(),
      'created_by': createdBy.toJson(),
      'last_edited_by': lastEditedBy.toJson(),
      'parent': parent.toJson(),
      'archived': archived,
      'in_trash': inTrash,
      'properties': properties.map((key, value) => MapEntry(key, value.toJson())),
      'url': url,
      if (icon != null) 'icon': icon!.toJson(),
      if (cover != null) 'cover': cover!.toJson(),
      if (publicUrl != null) 'public_url': publicUrl,
    };
  }
}

/// Legacy property value wrapper - will be replaced by typed PropertyValue
/// This is a simplified version - properties are stored as raw JSON for now
@Deprecated('Use PropertyValue from property_value.dart instead')
class LegacyPropertyValue {
  final String id;
  final String type;
  final Map<String, dynamic> data;

  const LegacyPropertyValue({
    required this.id,
    required this.type,
    required this.data,
  });

  factory LegacyPropertyValue.fromJson(Map<String, dynamic> json) {
    return LegacyPropertyValue(
      id: json['id'] as String,
      type: json['type'] as String,
      data: Map<String, dynamic>.from(json),
    );
  }

  Map<String, dynamic> toJson() => data;
}
