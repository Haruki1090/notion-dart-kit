// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
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
  String get id;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PropertyValueCopyWith<PropertyValue> get copyWith =>
      _$PropertyValueCopyWithImpl<PropertyValue>(
          this as PropertyValue, _$identity);

  /// Serializes this PropertyValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PropertyValue &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'PropertyValue(id: $id)';
  }
}

/// @nodoc
abstract mixin class $PropertyValueCopyWith<$Res> {
  factory $PropertyValueCopyWith(
          PropertyValue value, $Res Function(PropertyValue) _then) =
      _$PropertyValueCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$PropertyValueCopyWithImpl<$Res>
    implements $PropertyValueCopyWith<$Res> {
  _$PropertyValueCopyWithImpl(this._self, this._then);

  final PropertyValue _self;
  final $Res Function(PropertyValue) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PropertyValue].
extension PropertyValuePatterns on PropertyValue {
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
    final _that = this;
    switch (_that) {
      case CheckboxProperty() when checkbox != null:
        return checkbox(_that);
      case RichTextProperty() when richText != null:
        return richText(_that);
      case TitleProperty() when title != null:
        return title(_that);
      case NumberProperty() when number != null:
        return number(_that);
      case SelectProperty() when select != null:
        return select(_that);
      case MultiSelectProperty() when multiSelect != null:
        return multiSelect(_that);
      case StatusProperty() when status != null:
        return status(_that);
      case DateProperty() when date != null:
        return date(_that);
      case PeopleProperty() when people != null:
        return people(_that);
      case FilesProperty() when files != null:
        return files(_that);
      case EmailProperty() when email != null:
        return email(_that);
      case PhoneNumberProperty() when phoneNumber != null:
        return phoneNumber(_that);
      case UrlProperty() when url != null:
        return url(_that);
      case CreatedTimeProperty() when createdTime != null:
        return createdTime(_that);
      case CreatedByProperty() when createdBy != null:
        return createdBy(_that);
      case LastEditedTimeProperty() when lastEditedTime != null:
        return lastEditedTime(_that);
      case LastEditedByProperty() when lastEditedBy != null:
        return lastEditedBy(_that);
      case FormulaProperty() when formula != null:
        return formula(_that);
      case RelationProperty() when relation != null:
        return relation(_that);
      case RollupProperty() when rollup != null:
        return rollup(_that);
      case UniqueIdProperty() when uniqueId != null:
        return uniqueId(_that);
      case VerificationProperty() when verification != null:
        return verification(_that);
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
    final _that = this;
    switch (_that) {
      case CheckboxProperty():
        return checkbox(_that);
      case RichTextProperty():
        return richText(_that);
      case TitleProperty():
        return title(_that);
      case NumberProperty():
        return number(_that);
      case SelectProperty():
        return select(_that);
      case MultiSelectProperty():
        return multiSelect(_that);
      case StatusProperty():
        return status(_that);
      case DateProperty():
        return date(_that);
      case PeopleProperty():
        return people(_that);
      case FilesProperty():
        return files(_that);
      case EmailProperty():
        return email(_that);
      case PhoneNumberProperty():
        return phoneNumber(_that);
      case UrlProperty():
        return url(_that);
      case CreatedTimeProperty():
        return createdTime(_that);
      case CreatedByProperty():
        return createdBy(_that);
      case LastEditedTimeProperty():
        return lastEditedTime(_that);
      case LastEditedByProperty():
        return lastEditedBy(_that);
      case FormulaProperty():
        return formula(_that);
      case RelationProperty():
        return relation(_that);
      case RollupProperty():
        return rollup(_that);
      case UniqueIdProperty():
        return uniqueId(_that);
      case VerificationProperty():
        return verification(_that);
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
    final _that = this;
    switch (_that) {
      case CheckboxProperty() when checkbox != null:
        return checkbox(_that);
      case RichTextProperty() when richText != null:
        return richText(_that);
      case TitleProperty() when title != null:
        return title(_that);
      case NumberProperty() when number != null:
        return number(_that);
      case SelectProperty() when select != null:
        return select(_that);
      case MultiSelectProperty() when multiSelect != null:
        return multiSelect(_that);
      case StatusProperty() when status != null:
        return status(_that);
      case DateProperty() when date != null:
        return date(_that);
      case PeopleProperty() when people != null:
        return people(_that);
      case FilesProperty() when files != null:
        return files(_that);
      case EmailProperty() when email != null:
        return email(_that);
      case PhoneNumberProperty() when phoneNumber != null:
        return phoneNumber(_that);
      case UrlProperty() when url != null:
        return url(_that);
      case CreatedTimeProperty() when createdTime != null:
        return createdTime(_that);
      case CreatedByProperty() when createdBy != null:
        return createdBy(_that);
      case LastEditedTimeProperty() when lastEditedTime != null:
        return lastEditedTime(_that);
      case LastEditedByProperty() when lastEditedBy != null:
        return lastEditedBy(_that);
      case FormulaProperty() when formula != null:
        return formula(_that);
      case RelationProperty() when relation != null:
        return relation(_that);
      case RollupProperty() when rollup != null:
        return rollup(_that);
      case UniqueIdProperty() when uniqueId != null:
        return uniqueId(_that);
      case VerificationProperty() when verification != null:
        return verification(_that);
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
    final _that = this;
    switch (_that) {
      case CheckboxProperty() when checkbox != null:
        return checkbox(_that.id, _that.checkbox);
      case RichTextProperty() when richText != null:
        return richText(_that.id, _that.richText);
      case TitleProperty() when title != null:
        return title(_that.id, _that.title);
      case NumberProperty() when number != null:
        return number(_that.id, _that.number);
      case SelectProperty() when select != null:
        return select(_that.id, _that.select);
      case MultiSelectProperty() when multiSelect != null:
        return multiSelect(_that.id, _that.multiSelect);
      case StatusProperty() when status != null:
        return status(_that.id, _that.status);
      case DateProperty() when date != null:
        return date(_that.id, _that.date);
      case PeopleProperty() when people != null:
        return people(_that.id, _that.people);
      case FilesProperty() when files != null:
        return files(_that.id, _that.files);
      case EmailProperty() when email != null:
        return email(_that.id, _that.email);
      case PhoneNumberProperty() when phoneNumber != null:
        return phoneNumber(_that.id, _that.phoneNumber);
      case UrlProperty() when url != null:
        return url(_that.id, _that.url);
      case CreatedTimeProperty() when createdTime != null:
        return createdTime(_that.id, _that.createdTime);
      case CreatedByProperty() when createdBy != null:
        return createdBy(_that.id, _that.createdBy);
      case LastEditedTimeProperty() when lastEditedTime != null:
        return lastEditedTime(_that.id, _that.lastEditedTime);
      case LastEditedByProperty() when lastEditedBy != null:
        return lastEditedBy(_that.id, _that.lastEditedBy);
      case FormulaProperty() when formula != null:
        return formula(_that.id, _that.formula);
      case RelationProperty() when relation != null:
        return relation(_that.id, _that.relation);
      case RollupProperty() when rollup != null:
        return rollup(_that.id, _that.rollup);
      case UniqueIdProperty() when uniqueId != null:
        return uniqueId(_that.id, _that.uniqueId);
      case VerificationProperty() when verification != null:
        return verification(_that.id, _that.verification);
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
    final _that = this;
    switch (_that) {
      case CheckboxProperty():
        return checkbox(_that.id, _that.checkbox);
      case RichTextProperty():
        return richText(_that.id, _that.richText);
      case TitleProperty():
        return title(_that.id, _that.title);
      case NumberProperty():
        return number(_that.id, _that.number);
      case SelectProperty():
        return select(_that.id, _that.select);
      case MultiSelectProperty():
        return multiSelect(_that.id, _that.multiSelect);
      case StatusProperty():
        return status(_that.id, _that.status);
      case DateProperty():
        return date(_that.id, _that.date);
      case PeopleProperty():
        return people(_that.id, _that.people);
      case FilesProperty():
        return files(_that.id, _that.files);
      case EmailProperty():
        return email(_that.id, _that.email);
      case PhoneNumberProperty():
        return phoneNumber(_that.id, _that.phoneNumber);
      case UrlProperty():
        return url(_that.id, _that.url);
      case CreatedTimeProperty():
        return createdTime(_that.id, _that.createdTime);
      case CreatedByProperty():
        return createdBy(_that.id, _that.createdBy);
      case LastEditedTimeProperty():
        return lastEditedTime(_that.id, _that.lastEditedTime);
      case LastEditedByProperty():
        return lastEditedBy(_that.id, _that.lastEditedBy);
      case FormulaProperty():
        return formula(_that.id, _that.formula);
      case RelationProperty():
        return relation(_that.id, _that.relation);
      case RollupProperty():
        return rollup(_that.id, _that.rollup);
      case UniqueIdProperty():
        return uniqueId(_that.id, _that.uniqueId);
      case VerificationProperty():
        return verification(_that.id, _that.verification);
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
    final _that = this;
    switch (_that) {
      case CheckboxProperty() when checkbox != null:
        return checkbox(_that.id, _that.checkbox);
      case RichTextProperty() when richText != null:
        return richText(_that.id, _that.richText);
      case TitleProperty() when title != null:
        return title(_that.id, _that.title);
      case NumberProperty() when number != null:
        return number(_that.id, _that.number);
      case SelectProperty() when select != null:
        return select(_that.id, _that.select);
      case MultiSelectProperty() when multiSelect != null:
        return multiSelect(_that.id, _that.multiSelect);
      case StatusProperty() when status != null:
        return status(_that.id, _that.status);
      case DateProperty() when date != null:
        return date(_that.id, _that.date);
      case PeopleProperty() when people != null:
        return people(_that.id, _that.people);
      case FilesProperty() when files != null:
        return files(_that.id, _that.files);
      case EmailProperty() when email != null:
        return email(_that.id, _that.email);
      case PhoneNumberProperty() when phoneNumber != null:
        return phoneNumber(_that.id, _that.phoneNumber);
      case UrlProperty() when url != null:
        return url(_that.id, _that.url);
      case CreatedTimeProperty() when createdTime != null:
        return createdTime(_that.id, _that.createdTime);
      case CreatedByProperty() when createdBy != null:
        return createdBy(_that.id, _that.createdBy);
      case LastEditedTimeProperty() when lastEditedTime != null:
        return lastEditedTime(_that.id, _that.lastEditedTime);
      case LastEditedByProperty() when lastEditedBy != null:
        return lastEditedBy(_that.id, _that.lastEditedBy);
      case FormulaProperty() when formula != null:
        return formula(_that.id, _that.formula);
      case RelationProperty() when relation != null:
        return relation(_that.id, _that.relation);
      case RollupProperty() when rollup != null:
        return rollup(_that.id, _that.rollup);
      case UniqueIdProperty() when uniqueId != null:
        return uniqueId(_that.id, _that.uniqueId);
      case VerificationProperty() when verification != null:
        return verification(_that.id, _that.verification);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class CheckboxProperty implements PropertyValue {
  const CheckboxProperty(
      {required this.id, required this.checkbox, final String? $type})
      : $type = $type ?? 'checkbox';
  factory CheckboxProperty.fromJson(Map<String, dynamic> json) =>
      _$CheckboxPropertyFromJson(json);

  @override
  final String id;
  final bool checkbox;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CheckboxPropertyCopyWith<CheckboxProperty> get copyWith =>
      _$CheckboxPropertyCopyWithImpl<CheckboxProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CheckboxPropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckboxProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.checkbox, checkbox) ||
                other.checkbox == checkbox));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, checkbox);

  @override
  String toString() {
    return 'PropertyValue.checkbox(id: $id, checkbox: $checkbox)';
  }
}

/// @nodoc
abstract mixin class $CheckboxPropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $CheckboxPropertyCopyWith(
          CheckboxProperty value, $Res Function(CheckboxProperty) _then) =
      _$CheckboxPropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, bool checkbox});
}

/// @nodoc
class _$CheckboxPropertyCopyWithImpl<$Res>
    implements $CheckboxPropertyCopyWith<$Res> {
  _$CheckboxPropertyCopyWithImpl(this._self, this._then);

  final CheckboxProperty _self;
  final $Res Function(CheckboxProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? checkbox = null,
  }) {
    return _then(CheckboxProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      checkbox: null == checkbox
          ? _self.checkbox
          : checkbox // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class RichTextProperty implements PropertyValue {
  const RichTextProperty(
      {required this.id,
      required final List<RichText> richText,
      final String? $type})
      : _richText = richText,
        $type = $type ?? 'richText';
  factory RichTextProperty.fromJson(Map<String, dynamic> json) =>
      _$RichTextPropertyFromJson(json);

  @override
  final String id;
  final List<RichText> _richText;
  List<RichText> get richText {
    if (_richText is EqualUnmodifiableListView) return _richText;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_richText);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextPropertyCopyWith<RichTextProperty> get copyWith =>
      _$RichTextPropertyCopyWithImpl<RichTextProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextPropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RichTextProperty &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._richText, _richText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_richText));

  @override
  String toString() {
    return 'PropertyValue.richText(id: $id, richText: $richText)';
  }
}

