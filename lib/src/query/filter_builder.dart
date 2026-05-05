import 'filter.dart';

/// プロパティフィルタビルダー
///
/// プロパティ名から型安全なフィルタを構築するためのビルダー。
/// 各プロパティ型に対応したフィルタメソッドを提供。
class PropertyFilterBuilder {
  const PropertyFilterBuilder(this.propertyName);
  final String propertyName;

  /// テキスト系フィルタビルダー
  TextFilterBuilder text() => TextFilterBuilder(propertyName);

  /// 数値系フィルタビルダー
  NumberFilterBuilder number() => NumberFilterBuilder(propertyName);

  /// チェックボックスフィルタビルダー
  CheckboxFilterBuilder checkbox() => CheckboxFilterBuilder(propertyName);

  /// Selectフィルタビルダー
  SelectFilterBuilder select() => SelectFilterBuilder(propertyName);

  /// MultiSelectフィルタビルダー
  MultiSelectFilterBuilder multiSelect() =>
      MultiSelectFilterBuilder(propertyName);

  /// Statusフィルタビルダー
  StatusFilterBuilder status() => StatusFilterBuilder(propertyName);

  /// 日付フィルタビルダー
  DateFilterBuilder date() => DateFilterBuilder(propertyName);

  /// Peopleフィルタビルダー
  PeopleFilterBuilder people() => PeopleFilterBuilder(propertyName);

  /// Filesフィルタビルダー
  FilesFilterBuilder files() => FilesFilterBuilder(propertyName);

  /// Relationフィルタビルダー
  RelationFilterBuilder relation() => RelationFilterBuilder(propertyName);
}

/// テキスト系フィルタビルダー
class TextFilterBuilder {
  const TextFilterBuilder(this.propertyName);
  final String propertyName;

  Filter equals(String value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.textEquals(value),
      );

  Filter doesNotEqual(String value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.textDoesNotEqual(value),
      );

  Filter contains(String value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.textContains(value),
      );

  Filter doesNotContain(String value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.textDoesNotContain(value),
      );

  Filter startsWith(String value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.textStartsWith(value),
      );

  Filter endsWith(String value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.textEndsWith(value),
      );

  Filter isEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.textIsEmpty(),
      );

  Filter isNotEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.textIsNotEmpty(),
      );
}

/// 数値系フィルタビルダー
class NumberFilterBuilder {
  const NumberFilterBuilder(this.propertyName);
  final String propertyName;

  Filter equals(double value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.numberEquals(value),
      );

  Filter doesNotEqual(double value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.numberDoesNotEqual(value),
      );

  Filter greaterThan(double value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.numberGreaterThan(value),
      );

  Filter lessThan(double value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.numberLessThan(value),
      );

  Filter greaterThanOrEqual(double value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.numberGreaterThanOrEqual(value),
      );

  Filter lessThanOrEqual(double value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.numberLessThanOrEqual(value),
      );

  Filter isEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.numberIsEmpty(),
      );

  Filter isNotEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.numberIsNotEmpty(),
      );
}

/// チェックボックスフィルタビルダー
class CheckboxFilterBuilder {
  const CheckboxFilterBuilder(this.propertyName);
  final String propertyName;

  Filter equals(bool value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.checkboxEquals(value),
      );
}

/// Selectフィルタビルダー
class SelectFilterBuilder {
  const SelectFilterBuilder(this.propertyName);
  final String propertyName;

  Filter equals(String value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.selectEquals(value),
      );

  Filter equalsAny(List<String> values) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.selectEqualsAny(values),
      );

  Filter doesNotEqual(String value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.selectDoesNotEqual(value),
      );

  Filter doesNotEqualAny(List<String> values) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.selectDoesNotEqualAny(values),
      );

  Filter isEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.selectIsEmpty(),
      );

  Filter isNotEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.selectIsNotEmpty(),
      );
}

/// Statusフィルタビルダー
class StatusFilterBuilder {
  const StatusFilterBuilder(this.propertyName);
  final String propertyName;

