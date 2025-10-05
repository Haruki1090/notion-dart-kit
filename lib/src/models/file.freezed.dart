// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotionFile {
  String get url;

  /// Create a copy of NotionFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotionFileCopyWith<NotionFile> get copyWith =>
      _$NotionFileCopyWithImpl<NotionFile>(this as NotionFile, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotionFile &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @override
  String toString() {
    return 'NotionFile(url: $url)';
  }
}

/// @nodoc
abstract mixin class $NotionFileCopyWith<$Res> {
  factory $NotionFileCopyWith(
          NotionFile value, $Res Function(NotionFile) _then) =
      _$NotionFileCopyWithImpl;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$NotionFileCopyWithImpl<$Res> implements $NotionFileCopyWith<$Res> {
  _$NotionFileCopyWithImpl(this._self, this._then);

  final NotionFile _self;
  final $Res Function(NotionFile) _then;

  /// Create a copy of NotionFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_self.copyWith(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [NotionFile].
extension NotionFilePatterns on NotionFile {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExternalFile value)? external,
    TResult Function(UploadedFile value)? uploaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ExternalFile() when external != null:
        return external(_that);
      case UploadedFile() when uploaded != null:
        return uploaded(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExternalFile value) external,
    required TResult Function(UploadedFile value) uploaded,
  }) {
    final _that = this;
    switch (_that) {
      case ExternalFile():
        return external(_that);
      case UploadedFile():
        return uploaded(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExternalFile value)? external,
    TResult? Function(UploadedFile value)? uploaded,
  }) {
    final _that = this;
    switch (_that) {
      case ExternalFile() when external != null:
        return external(_that);
      case UploadedFile() when uploaded != null:
        return uploaded(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? external,
    TResult Function(String url, DateTime expiryTime)? uploaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ExternalFile() when external != null:
        return external(_that.url);
      case UploadedFile() when uploaded != null:
        return uploaded(_that.url, _that.expiryTime);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) external,
    required TResult Function(String url, DateTime expiryTime) uploaded,
  }) {
    final _that = this;
    switch (_that) {
      case ExternalFile():
        return external(_that.url);
      case UploadedFile():
        return uploaded(_that.url, _that.expiryTime);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? external,
    TResult? Function(String url, DateTime expiryTime)? uploaded,
  }) {
    final _that = this;
    switch (_that) {
      case ExternalFile() when external != null:
        return external(_that.url);
      case UploadedFile() when uploaded != null:
        return uploaded(_that.url, _that.expiryTime);
      case _:
        return null;
    }
  }
}

/// @nodoc

class ExternalFile extends NotionFile {
  const ExternalFile({required this.url}) : super._();

  @override
  final String url;

  /// Create a copy of NotionFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExternalFileCopyWith<ExternalFile> get copyWith =>
      _$ExternalFileCopyWithImpl<ExternalFile>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExternalFile &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @override
  String toString() {
    return 'NotionFile.external(url: $url)';
  }
}

