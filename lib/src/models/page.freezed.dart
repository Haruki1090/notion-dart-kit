// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Page {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdTime => throw _privateConstructorUsedError;
  DateTime get lastEditedTime => throw _privateConstructorUsedError;
  User get createdBy => throw _privateConstructorUsedError;
  User get lastEditedBy => throw _privateConstructorUsedError;
  Parent get parent => throw _privateConstructorUsedError;
  bool get archived => throw _privateConstructorUsedError;
  bool get inTrash => throw _privateConstructorUsedError;
  Map<String, LegacyPropertyValue> get properties =>
      throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  PageIcon? get icon => throw _privateConstructorUsedError;
  NotionFile? get cover => throw _privateConstructorUsedError;
  String? get publicUrl => throw _privateConstructorUsedError;

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageCopyWith<Page> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageCopyWith<$Res> {
  factory $PageCopyWith(Page value, $Res Function(Page) then) =
      _$PageCopyWithImpl<$Res, Page>;
  @useResult
  $Res call(
      {String id,
      DateTime createdTime,
      DateTime lastEditedTime,
      User createdBy,
      User lastEditedBy,
      Parent parent,
      bool archived,
      bool inTrash,
      Map<String, LegacyPropertyValue> properties,
      String url,
      PageIcon? icon,
      NotionFile? cover,
      String? publicUrl});

  $UserCopyWith<$Res> get createdBy;
  $UserCopyWith<$Res> get lastEditedBy;
  $ParentCopyWith<$Res> get parent;
  $PageIconCopyWith<$Res>? get icon;
  $NotionFileCopyWith<$Res>? get cover;
}

