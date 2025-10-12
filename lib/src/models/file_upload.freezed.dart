// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_upload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileUpload _$FileUploadFromJson(Map<String, dynamic> json) {
  return _FileUpload.fromJson(json);
}

/// @nodoc
mixin _$FileUpload {
  String get id => throw _privateConstructorUsedError;
  String get object => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_time')
  DateTime get createdTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_edited_time')
  DateTime get lastEditedTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiry_time')
  DateTime? get expiryTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_url')
  String? get uploadUrl => throw _privateConstructorUsedError;
  bool get archived => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: FileUploadStatus.failed)
  FileUploadStatus get status => throw _privateConstructorUsedError;
  String get filename => throw _privateConstructorUsedError;
  @JsonKey(name: 'content_type')
  String get contentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'content_length')
  int get contentLength => throw _privateConstructorUsedError;

  /// Serializes this FileUpload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileUpload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileUploadCopyWith<FileUpload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadCopyWith<$Res> {
  factory $FileUploadCopyWith(
          FileUpload value, $Res Function(FileUpload) then) =
      _$FileUploadCopyWithImpl<$Res, FileUpload>;
  @useResult
  $Res call(
      {String id,
      String object,
      @JsonKey(name: 'created_time') DateTime createdTime,
      @JsonKey(name: 'last_edited_time') DateTime lastEditedTime,
      @JsonKey(name: 'expiry_time') DateTime? expiryTime,
      @JsonKey(name: 'upload_url') String? uploadUrl,
      bool archived,
      @JsonKey(unknownEnumValue: FileUploadStatus.failed)
      FileUploadStatus status,
      String filename,
      @JsonKey(name: 'content_type') String contentType,
      @JsonKey(name: 'content_length') int contentLength});
}

/// @nodoc
class _$FileUploadCopyWithImpl<$Res, $Val extends FileUpload>
    implements $FileUploadCopyWith<$Res> {
  _$FileUploadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileUpload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? expiryTime = freezed,
    Object? uploadUrl = freezed,
    Object? archived = null,
    Object? status = null,
    Object? filename = null,
    Object? contentType = null,
    Object? contentLength = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastEditedTime: null == lastEditedTime
          ? _value.lastEditedTime
          : lastEditedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryTime: freezed == expiryTime
          ? _value.expiryTime
          : expiryTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadUrl: freezed == uploadUrl
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FileUploadStatus,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      contentLength: null == contentLength
          ? _value.contentLength
          : contentLength // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileUploadImplCopyWith<$Res>
    implements $FileUploadCopyWith<$Res> {
  factory _$$FileUploadImplCopyWith(
          _$FileUploadImpl value, $Res Function(_$FileUploadImpl) then) =
      __$$FileUploadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String object,
      @JsonKey(name: 'created_time') DateTime createdTime,
      @JsonKey(name: 'last_edited_time') DateTime lastEditedTime,
      @JsonKey(name: 'expiry_time') DateTime? expiryTime,
      @JsonKey(name: 'upload_url') String? uploadUrl,
      bool archived,
      @JsonKey(unknownEnumValue: FileUploadStatus.failed)
      FileUploadStatus status,
      String filename,
      @JsonKey(name: 'content_type') String contentType,
      @JsonKey(name: 'content_length') int contentLength});
}