/// @nodoc
abstract mixin class $ExternalFileCopyWith<$Res>
    implements $NotionFileCopyWith<$Res> {
  factory $ExternalFileCopyWith(
          ExternalFile value, $Res Function(ExternalFile) _then) =
      _$ExternalFileCopyWithImpl;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$ExternalFileCopyWithImpl<$Res> implements $ExternalFileCopyWith<$Res> {
  _$ExternalFileCopyWithImpl(this._self, this._then);

  final ExternalFile _self;
  final $Res Function(ExternalFile) _then;

  /// Create a copy of NotionFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
  }) {
    return _then(ExternalFile(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UploadedFile extends NotionFile {
  const UploadedFile({required this.url, required this.expiryTime}) : super._();

  @override
  final String url;
  final DateTime expiryTime;

  /// Create a copy of NotionFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UploadedFileCopyWith<UploadedFile> get copyWith =>
      _$UploadedFileCopyWithImpl<UploadedFile>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadedFile &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.expiryTime, expiryTime) ||
                other.expiryTime == expiryTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, expiryTime);

  @override
  String toString() {
    return 'NotionFile.uploaded(url: $url, expiryTime: $expiryTime)';
  }
}

/// @nodoc
abstract mixin class $UploadedFileCopyWith<$Res>
    implements $NotionFileCopyWith<$Res> {
  factory $UploadedFileCopyWith(
          UploadedFile value, $Res Function(UploadedFile) _then) =
      _$UploadedFileCopyWithImpl;
  @override
  @useResult
  $Res call({String url, DateTime expiryTime});
}

/// @nodoc
class _$UploadedFileCopyWithImpl<$Res> implements $UploadedFileCopyWith<$Res> {
  _$UploadedFileCopyWithImpl(this._self, this._then);

  final UploadedFile _self;
  final $Res Function(UploadedFile) _then;

  /// Create a copy of NotionFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
    Object? expiryTime = null,
  }) {
    return _then(UploadedFile(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      expiryTime: null == expiryTime
          ? _self.expiryTime
          : expiryTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
mixin _$EmojiIcon {
  String get emoji;

  /// Create a copy of EmojiIcon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmojiIconCopyWith<EmojiIcon> get copyWith =>
      _$EmojiIconCopyWithImpl<EmojiIcon>(this as EmojiIcon, _$identity);

  /// Serializes this EmojiIcon to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmojiIcon &&
            (identical(other.emoji, emoji) || other.emoji == emoji));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, emoji);

  @override
  String toString() {
    return 'EmojiIcon(emoji: $emoji)';
  }
}

/// @nodoc
abstract mixin class $EmojiIconCopyWith<$Res> {
  factory $EmojiIconCopyWith(EmojiIcon value, $Res Function(EmojiIcon) _then) =
      _$EmojiIconCopyWithImpl;
  @useResult
  $Res call({String emoji});
}

/// @nodoc
class _$EmojiIconCopyWithImpl<$Res> implements $EmojiIconCopyWith<$Res> {
  _$EmojiIconCopyWithImpl(this._self, this._then);

  final EmojiIcon _self;
  final $Res Function(EmojiIcon) _then;

  /// Create a copy of EmojiIcon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
  }) {
    return _then(_self.copyWith(
      emoji: null == emoji
          ? _self.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [EmojiIcon].
extension EmojiIconPatterns on EmojiIcon {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EmojiIcon value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EmojiIcon() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EmojiIcon value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EmojiIcon():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EmojiIcon value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EmojiIcon() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String emoji)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EmojiIcon() when $default != null:
        return $default(_that.emoji);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String emoji) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EmojiIcon():
        return $default(_that.emoji);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String emoji)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EmojiIcon() when $default != null:
        return $default(_that.emoji);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EmojiIcon implements EmojiIcon {
  const _EmojiIcon({required this.emoji});
  factory _EmojiIcon.fromJson(Map<String, dynamic> json) =>
      _$EmojiIconFromJson(json);

  @override
  final String emoji;

  /// Create a copy of EmojiIcon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EmojiIconCopyWith<_EmojiIcon> get copyWith =>
      __$EmojiIconCopyWithImpl<_EmojiIcon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EmojiIconToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmojiIcon &&
            (identical(other.emoji, emoji) || other.emoji == emoji));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, emoji);

  @override
  String toString() {
    return 'EmojiIcon(emoji: $emoji)';
  }
}

/// @nodoc
abstract mixin class _$EmojiIconCopyWith<$Res>
    implements $EmojiIconCopyWith<$Res> {
  factory _$EmojiIconCopyWith(
          _EmojiIcon value, $Res Function(_EmojiIcon) _then) =
      __$EmojiIconCopyWithImpl;
  @override
  @useResult
  $Res call({String emoji});
}

/// @nodoc
class __$EmojiIconCopyWithImpl<$Res> implements _$EmojiIconCopyWith<$Res> {
  __$EmojiIconCopyWithImpl(this._self, this._then);

  final _EmojiIcon _self;
  final $Res Function(_EmojiIcon) _then;

