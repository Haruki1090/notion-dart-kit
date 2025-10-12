import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

/// Type-safe filter DSL for Notion database queries.
///
/// Represents filter conditions that can be used in database queries.
/// Supports AND, OR, and property-specific filters.
///
/// Example:
/// ```dart
/// // Simple property filter
/// final filter = Filter.property(
///   name: 'Status',
///   filter: PropertyFilter.selectEquals('In Progress'),
/// );
///
/// // Complex filter with AND/OR
/// final complexFilter = Filter.and([
///   Filter.property(
///     name: 'Status',
///     filter: PropertyFilter.selectEquals('In Progress'),
///   ),
///   Filter.or([
///     Filter.property(
///       name: 'Priority',
///       filter: PropertyFilter.numberGreaterThan(5),
///     ),
///     Filter.property(
///       name: 'Due Date',
///       filter: PropertyFilter.datePastWeek(),
///     ),
///   ]),
/// ]);
/// ```
@Freezed(toJson: false)
sealed class Filter with _$Filter {
  const Filter._();

  /// AND condition - matches results that satisfy all filters.
  ///
  /// Example:
  /// ```dart
  /// Filter.and([
  ///   Filter.property(name: 'Status', filter: PropertyFilter.selectEquals('Done')),
  ///   Filter.property(name: 'Priority', filter: PropertyFilter.numberGreaterThan(3)),
  /// ])
  /// ```
  const factory Filter.and(List<Filter> filters) = AndFilter;

  /// OR condition - matches results that satisfy any of the filters.
  ///
  /// Example:
  /// ```dart
  /// Filter.or([
  ///   Filter.property(name: 'Status', filter: PropertyFilter.selectEquals('Todo')),
  ///   Filter.property(name: 'Status', filter: PropertyFilter.selectEquals('In Progress')),
  /// ])
  /// ```
  const factory Filter.or(List<Filter> filters) = OrFilter;

  /// Property filter - filters based on a specific property value.
  ///
  /// [name] - The name of the property to filter on.
  /// [filter] - The property-specific filter condition.
  ///
  /// Example:
  /// ```dart
  /// Filter.property(
  ///   name: 'Status',
  ///   filter: PropertyFilter.selectEquals('In Progress'),
  /// )
  /// ```
  const factory Filter.property({
    required String name,
    required PropertyFilter filter,
  }) = PropertyFilterCondition;

  /// Converts this filter to a JSON map for the Notion API.
  Map<String, dynamic> toJson() => when(
        and: (filters) => {
          'and': filters.map((f) => f.toJson()).toList(),
        },
        or: (filters) => {
          'or': filters.map((f) => f.toJson()).toList(),
        },
        property: (name, filter) => {
          'property': name,
          ...filter.toJson(),
        },
      );
}

/// Type-safe property filter conditions for different property types.
///
/// Supports filters for all Notion property types including:
/// - Text properties (title, rich_text, url, email, phone_number)
/// - Number properties
/// - Checkbox properties
/// - Select and multi-select properties
/// - Date properties (with relative date support)
/// - People properties
/// - Files properties
/// - Relation properties
///
/// Example:
/// ```dart
/// // Text filter
/// PropertyFilter.textContains('important')
///
/// // Number filter
/// PropertyFilter.numberGreaterThan(100)
///
/// // Date filter
/// PropertyFilter.datePastWeek()
/// ```
@Freezed(toJson: false)
sealed class PropertyFilter with _$PropertyFilter {
  const PropertyFilter._();

  // ============================================
  // Text filters (title, rich_text, url, email, phone_number)
  // ============================================

  /// Text equals - exact match.
  const factory PropertyFilter.textEquals(String value) = TextEqualsFilter;

  /// Text does not equal - not an exact match.
  const factory PropertyFilter.textDoesNotEqual(String value) =
      TextDoesNotEqualFilter;

  /// Text contains - contains the substring.
  const factory PropertyFilter.textContains(String value) = TextContainsFilter;

  /// Text does not contain - does not contain the substring.
  const factory PropertyFilter.textDoesNotContain(String value) =
      TextDoesNotContainFilter;

  /// Text starts with - starts with the prefix.
  const factory PropertyFilter.textStartsWith(String value) =
      TextStartsWithFilter;

  /// Text ends with - ends with the suffix.
  const factory PropertyFilter.textEndsWith(String value) = TextEndsWithFilter;

  /// Text is empty - has no value.
  const factory PropertyFilter.textIsEmpty() = TextIsEmptyFilter;

  /// Text is not empty - has any value.
  const factory PropertyFilter.textIsNotEmpty() = TextIsNotEmptyFilter;

  // ============================================
  // Number filters
  // ============================================

  /// Number equals - exactly equal to the value.
  const factory PropertyFilter.numberEquals(double value) = NumberEqualsFilter;

  /// Number does not equal - not equal to the value.
  const factory PropertyFilter.numberDoesNotEqual(double value) =
      NumberDoesNotEqualFilter;

