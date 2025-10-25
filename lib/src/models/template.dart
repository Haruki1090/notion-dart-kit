import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'template.freezed.dart';

/// Template object representing a template in a Notion data source
@Freezed(toJson: false, fromJson: false)
class Template with _$Template {
  const factory Template({
    /// Unique identifier for the template
    required String id,

    /// Title of the template
    required String title,

    /// Date and time when this template was created
    required DateTime createdTime,

    /// Date and time when this template was last edited
    required DateTime lastEditedTime,

    /// User who created this template
    required User createdBy,

    /// User who last edited this template
    required User lastEditedBy,

    /// URL of the template
    required String url,

    /// Optional description of the template
    String? description,

    /// Whether the template is archived
    @Default(false) bool archived,
  }) = _Template;
  const Template._();

  factory Template.fromJson(Map<String, dynamic> json) => Template(
    id: json['id'] as String,
    title: json['title'] as String,
    createdTime: DateTime.parse(json['created_time'] as String),
    lastEditedTime: DateTime.parse(json['last_edited_time'] as String),
    createdBy: User.fromJson(json['created_by'] as Map<String, dynamic>),
    lastEditedBy: User.fromJson(json['last_edited_by'] as Map<String, dynamic>),
    url: json['url'] as String,
    description: json['description'] as String?,
    archived: json['archived'] as bool? ?? false,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'created_time': createdTime.toIso8601String(),
    'last_edited_time': lastEditedTime.toIso8601String(),
    'created_by': createdBy.toJson(),
    'last_edited_by': lastEditedBy.toJson(),
    'url': url,
    if (description != null) 'description': description,
    'archived': archived,
  };
}
