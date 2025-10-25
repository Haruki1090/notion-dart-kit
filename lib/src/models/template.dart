import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'template.freezed.dart';
part 'template.g.dart';

/// Template object representing a template in a Notion data source
@freezed
class Template with _$Template {
  const factory Template({
    /// Unique identifier for the template
    required String id,
    
    /// Title of the template
    required String title,
    
    /// Optional description of the template
    String? description,
    
    /// Date and time when this template was created
    @JsonKey(name: 'created_time') required DateTime createdTime,
    
    /// Date and time when this template was last edited
    @JsonKey(name: 'last_edited_time') required DateTime lastEditedTime,
    
    /// User who created this template
    @JsonKey(name: 'created_by') required User createdBy,
    
    /// User who last edited this template
    @JsonKey(name: 'last_edited_by') required User lastEditedBy,
    
    /// URL of the template
    required String url,
    
    /// Whether the template is archived
    @Default(false) bool archived,
  }) = _Template;

  factory Template.fromJson(Map<String, dynamic> json) =>
      _$TemplateFromJson(json);
}