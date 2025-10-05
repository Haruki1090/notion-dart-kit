// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'database.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Database {
  String get id;
  DateTime get createdTime;
  DateTime get lastEditedTime;
  User get createdBy;
  User get lastEditedBy;
  Parent get parent;
  List<RichText> get title;
  List<DataSourceRef> get dataSources;
  bool get archived;
  bool get inTrash;
  bool get isInline;
  String get url;
  List<RichText>? get description;
  PageIcon? get icon;
  NotionFile? get cover;
  String? get publicUrl;
  bool? get isLocked;

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DatabaseCopyWith<Database> get copyWith =>
      _$DatabaseCopyWithImpl<Database>(this as Database, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Database &&
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
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.dataSources, dataSources) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.inTrash, inTrash) || other.inTrash == inTrash) &&
            (identical(other.isInline, isInline) ||
                other.isInline == isInline) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
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
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(dataSources),
      archived,
      inTrash,
      isInline,
      url,
      const DeepCollectionEquality().hash(description),
      icon,
      cover,
      publicUrl,
      isLocked);

  @override
  String toString() {
    return 'Database(id: $id, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, parent: $parent, title: $title, dataSources: $dataSources, archived: $archived, inTrash: $inTrash, isInline: $isInline, url: $url, description: $description, icon: $icon, cover: $cover, publicUrl: $publicUrl, isLocked: $isLocked)';
  }
}