/// @nodoc
abstract mixin class $RichTextPropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $RichTextPropertyCopyWith(
          RichTextProperty value, $Res Function(RichTextProperty) _then) =
      _$RichTextPropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, List<RichText> richText});
}

/// @nodoc
class _$RichTextPropertyCopyWithImpl<$Res>
    implements $RichTextPropertyCopyWith<$Res> {
  _$RichTextPropertyCopyWithImpl(this._self, this._then);

  final RichTextProperty _self;
  final $Res Function(RichTextProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? richText = null,
  }) {
    return _then(RichTextProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      richText: null == richText
          ? _self._richText
          : richText // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TitleProperty implements PropertyValue {
  const TitleProperty(
      {required this.id,
      required final List<RichText> title,
      final String? $type})
      : _title = title,
        $type = $type ?? 'title';
  factory TitleProperty.fromJson(Map<String, dynamic> json) =>
      _$TitlePropertyFromJson(json);

  @override
  final String id;
  final List<RichText> _title;
  List<RichText> get title {
    if (_title is EqualUnmodifiableListView) return _title;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_title);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TitlePropertyCopyWith<TitleProperty> get copyWith =>
      _$TitlePropertyCopyWithImpl<TitleProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TitlePropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TitleProperty &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._title, _title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_title));

  @override
  String toString() {
    return 'PropertyValue.title(id: $id, title: $title)';
  }
}

/// @nodoc
abstract mixin class $TitlePropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $TitlePropertyCopyWith(
          TitleProperty value, $Res Function(TitleProperty) _then) =
      _$TitlePropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, List<RichText> title});
}

/// @nodoc
class _$TitlePropertyCopyWithImpl<$Res>
    implements $TitlePropertyCopyWith<$Res> {
  _$TitlePropertyCopyWithImpl(this._self, this._then);

  final TitleProperty _self;
  final $Res Function(TitleProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(TitleProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self._title
          : title // ignore: cast_nullable_to_non_nullable
              as List<RichText>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class NumberProperty implements PropertyValue {
  const NumberProperty(
      {required this.id, required this.number, final String? $type})
      : $type = $type ?? 'number';
  factory NumberProperty.fromJson(Map<String, dynamic> json) =>
      _$NumberPropertyFromJson(json);

  @override
  final String id;
  final double? number;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NumberPropertyCopyWith<NumberProperty> get copyWith =>
      _$NumberPropertyCopyWithImpl<NumberProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NumberPropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NumberProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, number);

  @override
  String toString() {
    return 'PropertyValue.number(id: $id, number: $number)';
  }
}

/// @nodoc
abstract mixin class $NumberPropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $NumberPropertyCopyWith(
          NumberProperty value, $Res Function(NumberProperty) _then) =
      _$NumberPropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, double? number});
}

/// @nodoc
class _$NumberPropertyCopyWithImpl<$Res>
    implements $NumberPropertyCopyWith<$Res> {
  _$NumberPropertyCopyWithImpl(this._self, this._then);

  final NumberProperty _self;
  final $Res Function(NumberProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? number = freezed,
  }) {
    return _then(NumberProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class SelectProperty implements PropertyValue {
  const SelectProperty(
      {required this.id, required this.select, final String? $type})
      : $type = $type ?? 'select';
  factory SelectProperty.fromJson(Map<String, dynamic> json) =>
      _$SelectPropertyFromJson(json);

  @override
  final String id;
  final SelectOption? select;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SelectPropertyCopyWith<SelectProperty> get copyWith =>
      _$SelectPropertyCopyWithImpl<SelectProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SelectPropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.select, select) || other.select == select));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, select);

  @override
  String toString() {
    return 'PropertyValue.select(id: $id, select: $select)';
  }
}

/// @nodoc
abstract mixin class $SelectPropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $SelectPropertyCopyWith(
          SelectProperty value, $Res Function(SelectProperty) _then) =
      _$SelectPropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, SelectOption? select});

  $SelectOptionCopyWith<$Res>? get select;
}

/// @nodoc
class _$SelectPropertyCopyWithImpl<$Res>
    implements $SelectPropertyCopyWith<$Res> {
  _$SelectPropertyCopyWithImpl(this._self, this._then);

  final SelectProperty _self;
  final $Res Function(SelectProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? select = freezed,
  }) {
    return _then(SelectProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      select: freezed == select
          ? _self.select
          : select // ignore: cast_nullable_to_non_nullable
              as SelectOption?,
    ));
  }

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SelectOptionCopyWith<$Res>? get select {
    if (_self.select == null) {
      return null;
    }

    return $SelectOptionCopyWith<$Res>(_self.select!, (value) {
      return _then(_self.copyWith(select: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class MultiSelectProperty implements PropertyValue {
  const MultiSelectProperty(
      {required this.id,
      required final List<SelectOption> multiSelect,
      final String? $type})
      : _multiSelect = multiSelect,
        $type = $type ?? 'multiSelect';
  factory MultiSelectProperty.fromJson(Map<String, dynamic> json) =>
      _$MultiSelectPropertyFromJson(json);

  @override
  final String id;
  final List<SelectOption> _multiSelect;
  List<SelectOption> get multiSelect {
    if (_multiSelect is EqualUnmodifiableListView) return _multiSelect;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_multiSelect);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultiSelectPropertyCopyWith<MultiSelectProperty> get copyWith =>
      _$MultiSelectPropertyCopyWithImpl<MultiSelectProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MultiSelectPropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultiSelectProperty &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._multiSelect, _multiSelect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_multiSelect));

  @override
  String toString() {
    return 'PropertyValue.multiSelect(id: $id, multiSelect: $multiSelect)';
  }
}

/// @nodoc
abstract mixin class $MultiSelectPropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $MultiSelectPropertyCopyWith(
          MultiSelectProperty value, $Res Function(MultiSelectProperty) _then) =
      _$MultiSelectPropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, List<SelectOption> multiSelect});
}

/// @nodoc
class _$MultiSelectPropertyCopyWithImpl<$Res>
    implements $MultiSelectPropertyCopyWith<$Res> {
  _$MultiSelectPropertyCopyWithImpl(this._self, this._then);

  final MultiSelectProperty _self;
  final $Res Function(MultiSelectProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? multiSelect = null,
  }) {
    return _then(MultiSelectProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      multiSelect: null == multiSelect
          ? _self._multiSelect
          : multiSelect // ignore: cast_nullable_to_non_nullable
              as List<SelectOption>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class StatusProperty implements PropertyValue {
  const StatusProperty(
      {required this.id, required this.status, final String? $type})
      : $type = $type ?? 'status';
  factory StatusProperty.fromJson(Map<String, dynamic> json) =>
      _$StatusPropertyFromJson(json);

  @override
  final String id;
  final StatusOption? status;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StatusPropertyCopyWith<StatusProperty> get copyWith =>
      _$StatusPropertyCopyWithImpl<StatusProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StatusPropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StatusProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status);

  @override
  String toString() {
    return 'PropertyValue.status(id: $id, status: $status)';
  }
}

/// @nodoc
abstract mixin class $StatusPropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $StatusPropertyCopyWith(
          StatusProperty value, $Res Function(StatusProperty) _then) =
      _$StatusPropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, StatusOption? status});

  $StatusOptionCopyWith<$Res>? get status;
}

