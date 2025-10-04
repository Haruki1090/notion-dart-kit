// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersonInfo _$PersonInfoFromJson(Map<String, dynamic> json) {
  return _PersonInfo.fromJson(json);
}

/// @nodoc
mixin _$PersonInfo {
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this PersonInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PersonInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonInfoCopyWith<PersonInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonInfoCopyWith<$Res> {
  factory $PersonInfoCopyWith(
          PersonInfo value, $Res Function(PersonInfo) then) =
      _$PersonInfoCopyWithImpl<$Res, PersonInfo>;
  @useResult
  $Res call({String? email});
}

/// @nodoc
class _$PersonInfoCopyWithImpl<$Res, $Val extends PersonInfo>
    implements $PersonInfoCopyWith<$Res> {
  _$PersonInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonInfoImplCopyWith<$Res>
    implements $PersonInfoCopyWith<$Res> {
  factory _$$PersonInfoImplCopyWith(
          _$PersonInfoImpl value, $Res Function(_$PersonInfoImpl) then) =
      __$$PersonInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$PersonInfoImplCopyWithImpl<$Res>
    extends _$PersonInfoCopyWithImpl<$Res, _$PersonInfoImpl>
    implements _$$PersonInfoImplCopyWith<$Res> {
  __$$PersonInfoImplCopyWithImpl(
      _$PersonInfoImpl _value, $Res Function(_$PersonInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$PersonInfoImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonInfoImpl implements _PersonInfo {
  const _$PersonInfoImpl({this.email});

  factory _$PersonInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonInfoImplFromJson(json);

  @override
  final String? email;

  @override
  String toString() {
    return 'PersonInfo(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonInfoImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of PersonInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonInfoImplCopyWith<_$PersonInfoImpl> get copyWith =>
      __$$PersonInfoImplCopyWithImpl<_$PersonInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonInfoImplToJson(
      this,
    );
  }
}

abstract class _PersonInfo implements PersonInfo {
  const factory _PersonInfo({final String? email}) = _$PersonInfoImpl;

  factory _PersonInfo.fromJson(Map<String, dynamic> json) =
      _$PersonInfoImpl.fromJson;

  @override
  String? get email;

  /// Create a copy of PersonInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonInfoImplCopyWith<_$PersonInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BotOwner {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() workspace,
    required TResult Function() user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? workspace,
    TResult? Function()? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? workspace,
    TResult Function()? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkspaceOwner value) workspace,
    required TResult Function(UserOwner value) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkspaceOwner value)? workspace,
    TResult? Function(UserOwner value)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkspaceOwner value)? workspace,
    TResult Function(UserOwner value)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotOwnerCopyWith<$Res> {
  factory $BotOwnerCopyWith(BotOwner value, $Res Function(BotOwner) then) =
      _$BotOwnerCopyWithImpl<$Res, BotOwner>;
}

/// @nodoc
class _$BotOwnerCopyWithImpl<$Res, $Val extends BotOwner>
    implements $BotOwnerCopyWith<$Res> {
  _$BotOwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotOwner
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$WorkspaceOwnerImplCopyWith<$Res> {
  factory _$$WorkspaceOwnerImplCopyWith(_$WorkspaceOwnerImpl value,
          $Res Function(_$WorkspaceOwnerImpl) then) =
      __$$WorkspaceOwnerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkspaceOwnerImplCopyWithImpl<$Res>
    extends _$BotOwnerCopyWithImpl<$Res, _$WorkspaceOwnerImpl>
    implements _$$WorkspaceOwnerImplCopyWith<$Res> {
  __$$WorkspaceOwnerImplCopyWithImpl(
      _$WorkspaceOwnerImpl _value, $Res Function(_$WorkspaceOwnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotOwner
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WorkspaceOwnerImpl extends WorkspaceOwner {
  const _$WorkspaceOwnerImpl() : super._();

  @override
  String toString() {
    return 'BotOwner.workspace()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WorkspaceOwnerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() workspace,
    required TResult Function() user,
  }) {
    return workspace();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? workspace,
    TResult? Function()? user,
  }) {
    return workspace?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? workspace,
    TResult Function()? user,
    required TResult orElse(),
  }) {
    if (workspace != null) {
      return workspace();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkspaceOwner value) workspace,
    required TResult Function(UserOwner value) user,
  }) {
    return workspace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkspaceOwner value)? workspace,
    TResult? Function(UserOwner value)? user,
  }) {
    return workspace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkspaceOwner value)? workspace,
    TResult Function(UserOwner value)? user,
    required TResult orElse(),
  }) {
    if (workspace != null) {
      return workspace(this);
    }
    return orElse();
  }
}

abstract class WorkspaceOwner extends BotOwner {
  const factory WorkspaceOwner() = _$WorkspaceOwnerImpl;
  const WorkspaceOwner._() : super._();
}

/// @nodoc
abstract class _$$UserOwnerImplCopyWith<$Res> {
  factory _$$UserOwnerImplCopyWith(
          _$UserOwnerImpl value, $Res Function(_$UserOwnerImpl) then) =
      __$$UserOwnerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserOwnerImplCopyWithImpl<$Res>
    extends _$BotOwnerCopyWithImpl<$Res, _$UserOwnerImpl>
    implements _$$UserOwnerImplCopyWith<$Res> {
  __$$UserOwnerImplCopyWithImpl(
      _$UserOwnerImpl _value, $Res Function(_$UserOwnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotOwner
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserOwnerImpl extends UserOwner {
  const _$UserOwnerImpl() : super._();

  @override
  String toString() {
    return 'BotOwner.user()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserOwnerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() workspace,
    required TResult Function() user,
  }) {
    return user();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? workspace,
    TResult? Function()? user,
  }) {
    return user?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? workspace,
    TResult Function()? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkspaceOwner value) workspace,
    required TResult Function(UserOwner value) user,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkspaceOwner value)? workspace,
    TResult? Function(UserOwner value)? user,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkspaceOwner value)? workspace,
    TResult Function(UserOwner value)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class UserOwner extends BotOwner {
  const factory UserOwner() = _$UserOwnerImpl;
  const UserOwner._() : super._();
}

/// @nodoc
mixin _$BotInfo {
  BotOwner get owner => throw _privateConstructorUsedError;
  String? get workspaceName => throw _privateConstructorUsedError;

  /// Create a copy of BotInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotInfoCopyWith<BotInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotInfoCopyWith<$Res> {
  factory $BotInfoCopyWith(BotInfo value, $Res Function(BotInfo) then) =
      _$BotInfoCopyWithImpl<$Res, BotInfo>;
  @useResult
  $Res call({BotOwner owner, String? workspaceName});

  $BotOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$BotInfoCopyWithImpl<$Res, $Val extends BotInfo>
    implements $BotInfoCopyWith<$Res> {
  _$BotInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? workspaceName = freezed,
  }) {
    return _then(_value.copyWith(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as BotOwner,
      workspaceName: freezed == workspaceName
          ? _value.workspaceName
          : workspaceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of BotInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BotOwnerCopyWith<$Res> get owner {
    return $BotOwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BotInfoImplCopyWith<$Res> implements $BotInfoCopyWith<$Res> {
  factory _$$BotInfoImplCopyWith(
          _$BotInfoImpl value, $Res Function(_$BotInfoImpl) then) =
      __$$BotInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BotOwner owner, String? workspaceName});

  @override
  $BotOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$BotInfoImplCopyWithImpl<$Res>
    extends _$BotInfoCopyWithImpl<$Res, _$BotInfoImpl>
    implements _$$BotInfoImplCopyWith<$Res> {
  __$$BotInfoImplCopyWithImpl(
      _$BotInfoImpl _value, $Res Function(_$BotInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? workspaceName = freezed,
  }) {
    return _then(_$BotInfoImpl(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as BotOwner,
      workspaceName: freezed == workspaceName
          ? _value.workspaceName
          : workspaceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BotInfoImpl extends _BotInfo {
  const _$BotInfoImpl({required this.owner, this.workspaceName}) : super._();

  @override
  final BotOwner owner;
  @override
  final String? workspaceName;

  @override
  String toString() {
    return 'BotInfo(owner: $owner, workspaceName: $workspaceName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotInfoImpl &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.workspaceName, workspaceName) ||
                other.workspaceName == workspaceName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, owner, workspaceName);

  /// Create a copy of BotInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotInfoImplCopyWith<_$BotInfoImpl> get copyWith =>
      __$$BotInfoImplCopyWithImpl<_$BotInfoImpl>(this, _$identity);
}

abstract class _BotInfo extends BotInfo {
  const factory _BotInfo(
      {required final BotOwner owner,
      final String? workspaceName}) = _$BotInfoImpl;
  const _BotInfo._() : super._();

  @override
  BotOwner get owner;
  @override
  String? get workspaceName;

  /// Create a copy of BotInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotInfoImplCopyWith<_$BotInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String? name, String? avatarUrl, PersonInfo person)
        person,
    required TResult Function(
            String id, String? name, String? avatarUrl, BotInfo bot)
        bot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id, String? name, String? avatarUrl, PersonInfo person)?
        person,
    TResult? Function(String id, String? name, String? avatarUrl, BotInfo bot)?
        bot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id, String? name, String? avatarUrl, PersonInfo person)?
        person,
    TResult Function(String id, String? name, String? avatarUrl, BotInfo bot)?
        bot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonUser value) person,
    required TResult Function(BotUser value) bot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonUser value)? person,
    TResult? Function(BotUser value)? bot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonUser value)? person,
    TResult Function(BotUser value)? bot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String id, String? name, String? avatarUrl});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonUserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$PersonUserImplCopyWith(
          _$PersonUserImpl value, $Res Function(_$PersonUserImpl) then) =
      __$$PersonUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? name, String? avatarUrl, PersonInfo person});

  $PersonInfoCopyWith<$Res> get person;
}

