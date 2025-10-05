// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Parent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String databaseId) database,
    required TResult Function(String dataSourceId, String? databaseId)
        dataSource,
    required TResult Function(String pageId) page,
    required TResult Function() workspace,
    required TResult Function(String blockId) block,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String databaseId)? database,
    TResult? Function(String dataSourceId, String? databaseId)? dataSource,
    TResult? Function(String pageId)? page,
    TResult? Function()? workspace,
    TResult? Function(String blockId)? block,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String databaseId)? database,
    TResult Function(String dataSourceId, String? databaseId)? dataSource,
    TResult Function(String pageId)? page,
    TResult Function()? workspace,
    TResult Function(String blockId)? block,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseParent value) database,
    required TResult Function(DataSourceParent value) dataSource,
    required TResult Function(PageParent value) page,
    required TResult Function(WorkspaceParent value) workspace,
    required TResult Function(BlockParent value) block,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseParent value)? database,
    TResult? Function(DataSourceParent value)? dataSource,
    TResult? Function(PageParent value)? page,
    TResult? Function(WorkspaceParent value)? workspace,
    TResult? Function(BlockParent value)? block,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseParent value)? database,
    TResult Function(DataSourceParent value)? dataSource,
    TResult Function(PageParent value)? page,
    TResult Function(WorkspaceParent value)? workspace,
    TResult Function(BlockParent value)? block,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentCopyWith<$Res> {
  factory $ParentCopyWith(Parent value, $Res Function(Parent) then) =
      _$ParentCopyWithImpl<$Res, Parent>;
}

/// @nodoc
class _$ParentCopyWithImpl<$Res, $Val extends Parent>
    implements $ParentCopyWith<$Res> {
  _$ParentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DatabaseParentImplCopyWith<$Res> {
  factory _$$DatabaseParentImplCopyWith(_$DatabaseParentImpl value,
          $Res Function(_$DatabaseParentImpl) then) =
      __$$DatabaseParentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String databaseId});
}

/// @nodoc
class __$$DatabaseParentImplCopyWithImpl<$Res>
    extends _$ParentCopyWithImpl<$Res, _$DatabaseParentImpl>
    implements _$$DatabaseParentImplCopyWith<$Res> {
  __$$DatabaseParentImplCopyWithImpl(
      _$DatabaseParentImpl _value, $Res Function(_$DatabaseParentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? databaseId = null,
  }) {
    return _then(_$DatabaseParentImpl(
      databaseId: null == databaseId
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DatabaseParentImpl extends DatabaseParent {
  const _$DatabaseParentImpl({required this.databaseId}) : super._();

  @override
  final String databaseId;

  @override
  String toString() {
    return 'Parent.database(databaseId: $databaseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseParentImpl &&
            (identical(other.databaseId, databaseId) ||
                other.databaseId == databaseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, databaseId);

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabaseParentImplCopyWith<_$DatabaseParentImpl> get copyWith =>
      __$$DatabaseParentImplCopyWithImpl<_$DatabaseParentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String databaseId) database,
    required TResult Function(String dataSourceId, String? databaseId)
        dataSource,
    required TResult Function(String pageId) page,
    required TResult Function() workspace,
    required TResult Function(String blockId) block,
  }) {
    return database(databaseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String databaseId)? database,
    TResult? Function(String dataSourceId, String? databaseId)? dataSource,
    TResult? Function(String pageId)? page,
    TResult? Function()? workspace,
    TResult? Function(String blockId)? block,
  }) {
    return database?.call(databaseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String databaseId)? database,
    TResult Function(String dataSourceId, String? databaseId)? dataSource,
    TResult Function(String pageId)? page,
    TResult Function()? workspace,
    TResult Function(String blockId)? block,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(databaseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseParent value) database,
    required TResult Function(DataSourceParent value) dataSource,
    required TResult Function(PageParent value) page,
    required TResult Function(WorkspaceParent value) workspace,
    required TResult Function(BlockParent value) block,
  }) {
    return database(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseParent value)? database,
    TResult? Function(DataSourceParent value)? dataSource,
    TResult? Function(PageParent value)? page,
    TResult? Function(WorkspaceParent value)? workspace,
    TResult? Function(BlockParent value)? block,
  }) {
    return database?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseParent value)? database,
    TResult Function(DataSourceParent value)? dataSource,
    TResult Function(PageParent value)? page,
    TResult Function(WorkspaceParent value)? workspace,
    TResult Function(BlockParent value)? block,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(this);
    }
    return orElse();
  }
}