  Filter equals(String value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.statusEquals(value),
      );

  Filter equalsAny(List<String> values) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.statusEqualsAny(values),
      );

  Filter doesNotEqual(String value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.statusDoesNotEqual(value),
      );

  Filter doesNotEqualAny(List<String> values) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.statusDoesNotEqualAny(values),
      );

  Filter isEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.statusIsEmpty(),
      );

  Filter isNotEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.statusIsNotEmpty(),
      );
}

/// MultiSelectフィルタビルダー
class MultiSelectFilterBuilder {
  const MultiSelectFilterBuilder(this.propertyName);
  final String propertyName;

  Filter contains(String value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.multiSelectContains(value),
      );

  Filter containsAny(List<String> values) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.multiSelectContainsAny(values),
      );

  Filter doesNotContain(String value) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.multiSelectDoesNotContain(value),
      );

  Filter doesNotContainAny(List<String> values) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.multiSelectDoesNotContainAny(values),
      );

  Filter isEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.multiSelectIsEmpty(),
      );

  Filter isNotEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.multiSelectIsNotEmpty(),
      );
}

/// 日付フィルタビルダー
class DateFilterBuilder {
  const DateFilterBuilder(this.propertyName);
  final String propertyName;

  Filter equals(String date) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.dateEquals(date),
      );

  Filter before(String date) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.dateBefore(date),
      );

  Filter after(String date) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.dateAfter(date),
      );

  Filter onOrBefore(String date) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.dateOnOrBefore(date),
      );

  Filter onOrAfter(String date) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.dateOnOrAfter(date),
      );

  Filter isEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.dateIsEmpty(),
      );

  Filter isNotEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.dateIsNotEmpty(),
      );

  Filter pastWeek() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.datePastWeek(),
      );

  Filter pastMonth() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.datePastMonth(),
      );

  Filter pastYear() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.datePastYear(),
      );

  Filter nextWeek() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.dateNextWeek(),
      );

  Filter nextMonth() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.dateNextMonth(),
      );

  Filter nextYear() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.dateNextYear(),
      );

  Filter today() => equals('today');

  Filter tomorrow() => equals('tomorrow');

  Filter yesterday() => equals('yesterday');

  Filter oneWeekAgo() => equals('one_week_ago');

  Filter oneWeekFromNow() => equals('one_week_from_now');

  Filter oneMonthAgo() => equals('one_month_ago');

  Filter oneMonthFromNow() => equals('one_month_from_now');
}

/// Peopleフィルタビルダー
class PeopleFilterBuilder {
  const PeopleFilterBuilder(this.propertyName);
  final String propertyName;

  Filter contains(String userId) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.peopleContains(userId),
      );

  Filter containsMe() => contains('me');

  Filter doesNotContain(String userId) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.peopleDoesNotContain(userId),
      );

  Filter doesNotContainMe() => doesNotContain('me');

  Filter isEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.peopleIsEmpty(),
      );

  Filter isNotEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.peopleIsNotEmpty(),
      );
}

/// Filesフィルタビルダー
class FilesFilterBuilder {
  const FilesFilterBuilder(this.propertyName);
  final String propertyName;

  Filter isEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.filesIsEmpty(),
      );

  Filter isNotEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.filesIsNotEmpty(),
      );
}

/// Relationフィルタビルダー
class RelationFilterBuilder {
  const RelationFilterBuilder(this.propertyName);
  final String propertyName;

  Filter contains(String pageId) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.relationContains(pageId),
      );

  Filter doesNotContain(String pageId) => Filter.property(
        name: propertyName,
        filter: PropertyFilter.relationDoesNotContain(pageId),
      );

  Filter isEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.relationIsEmpty(),
      );

  Filter isNotEmpty() => Filter.property(
        name: propertyName,
        filter: const PropertyFilter.relationIsNotEmpty(),
      );
}

/// String拡張（フィルタ用）
extension FilterStringExtension on String {
  /// プロパティフィルタビルダーを取得
  PropertyFilterBuilder get property => PropertyFilterBuilder(this);
}