/// @nodoc
class _$StatusPropertyCopyWithImpl<$Res>
    implements $StatusPropertyCopyWith<$Res> {
  _$StatusPropertyCopyWithImpl(this._self, this._then);

  final StatusProperty _self;
  final $Res Function(StatusProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? status = freezed,
  }) {
    return _then(StatusProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusOption?,
    ));
  }

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusOptionCopyWith<$Res>? get status {
    if (_self.status == null) {
      return null;
    }

    return $StatusOptionCopyWith<$Res>(_self.status!, (value) {
      return _then(_self.copyWith(status: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class DateProperty implements PropertyValue {
  const DateProperty(
      {required this.id, required this.date, final String? $type})
      : $type = $type ?? 'date';
  factory DateProperty.fromJson(Map<String, dynamic> json) =>
      _$DatePropertyFromJson(json);

  @override
  final String id;
  final DateValue? date;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DatePropertyCopyWith<DateProperty> get copyWith =>
      _$DatePropertyCopyWithImpl<DateProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DatePropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DateProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, date);

  @override
  String toString() {
    return 'PropertyValue.date(id: $id, date: $date)';
  }
}

/// @nodoc
abstract mixin class $DatePropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $DatePropertyCopyWith(
          DateProperty value, $Res Function(DateProperty) _then) =
      _$DatePropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, DateValue? date});

  $DateValueCopyWith<$Res>? get date;
}

/// @nodoc
class _$DatePropertyCopyWithImpl<$Res> implements $DatePropertyCopyWith<$Res> {
  _$DatePropertyCopyWithImpl(this._self, this._then);

  final DateProperty _self;
  final $Res Function(DateProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? date = freezed,
  }) {
    return _then(DateProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateValue?,
    ));
  }

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateValueCopyWith<$Res>? get date {
    if (_self.date == null) {
      return null;
    }

    return $DateValueCopyWith<$Res>(_self.date!, (value) {
      return _then(_self.copyWith(date: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class PeopleProperty implements PropertyValue {
  const PeopleProperty(
      {required this.id, required final List<User> people, final String? $type})
      : _people = people,
        $type = $type ?? 'people';
  factory PeopleProperty.fromJson(Map<String, dynamic> json) =>
      _$PeoplePropertyFromJson(json);

  @override
  final String id;
  final List<User> _people;
  List<User> get people {
    if (_people is EqualUnmodifiableListView) return _people;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_people);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PeoplePropertyCopyWith<PeopleProperty> get copyWith =>
      _$PeoplePropertyCopyWithImpl<PeopleProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PeoplePropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PeopleProperty &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._people, _people));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_people));

  @override
  String toString() {
    return 'PropertyValue.people(id: $id, people: $people)';
  }
}

/// @nodoc
abstract mixin class $PeoplePropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $PeoplePropertyCopyWith(
          PeopleProperty value, $Res Function(PeopleProperty) _then) =
      _$PeoplePropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, List<User> people});
}

/// @nodoc
class _$PeoplePropertyCopyWithImpl<$Res>
    implements $PeoplePropertyCopyWith<$Res> {
  _$PeoplePropertyCopyWithImpl(this._self, this._then);

  final PeopleProperty _self;
  final $Res Function(PeopleProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? people = null,
  }) {
    return _then(PeopleProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      people: null == people
          ? _self._people
          : people // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class FilesProperty implements PropertyValue {
  const FilesProperty(
      {required this.id,
      required final List<NotionFile> files,
      final String? $type})
      : _files = files,
        $type = $type ?? 'files';
  factory FilesProperty.fromJson(Map<String, dynamic> json) =>
      _$FilesPropertyFromJson(json);

  @override
  final String id;
  final List<NotionFile> _files;
  List<NotionFile> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FilesPropertyCopyWith<FilesProperty> get copyWith =>
      _$FilesPropertyCopyWithImpl<FilesProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FilesPropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FilesProperty &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_files));

  @override
  String toString() {
    return 'PropertyValue.files(id: $id, files: $files)';
  }
}

/// @nodoc
abstract mixin class $FilesPropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $FilesPropertyCopyWith(
          FilesProperty value, $Res Function(FilesProperty) _then) =
      _$FilesPropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, List<NotionFile> files});
}

/// @nodoc
class _$FilesPropertyCopyWithImpl<$Res>
    implements $FilesPropertyCopyWith<$Res> {
  _$FilesPropertyCopyWithImpl(this._self, this._then);

  final FilesProperty _self;
  final $Res Function(FilesProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? files = null,
  }) {
    return _then(FilesProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      files: null == files
          ? _self._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<NotionFile>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class EmailProperty implements PropertyValue {
  const EmailProperty(
      {required this.id, required this.email, final String? $type})
      : $type = $type ?? 'email';
  factory EmailProperty.fromJson(Map<String, dynamic> json) =>
      _$EmailPropertyFromJson(json);

  @override
  final String id;
  final String? email;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmailPropertyCopyWith<EmailProperty> get copyWith =>
      _$EmailPropertyCopyWithImpl<EmailProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EmailPropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email);

  @override
  String toString() {
    return 'PropertyValue.email(id: $id, email: $email)';
  }
}

/// @nodoc
abstract mixin class $EmailPropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $EmailPropertyCopyWith(
          EmailProperty value, $Res Function(EmailProperty) _then) =
      _$EmailPropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String? email});
}

/// @nodoc
class _$EmailPropertyCopyWithImpl<$Res>
    implements $EmailPropertyCopyWith<$Res> {
  _$EmailPropertyCopyWithImpl(this._self, this._then);

  final EmailProperty _self;
  final $Res Function(EmailProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? email = freezed,
  }) {
    return _then(EmailProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class PhoneNumberProperty implements PropertyValue {
  const PhoneNumberProperty(
      {required this.id, required this.phoneNumber, final String? $type})
      : $type = $type ?? 'phoneNumber';
  factory PhoneNumberProperty.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberPropertyFromJson(json);

  @override
  final String id;
  final String? phoneNumber;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PhoneNumberPropertyCopyWith<PhoneNumberProperty> get copyWith =>
      _$PhoneNumberPropertyCopyWithImpl<PhoneNumberProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PhoneNumberPropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhoneNumberProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, phoneNumber);

  @override
  String toString() {
    return 'PropertyValue.phoneNumber(id: $id, phoneNumber: $phoneNumber)';
  }
}

/// @nodoc
abstract mixin class $PhoneNumberPropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $PhoneNumberPropertyCopyWith(
          PhoneNumberProperty value, $Res Function(PhoneNumberProperty) _then) =
      _$PhoneNumberPropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String? phoneNumber});
}

/// @nodoc
class _$PhoneNumberPropertyCopyWithImpl<$Res>
    implements $PhoneNumberPropertyCopyWith<$Res> {
  _$PhoneNumberPropertyCopyWithImpl(this._self, this._then);

  final PhoneNumberProperty _self;
  final $Res Function(PhoneNumberProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? phoneNumber = freezed,
  }) {
    return _then(PhoneNumberProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class UrlProperty implements PropertyValue {
  const UrlProperty({required this.id, required this.url, final String? $type})
      : $type = $type ?? 'url';
  factory UrlProperty.fromJson(Map<String, dynamic> json) =>
      _$UrlPropertyFromJson(json);

  @override
  final String id;
  final String? url;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UrlPropertyCopyWith<UrlProperty> get copyWith =>
      _$UrlPropertyCopyWithImpl<UrlProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UrlPropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UrlProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  @override
  String toString() {
    return 'PropertyValue.url(id: $id, url: $url)';
  }
}

/// @nodoc
abstract mixin class $UrlPropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $UrlPropertyCopyWith(
          UrlProperty value, $Res Function(UrlProperty) _then) =
      _$UrlPropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String? url});
}

/// @nodoc
class _$UrlPropertyCopyWithImpl<$Res> implements $UrlPropertyCopyWith<$Res> {
  _$UrlPropertyCopyWithImpl(this._self, this._then);

  final UrlProperty _self;
  final $Res Function(UrlProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? url = freezed,
  }) {
    return _then(UrlProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class CreatedTimeProperty implements PropertyValue {
  const CreatedTimeProperty(
      {required this.id, required this.createdTime, final String? $type})
      : $type = $type ?? 'createdTime';
  factory CreatedTimeProperty.fromJson(Map<String, dynamic> json) =>
      _$CreatedTimePropertyFromJson(json);

  @override
  final String id;
  final DateTime createdTime;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatedTimePropertyCopyWith<CreatedTimeProperty> get copyWith =>
      _$CreatedTimePropertyCopyWithImpl<CreatedTimeProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatedTimePropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatedTimeProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdTime);

  @override
  String toString() {
    return 'PropertyValue.createdTime(id: $id, createdTime: $createdTime)';
  }
}

/// @nodoc
abstract mixin class $CreatedTimePropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $CreatedTimePropertyCopyWith(
          CreatedTimeProperty value, $Res Function(CreatedTimeProperty) _then) =
      _$CreatedTimePropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, DateTime createdTime});
}