abstract class DatabaseParent extends Parent {
  const factory DatabaseParent({required final String databaseId}) =
      _$DatabaseParentImpl;
  const DatabaseParent._() : super._();

  String get databaseId;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatabaseParentImplCopyWith<_$DatabaseParentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataSourceParentImplCopyWith<$Res> {
  factory _$$DataSourceParentImplCopyWith(_$DataSourceParentImpl value,
          $Res Function(_$DataSourceParentImpl) then) =
      __$$DataSourceParentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String dataSourceId, String? databaseId});
}

/// @nodoc
class __$$DataSourceParentImplCopyWithImpl<$Res>
    extends _$ParentCopyWithImpl<$Res, _$DataSourceParentImpl>
    implements _$$DataSourceParentImplCopyWith<$Res> {
  __$$DataSourceParentImplCopyWithImpl(_$DataSourceParentImpl _value,
      $Res Function(_$DataSourceParentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataSourceId = null,
    Object? databaseId = freezed,
  }) {
    return _then(_$DataSourceParentImpl(
      dataSourceId: null == dataSourceId
          ? _value.dataSourceId
          : dataSourceId // ignore: cast_nullable_to_non_nullable
              as String,
      databaseId: freezed == databaseId
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DataSourceParentImpl extends DataSourceParent {
  const _$DataSourceParentImpl({required this.dataSourceId, this.databaseId})
      : super._();

  @override
  final String dataSourceId;
  @override
  final String? databaseId;

  @override
  String toString() {
    return 'Parent.dataSource(dataSourceId: $dataSourceId, databaseId: $databaseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSourceParentImpl &&
            (identical(other.dataSourceId, dataSourceId) ||
                other.dataSourceId == dataSourceId) &&
            (identical(other.databaseId, databaseId) ||
                other.databaseId == databaseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataSourceId, databaseId);

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataSourceParentImplCopyWith<_$DataSourceParentImpl> get copyWith =>
      __$$DataSourceParentImplCopyWithImpl<_$DataSourceParentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String databaseId) database,
    required TResult Function(String dataSourceId, String? databaseId)
        dataSource,
    required TResult Function(String pageId) page,
    required TResult Function() workspace,
    required TResult Function(String blockId) block,
  }) {
    return dataSource(dataSourceId, databaseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String databaseId)? database,
    TResult? Function(String dataSourceId, String? databaseId)? dataSource,
    TResult? Function(String pageId)? page,
    TResult? Function()? workspace,
    TResult? Function(String blockId)? block,
  }) {
    return dataSource?.call(dataSourceId, databaseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String databaseId)? database,
    TResult Function(String dataSourceId, String? databaseId)? dataSource,
    TResult Function(String pageId)? page,
    TResult Function()? workspace,
    TResult Function(String blockId)? block,
    required TResult orElse(),
  }) {
    if (dataSource != null) {
      return dataSource(dataSourceId, databaseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseParent value) database,
    required TResult Function(DataSourceParent value) dataSource,
    required TResult Function(PageParent value) page,
    required TResult Function(WorkspaceParent value) workspace,
    required TResult Function(BlockParent value) block,
  }) {
    return dataSource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseParent value)? database,
    TResult? Function(DataSourceParent value)? dataSource,
    TResult? Function(PageParent value)? page,
    TResult? Function(WorkspaceParent value)? workspace,
    TResult? Function(BlockParent value)? block,
  }) {
    return dataSource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseParent value)? database,
    TResult Function(DataSourceParent value)? dataSource,
    TResult Function(PageParent value)? page,
    TResult Function(WorkspaceParent value)? workspace,
    TResult Function(BlockParent value)? block,
    required TResult orElse(),
  }) {
    if (dataSource != null) {
      return dataSource(this);
    }
    return orElse();
  }
}

abstract class DataSourceParent extends Parent {
  const factory DataSourceParent(
      {required final String dataSourceId,
      final String? databaseId}) = _$DataSourceParentImpl;
  const DataSourceParent._() : super._();

