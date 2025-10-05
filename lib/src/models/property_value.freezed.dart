// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyValue _$PropertyValueFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'checkbox':
      return CheckboxProperty.fromJson(json);
    case 'richText':
      return RichTextProperty.fromJson(json);
    case 'title':
      return TitleProperty.fromJson(json);
    case 'number':
      return NumberProperty.fromJson(json);
    case 'select':
      return SelectProperty.fromJson(json);
    case 'multiSelect':
      return MultiSelectProperty.fromJson(json);
    case 'status':
      return StatusProperty.fromJson(json);
    case 'date':
      return DateProperty.fromJson(json);
    case 'people':
      return PeopleProperty.fromJson(json);
    case 'files':
      return FilesProperty.fromJson(json);
    case 'email':
      return EmailProperty.fromJson(json);
    case 'phoneNumber':
      return PhoneNumberProperty.fromJson(json);
    case 'url':
      return UrlProperty.fromJson(json);
    case 'createdTime':
      return CreatedTimeProperty.fromJson(json);
    case 'createdBy':
      return CreatedByProperty.fromJson(json);
    case 'lastEditedTime':
      return LastEditedTimeProperty.fromJson(json);
    case 'lastEditedBy':
      return LastEditedByProperty.fromJson(json);
    case 'formula':
      return FormulaProperty.fromJson(json);
    case 'relation':
      return RelationProperty.fromJson(json);
    case 'rollup':
      return RollupProperty.fromJson(json);
    case 'uniqueId':
      return UniqueIdProperty.fromJson(json);
    case 'verification':
      return VerificationProperty.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PropertyValue',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PropertyValue {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PropertyValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyValueCopyWith<PropertyValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyValueCopyWith<$Res> {
  factory $PropertyValueCopyWith(
          PropertyValue value, $Res Function(PropertyValue) then) =
      _$PropertyValueCopyWithImpl<$Res, PropertyValue>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$PropertyValueCopyWithImpl<$Res, $Val extends PropertyValue>
    implements $PropertyValueCopyWith<$Res> {
  _$PropertyValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckboxPropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$CheckboxPropertyImplCopyWith(_$CheckboxPropertyImpl value,
          $Res Function(_$CheckboxPropertyImpl) then) =
      __$$CheckboxPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool checkbox});
}

/// @nodoc
class __$$CheckboxPropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$CheckboxPropertyImpl>
    implements _$$CheckboxPropertyImplCopyWith<$Res> {
  __$$CheckboxPropertyImplCopyWithImpl(_$CheckboxPropertyImpl _value,
      $Res Function(_$CheckboxPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? checkbox = null,
  }) {
    return _then(_$CheckboxPropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      checkbox: null == checkbox
          ? _value.checkbox
          : checkbox // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckboxPropertyImpl implements CheckboxProperty {
  const _$CheckboxPropertyImpl(
      {required this.id, required this.checkbox, final String? $type})
      : $type = $type ?? 'checkbox';

  factory _$CheckboxPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckboxPropertyImplFromJson(json);

  @override
  final String id;
  @override
  final bool checkbox;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.checkbox(id: $id, checkbox: $checkbox)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckboxPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.checkbox, checkbox) ||
                other.checkbox == checkbox));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, checkbox);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckboxPropertyImplCopyWith<_$CheckboxPropertyImpl> get copyWith =>
      __$$CheckboxPropertyImplCopyWithImpl<_$CheckboxPropertyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return checkbox(id, this.checkbox);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return checkbox?.call(id, this.checkbox);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (checkbox != null) {
      return checkbox(id, this.checkbox);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return checkbox(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return checkbox?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (checkbox != null) {
      return checkbox(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckboxPropertyImplToJson(
      this,
    );
  }
}

abstract class CheckboxProperty implements PropertyValue {
  const factory CheckboxProperty(
      {required final String id,
      required final bool checkbox}) = _$CheckboxPropertyImpl;

  factory CheckboxProperty.fromJson(Map<String, dynamic> json) =
      _$CheckboxPropertyImpl.fromJson;

  @override
  String get id;
  bool get checkbox;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckboxPropertyImplCopyWith<_$CheckboxPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RichTextPropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$RichTextPropertyImplCopyWith(_$RichTextPropertyImpl value,
          $Res Function(_$RichTextPropertyImpl) then) =
      __$$RichTextPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<RichText> richText});
}

