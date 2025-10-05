// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Block {
  String get id;
  Parent get parent;
  DateTime get createdTime;
  DateTime get lastEditedTime;
  User get createdBy;
  User get lastEditedBy;
  bool get hasChildren;
  bool get archived;
  bool get inTrash;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BlockCopyWith<Block> get copyWith =>
      _$BlockCopyWithImpl<Block>(this as Block, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Block &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastEditedBy, lastEditedBy) ||
                other.lastEditedBy == lastEditedBy) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.inTrash, inTrash) || other.inTrash == inTrash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, parent, createdTime,
      lastEditedTime, createdBy, lastEditedBy, hasChildren, archived, inTrash);

  @override
  String toString() {
    return 'Block(id: $id, parent: $parent, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, hasChildren: $hasChildren, archived: $archived, inTrash: $inTrash)';
  }
}

/// @nodoc
abstract mixin class $BlockCopyWith<$Res> {
  factory $BlockCopyWith(Block value, $Res Function(Block) _then) =
      _$BlockCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      Parent parent,
      DateTime createdTime,
      DateTime lastEditedTime,
      User createdBy,
      User lastEditedBy,
      bool hasChildren,
      bool archived,
      bool inTrash});

  $ParentCopyWith<$Res> get parent;
  $UserCopyWith<$Res> get createdBy;
  $UserCopyWith<$Res> get lastEditedBy;
}

/// @nodoc
class _$BlockCopyWithImpl<$Res> implements $BlockCopyWith<$Res> {
  _$BlockCopyWithImpl(this._self, this._then);

