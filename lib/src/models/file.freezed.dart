// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotionFile {
  String get url => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) external,
    required TResult Function(String url, DateTime expiryTime) uploaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? external,
    TResult? Function(String url, DateTime expiryTime)? uploaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? external,
    TResult Function(String url, DateTime expiryTime)? uploaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExternalFile value) external,
    required TResult Function(UploadedFile value) uploaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExternalFile value)? external,
    TResult? Function(UploadedFile value)? uploaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExternalFile value)? external,
    TResult Function(UploadedFile value)? uploaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NotionFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotionFileCopyWith<NotionFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotionFileCopyWith<$Res> {
  factory $NotionFileCopyWith(
          NotionFile value, $Res Function(NotionFile) then) =
      _$NotionFileCopyWithImpl<$Res, NotionFile>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$NotionFileCopyWithImpl<$Res, $Val extends NotionFile>
    implements $NotionFileCopyWith<$Res> {
  _$NotionFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotionFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExternalFileImplCopyWith<$Res>
    implements $NotionFileCopyWith<$Res> {
  factory _$$ExternalFileImplCopyWith(
          _$ExternalFileImpl value, $Res Function(_$ExternalFileImpl) then) =
      __$$ExternalFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$ExternalFileImplCopyWithImpl<$Res>
    extends _$NotionFileCopyWithImpl<$Res, _$ExternalFileImpl>
    implements _$$ExternalFileImplCopyWith<$Res> {
  __$$ExternalFileImplCopyWithImpl(
      _$ExternalFileImpl _value, $Res Function(_$ExternalFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotionFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$ExternalFileImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExternalFileImpl extends ExternalFile {
  const _$ExternalFileImpl({required this.url}) : super._();

  @override
  final String url;

  @override
  String toString() {
    return 'NotionFile.external(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalFileImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of NotionFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalFileImplCopyWith<_$ExternalFileImpl> get copyWith =>
      __$$ExternalFileImplCopyWithImpl<_$ExternalFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) external,
    required TResult Function(String url, DateTime expiryTime) uploaded,
  }) {
    return external(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? external,
    TResult? Function(String url, DateTime expiryTime)? uploaded,
  }) {
    return external?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? external,
    TResult Function(String url, DateTime expiryTime)? uploaded,
    required TResult orElse(),
  }) {
    if (external != null) {
      return external(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExternalFile value) external,
    required TResult Function(UploadedFile value) uploaded,
  }) {
    return external(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExternalFile value)? external,
    TResult? Function(UploadedFile value)? uploaded,
  }) {
    return external?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExternalFile value)? external,
    TResult Function(UploadedFile value)? uploaded,
    required TResult orElse(),
  }) {
    if (external != null) {
      return external(this);
    }
    return orElse();
  }
}

abstract class ExternalFile extends NotionFile {
  const factory ExternalFile({required final String url}) = _$ExternalFileImpl;
  const ExternalFile._() : super._();

  @override
  String get url;

  /// Create a copy of NotionFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExternalFileImplCopyWith<_$ExternalFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadedFileImplCopyWith<$Res>
    implements $NotionFileCopyWith<$Res> {
  factory _$$UploadedFileImplCopyWith(
          _$UploadedFileImpl value, $Res Function(_$UploadedFileImpl) then) =
      __$$UploadedFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, DateTime expiryTime});
}

/// @nodoc
class __$$UploadedFileImplCopyWithImpl<$Res>
    extends _$NotionFileCopyWithImpl<$Res, _$UploadedFileImpl>
    implements _$$UploadedFileImplCopyWith<$Res> {
  __$$UploadedFileImplCopyWithImpl(
      _$UploadedFileImpl _value, $Res Function(_$UploadedFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotionFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? expiryTime = null,
  }) {
    return _then(_$UploadedFileImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      expiryTime: null == expiryTime
          ? _value.expiryTime
          : expiryTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UploadedFileImpl extends UploadedFile {
  const _$UploadedFileImpl({required this.url, required this.expiryTime})
      : super._();

  @override
  final String url;
  @override
  final DateTime expiryTime;

  @override
  String toString() {
    return 'NotionFile.uploaded(url: $url, expiryTime: $expiryTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadedFileImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.expiryTime, expiryTime) ||
                other.expiryTime == expiryTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, expiryTime);

  /// Create a copy of NotionFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadedFileImplCopyWith<_$UploadedFileImpl> get copyWith =>
      __$$UploadedFileImplCopyWithImpl<_$UploadedFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) external,
    required TResult Function(String url, DateTime expiryTime) uploaded,
  }) {
    return uploaded(url, expiryTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? external,
    TResult? Function(String url, DateTime expiryTime)? uploaded,
  }) {
    return uploaded?.call(url, expiryTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? external,
    TResult Function(String url, DateTime expiryTime)? uploaded,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(url, expiryTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExternalFile value) external,
    required TResult Function(UploadedFile value) uploaded,
  }) {
    return uploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExternalFile value)? external,
    TResult? Function(UploadedFile value)? uploaded,
  }) {
    return uploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExternalFile value)? external,
    TResult Function(UploadedFile value)? uploaded,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(this);
    }
    return orElse();
  }
}