/// @nodoc
class __$$PersonUserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$PersonUserImpl>
    implements _$$PersonUserImplCopyWith<$Res> {
  __$$PersonUserImplCopyWithImpl(
      _$PersonUserImpl _value, $Res Function(_$PersonUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? avatarUrl = freezed,
    Object? person = null,
  }) {
    return _then(_$PersonUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      person: null == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as PersonInfo,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonInfoCopyWith<$Res> get person {
    return $PersonInfoCopyWith<$Res>(_value.person, (value) {
      return _then(_value.copyWith(person: value));
    });
  }
}

/// @nodoc

class _$PersonUserImpl extends PersonUser {
  const _$PersonUserImpl(
      {required this.id, this.name, this.avatarUrl, required this.person})
      : super._();

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? avatarUrl;
  @override
  final PersonInfo person;

  @override
  String toString() {
    return 'User.person(id: $id, name: $name, avatarUrl: $avatarUrl, person: $person)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.person, person) || other.person == person));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUrl, person);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonUserImplCopyWith<_$PersonUserImpl> get copyWith =>
      __$$PersonUserImplCopyWithImpl<_$PersonUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String? name, String? avatarUrl, PersonInfo person)
        person,
    required TResult Function(
            String id, String? name, String? avatarUrl, BotInfo bot)
        bot,
  }) {
    return person(id, name, avatarUrl, this.person);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id, String? name, String? avatarUrl, PersonInfo person)?
        person,
    TResult? Function(String id, String? name, String? avatarUrl, BotInfo bot)?
        bot,
  }) {
    return person?.call(id, name, avatarUrl, this.person);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id, String? name, String? avatarUrl, PersonInfo person)?
        person,
    TResult Function(String id, String? name, String? avatarUrl, BotInfo bot)?
        bot,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(id, name, avatarUrl, this.person);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonUser value) person,
    required TResult Function(BotUser value) bot,
  }) {
    return person(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonUser value)? person,
    TResult? Function(BotUser value)? bot,
  }) {
    return person?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonUser value)? person,
    TResult Function(BotUser value)? bot,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(this);
    }
    return orElse();
  }
}