/// @nodoc
class _$CreatedTimePropertyCopyWithImpl<$Res>
    implements $CreatedTimePropertyCopyWith<$Res> {
  _$CreatedTimePropertyCopyWithImpl(this._self, this._then);

  final CreatedTimeProperty _self;
  final $Res Function(CreatedTimeProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? createdTime = null,
  }) {
    return _then(CreatedTimeProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _self.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class CreatedByProperty implements PropertyValue {
  const CreatedByProperty(
      {required this.id, required this.createdBy, final String? $type})
      : $type = $type ?? 'createdBy';
  factory CreatedByProperty.fromJson(Map<String, dynamic> json) =>
      _$CreatedByPropertyFromJson(json);

  @override
  final String id;
  final User createdBy;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatedByPropertyCopyWith<CreatedByProperty> get copyWith =>
      _$CreatedByPropertyCopyWithImpl<CreatedByProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatedByPropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatedByProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdBy);

  @override
  String toString() {
    return 'PropertyValue.createdBy(id: $id, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class $CreatedByPropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $CreatedByPropertyCopyWith(
          CreatedByProperty value, $Res Function(CreatedByProperty) _then) =
      _$CreatedByPropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, User createdBy});

  $UserCopyWith<$Res> get createdBy;
}

/// @nodoc
class _$CreatedByPropertyCopyWithImpl<$Res>
    implements $CreatedByPropertyCopyWith<$Res> {
  _$CreatedByPropertyCopyWithImpl(this._self, this._then);

  final CreatedByProperty _self;
  final $Res Function(CreatedByProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? createdBy = null,
  }) {
    return _then(CreatedByProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class LastEditedTimeProperty implements PropertyValue {
  const LastEditedTimeProperty(
      {required this.id, required this.lastEditedTime, final String? $type})
      : $type = $type ?? 'lastEditedTime';
  factory LastEditedTimeProperty.fromJson(Map<String, dynamic> json) =>
      _$LastEditedTimePropertyFromJson(json);

  @override
  final String id;
  final DateTime lastEditedTime;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LastEditedTimePropertyCopyWith<LastEditedTimeProperty> get copyWith =>
      _$LastEditedTimePropertyCopyWithImpl<LastEditedTimeProperty>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LastEditedTimePropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LastEditedTimeProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lastEditedTime, lastEditedTime) ||
                other.lastEditedTime == lastEditedTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, lastEditedTime);

  @override
  String toString() {
    return 'PropertyValue.lastEditedTime(id: $id, lastEditedTime: $lastEditedTime)';
  }
}

/// @nodoc
abstract mixin class $LastEditedTimePropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $LastEditedTimePropertyCopyWith(LastEditedTimeProperty value,
          $Res Function(LastEditedTimeProperty) _then) =
      _$LastEditedTimePropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, DateTime lastEditedTime});
}

/// @nodoc
class _$LastEditedTimePropertyCopyWithImpl<$Res>
    implements $LastEditedTimePropertyCopyWith<$Res> {
  _$LastEditedTimePropertyCopyWithImpl(this._self, this._then);

  final LastEditedTimeProperty _self;
  final $Res Function(LastEditedTimeProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? lastEditedTime = null,
  }) {
    return _then(LastEditedTimeProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastEditedTime: null == lastEditedTime
          ? _self.lastEditedTime
          : lastEditedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class LastEditedByProperty implements PropertyValue {
  const LastEditedByProperty(
      {required this.id, required this.lastEditedBy, final String? $type})
      : $type = $type ?? 'lastEditedBy';
  factory LastEditedByProperty.fromJson(Map<String, dynamic> json) =>
      _$LastEditedByPropertyFromJson(json);

  @override
  final String id;
  final User lastEditedBy;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LastEditedByPropertyCopyWith<LastEditedByProperty> get copyWith =>
      _$LastEditedByPropertyCopyWithImpl<LastEditedByProperty>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LastEditedByPropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LastEditedByProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lastEditedBy, lastEditedBy) ||
                other.lastEditedBy == lastEditedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, lastEditedBy);

  @override
  String toString() {
    return 'PropertyValue.lastEditedBy(id: $id, lastEditedBy: $lastEditedBy)';
  }
}

/// @nodoc
abstract mixin class $LastEditedByPropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $LastEditedByPropertyCopyWith(LastEditedByProperty value,
          $Res Function(LastEditedByProperty) _then) =
      _$LastEditedByPropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, User lastEditedBy});

  $UserCopyWith<$Res> get lastEditedBy;
}

/// @nodoc
class _$LastEditedByPropertyCopyWithImpl<$Res>
    implements $LastEditedByPropertyCopyWith<$Res> {
  _$LastEditedByPropertyCopyWithImpl(this._self, this._then);

  final LastEditedByProperty _self;
  final $Res Function(LastEditedByProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? lastEditedBy = null,
  }) {
    return _then(LastEditedByProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastEditedBy: null == lastEditedBy
          ? _self.lastEditedBy
          : lastEditedBy // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of PropertyValue
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
@JsonSerializable()
class FormulaProperty implements PropertyValue {
  const FormulaProperty(
      {required this.id, required this.formula, final String? $type})
      : $type = $type ?? 'formula';
  factory FormulaProperty.fromJson(Map<String, dynamic> json) =>
      _$FormulaPropertyFromJson(json);

  @override
  final String id;
  final FormulaValue formula;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormulaPropertyCopyWith<FormulaProperty> get copyWith =>
      _$FormulaPropertyCopyWithImpl<FormulaProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FormulaPropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormulaProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.formula, formula) || other.formula == formula));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, formula);

  @override
  String toString() {
    return 'PropertyValue.formula(id: $id, formula: $formula)';
  }
}

/// @nodoc
abstract mixin class $FormulaPropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $FormulaPropertyCopyWith(
          FormulaProperty value, $Res Function(FormulaProperty) _then) =
      _$FormulaPropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, FormulaValue formula});

  $FormulaValueCopyWith<$Res> get formula;
}

/// @nodoc
class _$FormulaPropertyCopyWithImpl<$Res>
    implements $FormulaPropertyCopyWith<$Res> {
  _$FormulaPropertyCopyWithImpl(this._self, this._then);

  final FormulaProperty _self;
  final $Res Function(FormulaProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? formula = null,
  }) {
    return _then(FormulaProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      formula: null == formula
          ? _self.formula
          : formula // ignore: cast_nullable_to_non_nullable
              as FormulaValue,
    ));
  }

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormulaValueCopyWith<$Res> get formula {
    return $FormulaValueCopyWith<$Res>(_self.formula, (value) {
      return _then(_self.copyWith(formula: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RelationProperty implements PropertyValue {
  const RelationProperty(
      {required this.id,
      required final List<RelationItem> relation,
      final String? $type})
      : _relation = relation,
        $type = $type ?? 'relation';
  factory RelationProperty.fromJson(Map<String, dynamic> json) =>
      _$RelationPropertyFromJson(json);

  @override
  final String id;
  final List<RelationItem> _relation;
  List<RelationItem> get relation {
    if (_relation is EqualUnmodifiableListView) return _relation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relation);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RelationPropertyCopyWith<RelationProperty> get copyWith =>
      _$RelationPropertyCopyWithImpl<RelationProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RelationPropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RelationProperty &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._relation, _relation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_relation));

  @override
  String toString() {
    return 'PropertyValue.relation(id: $id, relation: $relation)';
  }
}

/// @nodoc
abstract mixin class $RelationPropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $RelationPropertyCopyWith(
          RelationProperty value, $Res Function(RelationProperty) _then) =
      _$RelationPropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, List<RelationItem> relation});
}

/// @nodoc
class _$RelationPropertyCopyWithImpl<$Res>
    implements $RelationPropertyCopyWith<$Res> {
  _$RelationPropertyCopyWithImpl(this._self, this._then);

  final RelationProperty _self;
  final $Res Function(RelationProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? relation = null,
  }) {
    return _then(RelationProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      relation: null == relation
          ? _self._relation
          : relation // ignore: cast_nullable_to_non_nullable
              as List<RelationItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class RollupProperty implements PropertyValue {
  const RollupProperty(
      {required this.id, required this.rollup, final String? $type})
      : $type = $type ?? 'rollup';
  factory RollupProperty.fromJson(Map<String, dynamic> json) =>
      _$RollupPropertyFromJson(json);

  @override
  final String id;
  final RollupValue rollup;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RollupPropertyCopyWith<RollupProperty> get copyWith =>
      _$RollupPropertyCopyWithImpl<RollupProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RollupPropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RollupProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rollup, rollup) || other.rollup == rollup));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, rollup);

  @override
  String toString() {
    return 'PropertyValue.rollup(id: $id, rollup: $rollup)';
  }
}

/// @nodoc
abstract mixin class $RollupPropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $RollupPropertyCopyWith(
          RollupProperty value, $Res Function(RollupProperty) _then) =
      _$RollupPropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, RollupValue rollup});

  $RollupValueCopyWith<$Res> get rollup;
}

