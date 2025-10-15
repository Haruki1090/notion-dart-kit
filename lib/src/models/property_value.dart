import 'package:freezed_annotation/freezed_annotation.dart';

import 'file.dart';
import 'rich_text.dart';
import 'user.dart';

part 'property_value.freezed.dart';
part 'property_value.g.dart';

/// Represents a Notion page property value
///
/// This is a union type that can be one of 25 different property types.
/// Properties are the data fields in Notion pages and databases.
@freezed
class PropertyValue with _$PropertyValue {
  /// Checkbox property - boolean value
  const factory PropertyValue.checkbox({
    required String id,
    required bool checkbox,
  }) = CheckboxProperty;

  /// Rich text property - array of rich text objects
  const factory PropertyValue.richText({
    required String id,
    required List<RichText> richText,
  }) = RichTextProperty;

  /// Title property - array of rich text objects (always required for pages)
  const factory PropertyValue.title({
    required String id,
    required List<RichText> title,
  }) = TitleProperty;

  /// Number property - numeric value
  const factory PropertyValue.number({
    required String id,
    required double? number,
  }) = NumberProperty;

  /// Select property - single option value
  const factory PropertyValue.select({
    required String id,
    required SelectOption? select,
  }) = SelectProperty;

  /// Multi-select property - array of option values
  const factory PropertyValue.multiSelect({
    required String id,
    required List<SelectOption> multiSelect,
  }) = MultiSelectProperty;

  /// Status property - status option value
  const factory PropertyValue.status({
    required String id,
    required StatusOption? status,
  }) = StatusProperty;

  /// Date property - date or date range
  const factory PropertyValue.date({
    required String id,
    required DateValue? date,
  }) = DateProperty;

  /// People property - array of user objects
  const factory PropertyValue.people({
    required String id,
    required List<User> people,
  }) = PeopleProperty;

  /// Files property - array of file objects
  const factory PropertyValue.files({
    required String id,
    required List<NotionFile> files,
  }) = FilesProperty;

  /// Email property - email string
  const factory PropertyValue.email({
    required String id,
    required String? email,
  }) = EmailProperty;

  /// Phone number property - phone string
  const factory PropertyValue.phoneNumber({
    required String id,
    required String? phoneNumber,
  }) = PhoneNumberProperty;

  /// URL property - URL string
  const factory PropertyValue.url({
    required String id,
    required String? url,
  }) = UrlProperty;

  /// Created time property - ISO 8601 datetime (read-only)
  const factory PropertyValue.createdTime({
    required String id,
    required DateTime createdTime,
  }) = CreatedTimeProperty;

  /// Created by property - user object (read-only)
  const factory PropertyValue.createdBy({
    required String id,
    required User createdBy,
  }) = CreatedByProperty;

  /// Last edited time property - ISO 8601 datetime (read-only)
  const factory PropertyValue.lastEditedTime({
    required String id,
    required DateTime lastEditedTime,
  }) = LastEditedTimeProperty;

  /// Last edited by property - user object (read-only)
  const factory PropertyValue.lastEditedBy({
    required String id,
    required User lastEditedBy,
  }) = LastEditedByProperty;

  /// Formula property - formula result (read-only)
  const factory PropertyValue.formula({
    required String id,
    required FormulaValue formula,
  }) = FormulaProperty;

  /// Relation property - array of page references
  const factory PropertyValue.relation({
    required String id,
    required List<RelationItem> relation,
  }) = RelationProperty;

  /// Rollup property - rollup calculation result (read-only)
  const factory PropertyValue.rollup({
    required String id,
    required RollupValue rollup,
  }) = RollupProperty;

  /// Unique ID property - unique identifier (read-only)
  const factory PropertyValue.uniqueId({
    required String id,
    required UniqueId uniqueId,
  }) = UniqueIdProperty;

  /// Verification property - verification state (read-only)
  const factory PropertyValue.verification({
    required String id,
    required VerificationValue? verification,
  }) = VerificationProperty;

  factory PropertyValue.fromJson(Map<String, dynamic> json) =>
      _$PropertyValueFromJson(json);
}