  final Block _self;
  final $Res Function(Block) _then;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parent = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? createdBy = null,
    Object? lastEditedBy = null,
    Object? hasChildren = null,
    Object? archived = null,
    Object? inTrash = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parent: null == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
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
      hasChildren: null == hasChildren
          ? _self.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool,
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _self.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_self.parent, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_self.lastEditedBy, (value) {
      return _then(_self.copyWith(lastEditedBy: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Block].
extension BlockPatterns on Block {
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
    TResult Function(_ParagraphBlock value)? paragraph,
    TResult Function(_Heading1Block value)? heading1,
    TResult Function(_Heading2Block value)? heading2,
    TResult Function(_Heading3Block value)? heading3,
    TResult Function(_BulletedListItemBlock value)? bulletedListItem,
    TResult Function(_NumberedListItemBlock value)? numberedListItem,
    TResult Function(_ToDoBlock value)? toDo,
    TResult Function(_ToggleBlock value)? toggle,
    TResult Function(_CodeBlock value)? code,
    TResult Function(_QuoteBlock value)? quote,
    TResult Function(_DividerBlock value)? divider,
    TResult Function(_UnsupportedBlock value)? unsupported,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ParagraphBlock() when paragraph != null:
        return paragraph(_that);
      case _Heading1Block() when heading1 != null:
        return heading1(_that);
      case _Heading2Block() when heading2 != null:
        return heading2(_that);
      case _Heading3Block() when heading3 != null:
        return heading3(_that);
      case _BulletedListItemBlock() when bulletedListItem != null:
        return bulletedListItem(_that);
      case _NumberedListItemBlock() when numberedListItem != null:
        return numberedListItem(_that);
      case _ToDoBlock() when toDo != null:
        return toDo(_that);
      case _ToggleBlock() when toggle != null:
        return toggle(_that);
      case _CodeBlock() when code != null:
        return code(_that);
      case _QuoteBlock() when quote != null:
        return quote(_that);
      case _DividerBlock() when divider != null:
        return divider(_that);
      case _UnsupportedBlock() when unsupported != null:
        return unsupported(_that);
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
    required TResult Function(_ParagraphBlock value) paragraph,
    required TResult Function(_Heading1Block value) heading1,
    required TResult Function(_Heading2Block value) heading2,
    required TResult Function(_Heading3Block value) heading3,
    required TResult Function(_BulletedListItemBlock value) bulletedListItem,
    required TResult Function(_NumberedListItemBlock value) numberedListItem,
    required TResult Function(_ToDoBlock value) toDo,
    required TResult Function(_ToggleBlock value) toggle,
    required TResult Function(_CodeBlock value) code,
    required TResult Function(_QuoteBlock value) quote,
    required TResult Function(_DividerBlock value) divider,
    required TResult Function(_UnsupportedBlock value) unsupported,
  }) {
    final _that = this;
    switch (_that) {
      case _ParagraphBlock():
        return paragraph(_that);
      case _Heading1Block():
        return heading1(_that);
      case _Heading2Block():
        return heading2(_that);
      case _Heading3Block():
        return heading3(_that);
      case _BulletedListItemBlock():
        return bulletedListItem(_that);
      case _NumberedListItemBlock():
        return numberedListItem(_that);
      case _ToDoBlock():
        return toDo(_that);
      case _ToggleBlock():
        return toggle(_that);
      case _CodeBlock():
        return code(_that);
      case _QuoteBlock():
        return quote(_that);
      case _DividerBlock():
        return divider(_that);
      case _UnsupportedBlock():
        return unsupported(_that);
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
    TResult? Function(_ParagraphBlock value)? paragraph,
    TResult? Function(_Heading1Block value)? heading1,
    TResult? Function(_Heading2Block value)? heading2,
    TResult? Function(_Heading3Block value)? heading3,
    TResult? Function(_BulletedListItemBlock value)? bulletedListItem,
    TResult? Function(_NumberedListItemBlock value)? numberedListItem,
    TResult? Function(_ToDoBlock value)? toDo,
    TResult? Function(_ToggleBlock value)? toggle,
    TResult? Function(_CodeBlock value)? code,
    TResult? Function(_QuoteBlock value)? quote,
    TResult? Function(_DividerBlock value)? divider,
    TResult? Function(_UnsupportedBlock value)? unsupported,
  }) {
    final _that = this;
    switch (_that) {
      case _ParagraphBlock() when paragraph != null:
        return paragraph(_that);
      case _Heading1Block() when heading1 != null:
        return heading1(_that);
      case _Heading2Block() when heading2 != null:
        return heading2(_that);
      case _Heading3Block() when heading3 != null:
        return heading3(_that);
      case _BulletedListItemBlock() when bulletedListItem != null:
        return bulletedListItem(_that);
      case _NumberedListItemBlock() when numberedListItem != null:
        return numberedListItem(_that);
      case _ToDoBlock() when toDo != null:
        return toDo(_that);
      case _ToggleBlock() when toggle != null:
        return toggle(_that);
      case _CodeBlock() when code != null:
        return code(_that);
      case _QuoteBlock() when quote != null:
        return quote(_that);
      case _DividerBlock() when divider != null:
        return divider(_that);
      case _UnsupportedBlock() when unsupported != null:
        return unsupported(_that);
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
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)?
        paragraph,
    TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)?
        heading1,
    TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)?
        heading2,
    TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)?
        heading3,
    TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)?
        bulletedListItem,
    TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)?
        numberedListItem,
    TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            ToDoContent content)?
        toDo,
    TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)?
        toggle,
    TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            CodeContent content)?
        code,
    TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)?
        quote,
    TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash)?
        divider,
    TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash)?
        unsupported,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ParagraphBlock() when paragraph != null:
        return paragraph(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _Heading1Block() when heading1 != null:
        return heading1(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _Heading2Block() when heading2 != null:
        return heading2(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _Heading3Block() when heading3 != null:
        return heading3(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _BulletedListItemBlock() when bulletedListItem != null:
        return bulletedListItem(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _NumberedListItemBlock() when numberedListItem != null:
        return numberedListItem(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _ToDoBlock() when toDo != null:
        return toDo(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _ToggleBlock() when toggle != null:
        return toggle(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _CodeBlock() when code != null:
        return code(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _QuoteBlock() when quote != null:
        return quote(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _DividerBlock() when divider != null:
        return divider(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash);
      case _UnsupportedBlock() when unsupported != null:
        return unsupported(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash);
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
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)
        paragraph,
    required TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)
        heading1,
    required TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)
        heading2,
    required TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)
        heading3,
    required TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)
        bulletedListItem,
    required TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)
        numberedListItem,
    required TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            ToDoContent content)
        toDo,
    required TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)
        toggle,
    required TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            CodeContent content)
        code,
    required TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)
        quote,
    required TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash)
        divider,
    required TResult Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash)
        unsupported,
  }) {
    final _that = this;
    switch (_that) {
      case _ParagraphBlock():
        return paragraph(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _Heading1Block():
        return heading1(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _Heading2Block():
        return heading2(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _Heading3Block():
        return heading3(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _BulletedListItemBlock():
        return bulletedListItem(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _NumberedListItemBlock():
        return numberedListItem(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _ToDoBlock():
        return toDo(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _ToggleBlock():
        return toggle(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _CodeBlock():
        return code(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _QuoteBlock():
        return quote(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _DividerBlock():
        return divider(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash);
      case _UnsupportedBlock():
        return unsupported(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash);
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
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)?
        paragraph,
    TResult? Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)?
        heading1,
    TResult? Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)?
        heading2,
    TResult? Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)?
        heading3,
    TResult? Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)?
        bulletedListItem,
    TResult? Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)?
        numberedListItem,
    TResult? Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            ToDoContent content)?
        toDo,
    TResult? Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)?
        toggle,
    TResult? Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            CodeContent content)?
        code,
    TResult? Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash,
            BlockContent content)?
        quote,
    TResult? Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash)?
        divider,
    TResult? Function(
            String id,
            Parent parent,
            DateTime createdTime,
            DateTime lastEditedTime,
            User createdBy,
            User lastEditedBy,
            bool hasChildren,
            bool archived,
            bool inTrash)?
        unsupported,
  }) {
    final _that = this;
    switch (_that) {
      case _ParagraphBlock() when paragraph != null:
        return paragraph(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _Heading1Block() when heading1 != null:
        return heading1(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _Heading2Block() when heading2 != null:
        return heading2(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _Heading3Block() when heading3 != null:
        return heading3(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _BulletedListItemBlock() when bulletedListItem != null:
        return bulletedListItem(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _NumberedListItemBlock() when numberedListItem != null:
        return numberedListItem(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _ToDoBlock() when toDo != null:
        return toDo(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _ToggleBlock() when toggle != null:
        return toggle(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _CodeBlock() when code != null:
        return code(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _QuoteBlock() when quote != null:
        return quote(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash,
            _that.content);
      case _DividerBlock() when divider != null:
        return divider(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash);
      case _UnsupportedBlock() when unsupported != null:
        return unsupported(
            _that.id,
            _that.parent,
            _that.createdTime,
            _that.lastEditedTime,
            _that.createdBy,
            _that.lastEditedBy,
            _that.hasChildren,
            _that.archived,
            _that.inTrash);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ParagraphBlock extends Block {
  const _ParagraphBlock(
      {required this.id,
      required this.parent,
      required this.createdTime,
      required this.lastEditedTime,
      required this.createdBy,
      required this.lastEditedBy,
      required this.hasChildren,
      required this.archived,
      required this.inTrash,
      required this.content})
      : super._();

  @override
  final String id;
  @override
  final Parent parent;
  @override
  final DateTime createdTime;
  @override
  final DateTime lastEditedTime;
  @override
  final User createdBy;
  @override
  final User lastEditedBy;
  @override
  final bool hasChildren;
  @override
  final bool archived;
  @override
  final bool inTrash;
  final BlockContent content;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ParagraphBlockCopyWith<_ParagraphBlock> get copyWith =>
      __$ParagraphBlockCopyWithImpl<_ParagraphBlock>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ParagraphBlock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastEditedBy, lastEditedBy) ||
                other.lastEditedBy == lastEditedBy) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.inTrash, inTrash) || other.inTrash == inTrash) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parent,
      createdTime,
      lastEditedTime,
      createdBy,
      lastEditedBy,
      hasChildren,
      archived,
      inTrash,
      content);

  @override
  String toString() {
    return 'Block.paragraph(id: $id, parent: $parent, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, hasChildren: $hasChildren, archived: $archived, inTrash: $inTrash, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$ParagraphBlockCopyWith<$Res>
    implements $BlockCopyWith<$Res> {
  factory _$ParagraphBlockCopyWith(
          _ParagraphBlock value, $Res Function(_ParagraphBlock) _then) =
      __$ParagraphBlockCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      Parent parent,
      DateTime createdTime,
      DateTime lastEditedTime,
      User createdBy,
      User lastEditedBy,
      bool hasChildren,
      bool archived,
      bool inTrash,
      BlockContent content});

  @override
  $ParentCopyWith<$Res> get parent;
  @override
  $UserCopyWith<$Res> get createdBy;
  @override
  $UserCopyWith<$Res> get lastEditedBy;
  $BlockContentCopyWith<$Res> get content;
}

/// @nodoc
class __$ParagraphBlockCopyWithImpl<$Res>
    implements _$ParagraphBlockCopyWith<$Res> {
  __$ParagraphBlockCopyWithImpl(this._self, this._then);

  final _ParagraphBlock _self;
  final $Res Function(_ParagraphBlock) _then;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? parent = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? createdBy = null,
    Object? lastEditedBy = null,
    Object? hasChildren = null,
    Object? archived = null,
    Object? inTrash = null,
    Object? content = null,
  }) {
    return _then(_ParagraphBlock(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parent: null == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
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
      hasChildren: null == hasChildren
          ? _self.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool,
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _self.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as BlockContent,
    ));
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_self.parent, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_self.lastEditedBy, (value) {
      return _then(_self.copyWith(lastEditedBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlockContentCopyWith<$Res> get content {
    return $BlockContentCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

/// @nodoc

class _Heading1Block extends Block {
  const _Heading1Block(
      {required this.id,
      required this.parent,
      required this.createdTime,
      required this.lastEditedTime,
      required this.createdBy,
      required this.lastEditedBy,
      required this.hasChildren,
      required this.archived,
      required this.inTrash,
      required this.content})
      : super._();

  @override
  final String id;
  @override
  final Parent parent;
  @override
  final DateTime createdTime;
  @override
  final DateTime lastEditedTime;
  @override
  final User createdBy;
  @override
  final User lastEditedBy;
  @override
  final bool hasChildren;
  @override
  final bool archived;
  @override
  final bool inTrash;
  final BlockContent content;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$Heading1BlockCopyWith<_Heading1Block> get copyWith =>
      __$Heading1BlockCopyWithImpl<_Heading1Block>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Heading1Block &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastEditedBy, lastEditedBy) ||
                other.lastEditedBy == lastEditedBy) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.inTrash, inTrash) || other.inTrash == inTrash) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parent,
      createdTime,
      lastEditedTime,
      createdBy,
      lastEditedBy,
      hasChildren,
      archived,
      inTrash,
      content);

  @override
  String toString() {
    return 'Block.heading1(id: $id, parent: $parent, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, hasChildren: $hasChildren, archived: $archived, inTrash: $inTrash, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$Heading1BlockCopyWith<$Res>
    implements $BlockCopyWith<$Res> {
  factory _$Heading1BlockCopyWith(
          _Heading1Block value, $Res Function(_Heading1Block) _then) =
      __$Heading1BlockCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      Parent parent,
      DateTime createdTime,
      DateTime lastEditedTime,
      User createdBy,
      User lastEditedBy,
      bool hasChildren,
      bool archived,
      bool inTrash,
      BlockContent content});

  @override
  $ParentCopyWith<$Res> get parent;
  @override
  $UserCopyWith<$Res> get createdBy;
  @override
  $UserCopyWith<$Res> get lastEditedBy;
  $BlockContentCopyWith<$Res> get content;
}

/// @nodoc
class __$Heading1BlockCopyWithImpl<$Res>
    implements _$Heading1BlockCopyWith<$Res> {
  __$Heading1BlockCopyWithImpl(this._self, this._then);

  final _Heading1Block _self;
  final $Res Function(_Heading1Block) _then;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? parent = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? createdBy = null,
    Object? lastEditedBy = null,
    Object? hasChildren = null,
    Object? archived = null,
    Object? inTrash = null,
    Object? content = null,
  }) {
    return _then(_Heading1Block(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parent: null == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
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
      hasChildren: null == hasChildren
          ? _self.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool,
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _self.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as BlockContent,
    ));
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_self.parent, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_self.lastEditedBy, (value) {
      return _then(_self.copyWith(lastEditedBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlockContentCopyWith<$Res> get content {
    return $BlockContentCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

/// @nodoc

class _Heading2Block extends Block {
  const _Heading2Block(
      {required this.id,
      required this.parent,
      required this.createdTime,
      required this.lastEditedTime,
      required this.createdBy,
      required this.lastEditedBy,
      required this.hasChildren,
      required this.archived,
      required this.inTrash,
      required this.content})
      : super._();

  @override
  final String id;
  @override
  final Parent parent;
  @override
  final DateTime createdTime;
  @override
  final DateTime lastEditedTime;
  @override
  final User createdBy;
  @override
  final User lastEditedBy;
  @override
  final bool hasChildren;
  @override
  final bool archived;
  @override
  final bool inTrash;
  final BlockContent content;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$Heading2BlockCopyWith<_Heading2Block> get copyWith =>
      __$Heading2BlockCopyWithImpl<_Heading2Block>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Heading2Block &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastEditedBy, lastEditedBy) ||
                other.lastEditedBy == lastEditedBy) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.inTrash, inTrash) || other.inTrash == inTrash) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parent,
      createdTime,
      lastEditedTime,
      createdBy,
      lastEditedBy,
      hasChildren,
      archived,
      inTrash,
      content);

  @override
  String toString() {
    return 'Block.heading2(id: $id, parent: $parent, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, hasChildren: $hasChildren, archived: $archived, inTrash: $inTrash, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$Heading2BlockCopyWith<$Res>
    implements $BlockCopyWith<$Res> {
  factory _$Heading2BlockCopyWith(
          _Heading2Block value, $Res Function(_Heading2Block) _then) =
      __$Heading2BlockCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      Parent parent,
      DateTime createdTime,
      DateTime lastEditedTime,
      User createdBy,
      User lastEditedBy,
      bool hasChildren,
      bool archived,
      bool inTrash,
      BlockContent content});

  @override
  $ParentCopyWith<$Res> get parent;
  @override
  $UserCopyWith<$Res> get createdBy;
  @override
  $UserCopyWith<$Res> get lastEditedBy;
  $BlockContentCopyWith<$Res> get content;
}

/// @nodoc
class __$Heading2BlockCopyWithImpl<$Res>
    implements _$Heading2BlockCopyWith<$Res> {
  __$Heading2BlockCopyWithImpl(this._self, this._then);

  final _Heading2Block _self;
  final $Res Function(_Heading2Block) _then;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? parent = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? createdBy = null,
    Object? lastEditedBy = null,
    Object? hasChildren = null,
    Object? archived = null,
    Object? inTrash = null,
    Object? content = null,
  }) {
    return _then(_Heading2Block(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parent: null == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
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
      hasChildren: null == hasChildren
          ? _self.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool,
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _self.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as BlockContent,
    ));
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_self.parent, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_self.lastEditedBy, (value) {
      return _then(_self.copyWith(lastEditedBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlockContentCopyWith<$Res> get content {
    return $BlockContentCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

/// @nodoc

class _Heading3Block extends Block {
  const _Heading3Block(
      {required this.id,
      required this.parent,
      required this.createdTime,
      required this.lastEditedTime,
      required this.createdBy,
      required this.lastEditedBy,
      required this.hasChildren,
      required this.archived,
      required this.inTrash,
      required this.content})
      : super._();

  @override
  final String id;
  @override
  final Parent parent;
  @override
  final DateTime createdTime;
  @override
  final DateTime lastEditedTime;
  @override
  final User createdBy;
  @override
  final User lastEditedBy;
  @override
  final bool hasChildren;
  @override
  final bool archived;
  @override
  final bool inTrash;
  final BlockContent content;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$Heading3BlockCopyWith<_Heading3Block> get copyWith =>
      __$Heading3BlockCopyWithImpl<_Heading3Block>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Heading3Block &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastEditedBy, lastEditedBy) ||
                other.lastEditedBy == lastEditedBy) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.inTrash, inTrash) || other.inTrash == inTrash) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parent,
      createdTime,
      lastEditedTime,
      createdBy,
      lastEditedBy,
      hasChildren,
      archived,
      inTrash,
      content);

  @override
  String toString() {
    return 'Block.heading3(id: $id, parent: $parent, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, hasChildren: $hasChildren, archived: $archived, inTrash: $inTrash, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$Heading3BlockCopyWith<$Res>
    implements $BlockCopyWith<$Res> {
  factory _$Heading3BlockCopyWith(
          _Heading3Block value, $Res Function(_Heading3Block) _then) =
      __$Heading3BlockCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      Parent parent,
      DateTime createdTime,
      DateTime lastEditedTime,
      User createdBy,
      User lastEditedBy,
      bool hasChildren,
      bool archived,
      bool inTrash,
      BlockContent content});

  @override
  $ParentCopyWith<$Res> get parent;
  @override
  $UserCopyWith<$Res> get createdBy;
  @override
  $UserCopyWith<$Res> get lastEditedBy;
  $BlockContentCopyWith<$Res> get content;
}

/// @nodoc
class __$Heading3BlockCopyWithImpl<$Res>
    implements _$Heading3BlockCopyWith<$Res> {
  __$Heading3BlockCopyWithImpl(this._self, this._then);

  final _Heading3Block _self;
  final $Res Function(_Heading3Block) _then;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? parent = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? createdBy = null,
    Object? lastEditedBy = null,
    Object? hasChildren = null,
    Object? archived = null,
    Object? inTrash = null,
    Object? content = null,
  }) {
    return _then(_Heading3Block(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parent: null == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
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
      hasChildren: null == hasChildren
          ? _self.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool,
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _self.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as BlockContent,
    ));
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_self.parent, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_self.lastEditedBy, (value) {
      return _then(_self.copyWith(lastEditedBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlockContentCopyWith<$Res> get content {
    return $BlockContentCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

/// @nodoc

class _BulletedListItemBlock extends Block {
  const _BulletedListItemBlock(
      {required this.id,
      required this.parent,
      required this.createdTime,
      required this.lastEditedTime,
      required this.createdBy,
      required this.lastEditedBy,
      required this.hasChildren,
      required this.archived,
      required this.inTrash,
      required this.content})
      : super._();

  @override
  final String id;
  @override
  final Parent parent;
  @override
  final DateTime createdTime;
  @override
  final DateTime lastEditedTime;
  @override
  final User createdBy;
  @override
  final User lastEditedBy;
  @override
  final bool hasChildren;
  @override
  final bool archived;
  @override
  final bool inTrash;
  final BlockContent content;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BulletedListItemBlockCopyWith<_BulletedListItemBlock> get copyWith =>
      __$BulletedListItemBlockCopyWithImpl<_BulletedListItemBlock>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BulletedListItemBlock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastEditedBy, lastEditedBy) ||
                other.lastEditedBy == lastEditedBy) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.inTrash, inTrash) || other.inTrash == inTrash) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parent,
      createdTime,
      lastEditedTime,
      createdBy,
      lastEditedBy,
      hasChildren,
      archived,
      inTrash,
      content);

  @override
  String toString() {
    return 'Block.bulletedListItem(id: $id, parent: $parent, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, hasChildren: $hasChildren, archived: $archived, inTrash: $inTrash, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$BulletedListItemBlockCopyWith<$Res>
    implements $BlockCopyWith<$Res> {
  factory _$BulletedListItemBlockCopyWith(_BulletedListItemBlock value,
          $Res Function(_BulletedListItemBlock) _then) =
      __$BulletedListItemBlockCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      Parent parent,
      DateTime createdTime,
      DateTime lastEditedTime,
      User createdBy,
      User lastEditedBy,
      bool hasChildren,
      bool archived,
      bool inTrash,
      BlockContent content});

  @override
  $ParentCopyWith<$Res> get parent;
  @override
  $UserCopyWith<$Res> get createdBy;
  @override
  $UserCopyWith<$Res> get lastEditedBy;
  $BlockContentCopyWith<$Res> get content;
}

/// @nodoc
class __$BulletedListItemBlockCopyWithImpl<$Res>
    implements _$BulletedListItemBlockCopyWith<$Res> {
  __$BulletedListItemBlockCopyWithImpl(this._self, this._then);

  final _BulletedListItemBlock _self;
  final $Res Function(_BulletedListItemBlock) _then;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? parent = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? createdBy = null,
    Object? lastEditedBy = null,
    Object? hasChildren = null,
    Object? archived = null,
    Object? inTrash = null,
    Object? content = null,
  }) {
    return _then(_BulletedListItemBlock(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parent: null == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
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
      hasChildren: null == hasChildren
          ? _self.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool,
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _self.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as BlockContent,
    ));
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_self.parent, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_self.lastEditedBy, (value) {
      return _then(_self.copyWith(lastEditedBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlockContentCopyWith<$Res> get content {
    return $BlockContentCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

/// @nodoc

class _NumberedListItemBlock extends Block {
  const _NumberedListItemBlock(
      {required this.id,
      required this.parent,
      required this.createdTime,
      required this.lastEditedTime,
      required this.createdBy,
      required this.lastEditedBy,
      required this.hasChildren,
      required this.archived,
      required this.inTrash,
      required this.content})
      : super._();

  @override
  final String id;
  @override
  final Parent parent;
  @override
  final DateTime createdTime;
  @override
  final DateTime lastEditedTime;
  @override
  final User createdBy;
  @override
  final User lastEditedBy;
  @override
  final bool hasChildren;
  @override
  final bool archived;
  @override
  final bool inTrash;
  final BlockContent content;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NumberedListItemBlockCopyWith<_NumberedListItemBlock> get copyWith =>
      __$NumberedListItemBlockCopyWithImpl<_NumberedListItemBlock>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NumberedListItemBlock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastEditedBy, lastEditedBy) ||
                other.lastEditedBy == lastEditedBy) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.inTrash, inTrash) || other.inTrash == inTrash) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parent,
      createdTime,
      lastEditedTime,
      createdBy,
      lastEditedBy,
      hasChildren,
      archived,
      inTrash,
      content);

  @override
  String toString() {
    return 'Block.numberedListItem(id: $id, parent: $parent, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, hasChildren: $hasChildren, archived: $archived, inTrash: $inTrash, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$NumberedListItemBlockCopyWith<$Res>
    implements $BlockCopyWith<$Res> {
  factory _$NumberedListItemBlockCopyWith(_NumberedListItemBlock value,
          $Res Function(_NumberedListItemBlock) _then) =
      __$NumberedListItemBlockCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      Parent parent,
      DateTime createdTime,
      DateTime lastEditedTime,
      User createdBy,
      User lastEditedBy,
      bool hasChildren,
      bool archived,
      bool inTrash,
      BlockContent content});

  @override
  $ParentCopyWith<$Res> get parent;
  @override
  $UserCopyWith<$Res> get createdBy;
  @override
  $UserCopyWith<$Res> get lastEditedBy;
  $BlockContentCopyWith<$Res> get content;
}

/// @nodoc
class __$NumberedListItemBlockCopyWithImpl<$Res>
    implements _$NumberedListItemBlockCopyWith<$Res> {
  __$NumberedListItemBlockCopyWithImpl(this._self, this._then);

  final _NumberedListItemBlock _self;
  final $Res Function(_NumberedListItemBlock) _then;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? parent = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? createdBy = null,
    Object? lastEditedBy = null,
    Object? hasChildren = null,
    Object? archived = null,
    Object? inTrash = null,
    Object? content = null,
  }) {
    return _then(_NumberedListItemBlock(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parent: null == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
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
      hasChildren: null == hasChildren
          ? _self.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool,
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _self.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as BlockContent,
    ));
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_self.parent, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_self.lastEditedBy, (value) {
      return _then(_self.copyWith(lastEditedBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlockContentCopyWith<$Res> get content {
    return $BlockContentCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

/// @nodoc

class _ToDoBlock extends Block {
  const _ToDoBlock(
      {required this.id,
      required this.parent,
      required this.createdTime,
      required this.lastEditedTime,
      required this.createdBy,
      required this.lastEditedBy,
      required this.hasChildren,
      required this.archived,
      required this.inTrash,
      required this.content})
      : super._();

  @override
  final String id;
  @override
  final Parent parent;
  @override
  final DateTime createdTime;
  @override
  final DateTime lastEditedTime;
  @override
  final User createdBy;
  @override
  final User lastEditedBy;
  @override
  final bool hasChildren;
  @override
  final bool archived;
  @override
  final bool inTrash;
  final ToDoContent content;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ToDoBlockCopyWith<_ToDoBlock> get copyWith =>
      __$ToDoBlockCopyWithImpl<_ToDoBlock>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToDoBlock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastEditedBy, lastEditedBy) ||
                other.lastEditedBy == lastEditedBy) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.inTrash, inTrash) || other.inTrash == inTrash) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parent,
      createdTime,
      lastEditedTime,
      createdBy,
      lastEditedBy,
      hasChildren,
      archived,
      inTrash,
      content);

  @override
  String toString() {
    return 'Block.toDo(id: $id, parent: $parent, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, hasChildren: $hasChildren, archived: $archived, inTrash: $inTrash, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$ToDoBlockCopyWith<$Res> implements $BlockCopyWith<$Res> {
  factory _$ToDoBlockCopyWith(
          _ToDoBlock value, $Res Function(_ToDoBlock) _then) =
      __$ToDoBlockCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      Parent parent,
      DateTime createdTime,
      DateTime lastEditedTime,
      User createdBy,
      User lastEditedBy,
      bool hasChildren,
      bool archived,
      bool inTrash,
      ToDoContent content});

  @override
  $ParentCopyWith<$Res> get parent;
  @override
  $UserCopyWith<$Res> get createdBy;
  @override
  $UserCopyWith<$Res> get lastEditedBy;
  $ToDoContentCopyWith<$Res> get content;
}

