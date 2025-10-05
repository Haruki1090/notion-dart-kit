// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Page {
  String get id;
  DateTime get createdTime;
  DateTime get lastEditedTime;
  User get createdBy;
  User get lastEditedBy;
  Parent get parent;
  bool get archived;
  bool get inTrash;
  Map<String, LegacyPropertyValue> get properties;
  String get url;
  PageIcon? get icon;
  NotionFile? get cover;
  String? get publicUrl;

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageCopyWith<Page> get copyWith =>
      _$PageCopyWithImpl<Page>(this as Page, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Page &&
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
                .equals(other.properties, properties) &&
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
      const DeepCollectionEquality().hash(properties),
      url,
      icon,
      cover,
      publicUrl);

  @override
  String toString() {
    return 'Page(id: $id, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, parent: $parent, archived: $archived, inTrash: $inTrash, properties: $properties, url: $url, icon: $icon, cover: $cover, publicUrl: $publicUrl)';
  }
}

/// @nodoc
abstract mixin class $PageCopyWith<$Res> {
  factory $PageCopyWith(Page value, $Res Function(Page) _then) =
      _$PageCopyWithImpl;
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
class _$PageCopyWithImpl<$Res> implements $PageCopyWith<$Res> {
  _$PageCopyWithImpl(this._self, this._then);

  final Page _self;
  final $Res Function(Page) _then;

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
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _self.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      properties: null == properties
          ? _self.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, LegacyPropertyValue>,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_self.lastEditedBy, (value) {
      return _then(_self.copyWith(lastEditedBy: value));
    });
  }

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_self.parent, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }

  /// Create a copy of Page
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

  /// Create a copy of Page
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

/// Adds pattern-matching-related methods to [Page].
extension PagePatterns on Page {
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
    TResult Function(_Page value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Page() when $default != null:
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
    TResult Function(_Page value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Page():
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
    TResult? Function(_Page value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Page() when $default != null:
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
            bool archived,
            bool inTrash,
            Map<String, LegacyPropertyValue> properties,
            String url,
            PageIcon? icon,
            NotionFile? cover,
            String? publicUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Page() when $default != null:
        return $default(
            _that.id,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.parent,
            _that.archived,
            _that.inTrash,
            _that.properties,
            _that.url,
            _that.icon,
            _that.cover,
            _that.publicUrl);
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
            bool archived,
            bool inTrash,
            Map<String, LegacyPropertyValue> properties,
            String url,
            PageIcon? icon,
            NotionFile? cover,
            String? publicUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Page():
        return $default(
            _that.id,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.parent,
            _that.archived,
            _that.inTrash,
            _that.properties,
            _that.url,
            _that.icon,
            _that.cover,
            _that.publicUrl);
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
            bool archived,
            bool inTrash,
            Map<String, LegacyPropertyValue> properties,
            String url,
            PageIcon? icon,
            NotionFile? cover,
            String? publicUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Page() when $default != null:
        return $default(
            _that.id,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.parent,
            _that.archived,
            _that.inTrash,
            _that.properties,
            _that.url,
            _that.icon,
            _that.cover,
            _that.publicUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Page extends Page {
  const _Page(
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

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PageCopyWith<_Page> get copyWith =>
      __$PageCopyWithImpl<_Page>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Page &&
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

  @override
  String toString() {
    return 'Page(id: $id, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, parent: $parent, archived: $archived, inTrash: $inTrash, properties: $properties, url: $url, icon: $icon, cover: $cover, publicUrl: $publicUrl)';
  }
}

/// @nodoc
abstract mixin class _$PageCopyWith<$Res> implements $PageCopyWith<$Res> {
  factory _$PageCopyWith(_Page value, $Res Function(_Page) _then) =
      __$PageCopyWithImpl;
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
class __$PageCopyWithImpl<$Res> implements _$PageCopyWith<$Res> {
  __$PageCopyWithImpl(this._self, this._then);

  final _Page _self;
  final $Res Function(_Page) _then;

  /// Create a copy of Page
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
    Object? archived = null,
    Object? inTrash = null,
    Object? properties = null,
    Object? url = null,
    Object? icon = freezed,
    Object? cover = freezed,
    Object? publicUrl = freezed,
  }) {
    return _then(_Page(
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
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _self.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      properties: null == properties
          ? _self._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, LegacyPropertyValue>,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_self.lastEditedBy, (value) {
      return _then(_self.copyWith(lastEditedBy: value));
    });
  }

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_self.parent, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }

  /// Create a copy of Page
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

  /// Create a copy of Page
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

// dart format on