/// Select option for select and multi-select properties.
///
/// Represents a single option in a select or multi-select property.
/// Each option has an ID, name, and color.
///
/// Example:
/// ```dart
/// const option = SelectOption(
///   id: 'option_id',
///   name: 'High Priority',
///   color: 'red',
/// );
/// ```
@freezed
class SelectOption with _$SelectOption {
  const factory SelectOption({
    /// Unique identifier for the option.
    required String id,

    /// Display name of the option.
    required String name,

    /// Color of the option (e.g., 'red', 'blue', 'green').
    required String color,
  }) = _SelectOption;

  factory SelectOption.fromJson(Map<String, dynamic> json) =>
      _$SelectOptionFromJson(json);
}

/// Status option for status properties.
///
/// Represents a single status option in a status property.
/// Status options are similar to select options but are specifically
/// designed for workflow states.
///
/// Example:
/// ```dart
/// const status = StatusOption(
///   id: 'status_id',
///   name: 'In Progress',
///   color: 'yellow',
/// );
/// ```
@freezed
class StatusOption with _$StatusOption {
  const factory StatusOption({
    /// Unique identifier for the status option.
    required String id,

    /// Display name of the status option.
    required String name,

    /// Color of the status option (e.g., 'red', 'blue', 'green').
    required String color,
  }) = _StatusOption;

  factory StatusOption.fromJson(Map<String, dynamic> json) =>
      _$StatusOptionFromJson(json);
}

/// Date value for date properties.
///
/// Represents a date or date range with optional timezone information.
/// Can be used for single dates or date ranges with start and end dates.
///
/// Example:
/// ```dart
/// const dateValue = DateValue(
///   start: '2024-01-01',
///   end: '2024-01-31',
///   timeZone: 'America/New_York',
/// );
/// ```
@freezed
class DateValue with _$DateValue {
  const factory DateValue({
    /// Start date in ISO 8601 format (YYYY-MM-DD or YYYY-MM-DDTHH:MM:SS).
    required String start,

    /// Optional end date for date ranges.
    String? end,

    /// Optional timezone identifier (e.g., 'America/New_York').
    String? timeZone,
  }) = _DateValue;

  factory DateValue.fromJson(Map<String, dynamic> json) =>
      _$DateValueFromJson(json);
}

/// Formula result value (union type)
@freezed
class FormulaValue with _$FormulaValue {
  const factory FormulaValue.boolean({
    required bool boolean,
  }) = BooleanFormulaValue;

  const factory FormulaValue.date({
    required DateValue? date,
  }) = DateFormulaValue;

  const factory FormulaValue.number({
    required double? number,
  }) = NumberFormulaValue;

  const factory FormulaValue.string({
    required String? string,
  }) = StringFormulaValue;

  factory FormulaValue.fromJson(Map<String, dynamic> json) =>
      _$FormulaValueFromJson(json);
}

/// Relation item - reference to another page
@freezed
class RelationItem with _$RelationItem {
  const factory RelationItem({
    required String id,
  }) = _RelationItem;

  factory RelationItem.fromJson(Map<String, dynamic> json) =>
      _$RelationItemFromJson(json);
}

/// Rollup calculation result (union type)
@freezed
class RollupValue with _$RollupValue {
  const factory RollupValue.number({
    required double? number,
  }) = NumberRollupValue;

  const factory RollupValue.date({
    required DateValue? date,
  }) = DateRollupValue;

  const factory RollupValue.array({
    required List<PropertyValue> array,
  }) = ArrayRollupValue;

  const factory RollupValue.unsupported({
    required Map<String, dynamic> data,
  }) = UnsupportedRollupValue;

  factory RollupValue.fromJson(Map<String, dynamic> json) =>
      _$RollupValueFromJson(json);
}

/// Unique ID value
@freezed
class UniqueId with _$UniqueId {
  const factory UniqueId({
    required int number,
    String? prefix,
  }) = _UniqueId;

  factory UniqueId.fromJson(Map<String, dynamic> json) =>
      _$UniqueIdFromJson(json);
}

/// Verification state value
@freezed
class VerificationValue with _$VerificationValue {
  const factory VerificationValue({
    required String state,
    required DateTime? date,
    User? verifiedBy,
  }) = _VerificationValue;

  factory VerificationValue.fromJson(Map<String, dynamic> json) =>
      _$VerificationValueFromJson(json);
}
