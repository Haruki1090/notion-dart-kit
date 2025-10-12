// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentAttachmentImpl _$$CommentAttachmentImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentAttachmentImpl(
      category: json['category'] as String,
      file: NotionFile.fromJson(json['file'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommentAttachmentImplToJson(
        _$CommentAttachmentImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'file': instance.file,
    };

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      object: json['object'] as String,
      id: json['id'] as String,
      parent: Parent.fromJson(json['parent'] as Map<String, dynamic>),
      discussionId: json['discussionId'] as String,
      createdTime: DateTime.parse(json['createdTime'] as String),
      lastEditedTime: DateTime.parse(json['lastEditedTime'] as String),
      createdBy: User.fromJson(json['createdBy'] as Map<String, dynamic>),
      richText: (json['richText'] as List<dynamic>)
          .map((e) => RichText.fromJson(e as Map<String, dynamic>))
          .toList(),
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => CommentAttachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      displayName: json['displayName'] == null
          ? null
          : CommentDisplayName.fromJson(
              json['displayName'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'object': instance.object,
      'id': instance.id,
      'parent': instance.parent,
      'discussionId': instance.discussionId,
      'createdTime': instance.createdTime.toIso8601String(),
      'lastEditedTime': instance.lastEditedTime.toIso8601String(),
      'createdBy': instance.createdBy,
      'richText': instance.richText,
      'attachments': instance.attachments,
      'displayName': instance.displayName,
    };