abstract class PersonUser extends User {
  const factory PersonUser(
      {required final String id,
      final String? name,
      final String? avatarUrl,
      required final PersonInfo person}) = _$PersonUserImpl;
  const PersonUser._() : super._();

  @override
  String get id;
  @override
  String? get name;
  @override
  String? get avatarUrl;
  PersonInfo get person;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonUserImplCopyWith<_$PersonUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BotUserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$BotUserImplCopyWith(
          _$BotUserImpl value, $Res Function(_$BotUserImpl) then) =
      __$$BotUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? name, String? avatarUrl, BotInfo bot});

  $BotInfoCopyWith<$Res> get bot;
}

/// @nodoc
class __$$BotUserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$BotUserImpl>
    implements _$$BotUserImplCopyWith<$Res> {
  __$$BotUserImplCopyWithImpl(
      _$BotUserImpl _value, $Res Function(_$BotUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? avatarUrl = freezed,
    Object? bot = null,
  }) {
    return _then(_$BotUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bot: null == bot
          ? _value.bot
          : bot // ignore: cast_nullable_to_non_nullable
              as BotInfo,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BotInfoCopyWith<$Res> get bot {
    return $BotInfoCopyWith<$Res>(_value.bot, (value) {
      return _then(_value.copyWith(bot: value));
    });
  }
}

/// @nodoc

class _$BotUserImpl extends BotUser {
  const _$BotUserImpl(
      {required this.id, this.name, this.avatarUrl, required this.bot})
      : super._();

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? avatarUrl;
  @override
  final BotInfo bot;

  @override
  String toString() {
    return 'User.bot(id: $id, name: $name, avatarUrl: $avatarUrl, bot: $bot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.bot, bot) || other.bot == bot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUrl, bot);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotUserImplCopyWith<_$BotUserImpl> get copyWith =>
      __$$BotUserImplCopyWithImpl<_$BotUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String? name, String? avatarUrl, PersonInfo person)
        person,
    required TResult Function(
            String id, String? name, String? avatarUrl, BotInfo bot)
        bot,
  }) {
    return bot(id, name, avatarUrl, this.bot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id, String? name, String? avatarUrl, PersonInfo person)?
        person,
    TResult? Function(String id, String? name, String? avatarUrl, BotInfo bot)?
        bot,
  }) {
    return bot?.call(id, name, avatarUrl, this.bot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id, String? name, String? avatarUrl, PersonInfo person)?
        person,
    TResult Function(String id, String? name, String? avatarUrl, BotInfo bot)?
        bot,
    required TResult orElse(),
  }) {
    if (bot != null) {
      return bot(id, name, avatarUrl, this.bot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonUser value) person,
    required TResult Function(BotUser value) bot,
  }) {
    return bot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonUser value)? person,
    TResult? Function(BotUser value)? bot,
  }) {
    return bot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonUser value)? person,
    TResult Function(BotUser value)? bot,
    required TResult orElse(),
  }) {
    if (bot != null) {
      return bot(this);
    }
    return orElse();
  }
}

abstract class BotUser extends User {
  const factory BotUser(
      {required final String id,
      final String? name,
      final String? avatarUrl,
      required final BotInfo bot}) = _$BotUserImpl;
  const BotUser._() : super._();

  @override
  String get id;
  @override
  String? get name;
  @override
  String? get avatarUrl;
  BotInfo get bot;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotUserImplCopyWith<_$BotUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
