// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_upload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileUploadImpl _$$FileUploadImplFromJson(Map<String, dynamic> json) =>
    _$FileUploadImpl(
      id: json['id'] as String,
      object: json['object'] as String,
      createdTime: DateTime.parse(json['created_time'] as String),
      lastEditedTime: DateTime.parse(json['last_edited_time'] as String),
      expiryTime: json['expiry_time'] == null
          ? null
          : DateTime.parse(json['expiry_time'] as String),
      uploadUrl: json['upload_url'] as String?,
      archived: json['archived'] as bool,
      status: $enumDecode(_$FileUploadStatusEnumMap, json['status'],
          unknownValue: FileUploadStatus.failed),
      filename: json['filename'] as String,
      contentType: json['content_type'] as String,
      contentLength: (json['content_length'] as num).toInt(),
    );

Map<String, dynamic> _$$FileUploadImplToJson(_$FileUploadImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created_time': instance.createdTime.toIso8601String(),
      'last_edited_time': instance.lastEditedTime.toIso8601String(),
      'expiry_time': instance.expiryTime?.toIso8601String(),
      'upload_url': instance.uploadUrl,
      'archived': instance.archived,
      'status': _$FileUploadStatusEnumMap[instance.status]!,
      'filename': instance.filename,
      'content_type': instance.contentType,
      'content_length': instance.contentLength,
    };

const _$FileUploadStatusEnumMap = {
  FileUploadStatus.pending: 'pending',
  FileUploadStatus.uploaded: 'uploaded',
  FileUploadStatus.expired: 'expired',
  FileUploadStatus.failed: 'failed',
};