  /// Create a copy of EmojiIcon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? emoji = null,
  }) {
    return _then(_EmojiIcon(
      emoji: null == emoji
          ? _self.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$PageIcon {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PageIcon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PageIcon()';
  }
}

/// @nodoc
class $PageIconCopyWith<$Res> {
  $PageIconCopyWith(PageIcon _, $Res Function(PageIcon) __);
}

/// Adds pattern-matching-related methods to [PageIcon].
extension PageIconPatterns on PageIcon {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmojiPageIcon value)? emoji,
    TResult Function(FilePageIcon value)? file,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case EmojiPageIcon() when emoji != null:
        return emoji(_that);
      case FilePageIcon() when file != null:
        return file(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmojiPageIcon value) emoji,
    required TResult Function(FilePageIcon value) file,
  }) {
    final _that = this;
    switch (_that) {
      case EmojiPageIcon():
        return emoji(_that);
      case FilePageIcon():
        return file(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmojiPageIcon value)? emoji,
    TResult? Function(FilePageIcon value)? file,
  }) {
    final _that = this;
    switch (_that) {
      case EmojiPageIcon() when emoji != null:
        return emoji(_that);
      case FilePageIcon() when file != null:
        return file(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emoji)? emoji,
    TResult Function(NotionFile file)? file,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case EmojiPageIcon() when emoji != null:
        return emoji(_that.emoji);
      case FilePageIcon() when file != null:
        return file(_that.file);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emoji) emoji,
    required TResult Function(NotionFile file) file,
  }) {
    final _that = this;
    switch (_that) {
      case EmojiPageIcon():
        return emoji(_that.emoji);
      case FilePageIcon():
        return file(_that.file);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emoji)? emoji,
    TResult? Function(NotionFile file)? file,
  }) {
    final _that = this;
    switch (_that) {
      case EmojiPageIcon() when emoji != null:
        return emoji(_that.emoji);
      case FilePageIcon() when file != null:
        return file(_that.file);
      case _:
        return null;
    }
  }
}

/// @nodoc

class EmojiPageIcon extends PageIcon {
  const EmojiPageIcon({required this.emoji}) : super._();

  final String emoji;

  /// Create a copy of PageIcon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmojiPageIconCopyWith<EmojiPageIcon> get copyWith =>
      _$EmojiPageIconCopyWithImpl<EmojiPageIcon>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmojiPageIcon &&
            (identical(other.emoji, emoji) || other.emoji == emoji));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emoji);

  @override
  String toString() {
    return 'PageIcon.emoji(emoji: $emoji)';
  }
}

/// @nodoc
abstract mixin class $EmojiPageIconCopyWith<$Res>
    implements $PageIconCopyWith<$Res> {
  factory $EmojiPageIconCopyWith(
          EmojiPageIcon value, $Res Function(EmojiPageIcon) _then) =
      _$EmojiPageIconCopyWithImpl;
  @useResult
  $Res call({String emoji});
}

/// @nodoc
class _$EmojiPageIconCopyWithImpl<$Res>
    implements $EmojiPageIconCopyWith<$Res> {
  _$EmojiPageIconCopyWithImpl(this._self, this._then);

  final EmojiPageIcon _self;
  final $Res Function(EmojiPageIcon) _then;

  /// Create a copy of PageIcon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? emoji = null,
  }) {
    return _then(EmojiPageIcon(
      emoji: null == emoji
          ? _self.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class FilePageIcon extends PageIcon {
  const FilePageIcon({required this.file}) : super._();

  final NotionFile file;

  /// Create a copy of PageIcon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FilePageIconCopyWith<FilePageIcon> get copyWith =>
      _$FilePageIconCopyWithImpl<FilePageIcon>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FilePageIcon &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @override
  String toString() {
    return 'PageIcon.file(file: $file)';
  }
}

/// @nodoc
abstract mixin class $FilePageIconCopyWith<$Res>
    implements $PageIconCopyWith<$Res> {
  factory $FilePageIconCopyWith(
          FilePageIcon value, $Res Function(FilePageIcon) _then) =
      _$FilePageIconCopyWithImpl;
  @useResult
  $Res call({NotionFile file});

  $NotionFileCopyWith<$Res> get file;
}

/// @nodoc
class _$FilePageIconCopyWithImpl<$Res> implements $FilePageIconCopyWith<$Res> {
  _$FilePageIconCopyWithImpl(this._self, this._then);

  final FilePageIcon _self;
  final $Res Function(FilePageIcon) _then;

  /// Create a copy of PageIcon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? file = null,
  }) {
    return _then(FilePageIcon(
      file: null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as NotionFile,
    ));
  }

  /// Create a copy of PageIcon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotionFileCopyWith<$Res> get file {
    return $NotionFileCopyWith<$Res>(_self.file, (value) {
      return _then(_self.copyWith(file: value));
    });
  }
}

// dart format on
