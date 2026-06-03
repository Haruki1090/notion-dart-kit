import 'package:freezed_annotation/freezed_annotation.dart';

part 'template.freezed.dart';

/// A data source template object.
///
/// Returned by the
/// [List data source templates](https://developers.notion.com/reference/list-data-source-templates)
/// endpoint (`GET /v1/data_sources/{data_source_id}/templates`).
///
/// The Notion API returns only a minimal shape for templates: an [id], a
/// display [name], and whether it is the data source's [isDefault] template.
@Freezed(toJson: false, fromJson: false)
class Template with _$Template {
  const factory Template({
    /// Unique identifier for the template.
    required String id,

    /// Display name of the template.
    required String name,

    /// Whether this template is the data source's default template.
    @Default(false) bool isDefault,
  }) = _Template;
  const Template._();

  factory Template.fromJson(Map<String, dynamic> json) => Template(
        id: json['id'] as String,
        name: json['name'] as String,
        isDefault: json['is_default'] as bool? ?? false,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'is_default': isDefault,
      };
}
