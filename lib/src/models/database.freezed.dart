// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'database.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Database {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdTime => throw _privateConstructorUsedError;
  DateTime get lastEditedTime => throw _privateConstructorUsedError;
  User get createdBy => throw _privateConstructorUsedError;
  User get lastEditedBy => throw _privateConstructorUsedError;
  Parent get parent => throw _privateConstructorUsedError;
  List<RichText> get title => throw _privateConstructorUsedError;
  List<DataSourceRef> get dataSources => throw _privateConstructorUsedError;
  bool get archived => throw _privateConstructorUsedError;
  bool get inTrash => throw _privateConstructorUsedError;
  bool get isInline => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  List<RichText>? get description => throw _privateConstructorUsedError;
  PageIcon? get icon => throw _privateConstructorUsedError;
  NotionFile? get cover => throw _privateConstructorUsedError;
  String? get publicUrl => throw _privateConstructorUsedError;
  bool? get isLocked => throw _privateConstructorUsedError;

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatabaseCopyWith<Database> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseCopyWith<$Res> {
  factory $DatabaseCopyWith(Database value, $Res Function(Database) then) =
      _$DatabaseCopyWithImpl<$Res, Database>;
  @useResult
  $Res call(
      {String id,
      DateTime createdTime,
      DateTime lastEditedTime,
      User createdBy,
      User lastEditedBy,
      Parent parent,
      List<RichText> title,
      List<DataSourceRef> dataSources,
      bool archived,
      bool inTrash,
      bool isInline,
      String url,
      List<RichText>? description,
      PageIcon? icon,
      NotionFile? cover,
      String? publicUrl,
      bool? isLocked});

  $UserCopyWith<$Res> get createdBy;
  $UserCopyWith<$Res> get lastEditedBy;
  $ParentCopyWith<$Res> get parent;
  $PageIconCopyWith<$Res>? get icon;
  $NotionFileCopyWith<$Res>? get cover;
}

/// @nodoc
class _$DatabaseCopyWithImpl<$Res, $Val extends Database>
    implements $DatabaseCopyWith<$Res> {
  _$DatabaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Database
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
    Object? title = null,
    Object? dataSources = null,
    Object? archived = null,
    Object? inTrash = null,
    Object? isInline = null,
    Object? url = null,
    Object? description = freezed,
    Object? icon = freezed,
    Object? cover = freezed,
    Object? publicUrl = freezed,
    Object? isLocked = freezed,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      dataSources: null == dataSources
          ? _value.dataSources
          : dataSources // ignore: cast_nullable_to_non_nullable
              as List<DataSourceRef>,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _value.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      isInline: null == isInline
          ? _value.isInline
          : isInline // ignore: cast_nullable_to_non_nullable
              as bool,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as List<RichText>?,
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
      isLocked: freezed == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_value.createdBy, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_value.lastEditedBy, (value) {
      return _then(_value.copyWith(lastEditedBy: value) as $Val);
    });
  }

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_value.parent, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }

  /// Create a copy of Database
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

  /// Create a copy of Database
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
abstract class _$$DatabaseImplCopyWith<$Res>
    implements $DatabaseCopyWith<$Res> {
  factory _$$DatabaseImplCopyWith(
          _$DatabaseImpl value, $Res Function(_$DatabaseImpl) then) =
      __$$DatabaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdTime,
      DateTime lastEditedTime,
      User createdBy,
      User lastEditedBy,
      Parent parent,
      List<RichText> title,
      List<DataSourceRef> dataSources,
      bool archived,
      bool inTrash,
      bool isInline,
      String url,
      List<RichText>? description,
      PageIcon? icon,
      NotionFile? cover,
      String? publicUrl,
      bool? isLocked});

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
class __$$DatabaseImplCopyWithImpl<$Res>
    extends _$DatabaseCopyWithImpl<$Res, _$DatabaseImpl>
    implements _$$DatabaseImplCopyWith<$Res> {
  __$$DatabaseImplCopyWithImpl(
      _$DatabaseImpl _value, $Res Function(_$DatabaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Database
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
    Object? title = null,
    Object? dataSources = null,
    Object? archived = null,
    Object? inTrash = null,
    Object? isInline = null,
    Object? url = null,
    Object? description = freezed,
    Object? icon = freezed,
    Object? cover = freezed,
    Object? publicUrl = freezed,
    Object? isLocked = freezed,
  }) {
    return _then(_$DatabaseImpl(
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
      title: null == title
          ? _value._title
          : title // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      dataSources: null == dataSources
          ? _value._dataSources
          : dataSources // ignore: cast_nullable_to_non_nullable
              as List<DataSourceRef>,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _value.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      isInline: null == isInline
          ? _value.isInline
          : isInline // ignore: cast_nullable_to_non_nullable
              as bool,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as List<RichText>?,
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
      isLocked: freezed == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$DatabaseImpl extends _Database {
  const _$DatabaseImpl(
      {required this.id,
      required this.createdTime,
      required this.lastEditedTime,
      required this.createdBy,
      required this.lastEditedBy,
      required this.parent,
      required final List<RichText> title,
      required final List<DataSourceRef> dataSources,
      required this.archived,
      required this.inTrash,
      required this.isInline,
      required this.url,
      final List<RichText>? description,
      this.icon,
      this.cover,
      this.publicUrl,
      this.isLocked})
      : _title = title,
        _dataSources = dataSources,
        _description = description,
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
  final List<RichText> _title;
  @override
  List<RichText> get title {
    if (_title is EqualUnmodifiableListView) return _title;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_title);
  }

  final List<DataSourceRef> _dataSources;
  @override
  List<DataSourceRef> get dataSources {
    if (_dataSources is EqualUnmodifiableListView) return _dataSources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataSources);
  }

  @override
  final bool archived;
  @override
  final bool inTrash;
  @override
  final bool isInline;
  @override
  final String url;
  final List<RichText>? _description;
  @override
  List<RichText>? get description {
    final value = _description;
    if (value == null) return null;
    if (_description is EqualUnmodifiableListView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PageIcon? icon;
  @override
  final NotionFile? cover;
  @override
  final String? publicUrl;
  @override
  final bool? isLocked;

  @override
  String toString() {
    return 'Database(id: $id, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, parent: $parent, title: $title, dataSources: $dataSources, archived: $archived, inTrash: $inTrash, isInline: $isInline, url: $url, description: $description, icon: $icon, cover: $cover, publicUrl: $publicUrl, isLocked: $isLocked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseImpl &&
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
            const DeepCollectionEquality().equals(other._title, _title) &&
            const DeepCollectionEquality()
                .equals(other._dataSources, _dataSources) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.inTrash, inTrash) || other.inTrash == inTrash) &&
            (identical(other.isInline, isInline) ||
                other.isInline == isInline) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality()
                .equals(other._description, _description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.publicUrl, publicUrl) ||
                other.publicUrl == publicUrl) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked));
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
      const DeepCollectionEquality().hash(_title),
      const DeepCollectionEquality().hash(_dataSources),
      archived,
      inTrash,
      isInline,
      url,
      const DeepCollectionEquality().hash(_description),
      icon,
      cover,
      publicUrl,
      isLocked);

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabaseImplCopyWith<_$DatabaseImpl> get copyWith =>
      __$$DatabaseImplCopyWithImpl<_$DatabaseImpl>(this, _$identity);
}

