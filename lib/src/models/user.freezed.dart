// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonInfo {
  String? get email;

  /// Create a copy of PersonInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PersonInfoCopyWith<PersonInfo> get copyWith =>
      _$PersonInfoCopyWithImpl<PersonInfo>(this as PersonInfo, _$identity);

  /// Serializes this PersonInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PersonInfo &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'PersonInfo(email: $email)';
  }
}

/// @nodoc
abstract mixin class $PersonInfoCopyWith<$Res> {
  factory $PersonInfoCopyWith(
          PersonInfo value, $Res Function(PersonInfo) _then) =
      _$PersonInfoCopyWithImpl;
  @useResult
  $Res call({String? email});
}

/// @nodoc
class _$PersonInfoCopyWithImpl<$Res> implements $PersonInfoCopyWith<$Res> {
  _$PersonInfoCopyWithImpl(this._self, this._then);

  final PersonInfo _self;
  final $Res Function(PersonInfo) _then;

  /// Create a copy of PersonInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_self.copyWith(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PersonInfo].
extension PersonInfoPatterns on PersonInfo {
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
    TResult Function(_PersonInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PersonInfo() when $default != null:
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
    TResult Function(_PersonInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PersonInfo():
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
    TResult? Function(_PersonInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PersonInfo() when $default != null:
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
    TResult Function(String? email)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PersonInfo() when $default != null:
        return $default(_that.email);
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
    TResult Function(String? email) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PersonInfo():
        return $default(_that.email);
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
    TResult? Function(String? email)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PersonInfo() when $default != null:
        return $default(_that.email);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PersonInfo implements PersonInfo {
  const _PersonInfo({this.email});
  factory _PersonInfo.fromJson(Map<String, dynamic> json) =>
      _$PersonInfoFromJson(json);

  @override
  final String? email;

  /// Create a copy of PersonInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PersonInfoCopyWith<_PersonInfo> get copyWith =>
      __$PersonInfoCopyWithImpl<_PersonInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PersonInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PersonInfo &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'PersonInfo(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$PersonInfoCopyWith<$Res>
    implements $PersonInfoCopyWith<$Res> {
  factory _$PersonInfoCopyWith(
          _PersonInfo value, $Res Function(_PersonInfo) _then) =
      __$PersonInfoCopyWithImpl;
  @override
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$PersonInfoCopyWithImpl<$Res> implements _$PersonInfoCopyWith<$Res> {
  __$PersonInfoCopyWithImpl(this._self, this._then);

  final _PersonInfo _self;
  final $Res Function(_PersonInfo) _then;

  /// Create a copy of PersonInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_PersonInfo(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$BotOwner {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BotOwner);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BotOwner()';
  }
}

/// @nodoc
class $BotOwnerCopyWith<$Res> {
  $BotOwnerCopyWith(BotOwner _, $Res Function(BotOwner) __);
}

/// Adds pattern-matching-related methods to [BotOwner].
extension BotOwnerPatterns on BotOwner {
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
    TResult Function(WorkspaceOwner value)? workspace,
    TResult Function(UserOwner value)? user,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case WorkspaceOwner() when workspace != null:
        return workspace(_that);
      case UserOwner() when user != null:
        return user(_that);
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
    required TResult Function(WorkspaceOwner value) workspace,
    required TResult Function(UserOwner value) user,
  }) {
    final _that = this;
    switch (_that) {
      case WorkspaceOwner():
        return workspace(_that);
      case UserOwner():
        return user(_that);
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
    TResult? Function(WorkspaceOwner value)? workspace,
    TResult? Function(UserOwner value)? user,
  }) {
    final _that = this;
    switch (_that) {
      case WorkspaceOwner() when workspace != null:
        return workspace(_that);
      case UserOwner() when user != null:
        return user(_that);
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
    TResult Function()? workspace,
    TResult Function()? user,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case WorkspaceOwner() when workspace != null:
        return workspace();
      case UserOwner() when user != null:
        return user();
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
    required TResult Function() workspace,
    required TResult Function() user,
  }) {
    final _that = this;
    switch (_that) {
      case WorkspaceOwner():
        return workspace();
      case UserOwner():
        return user();
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
    TResult? Function()? workspace,
    TResult? Function()? user,
  }) {
    final _that = this;
    switch (_that) {
      case WorkspaceOwner() when workspace != null:
        return workspace();
      case UserOwner() when user != null:
        return user();
      case _:
        return null;
    }
  }
}

/// @nodoc

class WorkspaceOwner extends BotOwner {
  const WorkspaceOwner() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WorkspaceOwner);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BotOwner.workspace()';
  }
}

/// @nodoc

class UserOwner extends BotOwner {
  const UserOwner() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserOwner);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BotOwner.user()';
  }
}

