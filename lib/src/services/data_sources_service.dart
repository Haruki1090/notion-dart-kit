import '../client/http_client.dart';
import '../models/data_source.dart';
import '../models/page.dart';
import '../models/pagination.dart';

/// Service for interacting with Notion Data Sources API
///
/// Provides methods to create, retrieve, update, and query data sources.
/// Data sources are the actual containers for database properties and data.
class DataSourcesService {
  DataSourcesService(this._httpClient);
  final NotionHttpClient _httpClient;

  /// Creates a new data source
  ///
  /// [title] - The title of the data source as rich text objects
  /// [databaseId] - The parent database ID
  /// [properties] - Optional property schema definitions
  Future<DataSource> create({
    required List<Map<String, dynamic>> title,
    required String databaseId,
    Map<String, dynamic>? properties,
  }) async {
    final body = <String, dynamic>{
      'title': title,
      'parent': {'type': 'database_id', 'database_id': databaseId},
      if (properties != null) 'properties': properties,
    };

    final response = await _httpClient.post('/data_sources', data: body);
    return DataSource.fromJson(response);
  }

  /// Retrieves a data source by ID
  ///
  /// [dataSourceId] - The ID of the data source to retrieve
  Future<DataSource> retrieve(String dataSourceId) async {
    final response = await _httpClient.get('/data_sources/$dataSourceId');
    return DataSource.fromJson(response);
  }

  /// Updates a data source's properties or metadata
  ///
  /// [dataSourceId] - The ID of the data source to update
  /// [title] - Optional new title
  /// [properties] - Optional property schema updates
  /// [archived] - Optional archived status
  Future<DataSource> update(
    String dataSourceId, {
    List<Map<String, dynamic>>? title,
    Map<String, dynamic>? properties,
    bool? archived,
  }) async {
    final body = <String, dynamic>{
      if (title != null) 'title': title,
      if (properties != null) 'properties': properties,
      if (archived != null) 'archived': archived,
    };

    final response = await _httpClient.patch(
      '/data_sources/$dataSourceId',
      data: body,
    );
    return DataSource.fromJson(response);
  }

  /// Queries a data source for pages matching criteria
  ///
  /// [dataSourceId] - The ID of the data source to query
  /// [filter] - Optional filter object
  /// [sorts] - Optional array of sort objects
  /// [startCursor] - Optional pagination cursor
  /// [pageSize] - Optional page size (max 100)
  /// [filterProperties] - Optional list of property IDs to return
  Future<PaginatedList<Page>> query(
    String dataSourceId, {
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

    final queryParams = <String, dynamic>{};
    if (filterProperties != null && filterProperties.isNotEmpty) {
      queryParams['filter_properties'] = filterProperties.join(',');
    }

    final path = queryParams.isEmpty
        ? '/data_sources/$dataSourceId/query'
        : '/data_sources/$dataSourceId/query?${_buildQueryString(queryParams)}';

    final response = await _httpClient.post(path, data: body);
    return PaginatedList.fromJson(response, Page.fromJson);
  }

  String _buildQueryString(Map<String, dynamic> params) => params.entries
      .map(
        (e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value.toString())}',
      )
      .join('&');
}
