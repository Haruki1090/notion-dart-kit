import 'package:freezed_annotation/freezed_annotation.dart';

import 'file.dart';
import 'parent.dart';
import 'rich_text.dart';
import 'user.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

/// Comment display name shown for a comment
@Freezed(toJson: false, fromJson: false)
class CommentDisplayName with _$CommentDisplayName {
  const CommentDisplayName._();

  const factory CommentDisplayName.integration({required String resolvedName}) =
      IntegrationDisplayName;

  const factory CommentDisplayName.user({required String resolvedName}) =
      UserDisplayName;

  const factory CommentDisplayName.custom({required String resolvedName}) =
      CustomDisplayName;

  factory CommentDisplayName.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String;
    final resolved = json['resolved_name'] as String?;
    switch (type) {
      case 'integration':
        return CommentDisplayName.integration(resolvedName: resolved ?? '');
      case 'user':
        return CommentDisplayName.user(resolvedName: resolved ?? '');
      case 'custom':
        return CommentDisplayName.custom(resolvedName: resolved ?? '');
      default:
        throw ArgumentError('Unknown display_name type: $type');
    }
  }

  Map<String, dynamic> toJson() => map(
        integration: (v) => {
          'type': 'integration',
          'resolved_name': v.resolvedName,
        },
        user: (v) => {'type': 'user', 'resolved_name': v.resolvedName},
        custom: (v) => {'type': 'custom', 'resolved_name': v.resolvedName},
      );
}

/// Comment attachment entry
@freezed
class CommentAttachment with _$CommentAttachment {
  const factory CommentAttachment({
    required String category,
    required NotionFile file,
  }) = _CommentAttachment;

  factory CommentAttachment.fromJson(Map<String, dynamic> json) =>
      CommentAttachment(
        category: json['category'] as String,
        file: NotionFile.fromJson(json['file'] as Map<String, dynamic>),
      );

  const CommentAttachment._();

  @override
  Map<String, dynamic> toJson() => {
        'category': category,
        'file': file.toJson(),
      };
}

/// Comment object
@freezed
class Comment with _$Comment {
  const factory Comment({
    required String object,
    required String id,
    required Parent parent,
    required String discussionId,
    required DateTime createdTime,
    required DateTime lastEditedTime,
    required User createdBy,
    required List<RichText> richText,
    List<CommentAttachment>? attachments,
    CommentDisplayName? displayName,
  }) = _Comment;

  const Comment._();

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        object: json['object'] as String,
        id: json['id'] as String,
        parent: Parent.fromJson(json['parent'] as Map<String, dynamic>),
        discussionId: json['discussion_id'] as String,
        createdTime: DateTime.parse(json['created_time'] as String),
        lastEditedTime: DateTime.parse(json['last_edited_time'] as String),
        createdBy: User.fromJson(json['created_by'] as Map<String, dynamic>),
        richText: (json['rich_text'] as List)
            .map((e) => RichText.fromJson(e as Map<String, dynamic>))
            .toList(),
        attachments: (json['attachments'] as List?)
            ?.map((e) => CommentAttachment.fromJson(e as Map<String, dynamic>))
            .toList(),
        displayName: json['display_name'] == null
            ? null
            : CommentDisplayName.fromJson(
                json['display_name'] as Map<String, dynamic>,
              ),
      );

  @override
  Map<String, dynamic> toJson() => {
        'object': object,
        'id': id,
        'parent': parent.toJson(),
        'discussion_id': discussionId,
        'created_time': createdTime.toIso8601String(),
        'last_edited_time': lastEditedTime.toIso8601String(),
        'created_by': createdBy.toJson(),
        'rich_text': richText.map((e) => e.toJson()).toList(),
        if (attachments != null)
          'attachments': attachments!.map((e) => e.toJson()).toList(),
        if (displayName != null) 'display_name': displayName!.toJson(),
      };
}

/// Paginated list for comments
class PaginatedComments {
  const PaginatedComments({
    required this.object,
    required this.results,
    required this.hasMore,
    this.nextCursor,
  });

  factory PaginatedComments.fromJson(Map<String, dynamic> json) =>
      PaginatedComments(
        object: json['object'] as String,
        results: (json['results'] as List)
            .map((e) => Comment.fromJson(e as Map<String, dynamic>))
            .toList(),
        nextCursor: json['next_cursor'] as String?,
        hasMore: json['has_more'] as bool,
      );

  final String object;
  final List<Comment> results;
  final String? nextCursor;
  final bool hasMore;

  Map<String, dynamic> toJson() => {
        'object': object,
        'results': results.map((e) => e.toJson()).toList(),
        if (nextCursor != null) 'next_cursor': nextCursor,
        'has_more': hasMore,
        'type': 'comment',
        'comment': <String, dynamic>{},
      };
}
