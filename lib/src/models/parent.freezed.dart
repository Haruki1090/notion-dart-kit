// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Parent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Parent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Parent()';
  }
}

/// @nodoc
class $ParentCopyWith<$Res> {
  $ParentCopyWith(Parent _, $Res Function(Parent) __);
}

/// Adds pattern-matching-related methods to [Parent].
extension ParentPatterns on Parent {
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
    TResult Function(DatabaseParent value)? database,
    TResult Function(DataSourceParent value)? dataSource,
    TResult Function(PageParent value)? page,
    TResult Function(WorkspaceParent value)? workspace,
    TResult Function(BlockParent value)? block,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case DatabaseParent() when database != null:
        return database(_that);
      case DataSourceParent() when dataSource != null:
        return dataSource(_that);
      case PageParent() when page != null:
        return page(_that);
      case WorkspaceParent() when workspace != null:
        return workspace(_that);
      case BlockParent() when block != null:
        return block(_that);
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
    required TResult Function(DatabaseParent value) database,
    required TResult Function(DataSourceParent value) dataSource,
    required TResult Function(PageParent value) page,
    required TResult Function(WorkspaceParent value) workspace,
    required TResult Function(BlockParent value) block,
  }) {
    final _that = this;
    switch (_that) {
      case DatabaseParent():
        return database(_that);
      case DataSourceParent():
        return dataSource(_that);
      case PageParent():
        return page(_that);
      case WorkspaceParent():
        return workspace(_that);
      case BlockParent():
        return block(_that);
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
    TResult? Function(DatabaseParent value)? database,
    TResult? Function(DataSourceParent value)? dataSource,
    TResult? Function(PageParent value)? page,
    TResult? Function(WorkspaceParent value)? workspace,
    TResult? Function(BlockParent value)? block,
  }) {
    final _that = this;
    switch (_that) {
      case DatabaseParent() when database != null:
        return database(_that);
      case DataSourceParent() when dataSource != null:
        return dataSource(_that);
      case PageParent() when page != null:
        return page(_that);
      case WorkspaceParent() when workspace != null:
        return workspace(_that);
      case BlockParent() when block != null:
        return block(_that);
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
    TResult Function(String databaseId)? database,
    TResult Function(String dataSourceId, String? databaseId)? dataSource,
    TResult Function(String pageId)? page,
    TResult Function()? workspace,
    TResult Function(String blockId)? block,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case DatabaseParent() when database != null:
        return database(_that.databaseId);
      case DataSourceParent() when dataSource != null:
        return dataSource(_that.dataSourceId, _that.databaseId);
      case PageParent() when page != null:
        return page(_that.pageId);
      case WorkspaceParent() when workspace != null:
        return workspace();
      case BlockParent() when block != null:
        return block(_that.blockId);
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
    required TResult Function(String databaseId) database,
    required TResult Function(String dataSourceId, String? databaseId)
        dataSource,
    required TResult Function(String pageId) page,
    required TResult Function() workspace,
    required TResult Function(String blockId) block,
  }) {
    final _that = this;
    switch (_that) {
      case DatabaseParent():
        return database(_that.databaseId);
      case DataSourceParent():
        return dataSource(_that.dataSourceId, _that.databaseId);
      case PageParent():
        return page(_that.pageId);
      case WorkspaceParent():
        return workspace();
      case BlockParent():
        return block(_that.blockId);
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
    TResult? Function(String databaseId)? database,
    TResult? Function(String dataSourceId, String? databaseId)? dataSource,
    TResult? Function(String pageId)? page,
    TResult? Function()? workspace,
    TResult? Function(String blockId)? block,
  }) {
    final _that = this;
    switch (_that) {
      case DatabaseParent() when database != null:
        return database(_that.databaseId);
      case DataSourceParent() when dataSource != null:
        return dataSource(_that.dataSourceId, _that.databaseId);
      case PageParent() when page != null:
        return page(_that.pageId);
      case WorkspaceParent() when workspace != null:
        return workspace();
      case BlockParent() when block != null:
        return block(_that.blockId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class DatabaseParent extends Parent {
  const DatabaseParent({required this.databaseId}) : super._();

  final String databaseId;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DatabaseParentCopyWith<DatabaseParent> get copyWith =>
      _$DatabaseParentCopyWithImpl<DatabaseParent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DatabaseParent &&
            (identical(other.databaseId, databaseId) ||
                other.databaseId == databaseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, databaseId);

  @override
  String toString() {
    return 'Parent.database(databaseId: $databaseId)';
  }
}

/// @nodoc
abstract mixin class $DatabaseParentCopyWith<$Res>
    implements $ParentCopyWith<$Res> {
  factory $DatabaseParentCopyWith(
          DatabaseParent value, $Res Function(DatabaseParent) _then) =
      _$DatabaseParentCopyWithImpl;
  @useResult
  $Res call({String databaseId});
}

/// @nodoc
class _$DatabaseParentCopyWithImpl<$Res>
    implements $DatabaseParentCopyWith<$Res> {
  _$DatabaseParentCopyWithImpl(this._self, this._then);

  final DatabaseParent _self;
  final $Res Function(DatabaseParent) _then;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? databaseId = null,
  }) {
    return _then(DatabaseParent(
      databaseId: null == databaseId
          ? _self.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DataSourceParent extends Parent {
  const DataSourceParent({required this.dataSourceId, this.databaseId})
      : super._();

  final String dataSourceId;
  final String? databaseId;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DataSourceParentCopyWith<DataSourceParent> get copyWith =>
      _$DataSourceParentCopyWithImpl<DataSourceParent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DataSourceParent &&
            (identical(other.dataSourceId, dataSourceId) ||
                other.dataSourceId == dataSourceId) &&
            (identical(other.databaseId, databaseId) ||
                other.databaseId == databaseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataSourceId, databaseId);

  @override
  String toString() {
    return 'Parent.dataSource(dataSourceId: $dataSourceId, databaseId: $databaseId)';
  }
}

/// @nodoc
abstract mixin class $DataSourceParentCopyWith<$Res>
    implements $ParentCopyWith<$Res> {
  factory $DataSourceParentCopyWith(
          DataSourceParent value, $Res Function(DataSourceParent) _then) =
      _$DataSourceParentCopyWithImpl;
  @useResult
  $Res call({String dataSourceId, String? databaseId});
}

/// @nodoc
class _$DataSourceParentCopyWithImpl<$Res>
    implements $DataSourceParentCopyWith<$Res> {
  _$DataSourceParentCopyWithImpl(this._self, this._then);

  final DataSourceParent _self;
  final $Res Function(DataSourceParent) _then;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dataSourceId = null,
    Object? databaseId = freezed,
  }) {
    return _then(DataSourceParent(
      dataSourceId: null == dataSourceId
          ? _self.dataSourceId
          : dataSourceId // ignore: cast_nullable_to_non_nullable
              as String,
      databaseId: freezed == databaseId
          ? _self.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class PageParent extends Parent {
  const PageParent({required this.pageId}) : super._();

  final String pageId;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageParentCopyWith<PageParent> get copyWith =>
      _$PageParentCopyWithImpl<PageParent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageParent &&
            (identical(other.pageId, pageId) || other.pageId == pageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageId);

  @override
  String toString() {
    return 'Parent.page(pageId: $pageId)';
  }
}

/// @nodoc
abstract mixin class $PageParentCopyWith<$Res>
    implements $ParentCopyWith<$Res> {
  factory $PageParentCopyWith(
          PageParent value, $Res Function(PageParent) _then) =
      _$PageParentCopyWithImpl;
  @useResult
  $Res call({String pageId});
}

/// @nodoc
class _$PageParentCopyWithImpl<$Res> implements $PageParentCopyWith<$Res> {
  _$PageParentCopyWithImpl(this._self, this._then);

  final PageParent _self;
  final $Res Function(PageParent) _then;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pageId = null,
  }) {
    return _then(PageParent(
      pageId: null == pageId
          ? _self.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class WorkspaceParent extends Parent {
  const WorkspaceParent() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WorkspaceParent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Parent.workspace()';
  }
}

/// @nodoc

class BlockParent extends Parent {
  const BlockParent({required this.blockId}) : super._();

  final String blockId;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BlockParentCopyWith<BlockParent> get copyWith =>
      _$BlockParentCopyWithImpl<BlockParent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BlockParent &&
            (identical(other.blockId, blockId) || other.blockId == blockId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blockId);

  @override
  String toString() {
    return 'Parent.block(blockId: $blockId)';
  }
}

/// @nodoc
abstract mixin class $BlockParentCopyWith<$Res>
    implements $ParentCopyWith<$Res> {
  factory $BlockParentCopyWith(
          BlockParent value, $Res Function(BlockParent) _then) =
      _$BlockParentCopyWithImpl;
  @useResult
  $Res call({String blockId});
}

/// @nodoc
class _$BlockParentCopyWithImpl<$Res> implements $BlockParentCopyWith<$Res> {
  _$BlockParentCopyWithImpl(this._self, this._then);

  final BlockParent _self;
  final $Res Function(BlockParent) _then;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? blockId = null,
  }) {
    return _then(BlockParent(
      blockId: null == blockId
          ? _self.blockId
          : blockId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