/// @nodoc
class __$ToDoBlockCopyWithImpl<$Res> implements _$ToDoBlockCopyWith<$Res> {
  __$ToDoBlockCopyWithImpl(this._self, this._then);

  final _ToDoBlock _self;
  final $Res Function(_ToDoBlock) _then;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? parent = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? createdBy = null,
    Object? lastEditedBy = null,
    Object? hasChildren = null,
    Object? archived = null,
    Object? inTrash = null,
    Object? content = null,
  }) {
    return _then(_ToDoBlock(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parent: null == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
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
      hasChildren: null == hasChildren
          ? _self.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool,
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _self.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as ToDoContent,
    ));
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_self.parent, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_self.lastEditedBy, (value) {
      return _then(_self.copyWith(lastEditedBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ToDoContentCopyWith<$Res> get content {
    return $ToDoContentCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

/// @nodoc

class _ToggleBlock extends Block {
  const _ToggleBlock(
      {required this.id,
      required this.parent,
      required this.createdTime,
      required this.lastEditedTime,
      required this.createdBy,
      required this.lastEditedBy,
      required this.hasChildren,
      required this.archived,
      required this.inTrash,
      required this.content})
      : super._();

  @override
  final String id;
  @override
  final Parent parent;
  @override
  final DateTime createdTime;
  @override
  final DateTime lastEditedTime;
  @override
  final User createdBy;
  @override
  final User lastEditedBy;
  @override
  final bool hasChildren;
  @override
  final bool archived;
  @override
  final bool inTrash;
  final BlockContent content;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ToggleBlockCopyWith<_ToggleBlock> get copyWith =>
      __$ToggleBlockCopyWithImpl<_ToggleBlock>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToggleBlock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastEditedBy, lastEditedBy) ||
                other.lastEditedBy == lastEditedBy) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.inTrash, inTrash) || other.inTrash == inTrash) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parent,
      createdTime,
      lastEditedTime,
      createdBy,
      lastEditedBy,
      hasChildren,
      archived,
      inTrash,
      content);

  @override
  String toString() {
    return 'Block.toggle(id: $id, parent: $parent, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, hasChildren: $hasChildren, archived: $archived, inTrash: $inTrash, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$ToggleBlockCopyWith<$Res>
    implements $BlockCopyWith<$Res> {
  factory _$ToggleBlockCopyWith(
          _ToggleBlock value, $Res Function(_ToggleBlock) _then) =
      __$ToggleBlockCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      Parent parent,
      DateTime createdTime,
      DateTime lastEditedTime,
      User createdBy,
      User lastEditedBy,
      bool hasChildren,
      bool archived,
      bool inTrash,
      BlockContent content});

  @override
  $ParentCopyWith<$Res> get parent;
  @override
  $UserCopyWith<$Res> get createdBy;
  @override
  $UserCopyWith<$Res> get lastEditedBy;
  $BlockContentCopyWith<$Res> get content;
}

