// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sort.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Sort {
  SortDirection get direction => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, SortDirection direction) property,
    required TResult Function(TimestampType type, SortDirection direction)
        timestamp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, SortDirection direction)? property,
    TResult? Function(TimestampType type, SortDirection direction)? timestamp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, SortDirection direction)? property,
    TResult Function(TimestampType type, SortDirection direction)? timestamp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PropertySort value) property,
    required TResult Function(TimestampSort value) timestamp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PropertySort value)? property,
    TResult? Function(TimestampSort value)? timestamp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PropertySort value)? property,
    TResult Function(TimestampSort value)? timestamp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SortCopyWith<Sort> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortCopyWith<$Res> {
  factory $SortCopyWith(Sort value, $Res Function(Sort) then) =
      _$SortCopyWithImpl<$Res, Sort>;
  @useResult
  $Res call({SortDirection direction});
}

/// @nodoc
class _$SortCopyWithImpl<$Res, $Val extends Sort>
    implements $SortCopyWith<$Res> {
  _$SortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
  }) {
    return _then(_value.copyWith(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as SortDirection,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertySortImplCopyWith<$Res>
    implements $SortCopyWith<$Res> {
  factory _$$PropertySortImplCopyWith(
          _$PropertySortImpl value, $Res Function(_$PropertySortImpl) then) =
      __$$PropertySortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, SortDirection direction});
}

/// @nodoc
class __$$PropertySortImplCopyWithImpl<$Res>
    extends _$SortCopyWithImpl<$Res, _$PropertySortImpl>
    implements _$$PropertySortImplCopyWith<$Res> {
  __$$PropertySortImplCopyWithImpl(
      _$PropertySortImpl _value, $Res Function(_$PropertySortImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? direction = null,
  }) {
    return _then(_$PropertySortImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as SortDirection,
    ));
  }
}

/// @nodoc

class _$PropertySortImpl extends PropertySort {
  const _$PropertySortImpl({required this.name, required this.direction})
      : super._();

  @override
  final String name;
  @override
  final SortDirection direction;

  @override
  String toString() {
    return 'Sort.property(name: $name, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertySortImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, direction);

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertySortImplCopyWith<_$PropertySortImpl> get copyWith =>
      __$$PropertySortImplCopyWithImpl<_$PropertySortImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, SortDirection direction) property,
    required TResult Function(TimestampType type, SortDirection direction)
        timestamp,
  }) {
    return property(name, direction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, SortDirection direction)? property,
    TResult? Function(TimestampType type, SortDirection direction)? timestamp,
  }) {
    return property?.call(name, direction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, SortDirection direction)? property,
    TResult Function(TimestampType type, SortDirection direction)? timestamp,
    required TResult orElse(),
  }) {
    if (property != null) {
      return property(name, direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PropertySort value) property,
    required TResult Function(TimestampSort value) timestamp,
  }) {
    return property(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PropertySort value)? property,
    TResult? Function(TimestampSort value)? timestamp,
  }) {
    return property?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PropertySort value)? property,
    TResult Function(TimestampSort value)? timestamp,
    required TResult orElse(),
  }) {
    if (property != null) {
      return property(this);
    }
    return orElse();
  }
}

abstract class PropertySort extends Sort {
  const factory PropertySort(
      {required final String name,
      required final SortDirection direction}) = _$PropertySortImpl;
  const PropertySort._() : super._();

  String get name;
  @override
  SortDirection get direction;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertySortImplCopyWith<_$PropertySortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimestampSortImplCopyWith<$Res>
    implements $SortCopyWith<$Res> {
  factory _$$TimestampSortImplCopyWith(
          _$TimestampSortImpl value, $Res Function(_$TimestampSortImpl) then) =
      __$$TimestampSortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TimestampType type, SortDirection direction});
}

/// @nodoc
class __$$TimestampSortImplCopyWithImpl<$Res>
    extends _$SortCopyWithImpl<$Res, _$TimestampSortImpl>
    implements _$$TimestampSortImplCopyWith<$Res> {
  __$$TimestampSortImplCopyWithImpl(
      _$TimestampSortImpl _value, $Res Function(_$TimestampSortImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? direction = null,
  }) {
    return _then(_$TimestampSortImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TimestampType,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as SortDirection,
    ));
  }
}

/// @nodoc

class _$TimestampSortImpl extends TimestampSort {
  const _$TimestampSortImpl({required this.type, required this.direction})
      : super._();

  @override
  final TimestampType type;
  @override
  final SortDirection direction;

  @override
  String toString() {
    return 'Sort.timestamp(type: $type, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimestampSortImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, direction);

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimestampSortImplCopyWith<_$TimestampSortImpl> get copyWith =>
      __$$TimestampSortImplCopyWithImpl<_$TimestampSortImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, SortDirection direction) property,
    required TResult Function(TimestampType type, SortDirection direction)
        timestamp,
  }) {
    return timestamp(type, direction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, SortDirection direction)? property,
    TResult? Function(TimestampType type, SortDirection direction)? timestamp,
  }) {
    return timestamp?.call(type, direction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, SortDirection direction)? property,
    TResult Function(TimestampType type, SortDirection direction)? timestamp,
    required TResult orElse(),
  }) {
    if (timestamp != null) {
      return timestamp(type, direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PropertySort value) property,
    required TResult Function(TimestampSort value) timestamp,
  }) {
    return timestamp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PropertySort value)? property,
    TResult? Function(TimestampSort value)? timestamp,
  }) {
    return timestamp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PropertySort value)? property,
    TResult Function(TimestampSort value)? timestamp,
    required TResult orElse(),
  }) {
    if (timestamp != null) {
      return timestamp(this);
    }
    return orElse();
  }
}

abstract class TimestampSort extends Sort {
  const factory TimestampSort(
      {required final TimestampType type,
      required final SortDirection direction}) = _$TimestampSortImpl;
  const TimestampSort._() : super._();

  TimestampType get type;
  @override
  SortDirection get direction;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimestampSortImplCopyWith<_$TimestampSortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