  String get dataSourceId;
  String? get databaseId;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataSourceParentImplCopyWith<_$DataSourceParentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PageParentImplCopyWith<$Res> {
  factory _$$PageParentImplCopyWith(
          _$PageParentImpl value, $Res Function(_$PageParentImpl) then) =
      __$$PageParentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pageId});
}

/// @nodoc
class __$$PageParentImplCopyWithImpl<$Res>
    extends _$ParentCopyWithImpl<$Res, _$PageParentImpl>
    implements _$$PageParentImplCopyWith<$Res> {
  __$$PageParentImplCopyWithImpl(
      _$PageParentImpl _value, $Res Function(_$PageParentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageId = null,
  }) {
    return _then(_$PageParentImpl(
      pageId: null == pageId
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PageParentImpl extends PageParent {
  const _$PageParentImpl({required this.pageId}) : super._();

  @override
  final String pageId;

  @override
  String toString() {
    return 'Parent.page(pageId: $pageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageParentImpl &&
            (identical(other.pageId, pageId) || other.pageId == pageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageId);

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageParentImplCopyWith<_$PageParentImpl> get copyWith =>
      __$$PageParentImplCopyWithImpl<_$PageParentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String databaseId) database,
    required TResult Function(String dataSourceId, String? databaseId)
        dataSource,
    required TResult Function(String pageId) page,
    required TResult Function() workspace,
    required TResult Function(String blockId) block,
  }) {
    return page(pageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String databaseId)? database,
    TResult? Function(String dataSourceId, String? databaseId)? dataSource,
    TResult? Function(String pageId)? page,
    TResult? Function()? workspace,
    TResult? Function(String blockId)? block,
  }) {
    return page?.call(pageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String databaseId)? database,
    TResult Function(String dataSourceId, String? databaseId)? dataSource,
    TResult Function(String pageId)? page,
    TResult Function()? workspace,
    TResult Function(String blockId)? block,
    required TResult orElse(),
  }) {
    if (page != null) {
      return page(pageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseParent value) database,
    required TResult Function(DataSourceParent value) dataSource,
    required TResult Function(PageParent value) page,
    required TResult Function(WorkspaceParent value) workspace,
    required TResult Function(BlockParent value) block,
  }) {
    return page(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseParent value)? database,
    TResult? Function(DataSourceParent value)? dataSource,
    TResult? Function(PageParent value)? page,
    TResult? Function(WorkspaceParent value)? workspace,
    TResult? Function(BlockParent value)? block,
  }) {
    return page?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseParent value)? database,
    TResult Function(DataSourceParent value)? dataSource,
    TResult Function(PageParent value)? page,
    TResult Function(WorkspaceParent value)? workspace,
    TResult Function(BlockParent value)? block,
    required TResult orElse(),
  }) {
    if (page != null) {
      return page(this);
    }
    return orElse();
  }
}

abstract class PageParent extends Parent {
  const factory PageParent({required final String pageId}) = _$PageParentImpl;
  const PageParent._() : super._();

  String get pageId;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageParentImplCopyWith<_$PageParentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WorkspaceParentImplCopyWith<$Res> {
  factory _$$WorkspaceParentImplCopyWith(_$WorkspaceParentImpl value,
          $Res Function(_$WorkspaceParentImpl) then) =
      __$$WorkspaceParentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkspaceParentImplCopyWithImpl<$Res>
    extends _$ParentCopyWithImpl<$Res, _$WorkspaceParentImpl>
    implements _$$WorkspaceParentImplCopyWith<$Res> {
  __$$WorkspaceParentImplCopyWithImpl(
      _$WorkspaceParentImpl _value, $Res Function(_$WorkspaceParentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WorkspaceParentImpl extends WorkspaceParent {
  const _$WorkspaceParentImpl() : super._();

  @override
  String toString() {
    return 'Parent.workspace()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WorkspaceParentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String databaseId) database,
    required TResult Function(String dataSourceId, String? databaseId)
        dataSource,
    required TResult Function(String pageId) page,
    required TResult Function() workspace,
    required TResult Function(String blockId) block,
  }) {
    return workspace();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String databaseId)? database,
    TResult? Function(String dataSourceId, String? databaseId)? dataSource,
    TResult? Function(String pageId)? page,
    TResult? Function()? workspace,
    TResult? Function(String blockId)? block,
  }) {
    return workspace?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String databaseId)? database,
    TResult Function(String dataSourceId, String? databaseId)? dataSource,
    TResult Function(String pageId)? page,
    TResult Function()? workspace,
    TResult Function(String blockId)? block,
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
    required TResult Function(DatabaseParent value) database,
    required TResult Function(DataSourceParent value) dataSource,
    required TResult Function(PageParent value) page,
    required TResult Function(WorkspaceParent value) workspace,
    required TResult Function(BlockParent value) block,
  }) {
    return workspace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseParent value)? database,
    TResult? Function(DataSourceParent value)? dataSource,
    TResult? Function(PageParent value)? page,
    TResult? Function(WorkspaceParent value)? workspace,
    TResult? Function(BlockParent value)? block,
  }) {
    return workspace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseParent value)? database,
    TResult Function(DataSourceParent value)? dataSource,
    TResult Function(PageParent value)? page,
    TResult Function(WorkspaceParent value)? workspace,
    TResult Function(BlockParent value)? block,
    required TResult orElse(),
  }) {
    if (workspace != null) {
      return workspace(this);
    }
    return orElse();
  }
}