/// @nodoc
class _$PageCopyWithImpl<$Res, $Val extends Page>
    implements $PageCopyWith<$Res> {
  _$PageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? createdBy = null,
    Object? lastEditedBy = null,
    Object? parent = null,
    Object? archived = null,
    Object? inTrash = null,
    Object? properties = null,
    Object? url = null,
    Object? icon = freezed,
    Object? cover = freezed,
    Object? publicUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastEditedTime: null == lastEditedTime
          ? _value.lastEditedTime
          : lastEditedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User,
      lastEditedBy: null == lastEditedBy
          ? _value.lastEditedBy
          : lastEditedBy // ignore: cast_nullable_to_non_nullable
              as User,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _value.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, LegacyPropertyValue>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as PageIcon?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as NotionFile?,
      publicUrl: freezed == publicUrl
          ? _value.publicUrl
          : publicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_value.createdBy, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_value.lastEditedBy, (value) {
      return _then(_value.copyWith(lastEditedBy: value) as $Val);
    });
  }

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_value.parent, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageIconCopyWith<$Res>? get icon {
    if (_value.icon == null) {
      return null;
    }

    return $PageIconCopyWith<$Res>(_value.icon!, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotionFileCopyWith<$Res>? get cover {
    if (_value.cover == null) {
      return null;
    }

    return $NotionFileCopyWith<$Res>(_value.cover!, (value) {
      return _then(_value.copyWith(cover: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PageImplCopyWith<$Res> implements $PageCopyWith<$Res> {
  factory _$$PageImplCopyWith(
          _$PageImpl value, $Res Function(_$PageImpl) then) =
      __$$PageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdTime,
      DateTime lastEditedTime,
      User createdBy,
      User lastEditedBy,
      Parent parent,
      bool archived,
      bool inTrash,
      Map<String, LegacyPropertyValue> properties,
      String url,
      PageIcon? icon,
      NotionFile? cover,
      String? publicUrl});

  @override
  $UserCopyWith<$Res> get createdBy;
  @override
  $UserCopyWith<$Res> get lastEditedBy;
  @override
  $ParentCopyWith<$Res> get parent;
  @override
  $PageIconCopyWith<$Res>? get icon;
  @override
  $NotionFileCopyWith<$Res>? get cover;
}

/// @nodoc
class __$$PageImplCopyWithImpl<$Res>
    extends _$PageCopyWithImpl<$Res, _$PageImpl>
    implements _$$PageImplCopyWith<$Res> {
  __$$PageImplCopyWithImpl(_$PageImpl _value, $Res Function(_$PageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? createdBy = null,
    Object? lastEditedBy = null,
    Object? parent = null,
    Object? archived = null,
    Object? inTrash = null,
    Object? properties = null,
    Object? url = null,
    Object? icon = freezed,
    Object? cover = freezed,
    Object? publicUrl = freezed,
  }) {
    return _then(_$PageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastEditedTime: null == lastEditedTime
          ? _value.lastEditedTime
          : lastEditedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User,
      lastEditedBy: null == lastEditedBy
          ? _value.lastEditedBy
          : lastEditedBy // ignore: cast_nullable_to_non_nullable
              as User,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _value.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      properties: null == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, LegacyPropertyValue>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as PageIcon?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as NotionFile?,
      publicUrl: freezed == publicUrl
          ? _value.publicUrl
          : publicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PageImpl extends _Page {
  const _$PageImpl(
      {required this.id,
      required this.createdTime,
      required this.lastEditedTime,
      required this.createdBy,
      required this.lastEditedBy,
      required this.parent,
      required this.archived,
      required this.inTrash,
      required final Map<String, LegacyPropertyValue> properties,
      required this.url,
      this.icon,
      this.cover,
      this.publicUrl})
      : _properties = properties,
        super._();

  @override
  final String id;
  @override
  final DateTime createdTime;
  @override
  final DateTime lastEditedTime;
  @override
  final User createdBy;
  @override
  final User lastEditedBy;
  @override
  final Parent parent;
  @override
  final bool archived;
  @override
  final bool inTrash;
  final Map<String, LegacyPropertyValue> _properties;
  @override
  Map<String, LegacyPropertyValue> get properties {
    if (_properties is EqualUnmodifiableMapView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_properties);
  }

  @override
  final String url;
  @override
  final PageIcon? icon;
  @override
  final NotionFile? cover;
  @override
  final String? publicUrl;

  @override
  String toString() {
    return 'Page(id: $id, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, parent: $parent, archived: $archived, inTrash: $inTrash, properties: $properties, url: $url, icon: $icon, cover: $cover, publicUrl: $publicUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastEditedBy, lastEditedBy) ||
                other.lastEditedBy == lastEditedBy) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.inTrash, inTrash) || other.inTrash == inTrash) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.publicUrl, publicUrl) ||
                other.publicUrl == publicUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdTime,
      lastEditedTime,
      createdBy,
      lastEditedBy,
      parent,
      archived,
      inTrash,
      const DeepCollectionEquality().hash(_properties),
      url,
      icon,
      cover,
      publicUrl);

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageImplCopyWith<_$PageImpl> get copyWith =>
      __$$PageImplCopyWithImpl<_$PageImpl>(this, _$identity);
}

abstract class _Page extends Page {
  const factory _Page(
      {required final String id,
      required final DateTime createdTime,
      required final DateTime lastEditedTime,
      required final User createdBy,
      required final User lastEditedBy,
      required final Parent parent,
      required final bool archived,
      required final bool inTrash,
      required final Map<String, LegacyPropertyValue> properties,
      required final String url,
      final PageIcon? icon,
      final NotionFile? cover,
      final String? publicUrl}) = _$PageImpl;
  const _Page._() : super._();

  @override
  String get id;
  @override
  DateTime get createdTime;
  @override
  DateTime get lastEditedTime;
  @override
  User get createdBy;
  @override
  User get lastEditedBy;
  @override
  Parent get parent;
  @override
  bool get archived;
  @override
  bool get inTrash;
  @override
  Map<String, LegacyPropertyValue> get properties;
  @override
  String get url;
  @override
  PageIcon? get icon;
  @override
  NotionFile? get cover;
  @override
  String? get publicUrl;

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageImplCopyWith<_$PageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
