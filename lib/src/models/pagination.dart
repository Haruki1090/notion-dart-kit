/// Represents a paginated list response from the Notion API.
///
/// The [T] type parameter represents the type of objects in the results array.
class PaginatedList<T> {
  const PaginatedList({
    required this.type,
    required this.results,
    required this.hasMore,
    this.nextCursor,
  });

  /// Creates a PaginatedList from JSON.
  ///
  /// [fromJsonT] - Function to convert JSON objects to type T.
  factory PaginatedList.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
  ) => PaginatedList(
    type: json['type'] as String,
    results: (json['results'] as List<dynamic>)
        .map((e) => fromJsonT(Map<String, dynamic>.from(e as Map)))
        .toList(),
    hasMore: json['has_more'] as bool,
    nextCursor: json['next_cursor'] as String?,
  );

  /// The type of objects contained in results.
  final String type;

  /// The page or partial list of results.
  final List<T> results;

  /// When the response includes the end of the list, false. Otherwise, true.
  final bool hasMore;

  /// Available when hasMore is true.
  /// Used to retrieve the next page by passing as start_cursor.
  final String? nextCursor;

  /// Converts this PaginatedList to JSON.
  Map<String, dynamic> toJson(Map<String, dynamic> Function(T) toJsonT) => {
    'object': 'list',
    'type': type,
    'results': results.map(toJsonT).toList(),
    'has_more': hasMore,
    if (nextCursor != null) 'next_cursor': nextCursor,
  };
}