/// @nodoc
class __$ToggleBlockCopyWithImpl<$Res> implements _$ToggleBlockCopyWith<$Res> {
  __$ToggleBlockCopyWithImpl(this._self, this._then);

  final _ToggleBlock _self;
  final $Res Function(_ToggleBlock) _then;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? parent = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? createdBy = null,
    Object? lastEditedBy = null,
    Object? hasChildren = null,
    Object? archived = null,
    Object? inTrash = null,
    Object? content = null,
  }) {
    return _then(_ToggleBlock(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parent: null == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
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
      hasChildren: null == hasChildren
          ? _self.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool,
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _self.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as BlockContent,
    ));
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_self.parent, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_self.lastEditedBy, (value) {
      return _then(_self.copyWith(lastEditedBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlockContentCopyWith<$Res> get content {
    return $BlockContentCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

/// @nodoc

class _CodeBlock extends Block {
  const _CodeBlock(
      {required this.id,
      required this.parent,
      required this.createdTime,
      required this.lastEditedTime,
      required this.createdBy,
      required this.lastEditedBy,
      required this.hasChildren,
      required this.archived,
      required this.inTrash,
      required this.content})
      : super._();

  @override
  final String id;
  @override
  final Parent parent;
  @override
  final DateTime createdTime;
  @override
  final DateTime lastEditedTime;
  @override
  final User createdBy;
  @override
  final User lastEditedBy;
  @override
  final bool hasChildren;
  @override
  final bool archived;
  @override
  final bool inTrash;
  final CodeContent content;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CodeBlockCopyWith<_CodeBlock> get copyWith =>
      __$CodeBlockCopyWithImpl<_CodeBlock>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CodeBlock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastEditedBy, lastEditedBy) ||
                other.lastEditedBy == lastEditedBy) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.inTrash, inTrash) || other.inTrash == inTrash) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parent,
      createdTime,
      lastEditedTime,
      createdBy,
      lastEditedBy,
      hasChildren,
      archived,
      inTrash,
      content);

  @override
  String toString() {
    return 'Block.code(id: $id, parent: $parent, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, hasChildren: $hasChildren, archived: $archived, inTrash: $inTrash, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$CodeBlockCopyWith<$Res> implements $BlockCopyWith<$Res> {
  factory _$CodeBlockCopyWith(
          _CodeBlock value, $Res Function(_CodeBlock) _then) =
      __$CodeBlockCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      Parent parent,
      DateTime createdTime,
      DateTime lastEditedTime,
      User createdBy,
      User lastEditedBy,
      bool hasChildren,
      bool archived,
      bool inTrash,
      CodeContent content});

  @override
  $ParentCopyWith<$Res> get parent;
  @override
  $UserCopyWith<$Res> get createdBy;
  @override
  $UserCopyWith<$Res> get lastEditedBy;
  $CodeContentCopyWith<$Res> get content;
}