abstract class _Database extends Database {
  const factory _Database(
      {required final String id,
      required final DateTime createdTime,
      required final DateTime lastEditedTime,
      required final User createdBy,
      required final User lastEditedBy,
      required final Parent parent,
      required final List<RichText> title,
      required final List<DataSourceRef> dataSources,
      required final bool archived,
      required final bool inTrash,
      required final bool isInline,
      required final String url,
      final List<RichText>? description,
      final PageIcon? icon,
      final NotionFile? cover,
      final String? publicUrl,
      final bool? isLocked}) = _$DatabaseImpl;
  const _Database._() : super._();

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
  List<RichText> get title;
  @override
  List<DataSourceRef> get dataSources;
  @override
  bool get archived;
  @override
  bool get inTrash;
  @override
  bool get isInline;
  @override
  String get url;
  @override
  List<RichText>? get description;
  @override
  PageIcon? get icon;
  @override
  NotionFile? get cover;
  @override
  String? get publicUrl;
  @override
  bool? get isLocked;

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatabaseImplCopyWith<_$DatabaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataSourceRef _$DataSourceRefFromJson(Map<String, dynamic> json) {
  return _DataSourceRef.fromJson(json);
}

/// @nodoc
mixin _$DataSourceRef {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this DataSourceRef to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataSourceRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataSourceRefCopyWith<DataSourceRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSourceRefCopyWith<$Res> {
  factory $DataSourceRefCopyWith(
          DataSourceRef value, $Res Function(DataSourceRef) then) =
      _$DataSourceRefCopyWithImpl<$Res, DataSourceRef>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$DataSourceRefCopyWithImpl<$Res, $Val extends DataSourceRef>
    implements $DataSourceRefCopyWith<$Res> {
  _$DataSourceRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataSourceRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataSourceRefImplCopyWith<$Res>
    implements $DataSourceRefCopyWith<$Res> {
  factory _$$DataSourceRefImplCopyWith(
          _$DataSourceRefImpl value, $Res Function(_$DataSourceRefImpl) then) =
      __$$DataSourceRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$DataSourceRefImplCopyWithImpl<$Res>
    extends _$DataSourceRefCopyWithImpl<$Res, _$DataSourceRefImpl>
    implements _$$DataSourceRefImplCopyWith<$Res> {
  __$$DataSourceRefImplCopyWithImpl(
      _$DataSourceRefImpl _value, $Res Function(_$DataSourceRefImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataSourceRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$DataSourceRefImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataSourceRefImpl implements _DataSourceRef {
  const _$DataSourceRefImpl({required this.id, required this.name});

  factory _$DataSourceRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataSourceRefImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'DataSourceRef(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSourceRefImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of DataSourceRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataSourceRefImplCopyWith<_$DataSourceRefImpl> get copyWith =>
      __$$DataSourceRefImplCopyWithImpl<_$DataSourceRefImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataSourceRefImplToJson(
      this,
    );
  }
}

abstract class _DataSourceRef implements DataSourceRef {
  const factory _DataSourceRef(
      {required final String id,
      required final String name}) = _$DataSourceRefImpl;

  factory _DataSourceRef.fromJson(Map<String, dynamic> json) =
      _$DataSourceRefImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of DataSourceRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataSourceRefImplCopyWith<_$DataSourceRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
