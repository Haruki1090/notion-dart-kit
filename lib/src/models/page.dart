import 'package:freezed_annotation/freezed_annotation.dart';

import 'file.dart';
import 'parent.dart';
import 'user.dart';

part 'page.freezed.dart';

/// Represents a Notion page
///
/// The Page object contains the property values of a single Notion page.
/// For pages in a database, properties conform to the database schema.
/// For standalone pages, only the title property is available.
@Freezed(toJson: false, fromJson: false)
class Page with _$Page {
  const factory Page({
    required String id,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required User lastEditedBy,
    required Parent parent,
    required bool archived,
    required bool inTrash,
    required bool isLocked,
    required Map<String, dynamic> properties,
    required String url,
    PageIcon? icon,
    NotionFile? cover,
    String? publicUrl,
  }) = _Page;
  const Page._();

  factory Page.fromJson(Map<String, dynamic> json) => Page(
        id: json['id'] as String,
        createdTime: DateTime.parse(json['created_time'] as String),
        lastEditedTime: DateTime.parse(json['last_edited_time'] as String),
        createdBy: User.fromJson(json['created_by'] as Map<String, dynamic>),
        lastEditedBy:
            User.fromJson(json['last_edited_by'] as Map<String, dynamic>),
        parent: Parent.fromJson(json['parent'] as Map<String, dynamic>),
        archived: json['archived'] as bool? ??
            json['is_archived'] as bool? ??
            json['in_trash'] as bool? ??
            false,
        inTrash: json['in_trash'] as bool? ?? false,
        isLocked: json['is_locked'] as bool? ?? false,
        properties: (json['properties'] as Map<String, dynamic>).map(
          (key, value) => MapEntry(key, value as Map<String, dynamic>),
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

  Map<String, dynamic> toJson() => {
        'id': id,
        'created_time': createdTime.toIso8601String(),
        'last_edited_time': lastEditedTime.toIso8601String(),
        'created_by': createdBy.toJson(),
        'last_edited_by': lastEditedBy.toJson(),
        'parent': parent.toJson(),
        'archived': archived,
        'in_trash': inTrash,
        'is_locked': isLocked,
        'properties': properties,
        'url': url,
        if (icon != null) 'icon': icon!.toJson(),
        if (cover != null) 'cover': cover!.toJson(),
        if (publicUrl != null) 'public_url': publicUrl,
      };
}

/// Response object returned by Notion page markdown endpoints.
class PageMarkdown {
  const PageMarkdown({
    required this.object,
    required this.id,
    required this.markdown,
    required this.truncated,
    required this.unknownBlockIds,
  });

  factory PageMarkdown.fromJson(Map<String, dynamic> json) => PageMarkdown(
        object: json['object'] as String,
        id: json['id'] as String,
        markdown: json['markdown'] as String,
        truncated: json['truncated'] as bool? ?? false,
        unknownBlockIds: (json['unknown_block_ids'] as List<dynamic>? ?? [])
            .map((e) => e as String)
            .toList(),
      );

  final String object;
  final String id;
  final String markdown;
  final bool truncated;
  final List<String> unknownBlockIds;

  Map<String, dynamic> toJson() => {
        'object': object,
        'id': id,
        'markdown': markdown,
        'truncated': truncated,
        'unknown_block_ids': unknownBlockIds,
      };
}

/// A search-and-replace operation for the `update_content` markdown command.
class MarkdownContentUpdate {
  const MarkdownContentUpdate({
    required this.oldStr,
    required this.newStr,
    this.replaceAllMatches,
  });

  final String oldStr;
  final String newStr;
  final bool? replaceAllMatches;

  Map<String, dynamic> toJson() => {
        'old_str': oldStr,
        'new_str': newStr,
        if (replaceAllMatches != null) 'replace_all_matches': replaceAllMatches,
      };
}

/// Request command for `PATCH /v1/pages/:page_id/markdown`.
class MarkdownUpdateCommand {
  const MarkdownUpdateCommand._(this._json);

  factory MarkdownUpdateCommand.updateContent({
    required List<MarkdownContentUpdate> contentUpdates,
    bool? allowDeletingContent,
  }) =>
      MarkdownUpdateCommand._({
        'type': 'update_content',
        'update_content': {
          'content_updates': contentUpdates.map((e) => e.toJson()).toList(),
          if (allowDeletingContent != null)
            'allow_deleting_content': allowDeletingContent,
        },
      });

  factory MarkdownUpdateCommand.replaceContent({
    required String newStr,
    bool? allowDeletingContent,
  }) =>
      MarkdownUpdateCommand._({
        'type': 'replace_content',
        'replace_content': {
          'new_str': newStr,
          if (allowDeletingContent != null)
            'allow_deleting_content': allowDeletingContent,
        },
      });

  factory MarkdownUpdateCommand.insertContent({
    required String content,
    String? after,
  }) =>
      MarkdownUpdateCommand._({
        'type': 'insert_content',
        'insert_content': {
          'content': content,
          if (after != null) 'after': after,
        },
      });

  factory MarkdownUpdateCommand.replaceContentRange({
    required String content,
    required String contentRange,
    bool? allowDeletingContent,
  }) =>
      MarkdownUpdateCommand._({
        'type': 'replace_content_range',
        'replace_content_range': {
          'content': content,
          'content_range': contentRange,
          if (allowDeletingContent != null)
            'allow_deleting_content': allowDeletingContent,
        },
      });

  final Map<String, dynamic> _json;

  Map<String, dynamic> toJson() => Map<String, dynamic>.from(_json);
}

/// Template application body for create/update page template support.
class PageTemplateApply {
  const PageTemplateApply({
    required this.templateId,
    this.type = 'template_id',
    this.timezone,
  });

  final String templateId;
  final String type;
  final String? timezone;

  Map<String, dynamic> toJson() => {
        'type': type,
        'template_id': templateId,
        if (timezone != null) 'timezone': timezone,
      };
}

/// Legacy property value wrapper - will be replaced by typed PropertyValue
/// This is a simplified version - properties are stored as raw JSON for now
@Deprecated('Use PropertyValue from property_value.dart instead')
class LegacyPropertyValue {
  const LegacyPropertyValue({
    required this.id,
    required this.type,
    required this.data,
  });

  factory LegacyPropertyValue.fromJson(Map<String, dynamic> json) =>
      LegacyPropertyValue(
        id: json['id'] as String,
        type: json['type'] as String,
        data: Map<String, dynamic>.from(json),
      );
  final String id;
  final String type;
  final Map<String, dynamic> data;

  Map<String, dynamic> toJson() => data;
}