/// @nodoc
mixin _$BotInfo {
  BotOwner get owner;
  String? get workspaceName;

  /// Create a copy of BotInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BotInfoCopyWith<BotInfo> get copyWith =>
      _$BotInfoCopyWithImpl<BotInfo>(this as BotInfo, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BotInfo &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.workspaceName, workspaceName) ||
                other.workspaceName == workspaceName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, owner, workspaceName);

  @override
  String toString() {
    return 'BotInfo(owner: $owner, workspaceName: $workspaceName)';
  }
}

/// @nodoc
abstract mixin class $BotInfoCopyWith<$Res> {
  factory $BotInfoCopyWith(BotInfo value, $Res Function(BotInfo) _then) =
      _$BotInfoCopyWithImpl;
  @useResult
  $Res call({BotOwner owner, String? workspaceName});

  $BotOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$BotInfoCopyWithImpl<$Res> implements $BotInfoCopyWith<$Res> {
  _$BotInfoCopyWithImpl(this._self, this._then);

  final BotInfo _self;
  final $Res Function(BotInfo) _then;

  /// Create a copy of BotInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? workspaceName = freezed,
  }) {
    return _then(_self.copyWith(
      owner: null == owner
          ? _self.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as BotOwner,
      workspaceName: freezed == workspaceName
          ? _self.workspaceName
          : workspaceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of BotInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BotOwnerCopyWith<$Res> get owner {
    return $BotOwnerCopyWith<$Res>(_self.owner, (value) {
      return _then(_self.copyWith(owner: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BotInfo].
extension BotInfoPatterns on BotInfo {
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
    TResult Function(_BotInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BotInfo() when $default != null:
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
    TResult Function(_BotInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BotInfo():
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
    TResult? Function(_BotInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BotInfo() when $default != null:
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
    TResult Function(BotOwner owner, String? workspaceName)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BotInfo() when $default != null:
        return $default(_that.owner, _that.workspaceName);
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
    TResult Function(BotOwner owner, String? workspaceName) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BotInfo():
        return $default(_that.owner, _that.workspaceName);
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
    TResult? Function(BotOwner owner, String? workspaceName)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BotInfo() when $default != null:
        return $default(_that.owner, _that.workspaceName);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BotInfo extends BotInfo {
  const _BotInfo({required this.owner, this.workspaceName}) : super._();

  @override
  final BotOwner owner;
  @override
  final String? workspaceName;

  /// Create a copy of BotInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BotInfoCopyWith<_BotInfo> get copyWith =>
      __$BotInfoCopyWithImpl<_BotInfo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BotInfo &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.workspaceName, workspaceName) ||
                other.workspaceName == workspaceName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, owner, workspaceName);

  @override
  String toString() {
    return 'BotInfo(owner: $owner, workspaceName: $workspaceName)';
  }
}

/// @nodoc
abstract mixin class _$BotInfoCopyWith<$Res> implements $BotInfoCopyWith<$Res> {
  factory _$BotInfoCopyWith(_BotInfo value, $Res Function(_BotInfo) _then) =
      __$BotInfoCopyWithImpl;
  @override
  @useResult
  $Res call({BotOwner owner, String? workspaceName});

  @override
  $BotOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$BotInfoCopyWithImpl<$Res> implements _$BotInfoCopyWith<$Res> {
  __$BotInfoCopyWithImpl(this._self, this._then);

  final _BotInfo _self;
  final $Res Function(_BotInfo) _then;

  /// Create a copy of BotInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? owner = null,
    Object? workspaceName = freezed,
  }) {
    return _then(_BotInfo(
      owner: null == owner
          ? _self.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as BotOwner,
      workspaceName: freezed == workspaceName
          ? _self.workspaceName
          : workspaceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of BotInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BotOwnerCopyWith<$Res> get owner {
    return $BotOwnerCopyWith<$Res>(_self.owner, (value) {
      return _then(_self.copyWith(owner: value));
    });
  }
}

/// @nodoc
mixin _$User {
  String get id;
  String? get name;
  String? get avatarUrl;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUrl);

  @override
  String toString() {
    return 'User(id: $id, name: $name, avatarUrl: $avatarUrl)';
  }
}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) =
      _$UserCopyWithImpl;
  @useResult
  $Res call({String id, String? name, String? avatarUrl});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _self.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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
    TResult Function(PersonUser value)? person,
    TResult Function(BotUser value)? bot,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case PersonUser() when person != null:
        return person(_that);
      case BotUser() when bot != null:
        return bot(_that);
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
    required TResult Function(PersonUser value) person,
    required TResult Function(BotUser value) bot,
  }) {
    final _that = this;
    switch (_that) {
      case PersonUser():
        return person(_that);
      case BotUser():
        return bot(_that);
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
    TResult? Function(PersonUser value)? person,
    TResult? Function(BotUser value)? bot,
  }) {
    final _that = this;
    switch (_that) {
      case PersonUser() when person != null:
        return person(_that);
      case BotUser() when bot != null:
        return bot(_that);
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
    TResult Function(
            String id, PersonInfo person, String? name, String? avatarUrl)?
        person,
    TResult Function(String id, BotInfo bot, String? name, String? avatarUrl)?
        bot,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case PersonUser() when person != null:
        return person(_that.id, _that.person, _that.name, _that.avatarUrl);
      case BotUser() when bot != null:
        return bot(_that.id, _that.bot, _that.name, _that.avatarUrl);
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
    required TResult Function(
            String id, PersonInfo person, String? name, String? avatarUrl)
        person,
    required TResult Function(
            String id, BotInfo bot, String? name, String? avatarUrl)
        bot,
  }) {
    final _that = this;
    switch (_that) {
      case PersonUser():
        return person(_that.id, _that.person, _that.name, _that.avatarUrl);
      case BotUser():
        return bot(_that.id, _that.bot, _that.name, _that.avatarUrl);
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
    TResult? Function(
            String id, PersonInfo person, String? name, String? avatarUrl)?
        person,
    TResult? Function(String id, BotInfo bot, String? name, String? avatarUrl)?
        bot,
  }) {
    final _that = this;
    switch (_that) {
      case PersonUser() when person != null:
        return person(_that.id, _that.person, _that.name, _that.avatarUrl);
      case BotUser() when bot != null:
        return bot(_that.id, _that.bot, _that.name, _that.avatarUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc

class PersonUser extends User {
  const PersonUser(
      {required this.id, required this.person, this.name, this.avatarUrl})
      : super._();

  @override
  final String id;
  final PersonInfo person;
  @override
  final String? name;
  @override
  final String? avatarUrl;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PersonUserCopyWith<PersonUser> get copyWith =>
      _$PersonUserCopyWithImpl<PersonUser>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PersonUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.person, person) || other.person == person) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, person, name, avatarUrl);

  @override
  String toString() {
    return 'User.person(id: $id, person: $person, name: $name, avatarUrl: $avatarUrl)';
  }
}

/// @nodoc
abstract mixin class $PersonUserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory $PersonUserCopyWith(
          PersonUser value, $Res Function(PersonUser) _then) =
      _$PersonUserCopyWithImpl;
  @override
  @useResult
  $Res call({String id, PersonInfo person, String? name, String? avatarUrl});

  $PersonInfoCopyWith<$Res> get person;
}

/// @nodoc
class _$PersonUserCopyWithImpl<$Res> implements $PersonUserCopyWith<$Res> {
  _$PersonUserCopyWithImpl(this._self, this._then);

  final PersonUser _self;
  final $Res Function(PersonUser) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? person = null,
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(PersonUser(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      person: null == person
          ? _self.person
          : person // ignore: cast_nullable_to_non_nullable
              as PersonInfo,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _self.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonInfoCopyWith<$Res> get person {
    return $PersonInfoCopyWith<$Res>(_self.person, (value) {
      return _then(_self.copyWith(person: value));
    });
  }
}

/// @nodoc

class BotUser extends User {
  const BotUser(
      {required this.id, required this.bot, this.name, this.avatarUrl})
      : super._();

  @override
  final String id;
  final BotInfo bot;
  @override
  final String? name;
  @override
  final String? avatarUrl;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BotUserCopyWith<BotUser> get copyWith =>
      _$BotUserCopyWithImpl<BotUser>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BotUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bot, bot) || other.bot == bot) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, bot, name, avatarUrl);

  @override
  String toString() {
    return 'User.bot(id: $id, bot: $bot, name: $name, avatarUrl: $avatarUrl)';
  }
}

/// @nodoc
abstract mixin class $BotUserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory $BotUserCopyWith(BotUser value, $Res Function(BotUser) _then) =
      _$BotUserCopyWithImpl;
  @override
  @useResult
  $Res call({String id, BotInfo bot, String? name, String? avatarUrl});

  $BotInfoCopyWith<$Res> get bot;
}

/// @nodoc
class _$BotUserCopyWithImpl<$Res> implements $BotUserCopyWith<$Res> {
  _$BotUserCopyWithImpl(this._self, this._then);

  final BotUser _self;
  final $Res Function(BotUser) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? bot = null,
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(BotUser(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bot: null == bot
          ? _self.bot
          : bot // ignore: cast_nullable_to_non_nullable
              as BotInfo,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _self.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BotInfoCopyWith<$Res> get bot {
    return $BotInfoCopyWith<$Res>(_self.bot, (value) {
      return _then(_self.copyWith(bot: value));
    });
  }
}

// dart format on
