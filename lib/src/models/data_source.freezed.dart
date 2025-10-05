// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataSource {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdTime => throw _privateConstructorUsedError;
  DateTime get lastEditedTime => throw _privateConstructorUsedError;
  Parent get parent => throw _privateConstructorUsedError;
  Parent get databaseParent => throw _privateConstructorUsedError;
  List<RichText> get title => throw _privateConstructorUsedError;
  Map<String, PropertySchema> get properties =>
      throw _privateConstructorUsedError;
  bool get archived => throw _privateConstructorUsedError;
  bool get isInline => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  PageIcon? get icon => throw _privateConstructorUsedError;
  NotionFile? get cover => throw _privateConstructorUsedError;

  /// Create a copy of DataSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataSourceCopyWith<DataSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSourceCopyWith<$Res> {
  factory $DataSourceCopyWith(
          DataSource value, $Res Function(DataSource) then) =
      _$DataSourceCopyWithImpl<$Res, DataSource>;
  @useResult
  $Res call(
      {String id,
      DateTime createdTime,
      DateTime lastEditedTime,
      Parent parent,
      Parent databaseParent,
      List<RichText> title,
      Map<String, PropertySchema> properties,
      bool archived,
      bool isInline,
      String url,
      PageIcon? icon,
      NotionFile? cover});

  $ParentCopyWith<$Res> get parent;
  $ParentCopyWith<$Res> get databaseParent;
  $PageIconCopyWith<$Res>? get icon;
  $NotionFileCopyWith<$Res>? get cover;
}

/// @nodoc
class _$DataSourceCopyWithImpl<$Res, $Val extends DataSource>
    implements $DataSourceCopyWith<$Res> {
  _$DataSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? parent = null,
    Object? databaseParent = null,
    Object? title = null,
    Object? properties = null,
    Object? archived = null,
    Object? isInline = null,
    Object? url = null,
    Object? icon = freezed,
    Object? cover = freezed,
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
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
      databaseParent: null == databaseParent
          ? _value.databaseParent
          : databaseParent // ignore: cast_nullable_to_non_nullable
              as Parent,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, PropertySchema>,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      isInline: null == isInline
          ? _value.isInline
          : isInline // ignore: cast_nullable_to_non_nullable
              as bool,
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
    ) as $Val);
  }

  /// Create a copy of DataSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_value.parent, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }

  /// Create a copy of DataSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get databaseParent {
    return $ParentCopyWith<$Res>(_value.databaseParent, (value) {
      return _then(_value.copyWith(databaseParent: value) as $Val);
    });
  }

  /// Create a copy of DataSource
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

  /// Create a copy of DataSource
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
abstract class _$$DataSourceImplCopyWith<$Res>
    implements $DataSourceCopyWith<$Res> {
  factory _$$DataSourceImplCopyWith(
          _$DataSourceImpl value, $Res Function(_$DataSourceImpl) then) =
      __$$DataSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdTime,
      DateTime lastEditedTime,
      Parent parent,
      Parent databaseParent,
      List<RichText> title,
      Map<String, PropertySchema> properties,
      bool archived,
      bool isInline,
      String url,
      PageIcon? icon,
      NotionFile? cover});

  @override
  $ParentCopyWith<$Res> get parent;
  @override
  $ParentCopyWith<$Res> get databaseParent;
  @override
  $PageIconCopyWith<$Res>? get icon;
  @override
  $NotionFileCopyWith<$Res>? get cover;
}

/// @nodoc
class __$$DataSourceImplCopyWithImpl<$Res>
    extends _$DataSourceCopyWithImpl<$Res, _$DataSourceImpl>
    implements _$$DataSourceImplCopyWith<$Res> {
  __$$DataSourceImplCopyWithImpl(
      _$DataSourceImpl _value, $Res Function(_$DataSourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? parent = null,
    Object? databaseParent = null,
    Object? title = null,
    Object? properties = null,
    Object? archived = null,
    Object? isInline = null,
    Object? url = null,
    Object? icon = freezed,
    Object? cover = freezed,
  }) {
    return _then(_$DataSourceImpl(
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
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
      databaseParent: null == databaseParent
          ? _value.databaseParent
          : databaseParent // ignore: cast_nullable_to_non_nullable
              as Parent,
      title: null == title
          ? _value._title
          : title // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      properties: null == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, PropertySchema>,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      isInline: null == isInline
          ? _value.isInline
          : isInline // ignore: cast_nullable_to_non_nullable
              as bool,
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
    ));
  }
}

/// @nodoc

class _$DataSourceImpl extends _DataSource {
  const _$DataSourceImpl(
      {required this.id,
      required this.createdTime,
      required this.lastEditedTime,
      required this.parent,
      required this.databaseParent,
      required final List<RichText> title,
      required final Map<String, PropertySchema> properties,
      required this.archived,
      required this.isInline,
      required this.url,
      this.icon,
      this.cover})
      : _title = title,
        _properties = properties,
        super._();

  @override
  final String id;
  @override
  final DateTime createdTime;
  @override
  final DateTime lastEditedTime;
  @override
  final Parent parent;
  @override
  final Parent databaseParent;
  final List<RichText> _title;
  @override
  List<RichText> get title {
    if (_title is EqualUnmodifiableListView) return _title;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_title);
  }

  final Map<String, PropertySchema> _properties;
  @override
  Map<String, PropertySchema> get properties {
    if (_properties is EqualUnmodifiableMapView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_properties);
  }

  @override
  final bool archived;
  @override
  final bool isInline;
  @override
  final String url;
  @override
  final PageIcon? icon;
  @override
  final NotionFile? cover;

  @override
  String toString() {
    return 'DataSource(id: $id, createdTime: $createdTime, lastEditedTime: $lastEditedTime, parent: $parent, databaseParent: $databaseParent, title: $title, properties: $properties, archived: $archived, isInline: $isInline, url: $url, icon: $icon, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSourceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.databaseParent, databaseParent) ||
                other.databaseParent == databaseParent) &&
            const DeepCollectionEquality().equals(other._title, _title) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.isInline, isInline) ||
                other.isInline == isInline) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdTime,
      lastEditedTime,
      parent,
      databaseParent,
      const DeepCollectionEquality().hash(_title),
      const DeepCollectionEquality().hash(_properties),
      archived,
      isInline,
      url,
      icon,
      cover);

  /// Create a copy of DataSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataSourceImplCopyWith<_$DataSourceImpl> get copyWith =>
      __$$DataSourceImplCopyWithImpl<_$DataSourceImpl>(this, _$identity);
}

abstract class _DataSource extends DataSource {
  const factory _DataSource(
      {required final String id,
      required final DateTime createdTime,
      required final DateTime lastEditedTime,
      required final Parent parent,
      required final Parent databaseParent,
      required final List<RichText> title,
      required final Map<String, PropertySchema> properties,
      required final bool archived,
      required final bool isInline,
      required final String url,
      final PageIcon? icon,
      final NotionFile? cover}) = _$DataSourceImpl;
  const _DataSource._() : super._();

  @override
  String get id;
  @override
  DateTime get createdTime;
  @override
  DateTime get lastEditedTime;
  @override
  Parent get parent;
  @override
  Parent get databaseParent;
  @override
  List<RichText> get title;
  @override
  Map<String, PropertySchema> get properties;
  @override
  bool get archived;
  @override
  bool get isInline;
  @override
  String get url;
  @override
  PageIcon? get icon;
  @override
  NotionFile? get cover;

  /// Create a copy of DataSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataSourceImplCopyWith<_$DataSourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