/// @nodoc
class __$CodeBlockCopyWithImpl<$Res> implements _$CodeBlockCopyWith<$Res> {
  __$CodeBlockCopyWithImpl(this._self, this._then);

  final _CodeBlock _self;
  final $Res Function(_CodeBlock) _then;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? parent = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? createdBy = null,
    Object? lastEditedBy = null,
    Object? hasChildren = null,
    Object? archived = null,
    Object? inTrash = null,
    Object? content = null,
  }) {
    return _then(_CodeBlock(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parent: null == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
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
      hasChildren: null == hasChildren
          ? _self.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool,
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _self.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as CodeContent,
    ));
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_self.parent, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_self.lastEditedBy, (value) {
      return _then(_self.copyWith(lastEditedBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeContentCopyWith<$Res> get content {
    return $CodeContentCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

/// @nodoc

class _QuoteBlock extends Block {
  const _QuoteBlock(
      {required this.id,
      required this.parent,
      required this.createdTime,
      required this.lastEditedTime,
      required this.createdBy,
      required this.lastEditedBy,
      required this.hasChildren,
      required this.archived,
      required this.inTrash,
      required this.content})
      : super._();

  @override
  final String id;
  @override
  final Parent parent;
  @override
  final DateTime createdTime;
  @override
  final DateTime lastEditedTime;
  @override
  final User createdBy;
  @override
  final User lastEditedBy;
  @override
  final bool hasChildren;
  @override
  final bool archived;
  @override
  final bool inTrash;
  final BlockContent content;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QuoteBlockCopyWith<_QuoteBlock> get copyWith =>
      __$QuoteBlockCopyWithImpl<_QuoteBlock>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuoteBlock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastEditedBy, lastEditedBy) ||
                other.lastEditedBy == lastEditedBy) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.inTrash, inTrash) || other.inTrash == inTrash) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parent,
      createdTime,
      lastEditedTime,
      createdBy,
      lastEditedBy,
      hasChildren,
      archived,
      inTrash,
      content);

  @override
  String toString() {
    return 'Block.quote(id: $id, parent: $parent, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, hasChildren: $hasChildren, archived: $archived, inTrash: $inTrash, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$QuoteBlockCopyWith<$Res>
    implements $BlockCopyWith<$Res> {
  factory _$QuoteBlockCopyWith(
          _QuoteBlock value, $Res Function(_QuoteBlock) _then) =
      __$QuoteBlockCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      Parent parent,
      DateTime createdTime,
      DateTime lastEditedTime,
      User createdBy,
      User lastEditedBy,
      bool hasChildren,
      bool archived,
      bool inTrash,
      BlockContent content});

  @override
  $ParentCopyWith<$Res> get parent;
  @override
  $UserCopyWith<$Res> get createdBy;
  @override
  $UserCopyWith<$Res> get lastEditedBy;
  $BlockContentCopyWith<$Res> get content;
}

