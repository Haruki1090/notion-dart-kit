import '../../notion_dart_kit.dart' show NotionException;
import '../client/http_client.dart';
import '../models/database.dart';
import '../models/file.dart';
import '../models/page.dart';
import '../models/pagination.dart';
import '../models/parent.dart';
import '../models/rich_text.dart';
import '../utils/exceptions.dart' show NotionException;

/// Service for interacting with Notion Databases API
class DatabasesService {
  DatabasesService(this._httpClient);
  final NotionHttpClient _httpClient;

  /// Creates a new database.
  ///
  /// [parent] - The parent page or workspace where the database is created.
  /// [title] - The title of the database as rich text.
  /// [properties] - Optional properties schema for the database's initial data source.
  /// [description] - Optional description as rich text.
  /// [icon] - Optional database icon (emoji or file).
  /// [cover] - Optional cover image.
  ///
  /// Returns the created Database object.
  /// Throws [NotionException] if the request fails.
  Future<Database> create({
    required Parent parent,
    required List<RichText> title,
    Map<String, dynamic>? properties,
    List<RichText>? description,
    PageIcon? icon,
    NotionFile? cover,
  }) async {
    final body = <String, dynamic>{
      'parent': parent.toJson(),
      'title': title.map((e) => e.toJson()).toList(),
      if (properties != null) 'initial_data_source': {'properties': properties},
      if (description != null)
        'description': description.map((e) => e.toJson()).toList(),
      if (icon != null) 'icon': icon.toJson(),
      if (cover != null) 'cover': cover.toJson(),
    };

    final response = await _httpClient.post('/databases', data: body);
    return Database.fromJson(response);
  }

  /// Retrieves a database by its ID.
  ///
  /// [databaseId] - The ID of the database to retrieve.
  ///
  /// Returns the Database object.
  /// Throws [NotionException] if the request fails.
  Future<Database> retrieve(String databaseId) async {
    final response = await _httpClient.get('/databases/$databaseId');
    return Database.fromJson(response);
  }

  /// Updates a database's attributes (title, description, icon, etc).
  ///
  /// Note: To update the properties schema of a data source under a database,
  /// use the Data Sources API instead.
  ///
  /// [databaseId] - The ID of the database to update.
  /// [title] - Optional new title as rich text.
  /// [description] - Optional new description as rich text.
  /// [icon] - Optional new database icon.
  /// [cover] - Optional new cover image.
  /// [isInline] - Optional flag to set inline display mode.
  /// [inTrash] - Set to true to move to trash, false to restore.
  /// [isLocked] - Optional flag to lock/unlock the database.
  ///
  /// Returns the updated Database object.
  /// Throws [NotionException] if the request fails.
  Future<Database> update(
    String databaseId, {
    List<RichText>? title,
    List<RichText>? description,
    PageIcon? icon,
    NotionFile? cover,
    bool? isInline,
    bool? inTrash,
    bool? isLocked,
  }) async {
    final body = <String, dynamic>{};
    if (title != null) {
      body['title'] = title.map((e) => e.toJson()).toList();
    }
    if (description != null) {
      body['description'] = description.map((e) => e.toJson()).toList();
    }
    if (icon != null) {
      body['icon'] = icon.toJson();
    }
    if (cover != null) {
      body['cover'] = cover.toJson();
    }
    if (isInline != null) {
      body['is_inline'] = isInline;
    }
    if (inTrash != null) {
      body['in_trash'] = inTrash;
    }
    if (isLocked != null) {
      body['is_locked'] = isLocked;
    }

    final response = await _httpClient.patch(
      '/databases/$databaseId',
      data: body,
    );
    return Database.fromJson(response);
  }

  /// Archives a database by moving it to trash.
  ///
  /// [databaseId] - The ID of the database to archive.
  ///
  /// Returns the archived Database object.
  /// Throws [NotionException] if the request fails.
  Future<Database> archive(String databaseId) async =>
      update(databaseId, inTrash: true);

  /// Restores a database from trash.
  ///
  /// [databaseId] - The ID of the database to restore.
  ///
  /// Returns the restored Database object.
  /// Throws [NotionException] if the request fails.
  Future<Database> restore(String databaseId) async =>
      update(databaseId, inTrash: false);