abstract class WorkspaceParent extends Parent {
  const factory WorkspaceParent() = _$WorkspaceParentImpl;
  const WorkspaceParent._() : super._();
}

/// @nodoc
abstract class _$$BlockParentImplCopyWith<$Res> {
  factory _$$BlockParentImplCopyWith(
          _$BlockParentImpl value, $Res Function(_$BlockParentImpl) then) =
      __$$BlockParentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String blockId});
}

/// @nodoc
class __$$BlockParentImplCopyWithImpl<$Res>
    extends _$ParentCopyWithImpl<$Res, _$BlockParentImpl>
    implements _$$BlockParentImplCopyWith<$Res> {
  __$$BlockParentImplCopyWithImpl(
      _$BlockParentImpl _value, $Res Function(_$BlockParentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockId = null,
  }) {
    return _then(_$BlockParentImpl(
      blockId: null == blockId
          ? _value.blockId
          : blockId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlockParentImpl extends BlockParent {
  const _$BlockParentImpl({required this.blockId}) : super._();

  @override
  final String blockId;

  @override
  String toString() {
    return 'Parent.block(blockId: $blockId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockParentImpl &&
            (identical(other.blockId, blockId) || other.blockId == blockId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blockId);

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockParentImplCopyWith<_$BlockParentImpl> get copyWith =>
      __$$BlockParentImplCopyWithImpl<_$BlockParentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String databaseId) database,
    required TResult Function(String dataSourceId, String? databaseId)
        dataSource,
    required TResult Function(String pageId) page,
    required TResult Function() workspace,
    required TResult Function(String blockId) block,
  }) {
    return block(blockId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String databaseId)? database,
    TResult? Function(String dataSourceId, String? databaseId)? dataSource,
    TResult? Function(String pageId)? page,
    TResult? Function()? workspace,
    TResult? Function(String blockId)? block,
  }) {
    return block?.call(blockId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String databaseId)? database,
    TResult Function(String dataSourceId, String? databaseId)? dataSource,
    TResult Function(String pageId)? page,
    TResult Function()? workspace,
    TResult Function(String blockId)? block,
    required TResult orElse(),
  }) {
    if (block != null) {
      return block(blockId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseParent value) database,
    required TResult Function(DataSourceParent value) dataSource,
    required TResult Function(PageParent value) page,
    required TResult Function(WorkspaceParent value) workspace,
    required TResult Function(BlockParent value) block,
  }) {
    return block(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseParent value)? database,
    TResult? Function(DataSourceParent value)? dataSource,
    TResult? Function(PageParent value)? page,
    TResult? Function(WorkspaceParent value)? workspace,
    TResult? Function(BlockParent value)? block,
  }) {
    return block?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseParent value)? database,
    TResult Function(DataSourceParent value)? dataSource,
    TResult Function(PageParent value)? page,
    TResult Function(WorkspaceParent value)? workspace,
    TResult Function(BlockParent value)? block,
    required TResult orElse(),
  }) {
    if (block != null) {
      return block(this);
    }
    return orElse();
  }
}

abstract class BlockParent extends Parent {
  const factory BlockParent({required final String blockId}) =
      _$BlockParentImpl;
  const BlockParent._() : super._();

  String get blockId;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlockParentImplCopyWith<_$BlockParentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