/// @nodoc
class __$QuoteBlockCopyWithImpl<$Res> implements _$QuoteBlockCopyWith<$Res> {
  __$QuoteBlockCopyWithImpl(this._self, this._then);

  final _QuoteBlock _self;
  final $Res Function(_QuoteBlock) _then;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? parent = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? createdBy = null,
    Object? lastEditedBy = null,
    Object? hasChildren = null,
    Object? archived = null,
    Object? inTrash = null,
    Object? content = null,
  }) {
    return _then(_QuoteBlock(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parent: null == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
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
      hasChildren: null == hasChildren
          ? _self.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool,
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _self.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as BlockContent,
    ));
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_self.parent, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_self.lastEditedBy, (value) {
      return _then(_self.copyWith(lastEditedBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlockContentCopyWith<$Res> get content {
    return $BlockContentCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

/// @nodoc

class _DividerBlock extends Block {
  const _DividerBlock(
      {required this.id,
      required this.parent,
      required this.createdTime,
      required this.lastEditedTime,
      required this.createdBy,
      required this.lastEditedBy,
      required this.hasChildren,
      required this.archived,
      required this.inTrash})
      : super._();

  @override
  final String id;
  @override
  final Parent parent;
  @override
  final DateTime createdTime;
  @override
  final DateTime lastEditedTime;
  @override
  final User createdBy;
  @override
  final User lastEditedBy;
  @override
  final bool hasChildren;
  @override
  final bool archived;
  @override
  final bool inTrash;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DividerBlockCopyWith<_DividerBlock> get copyWith =>
      __$DividerBlockCopyWithImpl<_DividerBlock>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DividerBlock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastEditedBy, lastEditedBy) ||
                other.lastEditedBy == lastEditedBy) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.inTrash, inTrash) || other.inTrash == inTrash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, parent, createdTime,
      lastEditedTime, createdBy, lastEditedBy, hasChildren, archived, inTrash);

  @override
  String toString() {
    return 'Block.divider(id: $id, parent: $parent, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, hasChildren: $hasChildren, archived: $archived, inTrash: $inTrash)';
  }
}

/// @nodoc
abstract mixin class _$DividerBlockCopyWith<$Res>
    implements $BlockCopyWith<$Res> {
  factory _$DividerBlockCopyWith(
          _DividerBlock value, $Res Function(_DividerBlock) _then) =
      __$DividerBlockCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      Parent parent,
      DateTime createdTime,
      DateTime lastEditedTime,
      User createdBy,
      User lastEditedBy,
      bool hasChildren,
      bool archived,
      bool inTrash});

  @override
  $ParentCopyWith<$Res> get parent;
  @override
  $UserCopyWith<$Res> get createdBy;
  @override
  $UserCopyWith<$Res> get lastEditedBy;
}