/// @nodoc
class _$RollupPropertyCopyWithImpl<$Res>
    implements $RollupPropertyCopyWith<$Res> {
  _$RollupPropertyCopyWithImpl(this._self, this._then);

  final RollupProperty _self;
  final $Res Function(RollupProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? rollup = null,
  }) {
    return _then(RollupProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rollup: null == rollup
          ? _self.rollup
          : rollup // ignore: cast_nullable_to_non_nullable
              as RollupValue,
    ));
  }

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RollupValueCopyWith<$Res> get rollup {
    return $RollupValueCopyWith<$Res>(_self.rollup, (value) {
      return _then(_self.copyWith(rollup: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class UniqueIdProperty implements PropertyValue {
  const UniqueIdProperty(
      {required this.id, required this.uniqueId, final String? $type})
      : $type = $type ?? 'uniqueId';
  factory UniqueIdProperty.fromJson(Map<String, dynamic> json) =>
      _$UniqueIdPropertyFromJson(json);

  @override
  final String id;
  final UniqueId uniqueId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UniqueIdPropertyCopyWith<UniqueIdProperty> get copyWith =>
      _$UniqueIdPropertyCopyWithImpl<UniqueIdProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UniqueIdPropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UniqueIdProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, uniqueId);

  @override
  String toString() {
    return 'PropertyValue.uniqueId(id: $id, uniqueId: $uniqueId)';
  }
}

/// @nodoc
abstract mixin class $UniqueIdPropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $UniqueIdPropertyCopyWith(
          UniqueIdProperty value, $Res Function(UniqueIdProperty) _then) =
      _$UniqueIdPropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, UniqueId uniqueId});

  $UniqueIdCopyWith<$Res> get uniqueId;
}

/// @nodoc
class _$UniqueIdPropertyCopyWithImpl<$Res>
    implements $UniqueIdPropertyCopyWith<$Res> {
  _$UniqueIdPropertyCopyWithImpl(this._self, this._then);

  final UniqueIdProperty _self;
  final $Res Function(UniqueIdProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? uniqueId = null,
  }) {
    return _then(UniqueIdProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueId: null == uniqueId
          ? _self.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueIdCopyWith<$Res> get uniqueId {
    return $UniqueIdCopyWith<$Res>(_self.uniqueId, (value) {
      return _then(_self.copyWith(uniqueId: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class VerificationProperty implements PropertyValue {
  const VerificationProperty(
      {required this.id, required this.verification, final String? $type})
      : $type = $type ?? 'verification';
  factory VerificationProperty.fromJson(Map<String, dynamic> json) =>
      _$VerificationPropertyFromJson(json);

  @override
  final String id;
  final VerificationValue? verification;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerificationPropertyCopyWith<VerificationProperty> get copyWith =>
      _$VerificationPropertyCopyWithImpl<VerificationProperty>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerificationPropertyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerificationProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.verification, verification) ||
                other.verification == verification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, verification);

  @override
  String toString() {
    return 'PropertyValue.verification(id: $id, verification: $verification)';
  }
}

/// @nodoc
abstract mixin class $VerificationPropertyCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory $VerificationPropertyCopyWith(VerificationProperty value,
          $Res Function(VerificationProperty) _then) =
      _$VerificationPropertyCopyWithImpl;
  @override
  @useResult
  $Res call({String id, VerificationValue? verification});

  $VerificationValueCopyWith<$Res>? get verification;
}

/// @nodoc
class _$VerificationPropertyCopyWithImpl<$Res>
    implements $VerificationPropertyCopyWith<$Res> {
  _$VerificationPropertyCopyWithImpl(this._self, this._then);

  final VerificationProperty _self;
  final $Res Function(VerificationProperty) _then;

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? verification = freezed,
  }) {
    return _then(VerificationProperty(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      verification: freezed == verification
          ? _self.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as VerificationValue?,
    ));
  }

  /// Create a copy of PropertyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerificationValueCopyWith<$Res>? get verification {
    if (_self.verification == null) {
      return null;
    }

    return $VerificationValueCopyWith<$Res>(_self.verification!, (value) {
      return _then(_self.copyWith(verification: value));
    });
  }
}

/// @nodoc
mixin _$SelectOption {
  String get id;
  String get name;
  String get color;

  /// Create a copy of SelectOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SelectOptionCopyWith<SelectOption> get copyWith =>
      _$SelectOptionCopyWithImpl<SelectOption>(
          this as SelectOption, _$identity);

  /// Serializes this SelectOption to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectOption &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color);

  @override
  String toString() {
    return 'SelectOption(id: $id, name: $name, color: $color)';
  }
}

/// @nodoc
abstract mixin class $SelectOptionCopyWith<$Res> {
  factory $SelectOptionCopyWith(
          SelectOption value, $Res Function(SelectOption) _then) =
      _$SelectOptionCopyWithImpl;
  @useResult
  $Res call({String id, String name, String color});
}

/// @nodoc
class _$SelectOptionCopyWithImpl<$Res> implements $SelectOptionCopyWith<$Res> {
  _$SelectOptionCopyWithImpl(this._self, this._then);

  final SelectOption _self;
  final $Res Function(SelectOption) _then;

  /// Create a copy of SelectOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
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
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SelectOption].
extension SelectOptionPatterns on SelectOption {
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
    TResult Function(_SelectOption value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SelectOption() when $default != null:
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
    TResult Function(_SelectOption value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectOption():
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
    TResult? Function(_SelectOption value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectOption() when $default != null:
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
    TResult Function(String id, String name, String color)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SelectOption() when $default != null:
        return $default(_that.id, _that.name, _that.color);
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
    TResult Function(String id, String name, String color) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectOption():
        return $default(_that.id, _that.name, _that.color);
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
    TResult? Function(String id, String name, String color)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectOption() when $default != null:
        return $default(_that.id, _that.name, _that.color);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SelectOption implements SelectOption {
  const _SelectOption(
      {required this.id, required this.name, required this.color});
  factory _SelectOption.fromJson(Map<String, dynamic> json) =>
      _$SelectOptionFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String color;

  /// Create a copy of SelectOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SelectOptionCopyWith<_SelectOption> get copyWith =>
      __$SelectOptionCopyWithImpl<_SelectOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SelectOptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectOption &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color);

  @override
  String toString() {
    return 'SelectOption(id: $id, name: $name, color: $color)';
  }
}

/// @nodoc
abstract mixin class _$SelectOptionCopyWith<$Res>
    implements $SelectOptionCopyWith<$Res> {
  factory _$SelectOptionCopyWith(
          _SelectOption value, $Res Function(_SelectOption) _then) =
      __$SelectOptionCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name, String color});
}

/// @nodoc
class __$SelectOptionCopyWithImpl<$Res>
    implements _$SelectOptionCopyWith<$Res> {
  __$SelectOptionCopyWithImpl(this._self, this._then);

  final _SelectOption _self;
  final $Res Function(_SelectOption) _then;

  /// Create a copy of SelectOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
  }) {
    return _then(_SelectOption(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$StatusOption {
  String get id;
  String get name;
  String get color;

  /// Create a copy of StatusOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StatusOptionCopyWith<StatusOption> get copyWith =>
      _$StatusOptionCopyWithImpl<StatusOption>(
          this as StatusOption, _$identity);

  /// Serializes this StatusOption to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StatusOption &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color);

  @override
  String toString() {
    return 'StatusOption(id: $id, name: $name, color: $color)';
  }
}

/// @nodoc
abstract mixin class $StatusOptionCopyWith<$Res> {
  factory $StatusOptionCopyWith(
          StatusOption value, $Res Function(StatusOption) _then) =
      _$StatusOptionCopyWithImpl;
  @useResult
  $Res call({String id, String name, String color});
}

/// @nodoc
class _$StatusOptionCopyWithImpl<$Res> implements $StatusOptionCopyWith<$Res> {
  _$StatusOptionCopyWithImpl(this._self, this._then);

  final StatusOption _self;
  final $Res Function(StatusOption) _then;

  /// Create a copy of StatusOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
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
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [StatusOption].
extension StatusOptionPatterns on StatusOption {
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
    TResult Function(_StatusOption value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StatusOption() when $default != null:
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
    TResult Function(_StatusOption value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatusOption():
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
    TResult? Function(_StatusOption value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatusOption() when $default != null:
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
    TResult Function(String id, String name, String color)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StatusOption() when $default != null:
        return $default(_that.id, _that.name, _that.color);
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
    TResult Function(String id, String name, String color) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatusOption():
        return $default(_that.id, _that.name, _that.color);
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
    TResult? Function(String id, String name, String color)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatusOption() when $default != null:
        return $default(_that.id, _that.name, _that.color);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StatusOption implements StatusOption {
  const _StatusOption(
      {required this.id, required this.name, required this.color});
  factory _StatusOption.fromJson(Map<String, dynamic> json) =>
      _$StatusOptionFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String color;

  /// Create a copy of StatusOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StatusOptionCopyWith<_StatusOption> get copyWith =>
      __$StatusOptionCopyWithImpl<_StatusOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StatusOptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatusOption &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color);

  @override
  String toString() {
    return 'StatusOption(id: $id, name: $name, color: $color)';
  }
}

/// @nodoc
abstract mixin class _$StatusOptionCopyWith<$Res>
    implements $StatusOptionCopyWith<$Res> {
  factory _$StatusOptionCopyWith(
          _StatusOption value, $Res Function(_StatusOption) _then) =
      __$StatusOptionCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name, String color});
}

/// @nodoc
class __$StatusOptionCopyWithImpl<$Res>
    implements _$StatusOptionCopyWith<$Res> {
  __$StatusOptionCopyWithImpl(this._self, this._then);

  final _StatusOption _self;
  final $Res Function(_StatusOption) _then;

  /// Create a copy of StatusOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
  }) {
    return _then(_StatusOption(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$DateValue {
  String get start;
  String? get end;
  String? get timeZone;

  /// Create a copy of DateValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DateValueCopyWith<DateValue> get copyWith =>
      _$DateValueCopyWithImpl<DateValue>(this as DateValue, _$identity);

  /// Serializes this DateValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DateValue &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end, timeZone);

  @override
  String toString() {
    return 'DateValue(start: $start, end: $end, timeZone: $timeZone)';
  }
}

/// @nodoc
abstract mixin class $DateValueCopyWith<$Res> {
  factory $DateValueCopyWith(DateValue value, $Res Function(DateValue) _then) =
      _$DateValueCopyWithImpl;
  @useResult
  $Res call({String start, String? end, String? timeZone});
}

/// @nodoc
class _$DateValueCopyWithImpl<$Res> implements $DateValueCopyWith<$Res> {
  _$DateValueCopyWithImpl(this._self, this._then);

  final DateValue _self;
  final $Res Function(DateValue) _then;

  /// Create a copy of DateValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = freezed,
    Object? timeZone = freezed,
  }) {
    return _then(_self.copyWith(
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: freezed == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: freezed == timeZone
          ? _self.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DateValue].
extension DateValuePatterns on DateValue {
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
    TResult Function(_DateValue value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DateValue() when $default != null:
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
    TResult Function(_DateValue value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DateValue():
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
    TResult? Function(_DateValue value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DateValue() when $default != null:
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
    TResult Function(String start, String? end, String? timeZone)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DateValue() when $default != null:
        return $default(_that.start, _that.end, _that.timeZone);
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
    TResult Function(String start, String? end, String? timeZone) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DateValue():
        return $default(_that.start, _that.end, _that.timeZone);
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
    TResult? Function(String start, String? end, String? timeZone)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DateValue() when $default != null:
        return $default(_that.start, _that.end, _that.timeZone);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DateValue implements DateValue {
  const _DateValue({required this.start, this.end, this.timeZone});
  factory _DateValue.fromJson(Map<String, dynamic> json) =>
      _$DateValueFromJson(json);

  @override
  final String start;
  @override
  final String? end;
  @override
  final String? timeZone;

  /// Create a copy of DateValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DateValueCopyWith<_DateValue> get copyWith =>
      __$DateValueCopyWithImpl<_DateValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DateValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DateValue &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end, timeZone);

  @override
  String toString() {
    return 'DateValue(start: $start, end: $end, timeZone: $timeZone)';
  }
}

/// @nodoc
abstract mixin class _$DateValueCopyWith<$Res>
    implements $DateValueCopyWith<$Res> {
  factory _$DateValueCopyWith(
          _DateValue value, $Res Function(_DateValue) _then) =
      __$DateValueCopyWithImpl;
  @override
  @useResult
  $Res call({String start, String? end, String? timeZone});
}

/// @nodoc
class __$DateValueCopyWithImpl<$Res> implements _$DateValueCopyWith<$Res> {
  __$DateValueCopyWithImpl(this._self, this._then);

  final _DateValue _self;
  final $Res Function(_DateValue) _then;

  /// Create a copy of DateValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? start = null,
    Object? end = freezed,
    Object? timeZone = freezed,
  }) {
    return _then(_DateValue(
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: freezed == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: freezed == timeZone
          ? _self.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
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
  /// Serializes this FormulaValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FormulaValue);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FormulaValue()';
  }
}

/// @nodoc
class $FormulaValueCopyWith<$Res> {
  $FormulaValueCopyWith(FormulaValue _, $Res Function(FormulaValue) __);
}

/// Adds pattern-matching-related methods to [FormulaValue].
extension FormulaValuePatterns on FormulaValue {
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
    TResult Function(BooleanFormulaValue value)? boolean,
    TResult Function(DateFormulaValue value)? date,
    TResult Function(NumberFormulaValue value)? number,
    TResult Function(StringFormulaValue value)? string,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BooleanFormulaValue() when boolean != null:
        return boolean(_that);
      case DateFormulaValue() when date != null:
        return date(_that);
      case NumberFormulaValue() when number != null:
        return number(_that);
      case StringFormulaValue() when string != null:
        return string(_that);
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
    required TResult Function(BooleanFormulaValue value) boolean,
    required TResult Function(DateFormulaValue value) date,
    required TResult Function(NumberFormulaValue value) number,
    required TResult Function(StringFormulaValue value) string,
  }) {
    final _that = this;
    switch (_that) {
      case BooleanFormulaValue():
        return boolean(_that);
      case DateFormulaValue():
        return date(_that);
      case NumberFormulaValue():
        return number(_that);
      case StringFormulaValue():
        return string(_that);
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
    TResult? Function(BooleanFormulaValue value)? boolean,
    TResult? Function(DateFormulaValue value)? date,
    TResult? Function(NumberFormulaValue value)? number,
    TResult? Function(StringFormulaValue value)? string,
  }) {
    final _that = this;
    switch (_that) {
      case BooleanFormulaValue() when boolean != null:
        return boolean(_that);
      case DateFormulaValue() when date != null:
        return date(_that);
      case NumberFormulaValue() when number != null:
        return number(_that);
      case StringFormulaValue() when string != null:
        return string(_that);
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
    TResult Function(bool boolean)? boolean,
    TResult Function(DateValue? date)? date,
    TResult Function(double? number)? number,
    TResult Function(String? string)? string,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BooleanFormulaValue() when boolean != null:
        return boolean(_that.boolean);
      case DateFormulaValue() when date != null:
        return date(_that.date);
      case NumberFormulaValue() when number != null:
        return number(_that.number);
      case StringFormulaValue() when string != null:
        return string(_that.string);
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
    required TResult Function(bool boolean) boolean,
    required TResult Function(DateValue? date) date,
    required TResult Function(double? number) number,
    required TResult Function(String? string) string,
  }) {
    final _that = this;
    switch (_that) {
      case BooleanFormulaValue():
        return boolean(_that.boolean);
      case DateFormulaValue():
        return date(_that.date);
      case NumberFormulaValue():
        return number(_that.number);
      case StringFormulaValue():
        return string(_that.string);
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
    TResult? Function(bool boolean)? boolean,
    TResult? Function(DateValue? date)? date,
    TResult? Function(double? number)? number,
    TResult? Function(String? string)? string,
  }) {
    final _that = this;
    switch (_that) {
      case BooleanFormulaValue() when boolean != null:
        return boolean(_that.boolean);
      case DateFormulaValue() when date != null:
        return date(_that.date);
      case NumberFormulaValue() when number != null:
        return number(_that.number);
      case StringFormulaValue() when string != null:
        return string(_that.string);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class BooleanFormulaValue implements FormulaValue {
  const BooleanFormulaValue({required this.boolean, final String? $type})
      : $type = $type ?? 'boolean';
  factory BooleanFormulaValue.fromJson(Map<String, dynamic> json) =>
      _$BooleanFormulaValueFromJson(json);

  final bool boolean;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BooleanFormulaValueCopyWith<BooleanFormulaValue> get copyWith =>
      _$BooleanFormulaValueCopyWithImpl<BooleanFormulaValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BooleanFormulaValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BooleanFormulaValue &&
            (identical(other.boolean, boolean) || other.boolean == boolean));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, boolean);

  @override
  String toString() {
    return 'FormulaValue.boolean(boolean: $boolean)';
  }
}

/// @nodoc
abstract mixin class $BooleanFormulaValueCopyWith<$Res>
    implements $FormulaValueCopyWith<$Res> {
  factory $BooleanFormulaValueCopyWith(
          BooleanFormulaValue value, $Res Function(BooleanFormulaValue) _then) =
      _$BooleanFormulaValueCopyWithImpl;
  @useResult
  $Res call({bool boolean});
}

/// @nodoc
class _$BooleanFormulaValueCopyWithImpl<$Res>
    implements $BooleanFormulaValueCopyWith<$Res> {
  _$BooleanFormulaValueCopyWithImpl(this._self, this._then);

  final BooleanFormulaValue _self;
  final $Res Function(BooleanFormulaValue) _then;

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? boolean = null,
  }) {
    return _then(BooleanFormulaValue(
      boolean: null == boolean
          ? _self.boolean
          : boolean // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class DateFormulaValue implements FormulaValue {
  const DateFormulaValue({required this.date, final String? $type})
      : $type = $type ?? 'date';
  factory DateFormulaValue.fromJson(Map<String, dynamic> json) =>
      _$DateFormulaValueFromJson(json);

  final DateValue? date;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DateFormulaValueCopyWith<DateFormulaValue> get copyWith =>
      _$DateFormulaValueCopyWithImpl<DateFormulaValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DateFormulaValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DateFormulaValue &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  @override
  String toString() {
    return 'FormulaValue.date(date: $date)';
  }
}

/// @nodoc
abstract mixin class $DateFormulaValueCopyWith<$Res>
    implements $FormulaValueCopyWith<$Res> {
  factory $DateFormulaValueCopyWith(
          DateFormulaValue value, $Res Function(DateFormulaValue) _then) =
      _$DateFormulaValueCopyWithImpl;
  @useResult
  $Res call({DateValue? date});

  $DateValueCopyWith<$Res>? get date;
}

/// @nodoc
class _$DateFormulaValueCopyWithImpl<$Res>
    implements $DateFormulaValueCopyWith<$Res> {
  _$DateFormulaValueCopyWithImpl(this._self, this._then);

  final DateFormulaValue _self;
  final $Res Function(DateFormulaValue) _then;

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = freezed,
  }) {
    return _then(DateFormulaValue(
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateValue?,
    ));
  }

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateValueCopyWith<$Res>? get date {
    if (_self.date == null) {
      return null;
    }

    return $DateValueCopyWith<$Res>(_self.date!, (value) {
      return _then(_self.copyWith(date: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class NumberFormulaValue implements FormulaValue {
  const NumberFormulaValue({required this.number, final String? $type})
      : $type = $type ?? 'number';
  factory NumberFormulaValue.fromJson(Map<String, dynamic> json) =>
      _$NumberFormulaValueFromJson(json);

  final double? number;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NumberFormulaValueCopyWith<NumberFormulaValue> get copyWith =>
      _$NumberFormulaValueCopyWithImpl<NumberFormulaValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NumberFormulaValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NumberFormulaValue &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number);

  @override
  String toString() {
    return 'FormulaValue.number(number: $number)';
  }
}

/// @nodoc
abstract mixin class $NumberFormulaValueCopyWith<$Res>
    implements $FormulaValueCopyWith<$Res> {
  factory $NumberFormulaValueCopyWith(
          NumberFormulaValue value, $Res Function(NumberFormulaValue) _then) =
      _$NumberFormulaValueCopyWithImpl;
  @useResult
  $Res call({double? number});
}

/// @nodoc
class _$NumberFormulaValueCopyWithImpl<$Res>
    implements $NumberFormulaValueCopyWith<$Res> {
  _$NumberFormulaValueCopyWithImpl(this._self, this._then);

  final NumberFormulaValue _self;
  final $Res Function(NumberFormulaValue) _then;

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? number = freezed,
  }) {
    return _then(NumberFormulaValue(
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class StringFormulaValue implements FormulaValue {
  const StringFormulaValue({required this.string, final String? $type})
      : $type = $type ?? 'string';
  factory StringFormulaValue.fromJson(Map<String, dynamic> json) =>
      _$StringFormulaValueFromJson(json);

  final String? string;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StringFormulaValueCopyWith<StringFormulaValue> get copyWith =>
      _$StringFormulaValueCopyWithImpl<StringFormulaValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StringFormulaValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StringFormulaValue &&
            (identical(other.string, string) || other.string == string));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, string);

  @override
  String toString() {
    return 'FormulaValue.string(string: $string)';
  }
}

/// @nodoc
abstract mixin class $StringFormulaValueCopyWith<$Res>
    implements $FormulaValueCopyWith<$Res> {
  factory $StringFormulaValueCopyWith(
          StringFormulaValue value, $Res Function(StringFormulaValue) _then) =
      _$StringFormulaValueCopyWithImpl;
  @useResult
  $Res call({String? string});
}

/// @nodoc
class _$StringFormulaValueCopyWithImpl<$Res>
    implements $StringFormulaValueCopyWith<$Res> {
  _$StringFormulaValueCopyWithImpl(this._self, this._then);

  final StringFormulaValue _self;
  final $Res Function(StringFormulaValue) _then;

  /// Create a copy of FormulaValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? string = freezed,
  }) {
    return _then(StringFormulaValue(
      string: freezed == string
          ? _self.string
          : string // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$RelationItem {
  String get id;

  /// Create a copy of RelationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RelationItemCopyWith<RelationItem> get copyWith =>
      _$RelationItemCopyWithImpl<RelationItem>(
          this as RelationItem, _$identity);

  /// Serializes this RelationItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RelationItem &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'RelationItem(id: $id)';
  }
}

/// @nodoc
abstract mixin class $RelationItemCopyWith<$Res> {
  factory $RelationItemCopyWith(
          RelationItem value, $Res Function(RelationItem) _then) =
      _$RelationItemCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$RelationItemCopyWithImpl<$Res> implements $RelationItemCopyWith<$Res> {
  _$RelationItemCopyWithImpl(this._self, this._then);

  final RelationItem _self;
  final $Res Function(RelationItem) _then;

  /// Create a copy of RelationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [RelationItem].
extension RelationItemPatterns on RelationItem {
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
    TResult Function(_RelationItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RelationItem() when $default != null:
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
    TResult Function(_RelationItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelationItem():
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
    TResult? Function(_RelationItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelationItem() when $default != null:
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
    TResult Function(String id)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RelationItem() when $default != null:
        return $default(_that.id);
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
    TResult Function(String id) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelationItem():
        return $default(_that.id);
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
    TResult? Function(String id)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RelationItem() when $default != null:
        return $default(_that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RelationItem implements RelationItem {
  const _RelationItem({required this.id});
  factory _RelationItem.fromJson(Map<String, dynamic> json) =>
      _$RelationItemFromJson(json);

  @override
  final String id;

  /// Create a copy of RelationItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RelationItemCopyWith<_RelationItem> get copyWith =>
      __$RelationItemCopyWithImpl<_RelationItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RelationItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RelationItem &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'RelationItem(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$RelationItemCopyWith<$Res>
    implements $RelationItemCopyWith<$Res> {
  factory _$RelationItemCopyWith(
          _RelationItem value, $Res Function(_RelationItem) _then) =
      __$RelationItemCopyWithImpl;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$RelationItemCopyWithImpl<$Res>
    implements _$RelationItemCopyWith<$Res> {
  __$RelationItemCopyWithImpl(this._self, this._then);

  final _RelationItem _self;
  final $Res Function(_RelationItem) _then;

  /// Create a copy of RelationItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_RelationItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
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
  /// Serializes this RollupValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RollupValue);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RollupValue()';
  }
}

/// @nodoc
class $RollupValueCopyWith<$Res> {
  $RollupValueCopyWith(RollupValue _, $Res Function(RollupValue) __);
}

/// Adds pattern-matching-related methods to [RollupValue].
extension RollupValuePatterns on RollupValue {
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
    TResult Function(NumberRollupValue value)? number,
    TResult Function(DateRollupValue value)? date,
    TResult Function(ArrayRollupValue value)? array,
    TResult Function(UnsupportedRollupValue value)? unsupported,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NumberRollupValue() when number != null:
        return number(_that);
      case DateRollupValue() when date != null:
        return date(_that);
      case ArrayRollupValue() when array != null:
        return array(_that);
      case UnsupportedRollupValue() when unsupported != null:
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
    required TResult Function(NumberRollupValue value) number,
    required TResult Function(DateRollupValue value) date,
    required TResult Function(ArrayRollupValue value) array,
    required TResult Function(UnsupportedRollupValue value) unsupported,
  }) {
    final _that = this;
    switch (_that) {
      case NumberRollupValue():
        return number(_that);
      case DateRollupValue():
        return date(_that);
      case ArrayRollupValue():
        return array(_that);
      case UnsupportedRollupValue():
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
    TResult? Function(NumberRollupValue value)? number,
    TResult? Function(DateRollupValue value)? date,
    TResult? Function(ArrayRollupValue value)? array,
    TResult? Function(UnsupportedRollupValue value)? unsupported,
  }) {
    final _that = this;
    switch (_that) {
      case NumberRollupValue() when number != null:
        return number(_that);
      case DateRollupValue() when date != null:
        return date(_that);
      case ArrayRollupValue() when array != null:
        return array(_that);
      case UnsupportedRollupValue() when unsupported != null:
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
    TResult Function(double? number)? number,
    TResult Function(DateValue? date)? date,
    TResult Function(List<PropertyValue> array)? array,
    TResult Function(Map<String, dynamic> data)? unsupported,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NumberRollupValue() when number != null:
        return number(_that.number);
      case DateRollupValue() when date != null:
        return date(_that.date);
      case ArrayRollupValue() when array != null:
        return array(_that.array);
      case UnsupportedRollupValue() when unsupported != null:
        return unsupported(_that.data);
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
    required TResult Function(double? number) number,
    required TResult Function(DateValue? date) date,
    required TResult Function(List<PropertyValue> array) array,
    required TResult Function(Map<String, dynamic> data) unsupported,
  }) {
    final _that = this;
    switch (_that) {
      case NumberRollupValue():
        return number(_that.number);
      case DateRollupValue():
        return date(_that.date);
      case ArrayRollupValue():
        return array(_that.array);
      case UnsupportedRollupValue():
        return unsupported(_that.data);
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
    TResult? Function(double? number)? number,
    TResult? Function(DateValue? date)? date,
    TResult? Function(List<PropertyValue> array)? array,
    TResult? Function(Map<String, dynamic> data)? unsupported,
  }) {
    final _that = this;
    switch (_that) {
      case NumberRollupValue() when number != null:
        return number(_that.number);
      case DateRollupValue() when date != null:
        return date(_that.date);
      case ArrayRollupValue() when array != null:
        return array(_that.array);
      case UnsupportedRollupValue() when unsupported != null:
        return unsupported(_that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class NumberRollupValue implements RollupValue {
  const NumberRollupValue({required this.number, final String? $type})
      : $type = $type ?? 'number';
  factory NumberRollupValue.fromJson(Map<String, dynamic> json) =>
      _$NumberRollupValueFromJson(json);

  final double? number;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NumberRollupValueCopyWith<NumberRollupValue> get copyWith =>
      _$NumberRollupValueCopyWithImpl<NumberRollupValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NumberRollupValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NumberRollupValue &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number);

  @override
  String toString() {
    return 'RollupValue.number(number: $number)';
  }
}

/// @nodoc
abstract mixin class $NumberRollupValueCopyWith<$Res>
    implements $RollupValueCopyWith<$Res> {
  factory $NumberRollupValueCopyWith(
          NumberRollupValue value, $Res Function(NumberRollupValue) _then) =
      _$NumberRollupValueCopyWithImpl;
  @useResult
  $Res call({double? number});
}

/// @nodoc
class _$NumberRollupValueCopyWithImpl<$Res>
    implements $NumberRollupValueCopyWith<$Res> {
  _$NumberRollupValueCopyWithImpl(this._self, this._then);

  final NumberRollupValue _self;
  final $Res Function(NumberRollupValue) _then;

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? number = freezed,
  }) {
    return _then(NumberRollupValue(
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class DateRollupValue implements RollupValue {
  const DateRollupValue({required this.date, final String? $type})
      : $type = $type ?? 'date';
  factory DateRollupValue.fromJson(Map<String, dynamic> json) =>
      _$DateRollupValueFromJson(json);

  final DateValue? date;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DateRollupValueCopyWith<DateRollupValue> get copyWith =>
      _$DateRollupValueCopyWithImpl<DateRollupValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DateRollupValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DateRollupValue &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  @override
  String toString() {
    return 'RollupValue.date(date: $date)';
  }
}

/// @nodoc
abstract mixin class $DateRollupValueCopyWith<$Res>
    implements $RollupValueCopyWith<$Res> {
  factory $DateRollupValueCopyWith(
          DateRollupValue value, $Res Function(DateRollupValue) _then) =
      _$DateRollupValueCopyWithImpl;
  @useResult
  $Res call({DateValue? date});

  $DateValueCopyWith<$Res>? get date;
}

/// @nodoc
class _$DateRollupValueCopyWithImpl<$Res>
    implements $DateRollupValueCopyWith<$Res> {
  _$DateRollupValueCopyWithImpl(this._self, this._then);

  final DateRollupValue _self;
  final $Res Function(DateRollupValue) _then;

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = freezed,
  }) {
    return _then(DateRollupValue(
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateValue?,
    ));
  }

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateValueCopyWith<$Res>? get date {
    if (_self.date == null) {
      return null;
    }

    return $DateValueCopyWith<$Res>(_self.date!, (value) {
      return _then(_self.copyWith(date: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class ArrayRollupValue implements RollupValue {
  const ArrayRollupValue(
      {required final List<PropertyValue> array, final String? $type})
      : _array = array,
        $type = $type ?? 'array';
  factory ArrayRollupValue.fromJson(Map<String, dynamic> json) =>
      _$ArrayRollupValueFromJson(json);

  final List<PropertyValue> _array;
  List<PropertyValue> get array {
    if (_array is EqualUnmodifiableListView) return _array;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_array);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ArrayRollupValueCopyWith<ArrayRollupValue> get copyWith =>
      _$ArrayRollupValueCopyWithImpl<ArrayRollupValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ArrayRollupValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ArrayRollupValue &&
            const DeepCollectionEquality().equals(other._array, _array));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_array));

  @override
  String toString() {
    return 'RollupValue.array(array: $array)';
  }
}

/// @nodoc
abstract mixin class $ArrayRollupValueCopyWith<$Res>
    implements $RollupValueCopyWith<$Res> {
  factory $ArrayRollupValueCopyWith(
          ArrayRollupValue value, $Res Function(ArrayRollupValue) _then) =
      _$ArrayRollupValueCopyWithImpl;
  @useResult
  $Res call({List<PropertyValue> array});
}

/// @nodoc
class _$ArrayRollupValueCopyWithImpl<$Res>
    implements $ArrayRollupValueCopyWith<$Res> {
  _$ArrayRollupValueCopyWithImpl(this._self, this._then);

  final ArrayRollupValue _self;
  final $Res Function(ArrayRollupValue) _then;

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? array = null,
  }) {
    return _then(ArrayRollupValue(
      array: null == array
          ? _self._array
          : array // ignore: cast_nullable_to_non_nullable
              as List<PropertyValue>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class UnsupportedRollupValue implements RollupValue {
  const UnsupportedRollupValue(
      {required final Map<String, dynamic> data, final String? $type})
      : _data = data,
        $type = $type ?? 'unsupported';
  factory UnsupportedRollupValue.fromJson(Map<String, dynamic> json) =>
      _$UnsupportedRollupValueFromJson(json);

  final Map<String, dynamic> _data;
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnsupportedRollupValueCopyWith<UnsupportedRollupValue> get copyWith =>
      _$UnsupportedRollupValueCopyWithImpl<UnsupportedRollupValue>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UnsupportedRollupValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnsupportedRollupValue &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'RollupValue.unsupported(data: $data)';
  }
}

/// @nodoc
abstract mixin class $UnsupportedRollupValueCopyWith<$Res>
    implements $RollupValueCopyWith<$Res> {
  factory $UnsupportedRollupValueCopyWith(UnsupportedRollupValue value,
          $Res Function(UnsupportedRollupValue) _then) =
      _$UnsupportedRollupValueCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class _$UnsupportedRollupValueCopyWithImpl<$Res>
    implements $UnsupportedRollupValueCopyWith<$Res> {
  _$UnsupportedRollupValueCopyWithImpl(this._self, this._then);

  final UnsupportedRollupValue _self;
  final $Res Function(UnsupportedRollupValue) _then;

  /// Create a copy of RollupValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(UnsupportedRollupValue(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
mixin _$UniqueId {
  int get number;
  String? get prefix;

  /// Create a copy of UniqueId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UniqueIdCopyWith<UniqueId> get copyWith =>
      _$UniqueIdCopyWithImpl<UniqueId>(this as UniqueId, _$identity);

  /// Serializes this UniqueId to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UniqueId &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.prefix, prefix) || other.prefix == prefix));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, prefix);

  @override
  String toString() {
    return 'UniqueId(number: $number, prefix: $prefix)';
  }
}

/// @nodoc
abstract mixin class $UniqueIdCopyWith<$Res> {
  factory $UniqueIdCopyWith(UniqueId value, $Res Function(UniqueId) _then) =
      _$UniqueIdCopyWithImpl;
  @useResult
  $Res call({int number, String? prefix});
}

/// @nodoc
class _$UniqueIdCopyWithImpl<$Res> implements $UniqueIdCopyWith<$Res> {
  _$UniqueIdCopyWithImpl(this._self, this._then);

  final UniqueId _self;
  final $Res Function(UniqueId) _then;

  /// Create a copy of UniqueId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? prefix = freezed,
  }) {
    return _then(_self.copyWith(
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      prefix: freezed == prefix
          ? _self.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UniqueId].
extension UniqueIdPatterns on UniqueId {
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
    TResult Function(_UniqueId value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UniqueId() when $default != null:
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
    TResult Function(_UniqueId value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UniqueId():
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
    TResult? Function(_UniqueId value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UniqueId() when $default != null:
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
    TResult Function(int number, String? prefix)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UniqueId() when $default != null:
        return $default(_that.number, _that.prefix);
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
    TResult Function(int number, String? prefix) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UniqueId():
        return $default(_that.number, _that.prefix);
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
    TResult? Function(int number, String? prefix)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UniqueId() when $default != null:
        return $default(_that.number, _that.prefix);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UniqueId implements UniqueId {
  const _UniqueId({required this.number, this.prefix});
  factory _UniqueId.fromJson(Map<String, dynamic> json) =>
      _$UniqueIdFromJson(json);

  @override
  final int number;
  @override
  final String? prefix;

  /// Create a copy of UniqueId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UniqueIdCopyWith<_UniqueId> get copyWith =>
      __$UniqueIdCopyWithImpl<_UniqueId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UniqueIdToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UniqueId &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.prefix, prefix) || other.prefix == prefix));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, prefix);

  @override
  String toString() {
    return 'UniqueId(number: $number, prefix: $prefix)';
  }
}

/// @nodoc
abstract mixin class _$UniqueIdCopyWith<$Res>
    implements $UniqueIdCopyWith<$Res> {
  factory _$UniqueIdCopyWith(_UniqueId value, $Res Function(_UniqueId) _then) =
      __$UniqueIdCopyWithImpl;
  @override
  @useResult
  $Res call({int number, String? prefix});
}

/// @nodoc
class __$UniqueIdCopyWithImpl<$Res> implements _$UniqueIdCopyWith<$Res> {
  __$UniqueIdCopyWithImpl(this._self, this._then);

  final _UniqueId _self;
  final $Res Function(_UniqueId) _then;

  /// Create a copy of UniqueId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? number = null,
    Object? prefix = freezed,
  }) {
    return _then(_UniqueId(
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      prefix: freezed == prefix
          ? _self.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$VerificationValue {
  String get state;
  DateTime? get date;
  User? get verifiedBy;

  /// Create a copy of VerificationValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerificationValueCopyWith<VerificationValue> get copyWith =>
      _$VerificationValueCopyWithImpl<VerificationValue>(
          this as VerificationValue, _$identity);

  /// Serializes this VerificationValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerificationValue &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.verifiedBy, verifiedBy) ||
                other.verifiedBy == verifiedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, state, date, verifiedBy);

  @override
  String toString() {
    return 'VerificationValue(state: $state, date: $date, verifiedBy: $verifiedBy)';
  }
}

/// @nodoc
abstract mixin class $VerificationValueCopyWith<$Res> {
  factory $VerificationValueCopyWith(
          VerificationValue value, $Res Function(VerificationValue) _then) =
      _$VerificationValueCopyWithImpl;
  @useResult
  $Res call({String state, DateTime? date, User? verifiedBy});

  $UserCopyWith<$Res>? get verifiedBy;
}

/// @nodoc
class _$VerificationValueCopyWithImpl<$Res>
    implements $VerificationValueCopyWith<$Res> {
  _$VerificationValueCopyWithImpl(this._self, this._then);

  final VerificationValue _self;
  final $Res Function(VerificationValue) _then;

  /// Create a copy of VerificationValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? date = freezed,
    Object? verifiedBy = freezed,
  }) {
    return _then(_self.copyWith(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verifiedBy: freezed == verifiedBy
          ? _self.verifiedBy
          : verifiedBy // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of VerificationValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get verifiedBy {
    if (_self.verifiedBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.verifiedBy!, (value) {
      return _then(_self.copyWith(verifiedBy: value));
    });
  }
}

/// Adds pattern-matching-related methods to [VerificationValue].
extension VerificationValuePatterns on VerificationValue {
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
    TResult Function(_VerificationValue value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerificationValue() when $default != null:
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
    TResult Function(_VerificationValue value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerificationValue():
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
    TResult? Function(_VerificationValue value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerificationValue() when $default != null:
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
    TResult Function(String state, DateTime? date, User? verifiedBy)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerificationValue() when $default != null:
        return $default(_that.state, _that.date, _that.verifiedBy);
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
    TResult Function(String state, DateTime? date, User? verifiedBy) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerificationValue():
        return $default(_that.state, _that.date, _that.verifiedBy);
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
    TResult? Function(String state, DateTime? date, User? verifiedBy)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerificationValue() when $default != null:
        return $default(_that.state, _that.date, _that.verifiedBy);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VerificationValue implements VerificationValue {
  const _VerificationValue(
      {required this.state, required this.date, this.verifiedBy});
  factory _VerificationValue.fromJson(Map<String, dynamic> json) =>
      _$VerificationValueFromJson(json);

  @override
  final String state;
  @override
  final DateTime? date;
  @override
  final User? verifiedBy;

  /// Create a copy of VerificationValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerificationValueCopyWith<_VerificationValue> get copyWith =>
      __$VerificationValueCopyWithImpl<_VerificationValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerificationValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerificationValue &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.verifiedBy, verifiedBy) ||
                other.verifiedBy == verifiedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, state, date, verifiedBy);

  @override
  String toString() {
    return 'VerificationValue(state: $state, date: $date, verifiedBy: $verifiedBy)';
  }
}

/// @nodoc
abstract mixin class _$VerificationValueCopyWith<$Res>
    implements $VerificationValueCopyWith<$Res> {
  factory _$VerificationValueCopyWith(
          _VerificationValue value, $Res Function(_VerificationValue) _then) =
      __$VerificationValueCopyWithImpl;
  @override
  @useResult
  $Res call({String state, DateTime? date, User? verifiedBy});

  @override
  $UserCopyWith<$Res>? get verifiedBy;
}

/// @nodoc
class __$VerificationValueCopyWithImpl<$Res>
    implements _$VerificationValueCopyWith<$Res> {
  __$VerificationValueCopyWithImpl(this._self, this._then);

  final _VerificationValue _self;
  final $Res Function(_VerificationValue) _then;

  /// Create a copy of VerificationValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? state = null,
    Object? date = freezed,
    Object? verifiedBy = freezed,
  }) {
    return _then(_VerificationValue(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verifiedBy: freezed == verifiedBy
          ? _self.verifiedBy
          : verifiedBy // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of VerificationValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get verifiedBy {
    if (_self.verifiedBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.verifiedBy!, (value) {
      return _then(_self.copyWith(verifiedBy: value));
    });
  }
}

// dart format on