  /// Queries a database to retrieve pages that match the provided filter and sort criteria.
  ///
  /// [databaseId] - The ID of the database to query.
  /// [filter] - Optional filter object to limit results. Can be a property filter
  ///           or a compound filter (and/or).
  /// [sorts] - Optional list of sort objects to order the results.
  /// [startCursor] - Optional cursor for pagination.
  /// [pageSize] - Number of results to return (max 100, default 100).
  /// [filterProperties] - Optional list of property IDs to include in the response.
  ///
  /// Returns a paginated list of Page objects that match the criteria.
  /// Throws [NotionException] if the request fails.
  Future<PaginatedList<Page>> query(
    String databaseId, {
    Map<String, dynamic>? filter,
    List<Map<String, dynamic>>? sorts,
    String? startCursor,
    int? pageSize,
    List<String>? filterProperties,
  }) async {
    final body = <String, dynamic>{};
    if (filter != null) {
      body['filter'] = filter;
    }
    if (sorts != null) {
      body['sorts'] = sorts;
    }
    if (startCursor != null) {
      body['start_cursor'] = startCursor;
    }
    if (pageSize != null) {
      body['page_size'] = pageSize;
    }

    // Build query parameters for filter_properties
    final queryParams = <String, dynamic>{};
    if (filterProperties != null && filterProperties.isNotEmpty) {
      // Multiple filter_properties are passed as repeated query params
      queryParams['filter_properties'] = filterProperties.join(',');
    }

    final path = queryParams.isEmpty
        ? '/databases/$databaseId/query'
        : '/databases/$databaseId/query?${_buildQueryString(queryParams)}';

    final response = await _httpClient.post(path, data: body);
    return PaginatedList.fromJson(response, Page.fromJson);
  }

  /// Adds a new data source to an existing database.
  ///
  /// [databaseId] - The ID of the database to add the data source to.
  /// [title] - The title of the data source as rich text objects.
  /// [properties] - Property schema definitions for the new data source.
  ///
  /// Returns the created DataSource object.
  /// Throws [NotionException] if the request fails.
  ///
  /// Note: This method requires API version 2022-06-28 or later.
  Future<dynamic> addDataSource({
    required String databaseId,
    required List<Map<String, dynamic>> title,
    required Map<String, dynamic> properties,
  }) async {
    // Check if the current API version supports multi-source databases
    if (!_httpClient.isFeatureAvailable('multi_source_databases')) {
      throw NotionException(
        'Multi-source databases are not supported in API version ${_httpClient.currentApiVersion}. '
        'Please upgrade to API version ${_httpClient.currentApiVersion} or later.',
      );
    }

    final body = <String, dynamic>{
      'parent': {'type': 'database_id', 'database_id': databaseId},
      'title': title,
      'properties': properties,
    };

    final response = await _httpClient.post('/data_sources', data: body);
    return response; // Return raw response since DataSource model might not be available
  }

  /// Lists all data sources for a database.
  ///
  /// [databaseId] - The ID of the database to list data sources for.
  /// [startCursor] - Optional cursor for pagination.
  /// [pageSize] - Optional page size (max 100).
  ///
  /// Returns a paginated list of data source references.
  /// Throws [NotionException] if the request fails.
  ///
  /// Note: This method requires API version 2022-06-28 or later.
  Future<Map<String, dynamic>> listDataSources({
    required String databaseId,
    String? startCursor,
    int? pageSize,
  }) async {
    // Check if the current API version supports multi-source databases
    if (!_httpClient.isFeatureAvailable('multi_source_databases')) {
      throw NotionException(
        'Multi-source databases are not supported in API version ${_httpClient.currentApiVersion}. '
        'Please upgrade to API version ${_httpClient.currentApiVersion} or later.',
      );
    }

    final queryParams = <String, String>{};
    if (startCursor != null) {
      queryParams['start_cursor'] = startCursor;
    }
    if (pageSize != null) {
      queryParams['page_size'] = pageSize.toString();
    }

    final path = queryParams.isEmpty
        ? '/databases/$databaseId/data_sources'
        : '/databases/$databaseId/data_sources?${_buildQueryString(queryParams)}';

    final response = await _httpClient.get(path);
    return response;
  }

  /// Checks if a database supports multiple data sources.
  ///
  /// [databaseId] - The ID of the database to check.
  ///
  /// Returns true if the database has multiple data sources, false otherwise.
  /// Throws [NotionException] if the request fails.
  Future<bool> isMultiSourceDatabase(String databaseId) async {
    try {
      final database = await retrieve(databaseId);
      return database.dataSources.length > 1;
    } catch (e) {
      throw NotionException('Failed to check if database is multi-source: $e');
    }
  }

  /// Gets the primary data source for a database.
  ///
  /// [databaseId] - The ID of the database.
  ///
  /// Returns the first data source reference, which is typically the primary one.
  /// Throws [NotionException] if the request fails or no data sources exist.
  Future<DataSourceRef> getPrimaryDataSource(String databaseId) async {
    try {
      final database = await retrieve(databaseId);
      if (database.dataSources.isEmpty) {
        throw NotionException('Database has no data sources');
      }
      return database.dataSources.first;
    } catch (e) {
      throw NotionException('Failed to get primary data source: $e');
    }
  }

  /// Helper method to build query string from parameters
  String _buildQueryString(Map<String, dynamic> params) => params.entries
      .map(
        (e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value.toString())}',
      )
      .join('&');
}