/// @nodoc
class __$DividerBlockCopyWithImpl<$Res>
    implements _$DividerBlockCopyWith<$Res> {
  __$DividerBlockCopyWithImpl(this._self, this._then);

  final _DividerBlock _self;
  final $Res Function(_DividerBlock) _then;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? parent = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? createdBy = null,
    Object? lastEditedBy = null,
    Object? hasChildren = null,
    Object? archived = null,
    Object? inTrash = null,
  }) {
    return _then(_DividerBlock(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parent: null == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
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
      hasChildren: null == hasChildren
          ? _self.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool,
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _self.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_self.parent, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_self.lastEditedBy, (value) {
      return _then(_self.copyWith(lastEditedBy: value));
    });
  }
}

/// @nodoc

class _UnsupportedBlock extends Block {
  const _UnsupportedBlock(
      {required this.id,
      required this.parent,
      required this.createdTime,
      required this.lastEditedTime,
      required this.createdBy,
      required this.lastEditedBy,
      required this.hasChildren,
      required this.archived,
      required this.inTrash})
      : super._();

  @override
  final String id;
  @override
  final Parent parent;
  @override
  final DateTime createdTime;
  @override
  final DateTime lastEditedTime;
  @override
  final User createdBy;
  @override
  final User lastEditedBy;
  @override
  final bool hasChildren;
  @override
  final bool archived;
  @override
  final bool inTrash;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnsupportedBlockCopyWith<_UnsupportedBlock> get copyWith =>
      __$UnsupportedBlockCopyWithImpl<_UnsupportedBlock>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnsupportedBlock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastEditedBy, lastEditedBy) ||
                other.lastEditedBy == lastEditedBy) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.inTrash, inTrash) || other.inTrash == inTrash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, parent, createdTime,
      lastEditedTime, createdBy, lastEditedBy, hasChildren, archived, inTrash);

  @override
  String toString() {
    return 'Block.unsupported(id: $id, parent: $parent, createdTime: $createdTime, lastEditedTime: $lastEditedTime, createdBy: $createdBy, lastEditedBy: $lastEditedBy, hasChildren: $hasChildren, archived: $archived, inTrash: $inTrash)';
  }
}