/// @nodoc
class __$$FileUploadImplCopyWithImpl<$Res>
    extends _$FileUploadCopyWithImpl<$Res, _$FileUploadImpl>
    implements _$$FileUploadImplCopyWith<$Res> {
  __$$FileUploadImplCopyWithImpl(
      _$FileUploadImpl _value, $Res Function(_$FileUploadImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileUpload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? expiryTime = freezed,
    Object? uploadUrl = freezed,
    Object? archived = null,
    Object? status = null,
    Object? filename = null,
    Object? contentType = null,
    Object? contentLength = null,
  }) {
    return _then(_$FileUploadImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastEditedTime: null == lastEditedTime
          ? _value.lastEditedTime
          : lastEditedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryTime: freezed == expiryTime
          ? _value.expiryTime
          : expiryTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadUrl: freezed == uploadUrl
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FileUploadStatus,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      contentLength: null == contentLength
          ? _value.contentLength
          : contentLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileUploadImpl implements _FileUpload {
  const _$FileUploadImpl(
      {required this.id,
      required this.object,
      @JsonKey(name: 'created_time') required this.createdTime,
      @JsonKey(name: 'last_edited_time') required this.lastEditedTime,
      @JsonKey(name: 'expiry_time') this.expiryTime,
      @JsonKey(name: 'upload_url') this.uploadUrl,
      required this.archived,
      @JsonKey(unknownEnumValue: FileUploadStatus.failed) required this.status,
      required this.filename,
      @JsonKey(name: 'content_type') required this.contentType,
      @JsonKey(name: 'content_length') required this.contentLength});

  factory _$FileUploadImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileUploadImplFromJson(json);

  @override
  final String id;
  @override
  final String object;
  @override
  @JsonKey(name: 'created_time')
  final DateTime createdTime;
  @override
  @JsonKey(name: 'last_edited_time')
  final DateTime lastEditedTime;
  @override
  @JsonKey(name: 'expiry_time')
  final DateTime? expiryTime;
  @override
  @JsonKey(name: 'upload_url')
  final String? uploadUrl;
  @override
  final bool archived;
  @override
  @JsonKey(unknownEnumValue: FileUploadStatus.failed)
  final FileUploadStatus status;
  @override
  final String filename;
  @override
  @JsonKey(name: 'content_type')
  final String contentType;
  @override
  @JsonKey(name: 'content_length')
  final int contentLength;

  @override
  String toString() {
    return 'FileUpload(id: $id, object: $object, createdTime: $createdTime, lastEditedTime: $lastEditedTime, expiryTime: $expiryTime, uploadUrl: $uploadUrl, archived: $archived, status: $status, filename: $filename, contentType: $contentType, contentLength: $contentLength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUploadImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime) &&
            (identical(other.expiryTime, expiryTime) ||
                other.expiryTime == expiryTime) &&
            (identical(other.uploadUrl, uploadUrl) ||
                other.uploadUrl == uploadUrl) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.contentLength, contentLength) ||
                other.contentLength == contentLength));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      object,
      createdTime,
      lastEditedTime,
      expiryTime,
      uploadUrl,
      archived,
      status,
      filename,
      contentType,
      contentLength);

  /// Create a copy of FileUpload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileUploadImplCopyWith<_$FileUploadImpl> get copyWith =>
      __$$FileUploadImplCopyWithImpl<_$FileUploadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileUploadImplToJson(
      this,
    );
  }
}

abstract class _FileUpload implements FileUpload {
  const factory _FileUpload(
      {required final String id,
      required final String object,
      @JsonKey(name: 'created_time') required final DateTime createdTime,
      @JsonKey(name: 'last_edited_time') required final DateTime lastEditedTime,
      @JsonKey(name: 'expiry_time') final DateTime? expiryTime,
      @JsonKey(name: 'upload_url') final String? uploadUrl,
      required final bool archived,
      @JsonKey(unknownEnumValue: FileUploadStatus.failed)
      required final FileUploadStatus status,
      required final String filename,
      @JsonKey(name: 'content_type') required final String contentType,
      @JsonKey(name: 'content_length')
      required final int contentLength}) = _$FileUploadImpl;

  factory _FileUpload.fromJson(Map<String, dynamic> json) =
      _$FileUploadImpl.fromJson;

  @override
  String get id;
  @override
  String get object;
  @override
  @JsonKey(name: 'created_time')
  DateTime get createdTime;
  @override
  @JsonKey(name: 'last_edited_time')
  DateTime get lastEditedTime;
  @override
  @JsonKey(name: 'expiry_time')
  DateTime? get expiryTime;
  @override
  @JsonKey(name: 'upload_url')
  String? get uploadUrl;
  @override
  bool get archived;
  @override
  @JsonKey(unknownEnumValue: FileUploadStatus.failed)
  FileUploadStatus get status;
  @override
  String get filename;
  @override
  @JsonKey(name: 'content_type')
  String get contentType;
  @override
  @JsonKey(name: 'content_length')
  int get contentLength;

  /// Create a copy of FileUpload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileUploadImplCopyWith<_$FileUploadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