/// @nodoc
class __$$RichTextPropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$RichTextPropertyImpl>
    implements _$$RichTextPropertyImplCopyWith<$Res> {
  __$$RichTextPropertyImplCopyWithImpl(_$RichTextPropertyImpl _value,
      $Res Function(_$RichTextPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? richText = null,
  }) {
    return _then(_$RichTextPropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      richText: null == richText
          ? _value._richText
          : richText // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RichTextPropertyImpl implements RichTextProperty {
  const _$RichTextPropertyImpl(
      {required this.id,
      required final List<RichText> richText,
      final String? $type})
      : _richText = richText,
        $type = $type ?? 'richText';

  factory _$RichTextPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$RichTextPropertyImplFromJson(json);

  @override
  final String id;
  final List<RichText> _richText;
  @override
  List<RichText> get richText {
    if (_richText is EqualUnmodifiableListView) return _richText;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_richText);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.richText(id: $id, richText: $richText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RichTextPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._richText, _richText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_richText));

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RichTextPropertyImplCopyWith<_$RichTextPropertyImpl> get copyWith =>
      __$$RichTextPropertyImplCopyWithImpl<_$RichTextPropertyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return richText(id, this.richText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return richText?.call(id, this.richText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (richText != null) {
      return richText(id, this.richText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return richText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return richText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (richText != null) {
      return richText(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RichTextPropertyImplToJson(
      this,
    );
  }
}

abstract class RichTextProperty implements PropertyValue {
  const factory RichTextProperty(
      {required final String id,
      required final List<RichText> richText}) = _$RichTextPropertyImpl;

  factory RichTextProperty.fromJson(Map<String, dynamic> json) =
      _$RichTextPropertyImpl.fromJson;

  @override
  String get id;
  List<RichText> get richText;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RichTextPropertyImplCopyWith<_$RichTextPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TitlePropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$TitlePropertyImplCopyWith(
          _$TitlePropertyImpl value, $Res Function(_$TitlePropertyImpl) then) =
      __$$TitlePropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<RichText> title});
}

/// @nodoc
class __$$TitlePropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$TitlePropertyImpl>
    implements _$$TitlePropertyImplCopyWith<$Res> {
  __$$TitlePropertyImplCopyWithImpl(
      _$TitlePropertyImpl _value, $Res Function(_$TitlePropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$TitlePropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value._title
          : title // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TitlePropertyImpl implements TitleProperty {
  const _$TitlePropertyImpl(
      {required this.id,
      required final List<RichText> title,
      final String? $type})
      : _title = title,
        $type = $type ?? 'title';

  factory _$TitlePropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$TitlePropertyImplFromJson(json);

  @override
  final String id;
  final List<RichText> _title;
  @override
  List<RichText> get title {
    if (_title is EqualUnmodifiableListView) return _title;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_title);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.title(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitlePropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._title, _title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_title));

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TitlePropertyImplCopyWith<_$TitlePropertyImpl> get copyWith =>
      __$$TitlePropertyImplCopyWithImpl<_$TitlePropertyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return title(id, this.title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return title?.call(id, this.title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(id, this.title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return title(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return title?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TitlePropertyImplToJson(
      this,
    );
  }
}

abstract class TitleProperty implements PropertyValue {
  const factory TitleProperty(
      {required final String id,
      required final List<RichText> title}) = _$TitlePropertyImpl;

  factory TitleProperty.fromJson(Map<String, dynamic> json) =
      _$TitlePropertyImpl.fromJson;

  @override
  String get id;
  List<RichText> get title;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TitlePropertyImplCopyWith<_$TitlePropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumberPropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$NumberPropertyImplCopyWith(_$NumberPropertyImpl value,
          $Res Function(_$NumberPropertyImpl) then) =
      __$$NumberPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, double? number});
}

/// @nodoc
class __$$NumberPropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$NumberPropertyImpl>
    implements _$$NumberPropertyImplCopyWith<$Res> {
  __$$NumberPropertyImplCopyWithImpl(
      _$NumberPropertyImpl _value, $Res Function(_$NumberPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = freezed,
  }) {
    return _then(_$NumberPropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NumberPropertyImpl implements NumberProperty {
  const _$NumberPropertyImpl(
      {required this.id, required this.number, final String? $type})
      : $type = $type ?? 'number';

  factory _$NumberPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$NumberPropertyImplFromJson(json);

  @override
  final String id;
  @override
  final double? number;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.number(id: $id, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, number);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberPropertyImplCopyWith<_$NumberPropertyImpl> get copyWith =>
      __$$NumberPropertyImplCopyWithImpl<_$NumberPropertyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return number(id, this.number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return number?.call(id, this.number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(id, this.number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return number(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return number?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NumberPropertyImplToJson(
      this,
    );
  }
}

abstract class NumberProperty implements PropertyValue {
  const factory NumberProperty(
      {required final String id,
      required final double? number}) = _$NumberPropertyImpl;

  factory NumberProperty.fromJson(Map<String, dynamic> json) =
      _$NumberPropertyImpl.fromJson;

  @override
  String get id;
  double? get number;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NumberPropertyImplCopyWith<_$NumberPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectPropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$SelectPropertyImplCopyWith(_$SelectPropertyImpl value,
          $Res Function(_$SelectPropertyImpl) then) =
      __$$SelectPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, SelectOption? select});

  $SelectOptionCopyWith<$Res>? get select;
}

/// @nodoc
class __$$SelectPropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$SelectPropertyImpl>
    implements _$$SelectPropertyImplCopyWith<$Res> {
  __$$SelectPropertyImplCopyWithImpl(
      _$SelectPropertyImpl _value, $Res Function(_$SelectPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? select = freezed,
  }) {
    return _then(_$SelectPropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      select: freezed == select
          ? _value.select
          : select // ignore: cast_nullable_to_non_nullable
              as SelectOption?,
    ));
  }

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SelectOptionCopyWith<$Res>? get select {
    if (_value.select == null) {
      return null;
    }

    return $SelectOptionCopyWith<$Res>(_value.select!, (value) {
      return _then(_value.copyWith(select: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectPropertyImpl implements SelectProperty {
  const _$SelectPropertyImpl(
      {required this.id, required this.select, final String? $type})
      : $type = $type ?? 'select';

  factory _$SelectPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectPropertyImplFromJson(json);

  @override
  final String id;
  @override
  final SelectOption? select;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.select(id: $id, select: $select)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.select, select) || other.select == select));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, select);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectPropertyImplCopyWith<_$SelectPropertyImpl> get copyWith =>
      __$$SelectPropertyImplCopyWithImpl<_$SelectPropertyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return select(id, this.select);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return select?.call(id, this.select);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(id, this.select);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectPropertyImplToJson(
      this,
    );
  }
}

abstract class SelectProperty implements PropertyValue {
  const factory SelectProperty(
      {required final String id,
      required final SelectOption? select}) = _$SelectPropertyImpl;

  factory SelectProperty.fromJson(Map<String, dynamic> json) =
      _$SelectPropertyImpl.fromJson;

  @override
  String get id;
  SelectOption? get select;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectPropertyImplCopyWith<_$SelectPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultiSelectPropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$MultiSelectPropertyImplCopyWith(_$MultiSelectPropertyImpl value,
          $Res Function(_$MultiSelectPropertyImpl) then) =
      __$$MultiSelectPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<SelectOption> multiSelect});
}

/// @nodoc
class __$$MultiSelectPropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$MultiSelectPropertyImpl>
    implements _$$MultiSelectPropertyImplCopyWith<$Res> {
  __$$MultiSelectPropertyImplCopyWithImpl(_$MultiSelectPropertyImpl _value,
      $Res Function(_$MultiSelectPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? multiSelect = null,
  }) {
    return _then(_$MultiSelectPropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      multiSelect: null == multiSelect
          ? _value._multiSelect
          : multiSelect // ignore: cast_nullable_to_non_nullable
              as List<SelectOption>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultiSelectPropertyImpl implements MultiSelectProperty {
  const _$MultiSelectPropertyImpl(
      {required this.id,
      required final List<SelectOption> multiSelect,
      final String? $type})
      : _multiSelect = multiSelect,
        $type = $type ?? 'multiSelect';

  factory _$MultiSelectPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultiSelectPropertyImplFromJson(json);

  @override
  final String id;
  final List<SelectOption> _multiSelect;
  @override
  List<SelectOption> get multiSelect {
    if (_multiSelect is EqualUnmodifiableListView) return _multiSelect;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_multiSelect);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.multiSelect(id: $id, multiSelect: $multiSelect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiSelectPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._multiSelect, _multiSelect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_multiSelect));

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiSelectPropertyImplCopyWith<_$MultiSelectPropertyImpl> get copyWith =>
      __$$MultiSelectPropertyImplCopyWithImpl<_$MultiSelectPropertyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return multiSelect(id, this.multiSelect);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return multiSelect?.call(id, this.multiSelect);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (multiSelect != null) {
      return multiSelect(id, this.multiSelect);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return multiSelect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return multiSelect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (multiSelect != null) {
      return multiSelect(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MultiSelectPropertyImplToJson(
      this,
    );
  }
}

abstract class MultiSelectProperty implements PropertyValue {
  const factory MultiSelectProperty(
          {required final String id,
          required final List<SelectOption> multiSelect}) =
      _$MultiSelectPropertyImpl;

  factory MultiSelectProperty.fromJson(Map<String, dynamic> json) =
      _$MultiSelectPropertyImpl.fromJson;

  @override
  String get id;
  List<SelectOption> get multiSelect;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultiSelectPropertyImplCopyWith<_$MultiSelectPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusPropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$StatusPropertyImplCopyWith(_$StatusPropertyImpl value,
          $Res Function(_$StatusPropertyImpl) then) =
      __$$StatusPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, StatusOption? status});

  $StatusOptionCopyWith<$Res>? get status;
}

/// @nodoc
class __$$StatusPropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$StatusPropertyImpl>
    implements _$$StatusPropertyImplCopyWith<$Res> {
  __$$StatusPropertyImplCopyWithImpl(
      _$StatusPropertyImpl _value, $Res Function(_$StatusPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = freezed,
  }) {
    return _then(_$StatusPropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusOption?,
    ));
  }

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusOptionCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusOptionCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusPropertyImpl implements StatusProperty {
  const _$StatusPropertyImpl(
      {required this.id, required this.status, final String? $type})
      : $type = $type ?? 'status';

  factory _$StatusPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusPropertyImplFromJson(json);

  @override
  final String id;
  @override
  final StatusOption? status;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.status(id: $id, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusPropertyImplCopyWith<_$StatusPropertyImpl> get copyWith =>
      __$$StatusPropertyImplCopyWithImpl<_$StatusPropertyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return status(id, this.status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return status?.call(id, this.status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(id, this.status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusPropertyImplToJson(
      this,
    );
  }
}

abstract class StatusProperty implements PropertyValue {
  const factory StatusProperty(
      {required final String id,
      required final StatusOption? status}) = _$StatusPropertyImpl;

  factory StatusProperty.fromJson(Map<String, dynamic> json) =
      _$StatusPropertyImpl.fromJson;

  @override
  String get id;
  StatusOption? get status;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusPropertyImplCopyWith<_$StatusPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DatePropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$DatePropertyImplCopyWith(
          _$DatePropertyImpl value, $Res Function(_$DatePropertyImpl) then) =
      __$$DatePropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DateValue? date});

  $DateValueCopyWith<$Res>? get date;
}

/// @nodoc
class __$$DatePropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$DatePropertyImpl>
    implements _$$DatePropertyImplCopyWith<$Res> {
  __$$DatePropertyImplCopyWithImpl(
      _$DatePropertyImpl _value, $Res Function(_$DatePropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = freezed,
  }) {
    return _then(_$DatePropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateValue?,
    ));
  }

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateValueCopyWith<$Res>? get date {
    if (_value.date == null) {
      return null;
    }

    return $DateValueCopyWith<$Res>(_value.date!, (value) {
      return _then(_value.copyWith(date: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$DatePropertyImpl implements DateProperty {
  const _$DatePropertyImpl(
      {required this.id, required this.date, final String? $type})
      : $type = $type ?? 'date';

  factory _$DatePropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatePropertyImplFromJson(json);

  @override
  final String id;
  @override
  final DateValue? date;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.date(id: $id, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatePropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, date);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatePropertyImplCopyWith<_$DatePropertyImpl> get copyWith =>
      __$$DatePropertyImplCopyWithImpl<_$DatePropertyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return date(id, this.date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return date?.call(id, this.date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(id, this.date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return date(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return date?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DatePropertyImplToJson(
      this,
    );
  }
}

abstract class DateProperty implements PropertyValue {
  const factory DateProperty(
      {required final String id,
      required final DateValue? date}) = _$DatePropertyImpl;

  factory DateProperty.fromJson(Map<String, dynamic> json) =
      _$DatePropertyImpl.fromJson;

  @override
  String get id;
  DateValue? get date;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatePropertyImplCopyWith<_$DatePropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PeoplePropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$PeoplePropertyImplCopyWith(_$PeoplePropertyImpl value,
          $Res Function(_$PeoplePropertyImpl) then) =
      __$$PeoplePropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<User> people});
}

/// @nodoc
class __$$PeoplePropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$PeoplePropertyImpl>
    implements _$$PeoplePropertyImplCopyWith<$Res> {
  __$$PeoplePropertyImplCopyWithImpl(
      _$PeoplePropertyImpl _value, $Res Function(_$PeoplePropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? people = null,
  }) {
    return _then(_$PeoplePropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      people: null == people
          ? _value._people
          : people // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeoplePropertyImpl implements PeopleProperty {
  const _$PeoplePropertyImpl(
      {required this.id, required final List<User> people, final String? $type})
      : _people = people,
        $type = $type ?? 'people';

  factory _$PeoplePropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeoplePropertyImplFromJson(json);

  @override
  final String id;
  final List<User> _people;
  @override
  List<User> get people {
    if (_people is EqualUnmodifiableListView) return _people;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_people);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.people(id: $id, people: $people)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeoplePropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._people, _people));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_people));

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeoplePropertyImplCopyWith<_$PeoplePropertyImpl> get copyWith =>
      __$$PeoplePropertyImplCopyWithImpl<_$PeoplePropertyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return people(id, this.people);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return people?.call(id, this.people);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (people != null) {
      return people(id, this.people);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return people(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return people?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (people != null) {
      return people(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PeoplePropertyImplToJson(
      this,
    );
  }
}

abstract class PeopleProperty implements PropertyValue {
  const factory PeopleProperty(
      {required final String id,
      required final List<User> people}) = _$PeoplePropertyImpl;

  factory PeopleProperty.fromJson(Map<String, dynamic> json) =
      _$PeoplePropertyImpl.fromJson;

  @override
  String get id;
  List<User> get people;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeoplePropertyImplCopyWith<_$PeoplePropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilesPropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$FilesPropertyImplCopyWith(
          _$FilesPropertyImpl value, $Res Function(_$FilesPropertyImpl) then) =
      __$$FilesPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<NotionFile> files});
}

/// @nodoc
class __$$FilesPropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$FilesPropertyImpl>
    implements _$$FilesPropertyImplCopyWith<$Res> {
  __$$FilesPropertyImplCopyWithImpl(
      _$FilesPropertyImpl _value, $Res Function(_$FilesPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? files = null,
  }) {
    return _then(_$FilesPropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<NotionFile>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilesPropertyImpl implements FilesProperty {
  const _$FilesPropertyImpl(
      {required this.id,
      required final List<NotionFile> files,
      final String? $type})
      : _files = files,
        $type = $type ?? 'files';

  factory _$FilesPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilesPropertyImplFromJson(json);

  @override
  final String id;
  final List<NotionFile> _files;
  @override
  List<NotionFile> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.files(id: $id, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilesPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_files));

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilesPropertyImplCopyWith<_$FilesPropertyImpl> get copyWith =>
      __$$FilesPropertyImplCopyWithImpl<_$FilesPropertyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return files(id, this.files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return files?.call(id, this.files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (files != null) {
      return files(id, this.files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return files(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return files?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (files != null) {
      return files(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FilesPropertyImplToJson(
      this,
    );
  }
}

abstract class FilesProperty implements PropertyValue {
  const factory FilesProperty(
      {required final String id,
      required final List<NotionFile> files}) = _$FilesPropertyImpl;

  factory FilesProperty.fromJson(Map<String, dynamic> json) =
      _$FilesPropertyImpl.fromJson;

  @override
  String get id;
  List<NotionFile> get files;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilesPropertyImplCopyWith<_$FilesPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailPropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$EmailPropertyImplCopyWith(
          _$EmailPropertyImpl value, $Res Function(_$EmailPropertyImpl) then) =
      __$$EmailPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? email});
}

/// @nodoc
class __$$EmailPropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$EmailPropertyImpl>
    implements _$$EmailPropertyImplCopyWith<$Res> {
  __$$EmailPropertyImplCopyWithImpl(
      _$EmailPropertyImpl _value, $Res Function(_$EmailPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
  }) {
    return _then(_$EmailPropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailPropertyImpl implements EmailProperty {
  const _$EmailPropertyImpl(
      {required this.id, required this.email, final String? $type})
      : $type = $type ?? 'email';

  factory _$EmailPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailPropertyImplFromJson(json);

  @override
  final String id;
  @override
  final String? email;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.email(id: $id, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailPropertyImplCopyWith<_$EmailPropertyImpl> get copyWith =>
      __$$EmailPropertyImplCopyWithImpl<_$EmailPropertyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return email(id, this.email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return email?.call(id, this.email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email(id, this.email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return email(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return email?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailPropertyImplToJson(
      this,
    );
  }
}

abstract class EmailProperty implements PropertyValue {
  const factory EmailProperty(
      {required final String id,
      required final String? email}) = _$EmailPropertyImpl;

  factory EmailProperty.fromJson(Map<String, dynamic> json) =
      _$EmailPropertyImpl.fromJson;

  @override
  String get id;
  String? get email;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailPropertyImplCopyWith<_$EmailPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneNumberPropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$PhoneNumberPropertyImplCopyWith(_$PhoneNumberPropertyImpl value,
          $Res Function(_$PhoneNumberPropertyImpl) then) =
      __$$PhoneNumberPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? phoneNumber});
}

/// @nodoc
class __$$PhoneNumberPropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$PhoneNumberPropertyImpl>
    implements _$$PhoneNumberPropertyImplCopyWith<$Res> {
  __$$PhoneNumberPropertyImplCopyWithImpl(_$PhoneNumberPropertyImpl _value,
      $Res Function(_$PhoneNumberPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$PhoneNumberPropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhoneNumberPropertyImpl implements PhoneNumberProperty {
  const _$PhoneNumberPropertyImpl(
      {required this.id, required this.phoneNumber, final String? $type})
      : $type = $type ?? 'phoneNumber';

  factory _$PhoneNumberPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhoneNumberPropertyImplFromJson(json);

  @override
  final String id;
  @override
  final String? phoneNumber;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.phoneNumber(id: $id, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, phoneNumber);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberPropertyImplCopyWith<_$PhoneNumberPropertyImpl> get copyWith =>
      __$$PhoneNumberPropertyImplCopyWithImpl<_$PhoneNumberPropertyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return phoneNumber(id, this.phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return phoneNumber?.call(id, this.phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (phoneNumber != null) {
      return phoneNumber(id, this.phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return phoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return phoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (phoneNumber != null) {
      return phoneNumber(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PhoneNumberPropertyImplToJson(
      this,
    );
  }
}

abstract class PhoneNumberProperty implements PropertyValue {
  const factory PhoneNumberProperty(
      {required final String id,
      required final String? phoneNumber}) = _$PhoneNumberPropertyImpl;

  factory PhoneNumberProperty.fromJson(Map<String, dynamic> json) =
      _$PhoneNumberPropertyImpl.fromJson;

  @override
  String get id;
  String? get phoneNumber;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneNumberPropertyImplCopyWith<_$PhoneNumberPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UrlPropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$UrlPropertyImplCopyWith(
          _$UrlPropertyImpl value, $Res Function(_$UrlPropertyImpl) then) =
      __$$UrlPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? url});
}

/// @nodoc
class __$$UrlPropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$UrlPropertyImpl>
    implements _$$UrlPropertyImplCopyWith<$Res> {
  __$$UrlPropertyImplCopyWithImpl(
      _$UrlPropertyImpl _value, $Res Function(_$UrlPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = freezed,
  }) {
    return _then(_$UrlPropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlPropertyImpl implements UrlProperty {
  const _$UrlPropertyImpl(
      {required this.id, required this.url, final String? $type})
      : $type = $type ?? 'url';

  factory _$UrlPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlPropertyImplFromJson(json);

  @override
  final String id;
  @override
  final String? url;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.url(id: $id, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlPropertyImplCopyWith<_$UrlPropertyImpl> get copyWith =>
      __$$UrlPropertyImplCopyWithImpl<_$UrlPropertyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return url(id, this.url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return url?.call(id, this.url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(id, this.url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return url(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return url?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlPropertyImplToJson(
      this,
    );
  }
}

abstract class UrlProperty implements PropertyValue {
  const factory UrlProperty(
      {required final String id,
      required final String? url}) = _$UrlPropertyImpl;

  factory UrlProperty.fromJson(Map<String, dynamic> json) =
      _$UrlPropertyImpl.fromJson;

  @override
  String get id;
  String? get url;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UrlPropertyImplCopyWith<_$UrlPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatedTimePropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$CreatedTimePropertyImplCopyWith(_$CreatedTimePropertyImpl value,
          $Res Function(_$CreatedTimePropertyImpl) then) =
      __$$CreatedTimePropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DateTime createdTime});
}

/// @nodoc
class __$$CreatedTimePropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$CreatedTimePropertyImpl>
    implements _$$CreatedTimePropertyImplCopyWith<$Res> {
  __$$CreatedTimePropertyImplCopyWithImpl(_$CreatedTimePropertyImpl _value,
      $Res Function(_$CreatedTimePropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdTime = null,
  }) {
    return _then(_$CreatedTimePropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatedTimePropertyImpl implements CreatedTimeProperty {
  const _$CreatedTimePropertyImpl(
      {required this.id, required this.createdTime, final String? $type})
      : $type = $type ?? 'createdTime';

  factory _$CreatedTimePropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatedTimePropertyImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdTime;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.createdTime(id: $id, createdTime: $createdTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedTimePropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdTime);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedTimePropertyImplCopyWith<_$CreatedTimePropertyImpl> get copyWith =>
      __$$CreatedTimePropertyImplCopyWithImpl<_$CreatedTimePropertyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return createdTime(id, this.createdTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return createdTime?.call(id, this.createdTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (createdTime != null) {
      return createdTime(id, this.createdTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return createdTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return createdTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (createdTime != null) {
      return createdTime(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatedTimePropertyImplToJson(
      this,
    );
  }
}

abstract class CreatedTimeProperty implements PropertyValue {
  const factory CreatedTimeProperty(
      {required final String id,
      required final DateTime createdTime}) = _$CreatedTimePropertyImpl;

  factory CreatedTimeProperty.fromJson(Map<String, dynamic> json) =
      _$CreatedTimePropertyImpl.fromJson;

  @override
  String get id;
  DateTime get createdTime;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedTimePropertyImplCopyWith<_$CreatedTimePropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatedByPropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$CreatedByPropertyImplCopyWith(_$CreatedByPropertyImpl value,
          $Res Function(_$CreatedByPropertyImpl) then) =
      __$$CreatedByPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, User createdBy});

  $UserCopyWith<$Res> get createdBy;
}

/// @nodoc
class __$$CreatedByPropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$CreatedByPropertyImpl>
    implements _$$CreatedByPropertyImplCopyWith<$Res> {
  __$$CreatedByPropertyImplCopyWithImpl(_$CreatedByPropertyImpl _value,
      $Res Function(_$CreatedByPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdBy = null,
  }) {
    return _then(_$CreatedByPropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_value.createdBy, (value) {
      return _then(_value.copyWith(createdBy: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatedByPropertyImpl implements CreatedByProperty {
  const _$CreatedByPropertyImpl(
      {required this.id, required this.createdBy, final String? $type})
      : $type = $type ?? 'createdBy';

  factory _$CreatedByPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatedByPropertyImplFromJson(json);

  @override
  final String id;
  @override
  final User createdBy;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.createdBy(id: $id, createdBy: $createdBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedByPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdBy);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedByPropertyImplCopyWith<_$CreatedByPropertyImpl> get copyWith =>
      __$$CreatedByPropertyImplCopyWithImpl<_$CreatedByPropertyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return createdBy(id, this.createdBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return createdBy?.call(id, this.createdBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (createdBy != null) {
      return createdBy(id, this.createdBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return createdBy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return createdBy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (createdBy != null) {
      return createdBy(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatedByPropertyImplToJson(
      this,
    );
  }
}

abstract class CreatedByProperty implements PropertyValue {
  const factory CreatedByProperty(
      {required final String id,
      required final User createdBy}) = _$CreatedByPropertyImpl;

  factory CreatedByProperty.fromJson(Map<String, dynamic> json) =
      _$CreatedByPropertyImpl.fromJson;

  @override
  String get id;
  User get createdBy;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedByPropertyImplCopyWith<_$CreatedByPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastEditedTimePropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$LastEditedTimePropertyImplCopyWith(
          _$LastEditedTimePropertyImpl value,
          $Res Function(_$LastEditedTimePropertyImpl) then) =
      __$$LastEditedTimePropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DateTime lastEditedTime});
}

/// @nodoc
class __$$LastEditedTimePropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$LastEditedTimePropertyImpl>
    implements _$$LastEditedTimePropertyImplCopyWith<$Res> {
  __$$LastEditedTimePropertyImplCopyWithImpl(
      _$LastEditedTimePropertyImpl _value,
      $Res Function(_$LastEditedTimePropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lastEditedTime = null,
  }) {
    return _then(_$LastEditedTimePropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastEditedTime: null == lastEditedTime
          ? _value.lastEditedTime
          : lastEditedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LastEditedTimePropertyImpl implements LastEditedTimeProperty {
  const _$LastEditedTimePropertyImpl(
      {required this.id, required this.lastEditedTime, final String? $type})
      : $type = $type ?? 'lastEditedTime';

  factory _$LastEditedTimePropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastEditedTimePropertyImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime lastEditedTime;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.lastEditedTime(id: $id, lastEditedTime: $lastEditedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastEditedTimePropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, lastEditedTime);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastEditedTimePropertyImplCopyWith<_$LastEditedTimePropertyImpl>
      get copyWith => __$$LastEditedTimePropertyImplCopyWithImpl<
          _$LastEditedTimePropertyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return lastEditedTime(id, this.lastEditedTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return lastEditedTime?.call(id, this.lastEditedTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (lastEditedTime != null) {
      return lastEditedTime(id, this.lastEditedTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return lastEditedTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return lastEditedTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (lastEditedTime != null) {
      return lastEditedTime(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LastEditedTimePropertyImplToJson(
      this,
    );
  }
}

abstract class LastEditedTimeProperty implements PropertyValue {
  const factory LastEditedTimeProperty(
      {required final String id,
      required final DateTime lastEditedTime}) = _$LastEditedTimePropertyImpl;

  factory LastEditedTimeProperty.fromJson(Map<String, dynamic> json) =
      _$LastEditedTimePropertyImpl.fromJson;

  @override
  String get id;
  DateTime get lastEditedTime;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastEditedTimePropertyImplCopyWith<_$LastEditedTimePropertyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastEditedByPropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$LastEditedByPropertyImplCopyWith(_$LastEditedByPropertyImpl value,
          $Res Function(_$LastEditedByPropertyImpl) then) =
      __$$LastEditedByPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, User lastEditedBy});

  $UserCopyWith<$Res> get lastEditedBy;
}

/// @nodoc
class __$$LastEditedByPropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$LastEditedByPropertyImpl>
    implements _$$LastEditedByPropertyImplCopyWith<$Res> {
  __$$LastEditedByPropertyImplCopyWithImpl(_$LastEditedByPropertyImpl _value,
      $Res Function(_$LastEditedByPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lastEditedBy = null,
  }) {
    return _then(_$LastEditedByPropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastEditedBy: null == lastEditedBy
          ? _value.lastEditedBy
          : lastEditedBy // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get lastEditedBy {
    return $UserCopyWith<$Res>(_value.lastEditedBy, (value) {
      return _then(_value.copyWith(lastEditedBy: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$LastEditedByPropertyImpl implements LastEditedByProperty {
  const _$LastEditedByPropertyImpl(
      {required this.id, required this.lastEditedBy, final String? $type})
      : $type = $type ?? 'lastEditedBy';

  factory _$LastEditedByPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastEditedByPropertyImplFromJson(json);

  @override
  final String id;
  @override
  final User lastEditedBy;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.lastEditedBy(id: $id, lastEditedBy: $lastEditedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastEditedByPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lastEditedBy, lastEditedBy) ||
                other.lastEditedBy == lastEditedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, lastEditedBy);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastEditedByPropertyImplCopyWith<_$LastEditedByPropertyImpl>
      get copyWith =>
          __$$LastEditedByPropertyImplCopyWithImpl<_$LastEditedByPropertyImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return lastEditedBy(id, this.lastEditedBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return lastEditedBy?.call(id, this.lastEditedBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (lastEditedBy != null) {
      return lastEditedBy(id, this.lastEditedBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return lastEditedBy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return lastEditedBy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (lastEditedBy != null) {
      return lastEditedBy(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LastEditedByPropertyImplToJson(
      this,
    );
  }
}

abstract class LastEditedByProperty implements PropertyValue {
  const factory LastEditedByProperty(
      {required final String id,
      required final User lastEditedBy}) = _$LastEditedByPropertyImpl;

  factory LastEditedByProperty.fromJson(Map<String, dynamic> json) =
      _$LastEditedByPropertyImpl.fromJson;

  @override
  String get id;
  User get lastEditedBy;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastEditedByPropertyImplCopyWith<_$LastEditedByPropertyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormulaPropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$FormulaPropertyImplCopyWith(_$FormulaPropertyImpl value,
          $Res Function(_$FormulaPropertyImpl) then) =
      __$$FormulaPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, FormulaValue formula});

  $FormulaValueCopyWith<$Res> get formula;
}

/// @nodoc
class __$$FormulaPropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$FormulaPropertyImpl>
    implements _$$FormulaPropertyImplCopyWith<$Res> {
  __$$FormulaPropertyImplCopyWithImpl(
      _$FormulaPropertyImpl _value, $Res Function(_$FormulaPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? formula = null,
  }) {
    return _then(_$FormulaPropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      formula: null == formula
          ? _value.formula
          : formula // ignore: cast_nullable_to_non_nullable
              as FormulaValue,
    ));
  }

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormulaValueCopyWith<$Res> get formula {
    return $FormulaValueCopyWith<$Res>(_value.formula, (value) {
      return _then(_value.copyWith(formula: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FormulaPropertyImpl implements FormulaProperty {
  const _$FormulaPropertyImpl(
      {required this.id, required this.formula, final String? $type})
      : $type = $type ?? 'formula';

  factory _$FormulaPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormulaPropertyImplFromJson(json);

  @override
  final String id;
  @override
  final FormulaValue formula;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.formula(id: $id, formula: $formula)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormulaPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.formula, formula) || other.formula == formula));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, formula);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormulaPropertyImplCopyWith<_$FormulaPropertyImpl> get copyWith =>
      __$$FormulaPropertyImplCopyWithImpl<_$FormulaPropertyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return formula(id, this.formula);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return formula?.call(id, this.formula);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (formula != null) {
      return formula(id, this.formula);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return formula(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return formula?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (formula != null) {
      return formula(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FormulaPropertyImplToJson(
      this,
    );
  }
}

abstract class FormulaProperty implements PropertyValue {
  const factory FormulaProperty(
      {required final String id,
      required final FormulaValue formula}) = _$FormulaPropertyImpl;

  factory FormulaProperty.fromJson(Map<String, dynamic> json) =
      _$FormulaPropertyImpl.fromJson;

  @override
  String get id;
  FormulaValue get formula;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormulaPropertyImplCopyWith<_$FormulaPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RelationPropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$RelationPropertyImplCopyWith(_$RelationPropertyImpl value,
          $Res Function(_$RelationPropertyImpl) then) =
      __$$RelationPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<RelationItem> relation});
}

/// @nodoc
class __$$RelationPropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$RelationPropertyImpl>
    implements _$$RelationPropertyImplCopyWith<$Res> {
  __$$RelationPropertyImplCopyWithImpl(_$RelationPropertyImpl _value,
      $Res Function(_$RelationPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? relation = null,
  }) {
    return _then(_$RelationPropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      relation: null == relation
          ? _value._relation
          : relation // ignore: cast_nullable_to_non_nullable
              as List<RelationItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RelationPropertyImpl implements RelationProperty {
  const _$RelationPropertyImpl(
      {required this.id,
      required final List<RelationItem> relation,
      final String? $type})
      : _relation = relation,
        $type = $type ?? 'relation';

  factory _$RelationPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelationPropertyImplFromJson(json);

  @override
  final String id;
  final List<RelationItem> _relation;
  @override
  List<RelationItem> get relation {
    if (_relation is EqualUnmodifiableListView) return _relation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relation);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.relation(id: $id, relation: $relation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelationPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._relation, _relation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_relation));

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RelationPropertyImplCopyWith<_$RelationPropertyImpl> get copyWith =>
      __$$RelationPropertyImplCopyWithImpl<_$RelationPropertyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return relation(id, this.relation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return relation?.call(id, this.relation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (relation != null) {
      return relation(id, this.relation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return relation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return relation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (relation != null) {
      return relation(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RelationPropertyImplToJson(
      this,
    );
  }
}

abstract class RelationProperty implements PropertyValue {
  const factory RelationProperty(
      {required final String id,
      required final List<RelationItem> relation}) = _$RelationPropertyImpl;

  factory RelationProperty.fromJson(Map<String, dynamic> json) =
      _$RelationPropertyImpl.fromJson;

  @override
  String get id;
  List<RelationItem> get relation;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RelationPropertyImplCopyWith<_$RelationPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RollupPropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$RollupPropertyImplCopyWith(_$RollupPropertyImpl value,
          $Res Function(_$RollupPropertyImpl) then) =
      __$$RollupPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, RollupValue rollup});

  $RollupValueCopyWith<$Res> get rollup;
}

/// @nodoc
class __$$RollupPropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$RollupPropertyImpl>
    implements _$$RollupPropertyImplCopyWith<$Res> {
  __$$RollupPropertyImplCopyWithImpl(
      _$RollupPropertyImpl _value, $Res Function(_$RollupPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rollup = null,
  }) {
    return _then(_$RollupPropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rollup: null == rollup
          ? _value.rollup
          : rollup // ignore: cast_nullable_to_non_nullable
              as RollupValue,
    ));
  }

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RollupValueCopyWith<$Res> get rollup {
    return $RollupValueCopyWith<$Res>(_value.rollup, (value) {
      return _then(_value.copyWith(rollup: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$RollupPropertyImpl implements RollupProperty {
  const _$RollupPropertyImpl(
      {required this.id, required this.rollup, final String? $type})
      : $type = $type ?? 'rollup';

  factory _$RollupPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$RollupPropertyImplFromJson(json);

  @override
  final String id;
  @override
  final RollupValue rollup;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.rollup(id: $id, rollup: $rollup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RollupPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rollup, rollup) || other.rollup == rollup));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, rollup);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RollupPropertyImplCopyWith<_$RollupPropertyImpl> get copyWith =>
      __$$RollupPropertyImplCopyWithImpl<_$RollupPropertyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return rollup(id, this.rollup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return rollup?.call(id, this.rollup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (rollup != null) {
      return rollup(id, this.rollup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return rollup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return rollup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (rollup != null) {
      return rollup(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RollupPropertyImplToJson(
      this,
    );
  }
}

abstract class RollupProperty implements PropertyValue {
  const factory RollupProperty(
      {required final String id,
      required final RollupValue rollup}) = _$RollupPropertyImpl;

  factory RollupProperty.fromJson(Map<String, dynamic> json) =
      _$RollupPropertyImpl.fromJson;

  @override
  String get id;
  RollupValue get rollup;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RollupPropertyImplCopyWith<_$RollupPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UniqueIdPropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$UniqueIdPropertyImplCopyWith(_$UniqueIdPropertyImpl value,
          $Res Function(_$UniqueIdPropertyImpl) then) =
      __$$UniqueIdPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, UniqueId uniqueId});

  $UniqueIdCopyWith<$Res> get uniqueId;
}

/// @nodoc
class __$$UniqueIdPropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$UniqueIdPropertyImpl>
    implements _$$UniqueIdPropertyImplCopyWith<$Res> {
  __$$UniqueIdPropertyImplCopyWithImpl(_$UniqueIdPropertyImpl _value,
      $Res Function(_$UniqueIdPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uniqueId = null,
  }) {
    return _then(_$UniqueIdPropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueIdCopyWith<$Res> get uniqueId {
    return $UniqueIdCopyWith<$Res>(_value.uniqueId, (value) {
      return _then(_value.copyWith(uniqueId: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UniqueIdPropertyImpl implements UniqueIdProperty {
  const _$UniqueIdPropertyImpl(
      {required this.id, required this.uniqueId, final String? $type})
      : $type = $type ?? 'uniqueId';

  factory _$UniqueIdPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$UniqueIdPropertyImplFromJson(json);

  @override
  final String id;
  @override
  final UniqueId uniqueId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.uniqueId(id: $id, uniqueId: $uniqueId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UniqueIdPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, uniqueId);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UniqueIdPropertyImplCopyWith<_$UniqueIdPropertyImpl> get copyWith =>
      __$$UniqueIdPropertyImplCopyWithImpl<_$UniqueIdPropertyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return uniqueId(id, this.uniqueId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return uniqueId?.call(id, this.uniqueId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (uniqueId != null) {
      return uniqueId(id, this.uniqueId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return uniqueId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return uniqueId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (uniqueId != null) {
      return uniqueId(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UniqueIdPropertyImplToJson(
      this,
    );
  }
}

abstract class UniqueIdProperty implements PropertyValue {
  const factory UniqueIdProperty(
      {required final String id,
      required final UniqueId uniqueId}) = _$UniqueIdPropertyImpl;

  factory UniqueIdProperty.fromJson(Map<String, dynamic> json) =
      _$UniqueIdPropertyImpl.fromJson;

  @override
  String get id;
  UniqueId get uniqueId;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UniqueIdPropertyImplCopyWith<_$UniqueIdPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerificationPropertyImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$VerificationPropertyImplCopyWith(_$VerificationPropertyImpl value,
          $Res Function(_$VerificationPropertyImpl) then) =
      __$$VerificationPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, VerificationValue? verification});

  $VerificationValueCopyWith<$Res>? get verification;
}

/// @nodoc
class __$$VerificationPropertyImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$VerificationPropertyImpl>
    implements _$$VerificationPropertyImplCopyWith<$Res> {
  __$$VerificationPropertyImplCopyWithImpl(_$VerificationPropertyImpl _value,
      $Res Function(_$VerificationPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? verification = freezed,
  }) {
    return _then(_$VerificationPropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      verification: freezed == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as VerificationValue?,
    ));
  }

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerificationValueCopyWith<$Res>? get verification {
    if (_value.verification == null) {
      return null;
    }

    return $VerificationValueCopyWith<$Res>(_value.verification!, (value) {
      return _then(_value.copyWith(verification: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationPropertyImpl implements VerificationProperty {
  const _$VerificationPropertyImpl(
      {required this.id, required this.verification, final String? $type})
      : $type = $type ?? 'verification';

  factory _$VerificationPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationPropertyImplFromJson(json);

  @override
  final String id;
  @override
  final VerificationValue? verification;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PropertyValue.verification(id: $id, verification: $verification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.verification, verification) ||
                other.verification == verification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, verification);

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationPropertyImplCopyWith<_$VerificationPropertyImpl>
      get copyWith =>
          __$$VerificationPropertyImplCopyWithImpl<_$VerificationPropertyImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool checkbox) checkbox,
    required TResult Function(String id, List<RichText> richText) richText,
    required TResult Function(String id, List<RichText> title) title,
    required TResult Function(String id, double? number) number,
    required TResult Function(String id, SelectOption? select) select,
    required TResult Function(String id, List<SelectOption> multiSelect)
        multiSelect,
    required TResult Function(String id, StatusOption? status) status,
    required TResult Function(String id, DateValue? date) date,
    required TResult Function(String id, List<User> people) people,
    required TResult Function(String id, List<NotionFile> files) files,
    required TResult Function(String id, String? email) email,
    required TResult Function(String id, String? phoneNumber) phoneNumber,
    required TResult Function(String id, String? url) url,
    required TResult Function(String id, DateTime createdTime) createdTime,
    required TResult Function(String id, User createdBy) createdBy,
    required TResult Function(String id, DateTime lastEditedTime)
        lastEditedTime,
    required TResult Function(String id, User lastEditedBy) lastEditedBy,
    required TResult Function(String id, FormulaValue formula) formula,
    required TResult Function(String id, List<RelationItem> relation) relation,
    required TResult Function(String id, RollupValue rollup) rollup,
    required TResult Function(String id, UniqueId uniqueId) uniqueId,
    required TResult Function(String id, VerificationValue? verification)
        verification,
  }) {
    return verification(id, this.verification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool checkbox)? checkbox,
    TResult? Function(String id, List<RichText> richText)? richText,
    TResult? Function(String id, List<RichText> title)? title,
    TResult? Function(String id, double? number)? number,
    TResult? Function(String id, SelectOption? select)? select,
    TResult? Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult? Function(String id, StatusOption? status)? status,
    TResult? Function(String id, DateValue? date)? date,
    TResult? Function(String id, List<User> people)? people,
    TResult? Function(String id, List<NotionFile> files)? files,
    TResult? Function(String id, String? email)? email,
    TResult? Function(String id, String? phoneNumber)? phoneNumber,
    TResult? Function(String id, String? url)? url,
    TResult? Function(String id, DateTime createdTime)? createdTime,
    TResult? Function(String id, User createdBy)? createdBy,
    TResult? Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult? Function(String id, User lastEditedBy)? lastEditedBy,
    TResult? Function(String id, FormulaValue formula)? formula,
    TResult? Function(String id, List<RelationItem> relation)? relation,
    TResult? Function(String id, RollupValue rollup)? rollup,
    TResult? Function(String id, UniqueId uniqueId)? uniqueId,
    TResult? Function(String id, VerificationValue? verification)? verification,
  }) {
    return verification?.call(id, this.verification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool checkbox)? checkbox,
    TResult Function(String id, List<RichText> richText)? richText,
    TResult Function(String id, List<RichText> title)? title,
    TResult Function(String id, double? number)? number,
    TResult Function(String id, SelectOption? select)? select,
    TResult Function(String id, List<SelectOption> multiSelect)? multiSelect,
    TResult Function(String id, StatusOption? status)? status,
    TResult Function(String id, DateValue? date)? date,
    TResult Function(String id, List<User> people)? people,
    TResult Function(String id, List<NotionFile> files)? files,
    TResult Function(String id, String? email)? email,
    TResult Function(String id, String? phoneNumber)? phoneNumber,
    TResult Function(String id, String? url)? url,
    TResult Function(String id, DateTime createdTime)? createdTime,
    TResult Function(String id, User createdBy)? createdBy,
    TResult Function(String id, DateTime lastEditedTime)? lastEditedTime,
    TResult Function(String id, User lastEditedBy)? lastEditedBy,
    TResult Function(String id, FormulaValue formula)? formula,
    TResult Function(String id, List<RelationItem> relation)? relation,
    TResult Function(String id, RollupValue rollup)? rollup,
    TResult Function(String id, UniqueId uniqueId)? uniqueId,
    TResult Function(String id, VerificationValue? verification)? verification,
    required TResult orElse(),
  }) {
    if (verification != null) {
      return verification(id, this.verification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckboxProperty value) checkbox,
    required TResult Function(RichTextProperty value) richText,
    required TResult Function(TitleProperty value) title,
    required TResult Function(NumberProperty value) number,
    required TResult Function(SelectProperty value) select,
    required TResult Function(MultiSelectProperty value) multiSelect,
    required TResult Function(StatusProperty value) status,
    required TResult Function(DateProperty value) date,
    required TResult Function(PeopleProperty value) people,
    required TResult Function(FilesProperty value) files,
    required TResult Function(EmailProperty value) email,
    required TResult Function(PhoneNumberProperty value) phoneNumber,
    required TResult Function(UrlProperty value) url,
    required TResult Function(CreatedTimeProperty value) createdTime,
    required TResult Function(CreatedByProperty value) createdBy,
    required TResult Function(LastEditedTimeProperty value) lastEditedTime,
    required TResult Function(LastEditedByProperty value) lastEditedBy,
    required TResult Function(FormulaProperty value) formula,
    required TResult Function(RelationProperty value) relation,
    required TResult Function(RollupProperty value) rollup,
    required TResult Function(UniqueIdProperty value) uniqueId,
    required TResult Function(VerificationProperty value) verification,
  }) {
    return verification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckboxProperty value)? checkbox,
    TResult? Function(RichTextProperty value)? richText,
    TResult? Function(TitleProperty value)? title,
    TResult? Function(NumberProperty value)? number,
    TResult? Function(SelectProperty value)? select,
    TResult? Function(MultiSelectProperty value)? multiSelect,
    TResult? Function(StatusProperty value)? status,
    TResult? Function(DateProperty value)? date,
    TResult? Function(PeopleProperty value)? people,
    TResult? Function(FilesProperty value)? files,
    TResult? Function(EmailProperty value)? email,
    TResult? Function(PhoneNumberProperty value)? phoneNumber,
    TResult? Function(UrlProperty value)? url,
    TResult? Function(CreatedTimeProperty value)? createdTime,
    TResult? Function(CreatedByProperty value)? createdBy,
    TResult? Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult? Function(LastEditedByProperty value)? lastEditedBy,
    TResult? Function(FormulaProperty value)? formula,
    TResult? Function(RelationProperty value)? relation,
    TResult? Function(RollupProperty value)? rollup,
    TResult? Function(UniqueIdProperty value)? uniqueId,
    TResult? Function(VerificationProperty value)? verification,
  }) {
    return verification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckboxProperty value)? checkbox,
    TResult Function(RichTextProperty value)? richText,
    TResult Function(TitleProperty value)? title,
    TResult Function(NumberProperty value)? number,
    TResult Function(SelectProperty value)? select,
    TResult Function(MultiSelectProperty value)? multiSelect,
    TResult Function(StatusProperty value)? status,
    TResult Function(DateProperty value)? date,
    TResult Function(PeopleProperty value)? people,
    TResult Function(FilesProperty value)? files,
    TResult Function(EmailProperty value)? email,
    TResult Function(PhoneNumberProperty value)? phoneNumber,
    TResult Function(UrlProperty value)? url,
    TResult Function(CreatedTimeProperty value)? createdTime,
    TResult Function(CreatedByProperty value)? createdBy,
    TResult Function(LastEditedTimeProperty value)? lastEditedTime,
    TResult Function(LastEditedByProperty value)? lastEditedBy,
    TResult Function(FormulaProperty value)? formula,
    TResult Function(RelationProperty value)? relation,
    TResult Function(RollupProperty value)? rollup,
    TResult Function(UniqueIdProperty value)? uniqueId,
    TResult Function(VerificationProperty value)? verification,
    required TResult orElse(),
  }) {
    if (verification != null) {
      return verification(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationPropertyImplToJson(
      this,
    );
  }
}

abstract class VerificationProperty implements PropertyValue {
  const factory VerificationProperty(
          {required final String id,
          required final VerificationValue? verification}) =
      _$VerificationPropertyImpl;

  factory VerificationProperty.fromJson(Map<String, dynamic> json) =
      _$VerificationPropertyImpl.fromJson;

  @override
  String get id;
  VerificationValue? get verification;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationPropertyImplCopyWith<_$VerificationPropertyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SelectOption _$SelectOptionFromJson(Map<String, dynamic> json) {
  return _SelectOption.fromJson(json);
}

/// @nodoc
mixin _$SelectOption {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  /// Serializes this SelectOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SelectOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectOptionCopyWith<SelectOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectOptionCopyWith<$Res> {
  factory $SelectOptionCopyWith(
          SelectOption value, $Res Function(SelectOption) then) =
      _$SelectOptionCopyWithImpl<$Res, SelectOption>;
  @useResult
  $Res call({String id, String name, String color});
}

/// @nodoc
class _$SelectOptionCopyWithImpl<$Res, $Val extends SelectOption>
    implements $SelectOptionCopyWith<$Res> {
  _$SelectOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
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
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectOptionImplCopyWith<$Res>
    implements $SelectOptionCopyWith<$Res> {
  factory _$$SelectOptionImplCopyWith(
          _$SelectOptionImpl value, $Res Function(_$SelectOptionImpl) then) =
      __$$SelectOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String color});
}

/// @nodoc
class __$$SelectOptionImplCopyWithImpl<$Res>
    extends _$SelectOptionCopyWithImpl<$Res, _$SelectOptionImpl>
    implements _$$SelectOptionImplCopyWith<$Res> {
  __$$SelectOptionImplCopyWithImpl(
      _$SelectOptionImpl _value, $Res Function(_$SelectOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
  }) {
    return _then(_$SelectOptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectOptionImpl implements _SelectOption {
  const _$SelectOptionImpl(
      {required this.id, required this.name, required this.color});

  factory _$SelectOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectOptionImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String color;

  @override
  String toString() {
    return 'SelectOption(id: $id, name: $name, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color);

  /// Create a copy of SelectOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectOptionImplCopyWith<_$SelectOptionImpl> get copyWith =>
      __$$SelectOptionImplCopyWithImpl<_$SelectOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectOptionImplToJson(
      this,
    );
  }
}

abstract class _SelectOption implements SelectOption {
  const factory _SelectOption(
      {required final String id,
      required final String name,
      required final String color}) = _$SelectOptionImpl;

  factory _SelectOption.fromJson(Map<String, dynamic> json) =
      _$SelectOptionImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get color;

  /// Create a copy of SelectOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectOptionImplCopyWith<_$SelectOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatusOption _$StatusOptionFromJson(Map<String, dynamic> json) {
  return _StatusOption.fromJson(json);
}

/// @nodoc
mixin _$StatusOption {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  /// Serializes this StatusOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatusOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatusOptionCopyWith<StatusOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusOptionCopyWith<$Res> {
  factory $StatusOptionCopyWith(
          StatusOption value, $Res Function(StatusOption) then) =
      _$StatusOptionCopyWithImpl<$Res, StatusOption>;
  @useResult
  $Res call({String id, String name, String color});
}

/// @nodoc
class _$StatusOptionCopyWithImpl<$Res, $Val extends StatusOption>
    implements $StatusOptionCopyWith<$Res> {
  _$StatusOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatusOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
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
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusOptionImplCopyWith<$Res>
    implements $StatusOptionCopyWith<$Res> {
  factory _$$StatusOptionImplCopyWith(
          _$StatusOptionImpl value, $Res Function(_$StatusOptionImpl) then) =
      __$$StatusOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String color});
}

/// @nodoc
class __$$StatusOptionImplCopyWithImpl<$Res>
    extends _$StatusOptionCopyWithImpl<$Res, _$StatusOptionImpl>
    implements _$$StatusOptionImplCopyWith<$Res> {
  __$$StatusOptionImplCopyWithImpl(
      _$StatusOptionImpl _value, $Res Function(_$StatusOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatusOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
  }) {
    return _then(_$StatusOptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusOptionImpl implements _StatusOption {
  const _$StatusOptionImpl(
      {required this.id, required this.name, required this.color});

  factory _$StatusOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusOptionImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String color;

  @override
  String toString() {
    return 'StatusOption(id: $id, name: $name, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color);

  /// Create a copy of StatusOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusOptionImplCopyWith<_$StatusOptionImpl> get copyWith =>
      __$$StatusOptionImplCopyWithImpl<_$StatusOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusOptionImplToJson(
      this,
    );
  }
}

abstract class _StatusOption implements StatusOption {
  const factory _StatusOption(
      {required final String id,
      required final String name,
      required final String color}) = _$StatusOptionImpl;

  factory _StatusOption.fromJson(Map<String, dynamic> json) =
      _$StatusOptionImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get color;

  /// Create a copy of StatusOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusOptionImplCopyWith<_$StatusOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DateValue _$DateValueFromJson(Map<String, dynamic> json) {
  return _DateValue.fromJson(json);
}

/// @nodoc
mixin _$DateValue {
  String get start => throw _privateConstructorUsedError;
  String? get end => throw _privateConstructorUsedError;
  String? get timeZone => throw _privateConstructorUsedError;

  /// Serializes this DateValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DateValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DateValueCopyWith<DateValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateValueCopyWith<$Res> {
  factory $DateValueCopyWith(DateValue value, $Res Function(DateValue) then) =
      _$DateValueCopyWithImpl<$Res, DateValue>;
  @useResult
  $Res call({String start, String? end, String? timeZone});
}

/// @nodoc
class _$DateValueCopyWithImpl<$Res, $Val extends DateValue>
    implements $DateValueCopyWith<$Res> {
  _$DateValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DateValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = freezed,
    Object? timeZone = freezed,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateValueImplCopyWith<$Res>
    implements $DateValueCopyWith<$Res> {
  factory _$$DateValueImplCopyWith(
          _$DateValueImpl value, $Res Function(_$DateValueImpl) then) =
      __$$DateValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String start, String? end, String? timeZone});
}

/// @nodoc
class __$$DateValueImplCopyWithImpl<$Res>
    extends _$DateValueCopyWithImpl<$Res, _$DateValueImpl>
    implements _$$DateValueImplCopyWith<$Res> {
  __$$DateValueImplCopyWithImpl(
      _$DateValueImpl _value, $Res Function(_$DateValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = freezed,
    Object? timeZone = freezed,
  }) {
    return _then(_$DateValueImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateValueImpl implements _DateValue {
  const _$DateValueImpl({required this.start, this.end, this.timeZone});

  factory _$DateValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateValueImplFromJson(json);

  @override
  final String start;
  @override
  final String? end;
  @override
  final String? timeZone;

  @override
  String toString() {
    return 'DateValue(start: $start, end: $end, timeZone: $timeZone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateValueImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end, timeZone);

  /// Create a copy of DateValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateValueImplCopyWith<_$DateValueImpl> get copyWith =>
      __$$DateValueImplCopyWithImpl<_$DateValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateValueImplToJson(
      this,
    );
  }
}

abstract class _DateValue implements DateValue {
  const factory _DateValue(
      {required final String start,
      final String? end,
      final String? timeZone}) = _$DateValueImpl;

  factory _DateValue.fromJson(Map<String, dynamic> json) =
      _$DateValueImpl.fromJson;

  @override
  String get start;
  @override
  String? get end;
  @override
  String? get timeZone;

  /// Create a copy of DateValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateValueImplCopyWith<_$DateValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormulaValue _$FormulaValueFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'boolean':
      return BooleanFormulaValue.fromJson(json);
    case 'date':
      return DateFormulaValue.fromJson(json);
    case 'number':
      return NumberFormulaValue.fromJson(json);
    case 'string':
      return StringFormulaValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'FormulaValue',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$FormulaValue {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool boolean) boolean,
    required TResult Function(DateValue? date) date,
    required TResult Function(double? number) number,
    required TResult Function(String? string) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool boolean)? boolean,
    TResult? Function(DateValue? date)? date,
    TResult? Function(double? number)? number,
    TResult? Function(String? string)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool boolean)? boolean,
    TResult Function(DateValue? date)? date,
    TResult Function(double? number)? number,
    TResult Function(String? string)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanFormulaValue value) boolean,
    required TResult Function(DateFormulaValue value) date,
    required TResult Function(NumberFormulaValue value) number,
    required TResult Function(StringFormulaValue value) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanFormulaValue value)? boolean,
    TResult? Function(DateFormulaValue value)? date,
    TResult? Function(NumberFormulaValue value)? number,
    TResult? Function(StringFormulaValue value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanFormulaValue value)? boolean,
    TResult Function(DateFormulaValue value)? date,
    TResult Function(NumberFormulaValue value)? number,
    TResult Function(StringFormulaValue value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this FormulaValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormulaValueCopyWith<$Res> {
  factory $FormulaValueCopyWith(
          FormulaValue value, $Res Function(FormulaValue) then) =
      _$FormulaValueCopyWithImpl<$Res, FormulaValue>;
}

/// @nodoc
class _$FormulaValueCopyWithImpl<$Res, $Val extends FormulaValue>
    implements $FormulaValueCopyWith<$Res> {
  _$FormulaValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BooleanFormulaValueImplCopyWith<$Res> {
  factory _$$BooleanFormulaValueImplCopyWith(_$BooleanFormulaValueImpl value,
          $Res Function(_$BooleanFormulaValueImpl) then) =
      __$$BooleanFormulaValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool boolean});
}

/// @nodoc
class __$$BooleanFormulaValueImplCopyWithImpl<$Res>
    extends _$FormulaValueCopyWithImpl<$Res, _$BooleanFormulaValueImpl>
    implements _$$BooleanFormulaValueImplCopyWith<$Res> {
  __$$BooleanFormulaValueImplCopyWithImpl(_$BooleanFormulaValueImpl _value,
      $Res Function(_$BooleanFormulaValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boolean = null,
  }) {
    return _then(_$BooleanFormulaValueImpl(
      boolean: null == boolean
          ? _value.boolean
          : boolean // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BooleanFormulaValueImpl implements BooleanFormulaValue {
  const _$BooleanFormulaValueImpl({required this.boolean, final String? $type})
      : $type = $type ?? 'boolean';

  factory _$BooleanFormulaValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooleanFormulaValueImplFromJson(json);

  @override
  final bool boolean;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FormulaValue.boolean(boolean: $boolean)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanFormulaValueImpl &&
            (identical(other.boolean, boolean) || other.boolean == boolean));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, boolean);

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BooleanFormulaValueImplCopyWith<_$BooleanFormulaValueImpl> get copyWith =>
      __$$BooleanFormulaValueImplCopyWithImpl<_$BooleanFormulaValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool boolean) boolean,
    required TResult Function(DateValue? date) date,
    required TResult Function(double? number) number,
    required TResult Function(String? string) string,
  }) {
    return boolean(this.boolean);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool boolean)? boolean,
    TResult? Function(DateValue? date)? date,
    TResult? Function(double? number)? number,
    TResult? Function(String? string)? string,
  }) {
    return boolean?.call(this.boolean);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool boolean)? boolean,
    TResult Function(DateValue? date)? date,
    TResult Function(double? number)? number,
    TResult Function(String? string)? string,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(this.boolean);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanFormulaValue value) boolean,
    required TResult Function(DateFormulaValue value) date,
    required TResult Function(NumberFormulaValue value) number,
    required TResult Function(StringFormulaValue value) string,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanFormulaValue value)? boolean,
    TResult? Function(DateFormulaValue value)? date,
    TResult? Function(NumberFormulaValue value)? number,
    TResult? Function(StringFormulaValue value)? string,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanFormulaValue value)? boolean,
    TResult Function(DateFormulaValue value)? date,
    TResult Function(NumberFormulaValue value)? number,
    TResult Function(StringFormulaValue value)? string,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BooleanFormulaValueImplToJson(
      this,
    );
  }
}

abstract class BooleanFormulaValue implements FormulaValue {
  const factory BooleanFormulaValue({required final bool boolean}) =
      _$BooleanFormulaValueImpl;

  factory BooleanFormulaValue.fromJson(Map<String, dynamic> json) =
      _$BooleanFormulaValueImpl.fromJson;

  bool get boolean;

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BooleanFormulaValueImplCopyWith<_$BooleanFormulaValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateFormulaValueImplCopyWith<$Res> {
  factory _$$DateFormulaValueImplCopyWith(_$DateFormulaValueImpl value,
          $Res Function(_$DateFormulaValueImpl) then) =
      __$$DateFormulaValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateValue? date});

  $DateValueCopyWith<$Res>? get date;
}

/// @nodoc
class __$$DateFormulaValueImplCopyWithImpl<$Res>
    extends _$FormulaValueCopyWithImpl<$Res, _$DateFormulaValueImpl>
    implements _$$DateFormulaValueImplCopyWith<$Res> {
  __$$DateFormulaValueImplCopyWithImpl(_$DateFormulaValueImpl _value,
      $Res Function(_$DateFormulaValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$DateFormulaValueImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateValue?,
    ));
  }

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateValueCopyWith<$Res>? get date {
    if (_value.date == null) {
      return null;
    }

    return $DateValueCopyWith<$Res>(_value.date!, (value) {
      return _then(_value.copyWith(date: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$DateFormulaValueImpl implements DateFormulaValue {
  const _$DateFormulaValueImpl({required this.date, final String? $type})
      : $type = $type ?? 'date';

  factory _$DateFormulaValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateFormulaValueImplFromJson(json);

  @override
  final DateValue? date;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FormulaValue.date(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateFormulaValueImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateFormulaValueImplCopyWith<_$DateFormulaValueImpl> get copyWith =>
      __$$DateFormulaValueImplCopyWithImpl<_$DateFormulaValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool boolean) boolean,
    required TResult Function(DateValue? date) date,
    required TResult Function(double? number) number,
    required TResult Function(String? string) string,
  }) {
    return date(this.date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool boolean)? boolean,
    TResult? Function(DateValue? date)? date,
    TResult? Function(double? number)? number,
    TResult? Function(String? string)? string,
  }) {
    return date?.call(this.date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool boolean)? boolean,
    TResult Function(DateValue? date)? date,
    TResult Function(double? number)? number,
    TResult Function(String? string)? string,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this.date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanFormulaValue value) boolean,
    required TResult Function(DateFormulaValue value) date,
    required TResult Function(NumberFormulaValue value) number,
    required TResult Function(StringFormulaValue value) string,
  }) {
    return date(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanFormulaValue value)? boolean,
    TResult? Function(DateFormulaValue value)? date,
    TResult? Function(NumberFormulaValue value)? number,
    TResult? Function(StringFormulaValue value)? string,
  }) {
    return date?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanFormulaValue value)? boolean,
    TResult Function(DateFormulaValue value)? date,
    TResult Function(NumberFormulaValue value)? number,
    TResult Function(StringFormulaValue value)? string,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DateFormulaValueImplToJson(
      this,
    );
  }
}

abstract class DateFormulaValue implements FormulaValue {
  const factory DateFormulaValue({required final DateValue? date}) =
      _$DateFormulaValueImpl;

  factory DateFormulaValue.fromJson(Map<String, dynamic> json) =
      _$DateFormulaValueImpl.fromJson;

  DateValue? get date;

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateFormulaValueImplCopyWith<_$DateFormulaValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumberFormulaValueImplCopyWith<$Res> {
  factory _$$NumberFormulaValueImplCopyWith(_$NumberFormulaValueImpl value,
          $Res Function(_$NumberFormulaValueImpl) then) =
      __$$NumberFormulaValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double? number});
}

/// @nodoc
class __$$NumberFormulaValueImplCopyWithImpl<$Res>
    extends _$FormulaValueCopyWithImpl<$Res, _$NumberFormulaValueImpl>
    implements _$$NumberFormulaValueImplCopyWith<$Res> {
  __$$NumberFormulaValueImplCopyWithImpl(_$NumberFormulaValueImpl _value,
      $Res Function(_$NumberFormulaValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_$NumberFormulaValueImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NumberFormulaValueImpl implements NumberFormulaValue {
  const _$NumberFormulaValueImpl({required this.number, final String? $type})
      : $type = $type ?? 'number';

  factory _$NumberFormulaValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$NumberFormulaValueImplFromJson(json);

  @override
  final double? number;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FormulaValue.number(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberFormulaValueImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number);

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberFormulaValueImplCopyWith<_$NumberFormulaValueImpl> get copyWith =>
      __$$NumberFormulaValueImplCopyWithImpl<_$NumberFormulaValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool boolean) boolean,
    required TResult Function(DateValue? date) date,
    required TResult Function(double? number) number,
    required TResult Function(String? string) string,
  }) {
    return number(this.number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool boolean)? boolean,
    TResult? Function(DateValue? date)? date,
    TResult? Function(double? number)? number,
    TResult? Function(String? string)? string,
  }) {
    return number?.call(this.number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool boolean)? boolean,
    TResult Function(DateValue? date)? date,
    TResult Function(double? number)? number,
    TResult Function(String? string)? string,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(this.number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanFormulaValue value) boolean,
    required TResult Function(DateFormulaValue value) date,
    required TResult Function(NumberFormulaValue value) number,
    required TResult Function(StringFormulaValue value) string,
  }) {
    return number(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanFormulaValue value)? boolean,
    TResult? Function(DateFormulaValue value)? date,
    TResult? Function(NumberFormulaValue value)? number,
    TResult? Function(StringFormulaValue value)? string,
  }) {
    return number?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanFormulaValue value)? boolean,
    TResult Function(DateFormulaValue value)? date,
    TResult Function(NumberFormulaValue value)? number,
    TResult Function(StringFormulaValue value)? string,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NumberFormulaValueImplToJson(
      this,
    );
  }
}

abstract class NumberFormulaValue implements FormulaValue {
  const factory NumberFormulaValue({required final double? number}) =
      _$NumberFormulaValueImpl;

  factory NumberFormulaValue.fromJson(Map<String, dynamic> json) =
      _$NumberFormulaValueImpl.fromJson;

  double? get number;

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NumberFormulaValueImplCopyWith<_$NumberFormulaValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StringFormulaValueImplCopyWith<$Res> {
  factory _$$StringFormulaValueImplCopyWith(_$StringFormulaValueImpl value,
          $Res Function(_$StringFormulaValueImpl) then) =
      __$$StringFormulaValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? string});
}

/// @nodoc
class __$$StringFormulaValueImplCopyWithImpl<$Res>
    extends _$FormulaValueCopyWithImpl<$Res, _$StringFormulaValueImpl>
    implements _$$StringFormulaValueImplCopyWith<$Res> {
  __$$StringFormulaValueImplCopyWithImpl(_$StringFormulaValueImpl _value,
      $Res Function(_$StringFormulaValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? string = freezed,
  }) {
    return _then(_$StringFormulaValueImpl(
      string: freezed == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringFormulaValueImpl implements StringFormulaValue {
  const _$StringFormulaValueImpl({required this.string, final String? $type})
      : $type = $type ?? 'string';

  factory _$StringFormulaValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringFormulaValueImplFromJson(json);

  @override
  final String? string;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FormulaValue.string(string: $string)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringFormulaValueImpl &&
            (identical(other.string, string) || other.string == string));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, string);

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StringFormulaValueImplCopyWith<_$StringFormulaValueImpl> get copyWith =>
      __$$StringFormulaValueImplCopyWithImpl<_$StringFormulaValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool boolean) boolean,
    required TResult Function(DateValue? date) date,
    required TResult Function(double? number) number,
    required TResult Function(String? string) string,
  }) {
    return string(this.string);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool boolean)? boolean,
    TResult? Function(DateValue? date)? date,
    TResult? Function(double? number)? number,
    TResult? Function(String? string)? string,
  }) {
    return string?.call(this.string);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool boolean)? boolean,
    TResult Function(DateValue? date)? date,
    TResult Function(double? number)? number,
    TResult Function(String? string)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this.string);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanFormulaValue value) boolean,
    required TResult Function(DateFormulaValue value) date,
    required TResult Function(NumberFormulaValue value) number,
    required TResult Function(StringFormulaValue value) string,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanFormulaValue value)? boolean,
    TResult? Function(DateFormulaValue value)? date,
    TResult? Function(NumberFormulaValue value)? number,
    TResult? Function(StringFormulaValue value)? string,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanFormulaValue value)? boolean,
    TResult Function(DateFormulaValue value)? date,
    TResult Function(NumberFormulaValue value)? number,
    TResult Function(StringFormulaValue value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StringFormulaValueImplToJson(
      this,
    );
  }
}

abstract class StringFormulaValue implements FormulaValue {
  const factory StringFormulaValue({required final String? string}) =
      _$StringFormulaValueImpl;

  factory StringFormulaValue.fromJson(Map<String, dynamic> json) =
      _$StringFormulaValueImpl.fromJson;

  String? get string;

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StringFormulaValueImplCopyWith<_$StringFormulaValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RelationItem _$RelationItemFromJson(Map<String, dynamic> json) {
  return _RelationItem.fromJson(json);
}

/// @nodoc
mixin _$RelationItem {
  String get id => throw _privateConstructorUsedError;

  /// Serializes this RelationItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RelationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RelationItemCopyWith<RelationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelationItemCopyWith<$Res> {
  factory $RelationItemCopyWith(
          RelationItem value, $Res Function(RelationItem) then) =
      _$RelationItemCopyWithImpl<$Res, RelationItem>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$RelationItemCopyWithImpl<$Res, $Val extends RelationItem>
    implements $RelationItemCopyWith<$Res> {
  _$RelationItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RelationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RelationItemImplCopyWith<$Res>
    implements $RelationItemCopyWith<$Res> {
  factory _$$RelationItemImplCopyWith(
          _$RelationItemImpl value, $Res Function(_$RelationItemImpl) then) =
      __$$RelationItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$RelationItemImplCopyWithImpl<$Res>
    extends _$RelationItemCopyWithImpl<$Res, _$RelationItemImpl>
    implements _$$RelationItemImplCopyWith<$Res> {
  __$$RelationItemImplCopyWithImpl(
      _$RelationItemImpl _value, $Res Function(_$RelationItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of RelationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RelationItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RelationItemImpl implements _RelationItem {
  const _$RelationItemImpl({required this.id});

  factory _$RelationItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelationItemImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'RelationItem(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelationItemImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of RelationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RelationItemImplCopyWith<_$RelationItemImpl> get copyWith =>
      __$$RelationItemImplCopyWithImpl<_$RelationItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelationItemImplToJson(
      this,
    );
  }
}

abstract class _RelationItem implements RelationItem {
  const factory _RelationItem({required final String id}) = _$RelationItemImpl;

  factory _RelationItem.fromJson(Map<String, dynamic> json) =
      _$RelationItemImpl.fromJson;

  @override
  String get id;

  /// Create a copy of RelationItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RelationItemImplCopyWith<_$RelationItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RollupValue _$RollupValueFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'number':
      return NumberRollupValue.fromJson(json);
    case 'date':
      return DateRollupValue.fromJson(json);
    case 'array':
      return ArrayRollupValue.fromJson(json);
    case 'unsupported':
      return UnsupportedRollupValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'RollupValue',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RollupValue {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? number) number,
    required TResult Function(DateValue? date) date,
    required TResult Function(List<PropertyValue> array) array,
    required TResult Function(Map<String, dynamic> data) unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? number)? number,
    TResult? Function(DateValue? date)? date,
    TResult? Function(List<PropertyValue> array)? array,
    TResult? Function(Map<String, dynamic> data)? unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? number)? number,
    TResult Function(DateValue? date)? date,
    TResult Function(List<PropertyValue> array)? array,
    TResult Function(Map<String, dynamic> data)? unsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberRollupValue value) number,
    required TResult Function(DateRollupValue value) date,
    required TResult Function(ArrayRollupValue value) array,
    required TResult Function(UnsupportedRollupValue value) unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NumberRollupValue value)? number,
    TResult? Function(DateRollupValue value)? date,
    TResult? Function(ArrayRollupValue value)? array,
    TResult? Function(UnsupportedRollupValue value)? unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberRollupValue value)? number,
    TResult Function(DateRollupValue value)? date,
    TResult Function(ArrayRollupValue value)? array,
    TResult Function(UnsupportedRollupValue value)? unsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this RollupValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RollupValueCopyWith<$Res> {
  factory $RollupValueCopyWith(
          RollupValue value, $Res Function(RollupValue) then) =
      _$RollupValueCopyWithImpl<$Res, RollupValue>;
}

/// @nodoc
class _$RollupValueCopyWithImpl<$Res, $Val extends RollupValue>
    implements $RollupValueCopyWith<$Res> {
  _$RollupValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NumberRollupValueImplCopyWith<$Res> {
  factory _$$NumberRollupValueImplCopyWith(_$NumberRollupValueImpl value,
          $Res Function(_$NumberRollupValueImpl) then) =
      __$$NumberRollupValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double? number});
}

/// @nodoc
class __$$NumberRollupValueImplCopyWithImpl<$Res>
    extends _$RollupValueCopyWithImpl<$Res, _$NumberRollupValueImpl>
    implements _$$NumberRollupValueImplCopyWith<$Res> {
  __$$NumberRollupValueImplCopyWithImpl(_$NumberRollupValueImpl _value,
      $Res Function(_$NumberRollupValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_$NumberRollupValueImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NumberRollupValueImpl implements NumberRollupValue {
  const _$NumberRollupValueImpl({required this.number, final String? $type})
      : $type = $type ?? 'number';

  factory _$NumberRollupValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$NumberRollupValueImplFromJson(json);

  @override
  final double? number;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RollupValue.number(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberRollupValueImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number);

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberRollupValueImplCopyWith<_$NumberRollupValueImpl> get copyWith =>
      __$$NumberRollupValueImplCopyWithImpl<_$NumberRollupValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? number) number,
    required TResult Function(DateValue? date) date,
    required TResult Function(List<PropertyValue> array) array,
    required TResult Function(Map<String, dynamic> data) unsupported,
  }) {
    return number(this.number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? number)? number,
    TResult? Function(DateValue? date)? date,
    TResult? Function(List<PropertyValue> array)? array,
    TResult? Function(Map<String, dynamic> data)? unsupported,
  }) {
    return number?.call(this.number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? number)? number,
    TResult Function(DateValue? date)? date,
    TResult Function(List<PropertyValue> array)? array,
    TResult Function(Map<String, dynamic> data)? unsupported,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(this.number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberRollupValue value) number,
    required TResult Function(DateRollupValue value) date,
    required TResult Function(ArrayRollupValue value) array,
    required TResult Function(UnsupportedRollupValue value) unsupported,
  }) {
    return number(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NumberRollupValue value)? number,
    TResult? Function(DateRollupValue value)? date,
    TResult? Function(ArrayRollupValue value)? array,
    TResult? Function(UnsupportedRollupValue value)? unsupported,
  }) {
    return number?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberRollupValue value)? number,
    TResult Function(DateRollupValue value)? date,
    TResult Function(ArrayRollupValue value)? array,
    TResult Function(UnsupportedRollupValue value)? unsupported,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NumberRollupValueImplToJson(
      this,
    );
  }
}

abstract class NumberRollupValue implements RollupValue {
  const factory NumberRollupValue({required final double? number}) =
      _$NumberRollupValueImpl;

  factory NumberRollupValue.fromJson(Map<String, dynamic> json) =
      _$NumberRollupValueImpl.fromJson;

  double? get number;

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NumberRollupValueImplCopyWith<_$NumberRollupValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateRollupValueImplCopyWith<$Res> {
  factory _$$DateRollupValueImplCopyWith(_$DateRollupValueImpl value,
          $Res Function(_$DateRollupValueImpl) then) =
      __$$DateRollupValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateValue? date});

  $DateValueCopyWith<$Res>? get date;
}

/// @nodoc
class __$$DateRollupValueImplCopyWithImpl<$Res>
    extends _$RollupValueCopyWithImpl<$Res, _$DateRollupValueImpl>
    implements _$$DateRollupValueImplCopyWith<$Res> {
  __$$DateRollupValueImplCopyWithImpl(
      _$DateRollupValueImpl _value, $Res Function(_$DateRollupValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$DateRollupValueImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateValue?,
    ));
  }

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateValueCopyWith<$Res>? get date {
    if (_value.date == null) {
      return null;
    }

    return $DateValueCopyWith<$Res>(_value.date!, (value) {
      return _then(_value.copyWith(date: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$DateRollupValueImpl implements DateRollupValue {
  const _$DateRollupValueImpl({required this.date, final String? $type})
      : $type = $type ?? 'date';

  factory _$DateRollupValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateRollupValueImplFromJson(json);

  @override
  final DateValue? date;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RollupValue.date(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateRollupValueImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateRollupValueImplCopyWith<_$DateRollupValueImpl> get copyWith =>
      __$$DateRollupValueImplCopyWithImpl<_$DateRollupValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? number) number,
    required TResult Function(DateValue? date) date,
    required TResult Function(List<PropertyValue> array) array,
    required TResult Function(Map<String, dynamic> data) unsupported,
  }) {
    return date(this.date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? number)? number,
    TResult? Function(DateValue? date)? date,
    TResult? Function(List<PropertyValue> array)? array,
    TResult? Function(Map<String, dynamic> data)? unsupported,
  }) {
    return date?.call(this.date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? number)? number,
    TResult Function(DateValue? date)? date,
    TResult Function(List<PropertyValue> array)? array,
    TResult Function(Map<String, dynamic> data)? unsupported,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this.date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberRollupValue value) number,
    required TResult Function(DateRollupValue value) date,
    required TResult Function(ArrayRollupValue value) array,
    required TResult Function(UnsupportedRollupValue value) unsupported,
  }) {
    return date(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NumberRollupValue value)? number,
    TResult? Function(DateRollupValue value)? date,
    TResult? Function(ArrayRollupValue value)? array,
    TResult? Function(UnsupportedRollupValue value)? unsupported,
  }) {
    return date?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberRollupValue value)? number,
    TResult Function(DateRollupValue value)? date,
    TResult Function(ArrayRollupValue value)? array,
    TResult Function(UnsupportedRollupValue value)? unsupported,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DateRollupValueImplToJson(
      this,
    );
  }
}

abstract class DateRollupValue implements RollupValue {
  const factory DateRollupValue({required final DateValue? date}) =
      _$DateRollupValueImpl;

  factory DateRollupValue.fromJson(Map<String, dynamic> json) =
      _$DateRollupValueImpl.fromJson;

  DateValue? get date;

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateRollupValueImplCopyWith<_$DateRollupValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArrayRollupValueImplCopyWith<$Res> {
  factory _$$ArrayRollupValueImplCopyWith(_$ArrayRollupValueImpl value,
          $Res Function(_$ArrayRollupValueImpl) then) =
      __$$ArrayRollupValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PropertyValue> array});
}

/// @nodoc
class __$$ArrayRollupValueImplCopyWithImpl<$Res>
    extends _$RollupValueCopyWithImpl<$Res, _$ArrayRollupValueImpl>
    implements _$$ArrayRollupValueImplCopyWith<$Res> {
  __$$ArrayRollupValueImplCopyWithImpl(_$ArrayRollupValueImpl _value,
      $Res Function(_$ArrayRollupValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? array = null,
  }) {
    return _then(_$ArrayRollupValueImpl(
      array: null == array
          ? _value._array
          : array // ignore: cast_nullable_to_non_nullable
              as List<PropertyValue>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArrayRollupValueImpl implements ArrayRollupValue {
  const _$ArrayRollupValueImpl(
      {required final List<PropertyValue> array, final String? $type})
      : _array = array,
        $type = $type ?? 'array';

  factory _$ArrayRollupValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArrayRollupValueImplFromJson(json);

  final List<PropertyValue> _array;
  @override
  List<PropertyValue> get array {
    if (_array is EqualUnmodifiableListView) return _array;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_array);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RollupValue.array(array: $array)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArrayRollupValueImpl &&
            const DeepCollectionEquality().equals(other._array, _array));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_array));

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArrayRollupValueImplCopyWith<_$ArrayRollupValueImpl> get copyWith =>
      __$$ArrayRollupValueImplCopyWithImpl<_$ArrayRollupValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? number) number,
    required TResult Function(DateValue? date) date,
    required TResult Function(List<PropertyValue> array) array,
    required TResult Function(Map<String, dynamic> data) unsupported,
  }) {
    return array(this.array);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? number)? number,
    TResult? Function(DateValue? date)? date,
    TResult? Function(List<PropertyValue> array)? array,
    TResult? Function(Map<String, dynamic> data)? unsupported,
  }) {
    return array?.call(this.array);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? number)? number,
    TResult Function(DateValue? date)? date,
    TResult Function(List<PropertyValue> array)? array,
    TResult Function(Map<String, dynamic> data)? unsupported,
    required TResult orElse(),
  }) {
    if (array != null) {
      return array(this.array);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberRollupValue value) number,
    required TResult Function(DateRollupValue value) date,
    required TResult Function(ArrayRollupValue value) array,
    required TResult Function(UnsupportedRollupValue value) unsupported,
  }) {
    return array(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NumberRollupValue value)? number,
    TResult? Function(DateRollupValue value)? date,
    TResult? Function(ArrayRollupValue value)? array,
    TResult? Function(UnsupportedRollupValue value)? unsupported,
  }) {
    return array?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberRollupValue value)? number,
    TResult Function(DateRollupValue value)? date,
    TResult Function(ArrayRollupValue value)? array,
    TResult Function(UnsupportedRollupValue value)? unsupported,
    required TResult orElse(),
  }) {
    if (array != null) {
      return array(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ArrayRollupValueImplToJson(
      this,
    );
  }
}

abstract class ArrayRollupValue implements RollupValue {
  const factory ArrayRollupValue({required final List<PropertyValue> array}) =
      _$ArrayRollupValueImpl;

  factory ArrayRollupValue.fromJson(Map<String, dynamic> json) =
      _$ArrayRollupValueImpl.fromJson;

  List<PropertyValue> get array;

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArrayRollupValueImplCopyWith<_$ArrayRollupValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnsupportedRollupValueImplCopyWith<$Res> {
  factory _$$UnsupportedRollupValueImplCopyWith(
          _$UnsupportedRollupValueImpl value,
          $Res Function(_$UnsupportedRollupValueImpl) then) =
      __$$UnsupportedRollupValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class __$$UnsupportedRollupValueImplCopyWithImpl<$Res>
    extends _$RollupValueCopyWithImpl<$Res, _$UnsupportedRollupValueImpl>
    implements _$$UnsupportedRollupValueImplCopyWith<$Res> {
  __$$UnsupportedRollupValueImplCopyWithImpl(
      _$UnsupportedRollupValueImpl _value,
      $Res Function(_$UnsupportedRollupValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UnsupportedRollupValueImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnsupportedRollupValueImpl implements UnsupportedRollupValue {
  const _$UnsupportedRollupValueImpl(
      {required final Map<String, dynamic> data, final String? $type})
      : _data = data,
        $type = $type ?? 'unsupported';

  factory _$UnsupportedRollupValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnsupportedRollupValueImplFromJson(json);

  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RollupValue.unsupported(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsupportedRollupValueImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnsupportedRollupValueImplCopyWith<_$UnsupportedRollupValueImpl>
      get copyWith => __$$UnsupportedRollupValueImplCopyWithImpl<
          _$UnsupportedRollupValueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? number) number,
    required TResult Function(DateValue? date) date,
    required TResult Function(List<PropertyValue> array) array,
    required TResult Function(Map<String, dynamic> data) unsupported,
  }) {
    return unsupported(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? number)? number,
    TResult? Function(DateValue? date)? date,
    TResult? Function(List<PropertyValue> array)? array,
    TResult? Function(Map<String, dynamic> data)? unsupported,
  }) {
    return unsupported?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? number)? number,
    TResult Function(DateValue? date)? date,
    TResult Function(List<PropertyValue> array)? array,
    TResult Function(Map<String, dynamic> data)? unsupported,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberRollupValue value) number,
    required TResult Function(DateRollupValue value) date,
    required TResult Function(ArrayRollupValue value) array,
    required TResult Function(UnsupportedRollupValue value) unsupported,
  }) {
    return unsupported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NumberRollupValue value)? number,
    TResult? Function(DateRollupValue value)? date,
    TResult? Function(ArrayRollupValue value)? array,
    TResult? Function(UnsupportedRollupValue value)? unsupported,
  }) {
    return unsupported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberRollupValue value)? number,
    TResult Function(DateRollupValue value)? date,
    TResult Function(ArrayRollupValue value)? array,
    TResult Function(UnsupportedRollupValue value)? unsupported,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnsupportedRollupValueImplToJson(
      this,
    );
  }
}

abstract class UnsupportedRollupValue implements RollupValue {
  const factory UnsupportedRollupValue(
          {required final Map<String, dynamic> data}) =
      _$UnsupportedRollupValueImpl;

  factory UnsupportedRollupValue.fromJson(Map<String, dynamic> json) =
      _$UnsupportedRollupValueImpl.fromJson;

  Map<String, dynamic> get data;

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnsupportedRollupValueImplCopyWith<_$UnsupportedRollupValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UniqueId _$UniqueIdFromJson(Map<String, dynamic> json) {
  return _UniqueId.fromJson(json);
}

/// @nodoc
mixin _$UniqueId {
  int get number => throw _privateConstructorUsedError;
  String? get prefix => throw _privateConstructorUsedError;

  /// Serializes this UniqueId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UniqueId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UniqueIdCopyWith<UniqueId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniqueIdCopyWith<$Res> {
  factory $UniqueIdCopyWith(UniqueId value, $Res Function(UniqueId) then) =
      _$UniqueIdCopyWithImpl<$Res, UniqueId>;
  @useResult
  $Res call({int number, String? prefix});
}

/// @nodoc
class _$UniqueIdCopyWithImpl<$Res, $Val extends UniqueId>
    implements $UniqueIdCopyWith<$Res> {
  _$UniqueIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UniqueId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? prefix = freezed,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UniqueIdImplCopyWith<$Res>
    implements $UniqueIdCopyWith<$Res> {
  factory _$$UniqueIdImplCopyWith(
          _$UniqueIdImpl value, $Res Function(_$UniqueIdImpl) then) =
      __$$UniqueIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, String? prefix});
}

/// @nodoc
class __$$UniqueIdImplCopyWithImpl<$Res>
    extends _$UniqueIdCopyWithImpl<$Res, _$UniqueIdImpl>
    implements _$$UniqueIdImplCopyWith<$Res> {
  __$$UniqueIdImplCopyWithImpl(
      _$UniqueIdImpl _value, $Res Function(_$UniqueIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of UniqueId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? prefix = freezed,
  }) {
    return _then(_$UniqueIdImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UniqueIdImpl implements _UniqueId {
  const _$UniqueIdImpl({required this.number, this.prefix});

  factory _$UniqueIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$UniqueIdImplFromJson(json);

  @override
  final int number;
  @override
  final String? prefix;

  @override
  String toString() {
    return 'UniqueId(number: $number, prefix: $prefix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UniqueIdImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.prefix, prefix) || other.prefix == prefix));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, prefix);

  /// Create a copy of UniqueId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UniqueIdImplCopyWith<_$UniqueIdImpl> get copyWith =>
      __$$UniqueIdImplCopyWithImpl<_$UniqueIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UniqueIdImplToJson(
      this,
    );
  }
}

abstract class _UniqueId implements UniqueId {
  const factory _UniqueId({required final int number, final String? prefix}) =
      _$UniqueIdImpl;

  factory _UniqueId.fromJson(Map<String, dynamic> json) =
      _$UniqueIdImpl.fromJson;

  @override
  int get number;
  @override
  String? get prefix;

  /// Create a copy of UniqueId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UniqueIdImplCopyWith<_$UniqueIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VerificationValue _$VerificationValueFromJson(Map<String, dynamic> json) {
  return _VerificationValue.fromJson(json);
}

/// @nodoc
mixin _$VerificationValue {
  String get state => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  User? get verifiedBy => throw _privateConstructorUsedError;

  /// Serializes this VerificationValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerificationValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationValueCopyWith<VerificationValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationValueCopyWith<$Res> {
  factory $VerificationValueCopyWith(
          VerificationValue value, $Res Function(VerificationValue) then) =
      _$VerificationValueCopyWithImpl<$Res, VerificationValue>;
  @useResult
  $Res call({String state, DateTime? date, User? verifiedBy});

  $UserCopyWith<$Res>? get verifiedBy;
}

/// @nodoc
class _$VerificationValueCopyWithImpl<$Res, $Val extends VerificationValue>
    implements $VerificationValueCopyWith<$Res> {
  _$VerificationValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? date = freezed,
    Object? verifiedBy = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verifiedBy: freezed == verifiedBy
          ? _value.verifiedBy
          : verifiedBy // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  /// Create a copy of VerificationValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get verifiedBy {
    if (_value.verifiedBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.verifiedBy!, (value) {
      return _then(_value.copyWith(verifiedBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerificationValueImplCopyWith<$Res>
    implements $VerificationValueCopyWith<$Res> {
  factory _$$VerificationValueImplCopyWith(_$VerificationValueImpl value,
          $Res Function(_$VerificationValueImpl) then) =
      __$$VerificationValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String state, DateTime? date, User? verifiedBy});

  @override
  $UserCopyWith<$Res>? get verifiedBy;
}

/// @nodoc
class __$$VerificationValueImplCopyWithImpl<$Res>
    extends _$VerificationValueCopyWithImpl<$Res, _$VerificationValueImpl>
    implements _$$VerificationValueImplCopyWith<$Res> {
  __$$VerificationValueImplCopyWithImpl(_$VerificationValueImpl _value,
      $Res Function(_$VerificationValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? date = freezed,
    Object? verifiedBy = freezed,
  }) {
    return _then(_$VerificationValueImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verifiedBy: freezed == verifiedBy
          ? _value.verifiedBy
          : verifiedBy // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationValueImpl implements _VerificationValue {
  const _$VerificationValueImpl(
      {required this.state, required this.date, this.verifiedBy});

  factory _$VerificationValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationValueImplFromJson(json);

  @override
  final String state;
  @override
  final DateTime? date;
  @override
  final User? verifiedBy;

  @override
  String toString() {
    return 'VerificationValue(state: $state, date: $date, verifiedBy: $verifiedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationValueImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.verifiedBy, verifiedBy) ||
                other.verifiedBy == verifiedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, state, date, verifiedBy);

  /// Create a copy of VerificationValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationValueImplCopyWith<_$VerificationValueImpl> get copyWith =>
      __$$VerificationValueImplCopyWithImpl<_$VerificationValueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationValueImplToJson(
      this,
    );
  }
}

abstract class _VerificationValue implements VerificationValue {
  const factory _VerificationValue(
      {required final String state,
      required final DateTime? date,
      final User? verifiedBy}) = _$VerificationValueImpl;

  factory _VerificationValue.fromJson(Map<String, dynamic> json) =
      _$VerificationValueImpl.fromJson;

  @override
  String get state;
  @override
  DateTime? get date;
  @override
  User? get verifiedBy;

  /// Create a copy of VerificationValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationValueImplCopyWith<_$VerificationValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
