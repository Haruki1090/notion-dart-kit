import 'package:freezed_annotation/freezed_annotation.dart';

part 'sort.freezed.dart';

/// Type-safe sort DSL for Notion database queries.
///
/// Represents sort conditions that can be used to order database query results.
/// Supports property-based and timestamp-based sorting.
///
/// Example:
/// ```dart
/// // Sort by property
/// final sort1 = Sort.property(
///   name: 'Priority',
///   direction: SortDirection.descending,
/// );
///
/// // Sort by timestamp
/// final sort2 = Sort.timestamp(
///   type: TimestampType.createdTime,
///   direction: SortDirection.ascending,
/// );
///
/// // Using builder methods
/// final sort3 = SortBuilder.descending('Priority');
/// final sort4 = SortBuilder.createdTimeAscending();
///
/// // Using string extensions
/// final sort5 = 'Priority'.descending();
/// ```
@Freezed(toJson: false)
sealed class Sort with _$Sort {
  const Sort._();

  /// Sort by a property value.
  ///
  /// [name] - The name of the property to sort by.
  /// [direction] - The sort direction (ascending or descending).
  const factory Sort.property({
    required String name,
    required SortDirection direction,
  }) = PropertySort;

  /// Sort by a timestamp (created time or last edited time).
  ///
  /// [type] - The timestamp type to sort by.
  /// [direction] - The sort direction (ascending or descending).
  const factory Sort.timestamp({
    required TimestampType type,
    required SortDirection direction,
  }) = TimestampSort;

  /// Converts this sort to a JSON map for the Notion API.
  Map<String, dynamic> toJson() => when(
    property: (name, direction) => {
      'property': name,
      'direction': direction.value,
    },
    timestamp: (type, direction) => {
      'timestamp': type.value,
      'direction': direction.value,
    },
  );
}

/// Sort direction for database queries.
enum SortDirection {
  /// Sort in ascending order (A-Z, 0-9, oldest to newest).
  ascending('ascending'),

  /// Sort in descending order (Z-A, 9-0, newest to oldest).
  descending('descending');

  const SortDirection(this.value);

  /// The string value used in the Notion API.
  final String value;
}

/// Timestamp type for sorting.
enum TimestampType {
  /// The time when the page was created.
  createdTime('created_time'),

  /// The time when the page was last edited.
  lastEditedTime('last_edited_time');

  const TimestampType(this.value);

  /// The string value used in the Notion API.
  final String value;
}

/// Builder for creating sort conditions with convenient static methods.
///
/// Provides helper methods to create [Sort] objects without using constructors directly.
///
/// Example:
/// ```dart
/// final sorts = [
///   SortBuilder.descending('Priority'),
///   SortBuilder.createdTimeAscending(),
/// ];
/// ```
class SortBuilder {
  /// Creates a sort for a property in ascending order.
  static Sort ascending(String propertyName) =>
      Sort.property(name: propertyName, direction: SortDirection.ascending);

  /// Creates a sort for a property in descending order.
  static Sort descending(String propertyName) =>
      Sort.property(name: propertyName, direction: SortDirection.descending);

  /// Sorts by creation time in ascending order (oldest first).
  static Sort createdTimeAscending() => const Sort.timestamp(
    type: TimestampType.createdTime,
    direction: SortDirection.ascending,
  );

  /// Sorts by creation time in descending order (newest first).
  static Sort createdTimeDescending() => const Sort.timestamp(
    type: TimestampType.createdTime,
    direction: SortDirection.descending,
  );

  /// Sorts by last edited time in ascending order (oldest first).
  static Sort lastEditedTimeAscending() => const Sort.timestamp(
    type: TimestampType.lastEditedTime,
    direction: SortDirection.ascending,
  );

  /// Sorts by last edited time in descending order (newest first).
  static Sort lastEditedTimeDescending() => const Sort.timestamp(
    type: TimestampType.lastEditedTime,
    direction: SortDirection.descending,
  );
}

/// Extension on [String] to create sort conditions.
///
/// Provides convenient methods to create property sorts directly from property names.
///
/// Example:
/// ```dart
/// final sort1 = 'Priority'.ascending();
/// final sort2 = 'Due Date'.descending();
/// ```
extension SortStringExtension on String {
  /// Creates an ascending sort for this property name.
  Sort ascending() => SortBuilder.ascending(this);

  /// Creates a descending sort for this property name.
  Sort descending() => SortBuilder.descending(this);
}