abstract class UploadedFile extends NotionFile {
  const factory UploadedFile(
      {required final String url,
      required final DateTime expiryTime}) = _$UploadedFileImpl;
  const UploadedFile._() : super._();

  @override
  String get url;
  DateTime get expiryTime;

  /// Create a copy of NotionFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadedFileImplCopyWith<_$UploadedFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EmojiIcon _$EmojiIconFromJson(Map<String, dynamic> json) {
  return _EmojiIcon.fromJson(json);
}

/// @nodoc
mixin _$EmojiIcon {
  String get emoji => throw _privateConstructorUsedError;

  /// Serializes this EmojiIcon to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmojiIcon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmojiIconCopyWith<EmojiIcon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmojiIconCopyWith<$Res> {
  factory $EmojiIconCopyWith(EmojiIcon value, $Res Function(EmojiIcon) then) =
      _$EmojiIconCopyWithImpl<$Res, EmojiIcon>;
  @useResult
  $Res call({String emoji});
}

/// @nodoc
class _$EmojiIconCopyWithImpl<$Res, $Val extends EmojiIcon>
    implements $EmojiIconCopyWith<$Res> {
  _$EmojiIconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmojiIcon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
  }) {
    return _then(_value.copyWith(
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmojiIconImplCopyWith<$Res>
    implements $EmojiIconCopyWith<$Res> {
  factory _$$EmojiIconImplCopyWith(
          _$EmojiIconImpl value, $Res Function(_$EmojiIconImpl) then) =
      __$$EmojiIconImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String emoji});
}

/// @nodoc
class __$$EmojiIconImplCopyWithImpl<$Res>
    extends _$EmojiIconCopyWithImpl<$Res, _$EmojiIconImpl>
    implements _$$EmojiIconImplCopyWith<$Res> {
  __$$EmojiIconImplCopyWithImpl(
      _$EmojiIconImpl _value, $Res Function(_$EmojiIconImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmojiIcon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
  }) {
    return _then(_$EmojiIconImpl(
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmojiIconImpl implements _EmojiIcon {
  const _$EmojiIconImpl({required this.emoji});

  factory _$EmojiIconImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmojiIconImplFromJson(json);

  @override
  final String emoji;

  @override
  String toString() {
    return 'EmojiIcon(emoji: $emoji)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmojiIconImpl &&
            (identical(other.emoji, emoji) || other.emoji == emoji));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, emoji);

  /// Create a copy of EmojiIcon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmojiIconImplCopyWith<_$EmojiIconImpl> get copyWith =>
      __$$EmojiIconImplCopyWithImpl<_$EmojiIconImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmojiIconImplToJson(
      this,
    );
  }
}

abstract class _EmojiIcon implements EmojiIcon {
  const factory _EmojiIcon({required final String emoji}) = _$EmojiIconImpl;

  factory _EmojiIcon.fromJson(Map<String, dynamic> json) =
      _$EmojiIconImpl.fromJson;

  @override
  String get emoji;

  /// Create a copy of EmojiIcon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmojiIconImplCopyWith<_$EmojiIconImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PageIcon {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emoji) emoji,
    required TResult Function(NotionFile file) file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emoji)? emoji,
    TResult? Function(NotionFile file)? file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emoji)? emoji,
    TResult Function(NotionFile file)? file,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmojiPageIcon value) emoji,
    required TResult Function(FilePageIcon value) file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmojiPageIcon value)? emoji,
    TResult? Function(FilePageIcon value)? file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmojiPageIcon value)? emoji,
    TResult Function(FilePageIcon value)? file,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageIconCopyWith<$Res> {
  factory $PageIconCopyWith(PageIcon value, $Res Function(PageIcon) then) =
      _$PageIconCopyWithImpl<$Res, PageIcon>;
}

/// @nodoc
class _$PageIconCopyWithImpl<$Res, $Val extends PageIcon>
    implements $PageIconCopyWith<$Res> {
  _$PageIconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageIcon
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmojiPageIconImplCopyWith<$Res> {
  factory _$$EmojiPageIconImplCopyWith(
          _$EmojiPageIconImpl value, $Res Function(_$EmojiPageIconImpl) then) =
      __$$EmojiPageIconImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emoji});
}

