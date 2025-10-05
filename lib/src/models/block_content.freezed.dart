// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'block_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlockContent {
  List<RichText> get richText => throw _privateConstructorUsedError;
  BlockColor get color => throw _privateConstructorUsedError;
  bool? get isToggleable => throw _privateConstructorUsedError;

  /// Create a copy of BlockContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlockContentCopyWith<BlockContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockContentCopyWith<$Res> {
  factory $BlockContentCopyWith(
          BlockContent value, $Res Function(BlockContent) then) =
      _$BlockContentCopyWithImpl<$Res, BlockContent>;
  @useResult
  $Res call({List<RichText> richText, BlockColor color, bool? isToggleable});
}

/// @nodoc
class _$BlockContentCopyWithImpl<$Res, $Val extends BlockContent>
    implements $BlockContentCopyWith<$Res> {
  _$BlockContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlockContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? richText = null,
    Object? color = null,
    Object? isToggleable = freezed,
  }) {
    return _then(_value.copyWith(
      richText: null == richText
          ? _value.richText
          : richText // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BlockColor,
      isToggleable: freezed == isToggleable
          ? _value.isToggleable
          : isToggleable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockContentImplCopyWith<$Res>
    implements $BlockContentCopyWith<$Res> {
  factory _$$BlockContentImplCopyWith(
          _$BlockContentImpl value, $Res Function(_$BlockContentImpl) then) =
      __$$BlockContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RichText> richText, BlockColor color, bool? isToggleable});
}

/// @nodoc
class __$$BlockContentImplCopyWithImpl<$Res>
    extends _$BlockContentCopyWithImpl<$Res, _$BlockContentImpl>
    implements _$$BlockContentImplCopyWith<$Res> {
  __$$BlockContentImplCopyWithImpl(
      _$BlockContentImpl _value, $Res Function(_$BlockContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlockContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? richText = null,
    Object? color = null,
    Object? isToggleable = freezed,
  }) {
    return _then(_$BlockContentImpl(
      richText: null == richText
          ? _value._richText
          : richText // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BlockColor,
      isToggleable: freezed == isToggleable
          ? _value.isToggleable
          : isToggleable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$BlockContentImpl implements _BlockContent {
  const _$BlockContentImpl(
      {final List<RichText> richText = const [],
      this.color = BlockColor.defaultColor,
      this.isToggleable = false})
      : _richText = richText;

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

  @override
  String toString() {
    return 'BlockContent(richText: $richText, color: $color, isToggleable: $isToggleable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockContentImpl &&
            const DeepCollectionEquality().equals(other._richText, _richText) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.isToggleable, isToggleable) ||
                other.isToggleable == isToggleable));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_richText), color, isToggleable);

  /// Create a copy of BlockContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockContentImplCopyWith<_$BlockContentImpl> get copyWith =>
      __$$BlockContentImplCopyWithImpl<_$BlockContentImpl>(this, _$identity);
}

abstract class _BlockContent implements BlockContent {
  const factory _BlockContent(
      {final List<RichText> richText,
      final BlockColor color,
      final bool? isToggleable}) = _$BlockContentImpl;

  @override
  List<RichText> get richText;
  @override
  BlockColor get color;
  @override
  bool? get isToggleable;

  /// Create a copy of BlockContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlockContentImplCopyWith<_$BlockContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ToDoContent {
  List<RichText> get richText => throw _privateConstructorUsedError;
  BlockColor get color => throw _privateConstructorUsedError;
  bool get checked => throw _privateConstructorUsedError;

  /// Create a copy of ToDoContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToDoContentCopyWith<ToDoContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoContentCopyWith<$Res> {
  factory $ToDoContentCopyWith(
          ToDoContent value, $Res Function(ToDoContent) then) =
      _$ToDoContentCopyWithImpl<$Res, ToDoContent>;
  @useResult
  $Res call({List<RichText> richText, BlockColor color, bool checked});
}

/// @nodoc
class _$ToDoContentCopyWithImpl<$Res, $Val extends ToDoContent>
    implements $ToDoContentCopyWith<$Res> {
  _$ToDoContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToDoContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? richText = null,
    Object? color = null,
    Object? checked = null,
  }) {
    return _then(_value.copyWith(
      richText: null == richText
          ? _value.richText
          : richText // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BlockColor,
      checked: null == checked
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToDoContentImplCopyWith<$Res>
    implements $ToDoContentCopyWith<$Res> {
  factory _$$ToDoContentImplCopyWith(
          _$ToDoContentImpl value, $Res Function(_$ToDoContentImpl) then) =
      __$$ToDoContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RichText> richText, BlockColor color, bool checked});
}

/// @nodoc
class __$$ToDoContentImplCopyWithImpl<$Res>
    extends _$ToDoContentCopyWithImpl<$Res, _$ToDoContentImpl>
    implements _$$ToDoContentImplCopyWith<$Res> {
  __$$ToDoContentImplCopyWithImpl(
      _$ToDoContentImpl _value, $Res Function(_$ToDoContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToDoContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? richText = null,
    Object? color = null,
    Object? checked = null,
  }) {
    return _then(_$ToDoContentImpl(
      richText: null == richText
          ? _value._richText
          : richText // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BlockColor,
      checked: null == checked
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToDoContentImpl implements _ToDoContent {
  const _$ToDoContentImpl(
      {final List<RichText> richText = const [],
      this.color = BlockColor.defaultColor,
      this.checked = false})
      : _richText = richText;

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

  @override
  String toString() {
    return 'ToDoContent(richText: $richText, color: $color, checked: $checked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDoContentImpl &&
            const DeepCollectionEquality().equals(other._richText, _richText) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.checked, checked) || other.checked == checked));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_richText), color, checked);

  /// Create a copy of ToDoContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDoContentImplCopyWith<_$ToDoContentImpl> get copyWith =>
      __$$ToDoContentImplCopyWithImpl<_$ToDoContentImpl>(this, _$identity);
}

abstract class _ToDoContent implements ToDoContent {
  const factory _ToDoContent(
      {final List<RichText> richText,
      final BlockColor color,
      final bool checked}) = _$ToDoContentImpl;

  @override
  List<RichText> get richText;
  @override
  BlockColor get color;
  @override
  bool get checked;

  /// Create a copy of ToDoContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToDoContentImplCopyWith<_$ToDoContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CodeContent {
  List<RichText> get richText => throw _privateConstructorUsedError;
  List<RichText> get caption => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  /// Create a copy of CodeContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CodeContentCopyWith<CodeContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeContentCopyWith<$Res> {
  factory $CodeContentCopyWith(
          CodeContent value, $Res Function(CodeContent) then) =
      _$CodeContentCopyWithImpl<$Res, CodeContent>;
  @useResult
  $Res call({List<RichText> richText, List<RichText> caption, String language});
}

/// @nodoc
class _$CodeContentCopyWithImpl<$Res, $Val extends CodeContent>
    implements $CodeContentCopyWith<$Res> {
  _$CodeContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CodeContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? richText = null,
    Object? caption = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      richText: null == richText
          ? _value.richText
          : richText // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CodeContentImplCopyWith<$Res>
    implements $CodeContentCopyWith<$Res> {
  factory _$$CodeContentImplCopyWith(
          _$CodeContentImpl value, $Res Function(_$CodeContentImpl) then) =
      __$$CodeContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RichText> richText, List<RichText> caption, String language});
}

