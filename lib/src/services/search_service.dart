import '../../notion_dart_kit.dart' show NotionException;
import '../client/http_client.dart';
import '../models/database.dart';
import '../models/page.dart';
import '../utils/exceptions.dart' show NotionException;

/// Service for interacting with Notion Search API
class SearchService {

  SearchService(this._httpClient);
  final NotionHttpClient _httpClient;

  /// Searches all pages and databases shared with the integration.
  ///
  /// [query] - Text to search for in titles. If null, returns all pages/databases.
  /// [filter] - Filter by object type ('page' or 'data_source').
  /// [sortDirection] - Sort direction ('ascending' or 'descending'). Defaults to descending.
  /// [startCursor] - Pagination cursor from previous response.
  /// [pageSize] - Number of results per page (max 100).
  ///
  /// Returns a paginated list of search results.
  /// The results can contain both Page and Database objects.
  /// Throws [NotionException] if the request fails.
  Future<SearchResults> search({
    String? query,
    SearchFilter? filter,
    String? sortDirection,
    String? startCursor,
    int? pageSize,
  }) async {
    final body = <String, dynamic>{};

    if (query != null) {
      body['query'] = query;
    }

    if (filter != null) {
      body['filter'] = {
        'property': 'object',
        'value': filter == SearchFilter.page ? 'page' : 'data_source',
      };
    }

    if (sortDirection != null) {
      body['sort'] = {
        'direction': sortDirection,
        'timestamp': 'last_edited_time',
      };
    }

    if (startCursor != null) body['start_cursor'] = startCursor;
    if (pageSize != null) body['page_size'] = pageSize;

    final response = await _httpClient.post('/search', data: body);
    return SearchResults.fromJson(response);
  }
}

/// Filter for search results
enum SearchFilter {
  /// Filter to only pages
  page,

  /// Filter to only databases/data sources
  dataSource,
}

/// Search results containing pages and/or databases
class SearchResults {

  const SearchResults({
    required this.type,
    required this.results,
    required this.hasMore,
    this.nextCursor,
  });

  factory SearchResults.fromJson(Map<String, dynamic> json) {
    final resultsList = json['results'] as List<dynamic>;
    final results = resultsList.map((item) {
      final itemMap = Map<String, dynamic>.from(item as Map);
      final objectType = itemMap['object'] as String;

      if (objectType == 'page') {
        return SearchResult.page(Page.fromJson(itemMap));
      } else if (objectType == 'database' || objectType == 'data_source') {
        return SearchResult.database(Database.fromJson(itemMap));
      } else {
        throw Exception('Unknown search result type: $objectType');
      }
    }).toList();

    return SearchResults(
      type: json['type'] as String,
      results: results,
      hasMore: json['has_more'] as bool,
      nextCursor: json['next_cursor'] as String?,
    );
  }
  final String type;
  final List<SearchResult> results;
  final bool hasMore;
  final String? nextCursor;

  Map<String, dynamic> toJson() => {
      'object': 'list',
      'type': type,
      'results': results.map((r) => r.toJson()).toList(),
      'has_more': hasMore,
      if (nextCursor != null) 'next_cursor': nextCursor,
    };
}

/// Union type for search results (Page or Database)
class SearchResult {

  const SearchResult.page(Page page)
      : _page = page,
        _database = null;

  const SearchResult.database(Database database)
      : _page = null,
        _database = database;
  final Page? _page;
  final Database? _database;

  bool get isPage => _page != null;
  bool get isDatabase => _database != null;

  Page get asPage {
    if (_page == null) {
      throw StateError('SearchResult is not a Page');
    }
    return _page!;
  }

  Database get asDatabase {
    if (_database == null) {
      throw StateError('SearchResult is not a Database');
    }
    return _database!;
  }

  /// Pattern matching for search results
  T when<T>({
    required T Function(Page page) page,
    required T Function(Database database) database,
  }) {
    if (_page != null) {
      return page(_page!);
    } else if (_database != null) {
      return database(_database!);
    } else {
      throw StateError('SearchResult is in an invalid state');
    }
  }

  Map<String, dynamic> toJson() {
    if (_page != null) {
      return _page!.toJson();
    } else if (_database != null) {
      return _database!.toJson();
    } else {
      throw StateError('SearchResult is in an invalid state');
    }
  }
}