/// @nodoc
abstract mixin class _$UnsupportedBlockCopyWith<$Res>
    implements $BlockCopyWith<$Res> {
  factory _$UnsupportedBlockCopyWith(
          _UnsupportedBlock value, $Res Function(_UnsupportedBlock) _then) =
      __$UnsupportedBlockCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      Parent parent,
      DateTime createdTime,
      DateTime lastEditedTime,
      User createdBy,
      User lastEditedBy,
      bool hasChildren,
      bool archived,
      bool inTrash});

  @override
  $ParentCopyWith<$Res> get parent;
  @override
  $UserCopyWith<$Res> get createdBy;
  @override
  $UserCopyWith<$Res> get lastEditedBy;
}

/// @nodoc
class __$UnsupportedBlockCopyWithImpl<$Res>
    implements _$UnsupportedBlockCopyWith<$Res> {
  __$UnsupportedBlockCopyWithImpl(this._self, this._then);

  final _UnsupportedBlock _self;
  final $Res Function(_UnsupportedBlock) _then;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? parent = null,
    Object? createdTime = null,
    Object? lastEditedTime = null,
    Object? createdBy = null,
    Object? lastEditedBy = null,
    Object? hasChildren = null,
    Object? archived = null,
    Object? inTrash = null,
  }) {
    return _then(_UnsupportedBlock(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parent: null == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent,
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
      hasChildren: null == hasChildren
          ? _self.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool,
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      inTrash: null == inTrash
          ? _self.inTrash
          : inTrash // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_self.parent, (value) {
      return _then(_self.copyWith(parent: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_self.lastEditedBy, (value) {
      return _then(_self.copyWith(lastEditedBy: value));
    });
  }
}

// dart format on