  /// Number greater than - strictly greater than the value.
  const factory PropertyFilter.numberGreaterThan(double value) =
      NumberGreaterThanFilter;

  /// Number less than - strictly less than the value.
  const factory PropertyFilter.numberLessThan(double value) =
      NumberLessThanFilter;

  /// Number greater than or equal - greater than or equal to the value.
  const factory PropertyFilter.numberGreaterThanOrEqual(double value) =
      NumberGreaterThanOrEqualFilter;

  /// Number less than or equal - less than or equal to the value.
  const factory PropertyFilter.numberLessThanOrEqual(double value) =
      NumberLessThanOrEqualFilter;

  /// Number is empty - has no value.
  const factory PropertyFilter.numberIsEmpty() = NumberIsEmptyFilter;

  /// Number is not empty - has any value.
  const factory PropertyFilter.numberIsNotEmpty() = NumberIsNotEmptyFilter;

  // ============================================
  // Checkbox filters
  // ============================================

  /// Checkbox equals - matches the boolean value.
  const factory PropertyFilter.checkboxEquals(bool value) =
      CheckboxEqualsFilter;

  // ============================================
  // Select/Status filters
  // ============================================

  /// Select equals - matches the exact option name.
  const factory PropertyFilter.selectEquals(String value) = SelectEqualsFilter;

  /// Select does not equal - does not match the option name.
  const factory PropertyFilter.selectDoesNotEqual(String value) =
      SelectDoesNotEqualFilter;

  /// Select is empty - has no selected option.
  const factory PropertyFilter.selectIsEmpty() = SelectIsEmptyFilter;

  /// Select is not empty - has any selected option.
  const factory PropertyFilter.selectIsNotEmpty() = SelectIsNotEmptyFilter;

  // ============================================
  // Multi-select filters
  // ============================================

  /// Multi-select contains - includes the specified option.
  const factory PropertyFilter.multiSelectContains(String value) =
      MultiSelectContainsFilter;

  /// Multi-select does not contain - does not include the specified option.
  const factory PropertyFilter.multiSelectDoesNotContain(String value) =
      MultiSelectDoesNotContainFilter;

  /// Multi-select is empty - has no selected options.
  const factory PropertyFilter.multiSelectIsEmpty() = MultiSelectIsEmptyFilter;

  /// Multi-select is not empty - has any selected options.
  const factory PropertyFilter.multiSelectIsNotEmpty() =
      MultiSelectIsNotEmptyFilter;

  // ============================================
  // Date filters (date, created_time, last_edited_time)
  // ============================================

  /// Date equals - exactly matches the date (ISO 8601).
  const factory PropertyFilter.dateEquals(String date) = DateEqualsFilter;

  /// Date before - strictly before the date.
  const factory PropertyFilter.dateBefore(String date) = DateBeforeFilter;

  /// Date after - strictly after the date.
  const factory PropertyFilter.dateAfter(String date) = DateAfterFilter;

  /// Date on or before - on or before the date.
  const factory PropertyFilter.dateOnOrBefore(String date) =
      DateOnOrBeforeFilter;

  /// Date on or after - on or after the date.
  const factory PropertyFilter.dateOnOrAfter(String date) = DateOnOrAfterFilter;

  /// Date is empty - has no date value.
  const factory PropertyFilter.dateIsEmpty() = DateIsEmptyFilter;

  /// Date is not empty - has any date value.
  const factory PropertyFilter.dateIsNotEmpty() = DateIsNotEmptyFilter;

  // Relative date filters

  /// Date is within the past week.
  const factory PropertyFilter.datePastWeek() = DatePastWeekFilter;

  /// Date is within the past month.
  const factory PropertyFilter.datePastMonth() = DatePastMonthFilter;

  /// Date is within the past year.
  const factory PropertyFilter.datePastYear() = DatePastYearFilter;

  /// Date is within the next week.
  const factory PropertyFilter.dateNextWeek() = DateNextWeekFilter;

  /// Date is within the next month.
  const factory PropertyFilter.dateNextMonth() = DateNextMonthFilter;

  /// Date is within the next year.
  const factory PropertyFilter.dateNextYear() = DateNextYearFilter;

  // ============================================
  // People filters (people, created_by, last_edited_by)
  // ============================================

  /// People contains - includes the specified user ID.
  const factory PropertyFilter.peopleContains(String userId) =
      PeopleContainsFilter;

  /// People does not contain - does not include the specified user ID.
  const factory PropertyFilter.peopleDoesNotContain(String userId) =
      PeopleDoesNotContainFilter;

  /// People is empty - has no users assigned.
  const factory PropertyFilter.peopleIsEmpty() = PeopleIsEmptyFilter;

  /// People is not empty - has any users assigned.
  const factory PropertyFilter.peopleIsNotEmpty() = PeopleIsNotEmptyFilter;

  // ============================================
  // Files filters
  // ============================================

  /// Files is empty - has no files attached.
  const factory PropertyFilter.filesIsEmpty() = FilesIsEmptyFilter;

