// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'block_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlockContent {
  List<RichText> get richText;
  BlockColor get color;
  bool? get isToggleable;

  /// Create a copy of BlockContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BlockContentCopyWith<BlockContent> get copyWith =>
      _$BlockContentCopyWithImpl<BlockContent>(
          this as BlockContent, _$identity);

  /// Serializes this BlockContent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BlockContent &&
            const DeepCollectionEquality().equals(other.richText, richText) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.isToggleable, isToggleable) ||
                other.isToggleable == isToggleable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(richText), color, isToggleable);

  @override
  String toString() {
    return 'BlockContent(richText: $richText, color: $color, isToggleable: $isToggleable)';
  }
}

/// @nodoc
abstract mixin class $BlockContentCopyWith<$Res> {
  factory $BlockContentCopyWith(
          BlockContent value, $Res Function(BlockContent) _then) =
      _$BlockContentCopyWithImpl;
  @useResult
  $Res call({List<RichText> richText, BlockColor color, bool? isToggleable});
}

/// @nodoc
class _$BlockContentCopyWithImpl<$Res> implements $BlockContentCopyWith<$Res> {
  _$BlockContentCopyWithImpl(this._self, this._then);

  final BlockContent _self;
  final $Res Function(BlockContent) _then;

  /// Create a copy of BlockContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? richText = null,
    Object? color = null,
    Object? isToggleable = freezed,
  }) {
    return _then(_self.copyWith(
      richText: null == richText
          ? _self.richText
          : richText // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as BlockColor,
      isToggleable: freezed == isToggleable
          ? _self.isToggleable
          : isToggleable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BlockContent].
extension BlockContentPatterns on BlockContent {
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
    TResult Function(_BlockContent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BlockContent() when $default != null:
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
    TResult Function(_BlockContent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BlockContent():
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
    TResult? Function(_BlockContent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BlockContent() when $default != null:
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
    TResult Function(
            List<RichText> richText, BlockColor color, bool? isToggleable)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BlockContent() when $default != null:
        return $default(_that.richText, _that.color, _that.isToggleable);
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
    TResult Function(
            List<RichText> richText, BlockColor color, bool? isToggleable)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BlockContent():
        return $default(_that.richText, _that.color, _that.isToggleable);
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
    TResult? Function(
            List<RichText> richText, BlockColor color, bool? isToggleable)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BlockContent() when $default != null:
        return $default(_that.richText, _that.color, _that.isToggleable);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BlockContent implements BlockContent {
  const _BlockContent(
      {final List<RichText> richText = const [],
      this.color = BlockColor.defaultColor,
      this.isToggleable = false})
      : _richText = richText;
  factory _BlockContent.fromJson(Map<String, dynamic> json) =>
      _$BlockContentFromJson(json);

  final List<RichText> _richText;
  @override
  @JsonKey()
  List<RichText> get richText {
    if (_richText is EqualUnmodifiableListView) return _richText;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_richText);
  }

  @override
  @JsonKey()
  final BlockColor color;
  @override
  @JsonKey()
  final bool? isToggleable;

  /// Create a copy of BlockContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BlockContentCopyWith<_BlockContent> get copyWith =>
      __$BlockContentCopyWithImpl<_BlockContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BlockContentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BlockContent &&
            const DeepCollectionEquality().equals(other._richText, _richText) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.isToggleable, isToggleable) ||
                other.isToggleable == isToggleable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_richText), color, isToggleable);

  @override
  String toString() {
    return 'BlockContent(richText: $richText, color: $color, isToggleable: $isToggleable)';
  }
}

/// @nodoc
abstract mixin class _$BlockContentCopyWith<$Res>
    implements $BlockContentCopyWith<$Res> {
  factory _$BlockContentCopyWith(
          _BlockContent value, $Res Function(_BlockContent) _then) =
      __$BlockContentCopyWithImpl;
  @override
  @useResult
  $Res call({List<RichText> richText, BlockColor color, bool? isToggleable});
}

/// @nodoc
class __$BlockContentCopyWithImpl<$Res>
    implements _$BlockContentCopyWith<$Res> {
  __$BlockContentCopyWithImpl(this._self, this._then);

  final _BlockContent _self;
  final $Res Function(_BlockContent) _then;

  /// Create a copy of BlockContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? richText = null,
    Object? color = null,
    Object? isToggleable = freezed,
  }) {
    return _then(_BlockContent(
      richText: null == richText
          ? _self._richText
          : richText // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as BlockColor,
      isToggleable: freezed == isToggleable
          ? _self.isToggleable
          : isToggleable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$ToDoContent {
  List<RichText> get richText;
  BlockColor get color;
  bool get checked;

  /// Create a copy of ToDoContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ToDoContentCopyWith<ToDoContent> get copyWith =>
      _$ToDoContentCopyWithImpl<ToDoContent>(this as ToDoContent, _$identity);

  /// Serializes this ToDoContent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ToDoContent &&
            const DeepCollectionEquality().equals(other.richText, richText) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.checked, checked) || other.checked == checked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(richText), color, checked);

  @override
  String toString() {
    return 'ToDoContent(richText: $richText, color: $color, checked: $checked)';
  }
}

/// @nodoc
abstract mixin class $ToDoContentCopyWith<$Res> {
  factory $ToDoContentCopyWith(
          ToDoContent value, $Res Function(ToDoContent) _then) =
      _$ToDoContentCopyWithImpl;
  @useResult
  $Res call({List<RichText> richText, BlockColor color, bool checked});
}

/// @nodoc
class _$ToDoContentCopyWithImpl<$Res> implements $ToDoContentCopyWith<$Res> {
  _$ToDoContentCopyWithImpl(this._self, this._then);

  final ToDoContent _self;
  final $Res Function(ToDoContent) _then;

  /// Create a copy of ToDoContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? richText = null,
    Object? color = null,
    Object? checked = null,
  }) {
    return _then(_self.copyWith(
      richText: null == richText
          ? _self.richText
          : richText // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as BlockColor,
      checked: null == checked
          ? _self.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [ToDoContent].
extension ToDoContentPatterns on ToDoContent {
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
    TResult Function(_ToDoContent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ToDoContent() when $default != null:
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
    TResult Function(_ToDoContent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ToDoContent():
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
    TResult? Function(_ToDoContent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ToDoContent() when $default != null:
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
    TResult Function(List<RichText> richText, BlockColor color, bool checked)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ToDoContent() when $default != null:
        return $default(_that.richText, _that.color, _that.checked);
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
    TResult Function(List<RichText> richText, BlockColor color, bool checked)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ToDoContent():
        return $default(_that.richText, _that.color, _that.checked);
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
    TResult? Function(List<RichText> richText, BlockColor color, bool checked)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ToDoContent() when $default != null:
        return $default(_that.richText, _that.color, _that.checked);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ToDoContent implements ToDoContent {
  const _ToDoContent(
      {final List<RichText> richText = const [],
      this.color = BlockColor.defaultColor,
      this.checked = false})
      : _richText = richText;
  factory _ToDoContent.fromJson(Map<String, dynamic> json) =>
      _$ToDoContentFromJson(json);

  final List<RichText> _richText;
  @override
  @JsonKey()
  List<RichText> get richText {
    if (_richText is EqualUnmodifiableListView) return _richText;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_richText);
  }

  @override
  @JsonKey()
  final BlockColor color;
  @override
  @JsonKey()
  final bool checked;

  /// Create a copy of ToDoContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ToDoContentCopyWith<_ToDoContent> get copyWith =>
      __$ToDoContentCopyWithImpl<_ToDoContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ToDoContentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToDoContent &&
            const DeepCollectionEquality().equals(other._richText, _richText) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.checked, checked) || other.checked == checked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_richText), color, checked);

  @override
  String toString() {
    return 'ToDoContent(richText: $richText, color: $color, checked: $checked)';
  }
}

/// @nodoc
abstract mixin class _$ToDoContentCopyWith<$Res>
    implements $ToDoContentCopyWith<$Res> {
  factory _$ToDoContentCopyWith(
          _ToDoContent value, $Res Function(_ToDoContent) _then) =
      __$ToDoContentCopyWithImpl;
  @override
  @useResult
  $Res call({List<RichText> richText, BlockColor color, bool checked});
}

/// @nodoc
class __$ToDoContentCopyWithImpl<$Res> implements _$ToDoContentCopyWith<$Res> {
  __$ToDoContentCopyWithImpl(this._self, this._then);

  final _ToDoContent _self;
  final $Res Function(_ToDoContent) _then;

  /// Create a copy of ToDoContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? richText = null,
    Object? color = null,
    Object? checked = null,
  }) {
    return _then(_ToDoContent(
      richText: null == richText
          ? _self._richText
          : richText // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as BlockColor,
      checked: null == checked
          ? _self.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$CodeContent {
  List<RichText> get richText;
  List<RichText> get caption;
  String get language;

  /// Create a copy of CodeContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CodeContentCopyWith<CodeContent> get copyWith =>
      _$CodeContentCopyWithImpl<CodeContent>(this as CodeContent, _$identity);

  /// Serializes this CodeContent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CodeContent &&
            const DeepCollectionEquality().equals(other.richText, richText) &&
            const DeepCollectionEquality().equals(other.caption, caption) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(richText),
      const DeepCollectionEquality().hash(caption),
      language);

  @override
  String toString() {
    return 'CodeContent(richText: $richText, caption: $caption, language: $language)';
  }
}

/// @nodoc
abstract mixin class $CodeContentCopyWith<$Res> {
  factory $CodeContentCopyWith(
          CodeContent value, $Res Function(CodeContent) _then) =
      _$CodeContentCopyWithImpl;
  @useResult
  $Res call({List<RichText> richText, List<RichText> caption, String language});
}

/// @nodoc
class _$CodeContentCopyWithImpl<$Res> implements $CodeContentCopyWith<$Res> {
  _$CodeContentCopyWithImpl(this._self, this._then);

  final CodeContent _self;
  final $Res Function(CodeContent) _then;

  /// Create a copy of CodeContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? richText = null,
    Object? caption = null,
    Object? language = null,
  }) {
    return _then(_self.copyWith(
      richText: null == richText
          ? _self.richText
          : richText // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      caption: null == caption
          ? _self.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CodeContent].
extension CodeContentPatterns on CodeContent {
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
    TResult Function(_CodeContent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CodeContent() when $default != null:
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
    TResult Function(_CodeContent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CodeContent():
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
    TResult? Function(_CodeContent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CodeContent() when $default != null:
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
    TResult Function(
            List<RichText> richText, List<RichText> caption, String language)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CodeContent() when $default != null:
        return $default(_that.richText, _that.caption, _that.language);
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
    TResult Function(
            List<RichText> richText, List<RichText> caption, String language)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CodeContent():
        return $default(_that.richText, _that.caption, _that.language);
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
    TResult? Function(
            List<RichText> richText, List<RichText> caption, String language)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CodeContent() when $default != null:
        return $default(_that.richText, _that.caption, _that.language);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CodeContent implements CodeContent {
  const _CodeContent(
      {final List<RichText> richText = const [],
      final List<RichText> caption = const [],
      this.language = 'plain text'})
      : _richText = richText,
        _caption = caption;
  factory _CodeContent.fromJson(Map<String, dynamic> json) =>
      _$CodeContentFromJson(json);

  final List<RichText> _richText;
  @override
  @JsonKey()
  List<RichText> get richText {
    if (_richText is EqualUnmodifiableListView) return _richText;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_richText);
  }

  final List<RichText> _caption;
  @override
  @JsonKey()
  List<RichText> get caption {
    if (_caption is EqualUnmodifiableListView) return _caption;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_caption);
  }

  @override
  @JsonKey()
  final String language;

  /// Create a copy of CodeContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CodeContentCopyWith<_CodeContent> get copyWith =>
      __$CodeContentCopyWithImpl<_CodeContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CodeContentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CodeContent &&
            const DeepCollectionEquality().equals(other._richText, _richText) &&
            const DeepCollectionEquality().equals(other._caption, _caption) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_richText),
      const DeepCollectionEquality().hash(_caption),
      language);

  @override
  String toString() {
    return 'CodeContent(richText: $richText, caption: $caption, language: $language)';
  }
}

/// @nodoc
abstract mixin class _$CodeContentCopyWith<$Res>
    implements $CodeContentCopyWith<$Res> {
  factory _$CodeContentCopyWith(
          _CodeContent value, $Res Function(_CodeContent) _then) =
      __$CodeContentCopyWithImpl;
  @override
  @useResult
  $Res call({List<RichText> richText, List<RichText> caption, String language});
}

/// @nodoc
class __$CodeContentCopyWithImpl<$Res> implements _$CodeContentCopyWith<$Res> {
  __$CodeContentCopyWithImpl(this._self, this._then);

  final _CodeContent _self;
  final $Res Function(_CodeContent) _then;

  /// Create a copy of CodeContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? richText = null,
    Object? caption = null,
    Object? language = null,
  }) {
    return _then(_CodeContent(
      richText: null == richText
          ? _self._richText
          : richText // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      caption: null == caption
          ? _self._caption
          : caption // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