/// @nodoc
class __$$EmojiPageIconImplCopyWithImpl<$Res>
    extends _$PageIconCopyWithImpl<$Res, _$EmojiPageIconImpl>
    implements _$$EmojiPageIconImplCopyWith<$Res> {
  __$$EmojiPageIconImplCopyWithImpl(
      _$EmojiPageIconImpl _value, $Res Function(_$EmojiPageIconImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageIcon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
  }) {
    return _then(_$EmojiPageIconImpl(
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmojiPageIconImpl extends EmojiPageIcon {
  const _$EmojiPageIconImpl({required this.emoji}) : super._();

  @override
  final String emoji;

  @override
  String toString() {
    return 'PageIcon.emoji(emoji: $emoji)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmojiPageIconImpl &&
            (identical(other.emoji, emoji) || other.emoji == emoji));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emoji);

  /// Create a copy of PageIcon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmojiPageIconImplCopyWith<_$EmojiPageIconImpl> get copyWith =>
      __$$EmojiPageIconImplCopyWithImpl<_$EmojiPageIconImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emoji) emoji,
    required TResult Function(NotionFile file) file,
  }) {
    return emoji(this.emoji);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emoji)? emoji,
    TResult? Function(NotionFile file)? file,
  }) {
    return emoji?.call(this.emoji);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emoji)? emoji,
    TResult Function(NotionFile file)? file,
    required TResult orElse(),
  }) {
    if (emoji != null) {
      return emoji(this.emoji);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmojiPageIcon value) emoji,
    required TResult Function(FilePageIcon value) file,
  }) {
    return emoji(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmojiPageIcon value)? emoji,
    TResult? Function(FilePageIcon value)? file,
  }) {
    return emoji?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmojiPageIcon value)? emoji,
    TResult Function(FilePageIcon value)? file,
    required TResult orElse(),
  }) {
    if (emoji != null) {
      return emoji(this);
    }
    return orElse();
  }
}

abstract class EmojiPageIcon extends PageIcon {
  const factory EmojiPageIcon({required final String emoji}) =
      _$EmojiPageIconImpl;
  const EmojiPageIcon._() : super._();

  String get emoji;

  /// Create a copy of PageIcon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmojiPageIconImplCopyWith<_$EmojiPageIconImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilePageIconImplCopyWith<$Res> {
  factory _$$FilePageIconImplCopyWith(
          _$FilePageIconImpl value, $Res Function(_$FilePageIconImpl) then) =
      __$$FilePageIconImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotionFile file});

  $NotionFileCopyWith<$Res> get file;
}

/// @nodoc
class __$$FilePageIconImplCopyWithImpl<$Res>
    extends _$PageIconCopyWithImpl<$Res, _$FilePageIconImpl>
    implements _$$FilePageIconImplCopyWith<$Res> {
  __$$FilePageIconImplCopyWithImpl(
      _$FilePageIconImpl _value, $Res Function(_$FilePageIconImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageIcon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$FilePageIconImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as NotionFile,
    ));
  }

  /// Create a copy of PageIcon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotionFileCopyWith<$Res> get file {
    return $NotionFileCopyWith<$Res>(_value.file, (value) {
      return _then(_value.copyWith(file: value));
    });
  }
}

/// @nodoc

class _$FilePageIconImpl extends FilePageIcon {
  const _$FilePageIconImpl({required this.file}) : super._();

  @override
  final NotionFile file;

  @override
  String toString() {
    return 'PageIcon.file(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilePageIconImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  /// Create a copy of PageIcon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilePageIconImplCopyWith<_$FilePageIconImpl> get copyWith =>
      __$$FilePageIconImplCopyWithImpl<_$FilePageIconImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emoji) emoji,
    required TResult Function(NotionFile file) file,
  }) {
    return file(this.file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emoji)? emoji,
    TResult? Function(NotionFile file)? file,
  }) {
    return file?.call(this.file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emoji)? emoji,
    TResult Function(NotionFile file)? file,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this.file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmojiPageIcon value) emoji,
    required TResult Function(FilePageIcon value) file,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmojiPageIcon value)? emoji,
    TResult? Function(FilePageIcon value)? file,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmojiPageIcon value)? emoji,
    TResult Function(FilePageIcon value)? file,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }
}

abstract class FilePageIcon extends PageIcon {
  const factory FilePageIcon({required final NotionFile file}) =
      _$FilePageIconImpl;
  const FilePageIcon._() : super._();

  NotionFile get file;

  /// Create a copy of PageIcon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilePageIconImplCopyWith<_$FilePageIconImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