/// @nodoc
abstract mixin class $DatabaseCopyWith<$Res> {
  factory $DatabaseCopyWith(Database value, $Res Function(Database) _then) =
      _$DatabaseCopyWithImpl;
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
class _$DatabaseCopyWithImpl<$Res> implements $DatabaseCopyWith<$Res> {
  _$DatabaseCopyWithImpl(this._self, this._then);

  final Database _self;
  final $Res Function(Database) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _self.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastEditedTime: null == lastEditedTime
          ? _self.lastEditedTime
          : lastEditedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User,
      lastEditedBy: null == lastEditedBy
          ? _self.lastEditedBy
          : lastEditedBy // ignore: cast_nullable_to_non_nullable
              as User,
      parent: null == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      dataSources: null == dataSources
          ? _self.dataSources
          : dataSources // ignore: cast_nullable_to_non_nullable
              as List<DataSourceRef>,
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _self.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      isInline: null == isInline
          ? _self.isInline
          : isInline // ignore: cast_nullable_to_non_nullable
              as bool,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as List<RichText>?,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as PageIcon?,
      cover: freezed == cover
          ? _self.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as NotionFile?,
      publicUrl: freezed == publicUrl
          ? _self.publicUrl
          : publicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocked: freezed == isLocked
          ? _self.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_self.lastEditedBy, (value) {
      return _then(_self.copyWith(lastEditedBy: value));
    });
  }

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_self.parent, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageIconCopyWith<$Res>? get icon {
    if (_self.icon == null) {
      return null;
    }

    return $PageIconCopyWith<$Res>(_self.icon!, (value) {
      return _then(_self.copyWith(icon: value));
    });
  }

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotionFileCopyWith<$Res>? get cover {
    if (_self.cover == null) {
      return null;
    }

    return $NotionFileCopyWith<$Res>(_self.cover!, (value) {
      return _then(_self.copyWith(cover: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Database].
extension DatabasePatterns on Database {
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
    TResult Function(_Database value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Database() when $default != null:
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
    TResult Function(_Database value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Database():
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
    TResult? Function(_Database value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Database() when $default != null:
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
            String id,
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
            bool? isLocked)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Database() when $default != null:
        return $default(
            _that.id,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.parent,
            _that.title,
            _that.dataSources,
            _that.archived,
            _that.inTrash,
            _that.isInline,
            _that.url,
            _that.description,
            _that.icon,
            _that.cover,
            _that.publicUrl,
            _that.isLocked);
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
            String id,
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
            bool? isLocked)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Database():
        return $default(
            _that.id,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.parent,
            _that.title,
            _that.dataSources,
            _that.archived,
            _that.inTrash,
            _that.isInline,
            _that.url,
            _that.description,
            _that.icon,
            _that.cover,
            _that.publicUrl,
            _that.isLocked);
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
            String id,
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
            bool? isLocked)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Database() when $default != null:
        return $default(
            _that.id,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.parent,
            _that.title,
            _that.dataSources,
            _that.archived,
            _that.inTrash,
            _that.isInline,
            _that.url,
            _that.description,
            _that.icon,
            _that.cover,
            _that.publicUrl,
            _that.isLocked);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Database extends Database {
  const _Database(
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

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DatabaseCopyWith<_Database> get copyWith =>
      __$DatabaseCopyWithImpl<_Database>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Database &&
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

  @override
  String toString() {
    return 'Database(id: $id, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, parent: $parent, title: $title, dataSources: $dataSources, archived: $archived, inTrash: $inTrash, isInline: $isInline, url: $url, description: $description, icon: $icon, cover: $cover, publicUrl: $publicUrl, isLocked: $isLocked)';
  }
}

/// @nodoc
abstract mixin class _$DatabaseCopyWith<$Res>
    implements $DatabaseCopyWith<$Res> {
  factory _$DatabaseCopyWith(_Database value, $Res Function(_Database) _then) =
      __$DatabaseCopyWithImpl;
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
class __$DatabaseCopyWithImpl<$Res> implements _$DatabaseCopyWith<$Res> {
  __$DatabaseCopyWithImpl(this._self, this._then);

  final _Database _self;
  final $Res Function(_Database) _then;

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_Database(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _self.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastEditedTime: null == lastEditedTime
          ? _self.lastEditedTime
          : lastEditedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User,
      lastEditedBy: null == lastEditedBy
          ? _self.lastEditedBy
          : lastEditedBy // ignore: cast_nullable_to_non_nullable
              as User,
      parent: null == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
      title: null == title
          ? _self._title
          : title // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
      dataSources: null == dataSources
          ? _self._dataSources
          : dataSources // ignore: cast_nullable_to_non_nullable
              as List<DataSourceRef>,
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _self.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      isInline: null == isInline
          ? _self.isInline
          : isInline // ignore: cast_nullable_to_non_nullable
              as bool,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self._description
          : description // ignore: cast_nullable_to_non_nullable
              as List<RichText>?,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as PageIcon?,
      cover: freezed == cover
          ? _self.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as NotionFile?,
      publicUrl: freezed == publicUrl
          ? _self.publicUrl
          : publicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocked: freezed == isLocked
          ? _self.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_self.lastEditedBy, (value) {
      return _then(_self.copyWith(lastEditedBy: value));
    });
  }

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_self.parent, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageIconCopyWith<$Res>? get icon {
    if (_self.icon == null) {
      return null;
    }

    return $PageIconCopyWith<$Res>(_self.icon!, (value) {
      return _then(_self.copyWith(icon: value));
    });
  }

  /// Create a copy of Database
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotionFileCopyWith<$Res>? get cover {
    if (_self.cover == null) {
      return null;
    }

    return $NotionFileCopyWith<$Res>(_self.cover!, (value) {
      return _then(_self.copyWith(cover: value));
    });
  }
}

/// @nodoc
mixin _$DataSourceRef {
  String get id;
  String get name;

  /// Create a copy of DataSourceRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DataSourceRefCopyWith<DataSourceRef> get copyWith =>
      _$DataSourceRefCopyWithImpl<DataSourceRef>(
          this as DataSourceRef, _$identity);

  /// Serializes this DataSourceRef to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DataSourceRef &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'DataSourceRef(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $DataSourceRefCopyWith<$Res> {
  factory $DataSourceRefCopyWith(
          DataSourceRef value, $Res Function(DataSourceRef) _then) =
      _$DataSourceRefCopyWithImpl;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$DataSourceRefCopyWithImpl<$Res>
    implements $DataSourceRefCopyWith<$Res> {
  _$DataSourceRefCopyWithImpl(this._self, this._then);

  final DataSourceRef _self;
  final $Res Function(DataSourceRef) _then;

  /// Create a copy of DataSourceRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [DataSourceRef].
extension DataSourceRefPatterns on DataSourceRef {
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
    TResult Function(_DataSourceRef value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DataSourceRef() when $default != null:
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
    TResult Function(_DataSourceRef value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DataSourceRef():
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
    TResult? Function(_DataSourceRef value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DataSourceRef() when $default != null:
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
    TResult Function(String id, String name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DataSourceRef() when $default != null:
        return $default(_that.id, _that.name);
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
    TResult Function(String id, String name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DataSourceRef():
        return $default(_that.id, _that.name);
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
    TResult? Function(String id, String name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DataSourceRef() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DataSourceRef implements DataSourceRef {
  const _DataSourceRef({required this.id, required this.name});
  factory _DataSourceRef.fromJson(Map<String, dynamic> json) =>
      _$DataSourceRefFromJson(json);

  @override
  final String id;
  @override
  final String name;

  /// Create a copy of DataSourceRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DataSourceRefCopyWith<_DataSourceRef> get copyWith =>
      __$DataSourceRefCopyWithImpl<_DataSourceRef>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DataSourceRefToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataSourceRef &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'DataSourceRef(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$DataSourceRefCopyWith<$Res>
    implements $DataSourceRefCopyWith<$Res> {
  factory _$DataSourceRefCopyWith(
          _DataSourceRef value, $Res Function(_DataSourceRef) _then) =
      __$DataSourceRefCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$DataSourceRefCopyWithImpl<$Res>
    implements _$DataSourceRefCopyWith<$Res> {
  __$DataSourceRefCopyWithImpl(this._self, this._then);

  final _DataSourceRef _self;
  final $Res Function(_DataSourceRef) _then;

  /// Create a copy of DataSourceRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_DataSourceRef(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
