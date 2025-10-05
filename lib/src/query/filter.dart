import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

/// Filter型のUnion型定義
///
/// Notion APIのデータベースクエリで使用するフィルタを表現する型安全なDSL。
/// AND条件、OR条件、プロパティフィルタをサポート。
@Freezed(toJson: false)
sealed class Filter with _$Filter {
  const Filter._();

  /// AND条件（複数フィルタを全て満たす）
  const factory Filter.and(List<Filter> filters) = AndFilter;

  /// OR条件（複数フィルタのいずれかを満たす）
  const factory Filter.or(List<Filter> filters) = OrFilter;

  /// プロパティフィルタ
  const factory Filter.property({
    required String name,
    required PropertyFilter filter,
  }) = PropertyFilterCondition;

  /// JSONに変換
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

/// プロパティフィルタのUnion型
///
/// 各プロパティ型（title, text, number, select等）に対応した
/// フィルタ条件を型安全に表現。
@Freezed(toJson: false)
sealed class PropertyFilter with _$PropertyFilter {
  const PropertyFilter._();

  // ============================================
  // テキスト系フィルタ（title, rich_text, url, email, phone_number）
  // ============================================

  /// 完全一致
  const factory PropertyFilter.textEquals(String value) = TextEqualsFilter;

  /// 不一致
  const factory PropertyFilter.textDoesNotEqual(String value) =
      TextDoesNotEqualFilter;

  /// 含む
  const factory PropertyFilter.textContains(String value) = TextContainsFilter;

  /// 含まない
  const factory PropertyFilter.textDoesNotContain(String value) =
      TextDoesNotContainFilter;

  /// で始まる
  const factory PropertyFilter.textStartsWith(String value) =
      TextStartsWithFilter;

  /// で終わる
  const factory PropertyFilter.textEndsWith(String value) = TextEndsWithFilter;

  /// 空である
  const factory PropertyFilter.textIsEmpty() = TextIsEmptyFilter;

  /// 空でない
  const factory PropertyFilter.textIsNotEmpty() = TextIsNotEmptyFilter;

  // ============================================
  // 数値系フィルタ（number）
  // ============================================

  /// 等しい
  const factory PropertyFilter.numberEquals(double value) = NumberEqualsFilter;

  /// 等しくない
  const factory PropertyFilter.numberDoesNotEqual(double value) =
      NumberDoesNotEqualFilter;

  /// より大きい
  const factory PropertyFilter.numberGreaterThan(double value) =
      NumberGreaterThanFilter;

  /// より小さい
  const factory PropertyFilter.numberLessThan(double value) =
      NumberLessThanFilter;

  /// 以上
  const factory PropertyFilter.numberGreaterThanOrEqual(double value) =
      NumberGreaterThanOrEqualFilter;

  /// 以下
  const factory PropertyFilter.numberLessThanOrEqual(double value) =
      NumberLessThanOrEqualFilter;

  /// 空である
  const factory PropertyFilter.numberIsEmpty() = NumberIsEmptyFilter;

  /// 空でない
  const factory PropertyFilter.numberIsNotEmpty() = NumberIsNotEmptyFilter;

  // ============================================
  // チェックボックスフィルタ（checkbox）
  // ============================================

  /// チェックボックスの値
  const factory PropertyFilter.checkboxEquals(bool value) =
      CheckboxEqualsFilter;

  // ============================================
  // Select/Status系フィルタ（select, status）
  // ============================================

  /// 等しい
  const factory PropertyFilter.selectEquals(String value) = SelectEqualsFilter;

  /// 等しくない
  const factory PropertyFilter.selectDoesNotEqual(String value) =
      SelectDoesNotEqualFilter;

  /// 空である
  const factory PropertyFilter.selectIsEmpty() = SelectIsEmptyFilter;

  /// 空でない
  const factory PropertyFilter.selectIsNotEmpty() = SelectIsNotEmptyFilter;

  // ============================================
  // MultiSelect系フィルタ（multi_select）
  // ============================================

  /// 含む（いずれか）
  const factory PropertyFilter.multiSelectContains(String value) =
      MultiSelectContainsFilter;

  /// 含まない
  const factory PropertyFilter.multiSelectDoesNotContain(String value) =
      MultiSelectDoesNotContainFilter;

  /// 空である
  const factory PropertyFilter.multiSelectIsEmpty() = MultiSelectIsEmptyFilter;

  /// 空でない
  const factory PropertyFilter.multiSelectIsNotEmpty() =
      MultiSelectIsNotEmptyFilter;

  // ============================================
  // 日付系フィルタ（date, created_time, last_edited_time）
  // ============================================

  /// 等しい
  const factory PropertyFilter.dateEquals(String date) = DateEqualsFilter;

  /// より前
  const factory PropertyFilter.dateBefore(String date) = DateBeforeFilter;

  /// より後
  const factory PropertyFilter.dateAfter(String date) = DateAfterFilter;

  /// 以前
  const factory PropertyFilter.dateOnOrBefore(String date) =
      DateOnOrBeforeFilter;

  /// 以降
  const factory PropertyFilter.dateOnOrAfter(String date) = DateOnOrAfterFilter;

  /// 空である
  const factory PropertyFilter.dateIsEmpty() = DateIsEmptyFilter;

  /// 空でない
  const factory PropertyFilter.dateIsNotEmpty() = DateIsNotEmptyFilter;

  // 相対日付フィルタ
  const factory PropertyFilter.datePastWeek() = DatePastWeekFilter;
  const factory PropertyFilter.datePastMonth() = DatePastMonthFilter;
  const factory PropertyFilter.datePastYear() = DatePastYearFilter;
  const factory PropertyFilter.dateNextWeek() = DateNextWeekFilter;
  const factory PropertyFilter.dateNextMonth() = DateNextMonthFilter;
  const factory PropertyFilter.dateNextYear() = DateNextYearFilter;

  // ============================================
  // People系フィルタ（people, created_by, last_edited_by）
  // ============================================

  /// 含む（いずれか）
  const factory PropertyFilter.peopleContains(String userId) =
      PeopleContainsFilter;

  /// 含まない
  const factory PropertyFilter.peopleDoesNotContain(String userId) =
      PeopleDoesNotContainFilter;

  /// 空である
  const factory PropertyFilter.peopleIsEmpty() = PeopleIsEmptyFilter;

  /// 空でない
  const factory PropertyFilter.peopleIsNotEmpty() = PeopleIsNotEmptyFilter;

  // ============================================
  // Files系フィルタ（files）
  // ============================================

  /// 空である
  const factory PropertyFilter.filesIsEmpty() = FilesIsEmptyFilter;

  /// 空でない
  const factory PropertyFilter.filesIsNotEmpty() = FilesIsNotEmptyFilter;

  // ============================================
  // Relation系フィルタ（relation）
  // ============================================

  /// 含む（いずれか）
  const factory PropertyFilter.relationContains(String pageId) =
      RelationContainsFilter;

  /// 含まない
  const factory PropertyFilter.relationDoesNotContain(String pageId) =
      RelationDoesNotContainFilter;

  /// 空である
  const factory PropertyFilter.relationIsEmpty() = RelationIsEmptyFilter;

  /// 空でない
  const factory PropertyFilter.relationIsNotEmpty() = RelationIsNotEmptyFilter;

  /// JSONに変換
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