/// @nodoc
class __$$CodeContentImplCopyWithImpl<$Res>
    extends _$CodeContentCopyWithImpl<$Res, _$CodeContentImpl>
    implements _$$CodeContentImplCopyWith<$Res> {
  __$$CodeContentImplCopyWithImpl(
      _$CodeContentImpl _value, $Res Function(_$CodeContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of CodeContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? richText = null,
    Object? caption = null,
    Object? language = null,
  }) {
    return _then(_$CodeContentImpl(
      richText: null == richText
          ? _value._richText
          : richText // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      caption: null == caption
          ? _value._caption
          : caption // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CodeContentImpl implements _CodeContent {
  const _$CodeContentImpl(
      {final List<RichText> richText = const [],
      final List<RichText> caption = const [],
      this.language = 'plain text'})
      : _richText = richText,
        _caption = caption;

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

  @override
  String toString() {
    return 'CodeContent(richText: $richText, caption: $caption, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeContentImpl &&
            const DeepCollectionEquality().equals(other._richText, _richText) &&
            const DeepCollectionEquality().equals(other._caption, _caption) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_richText),
      const DeepCollectionEquality().hash(_caption),
      language);

  /// Create a copy of CodeContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeContentImplCopyWith<_$CodeContentImpl> get copyWith =>
      __$$CodeContentImplCopyWithImpl<_$CodeContentImpl>(this, _$identity);
}

abstract class _CodeContent implements CodeContent {
  const factory _CodeContent(
      {final List<RichText> richText,
      final List<RichText> caption,
      final String language}) = _$CodeContentImpl;

  @override
  List<RichText> get richText;
  @override
  List<RichText> get caption;
  @override
  String get language;

  /// Create a copy of CodeContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CodeContentImplCopyWith<_$CodeContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