  /// Files is not empty - has any files attached.
  const factory PropertyFilter.filesIsNotEmpty() = FilesIsNotEmptyFilter;

  // ============================================
  // Relation filters
  // ============================================

  /// Relation contains - links to the specified page ID.
  const factory PropertyFilter.relationContains(String pageId) =
      RelationContainsFilter;

  /// Relation does not contain - does not link to the specified page ID.
  const factory PropertyFilter.relationDoesNotContain(String pageId) =
      RelationDoesNotContainFilter;

  /// Relation is empty - has no related pages.
  const factory PropertyFilter.relationIsEmpty() = RelationIsEmptyFilter;

  /// Relation is not empty - has any related pages.
  const factory PropertyFilter.relationIsNotEmpty() = RelationIsNotEmptyFilter;

  /// Converts this property filter to a JSON map for the Notion API.
  Map<String, dynamic> toJson() => when(
        // テキスト系
        textEquals: (value) => {
          'rich_text': {'equals': value},
        },
        textDoesNotEqual: (value) => {
          'rich_text': {'does_not_equal': value},
        },
        textContains: (value) => {
          'rich_text': {'contains': value},
        },
        textDoesNotContain: (value) => {
          'rich_text': {'does_not_contain': value},
        },
        textStartsWith: (value) => {
          'rich_text': {'starts_with': value},
        },
        textEndsWith: (value) => {
          'rich_text': {'ends_with': value},
        },
        textIsEmpty: () => {
          'rich_text': {'is_empty': true},
        },
        textIsNotEmpty: () => {
          'rich_text': {'is_not_empty': true},
        },

        // 数値系
        numberEquals: (value) => {
          'number': {'equals': value},
        },
        numberDoesNotEqual: (value) => {
          'number': {'does_not_equal': value},
        },
        numberGreaterThan: (value) => {
          'number': {'greater_than': value},
        },
        numberLessThan: (value) => {
          'number': {'less_than': value},
        },
        numberGreaterThanOrEqual: (value) => {
          'number': {'greater_than_or_equal_to': value},
        },
        numberLessThanOrEqual: (value) => {
          'number': {'less_than_or_equal_to': value},
        },
        numberIsEmpty: () => {
          'number': {'is_empty': true},
        },
        numberIsNotEmpty: () => {
          'number': {'is_not_empty': true},
        },

        // チェックボックス
        checkboxEquals: (value) => {
          'checkbox': {'equals': value},
        },

        // Select
        selectEquals: (value) => {
          'select': {'equals': value},
        },
        selectDoesNotEqual: (value) => {
          'select': {'does_not_equal': value},
        },
        selectIsEmpty: () => {
          'select': {'is_empty': true},
        },
        selectIsNotEmpty: () => {
          'select': {'is_not_empty': true},
        },

        // MultiSelect
        multiSelectContains: (value) => {
          'multi_select': {'contains': value},
        },
        multiSelectDoesNotContain: (value) => {
          'multi_select': {'does_not_contain': value},
        },
        multiSelectIsEmpty: () => {
          'multi_select': {'is_empty': true},
        },
        multiSelectIsNotEmpty: () => {
          'multi_select': {'is_not_empty': true},
        },

        // 日付
        dateEquals: (date) => {
          'date': {'equals': date},
        },
        dateBefore: (date) => {
          'date': {'before': date},
        },
        dateAfter: (date) => {
          'date': {'after': date},
        },
        dateOnOrBefore: (date) => {
          'date': {'on_or_before': date},
        },
        dateOnOrAfter: (date) => {
          'date': {'on_or_after': date},
        },
        dateIsEmpty: () => {
          'date': {'is_empty': true},
        },
        dateIsNotEmpty: () => {
          'date': {'is_not_empty': true},
        },
        datePastWeek: () => {
          'date': {'past_week': {}},
        },
        datePastMonth: () => {
          'date': {'past_month': {}},
        },
        datePastYear: () => {
          'date': {'past_year': {}},
        },
        dateNextWeek: () => {
          'date': {'next_week': {}},
        },
        dateNextMonth: () => {
          'date': {'next_month': {}},
        },
        dateNextYear: () => {
          'date': {'next_year': {}},
        },

        // People
        peopleContains: (userId) => {
          'people': {'contains': userId},
        },
        peopleDoesNotContain: (userId) => {
          'people': {'does_not_contain': userId},
        },
        peopleIsEmpty: () => {
          'people': {'is_empty': true},
        },
        peopleIsNotEmpty: () => {
          'people': {'is_not_empty': true},
        },

        // Files
        filesIsEmpty: () => {
          'files': {'is_empty': true},
        },
        filesIsNotEmpty: () => {
          'files': {'is_not_empty': true},
        },

        // Relation
        relationContains: (pageId) => {
          'relation': {'contains': pageId},
        },
        relationDoesNotContain: (pageId) => {
          'relation': {'does_not_contain': pageId},
        },
        relationIsEmpty: () => {
          'relation': {'is_empty': true},
        },
        relationIsNotEmpty: () => {
          'relation': {'is_not_empty': true},
        },
      );
}
