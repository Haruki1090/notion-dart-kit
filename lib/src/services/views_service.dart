import '../client/http_client.dart';
import '../models/pagination.dart';
import '../models/view.dart';

/// Service for Notion Views API.
class ViewsService {
  ViewsService(this._httpClient);
  final NotionHttpClient _httpClient;

  /// Lists views by database or data source.
  Future<PaginatedList<View>> list({
    String? databaseId,
    String? dataSourceId,
    String? startCursor,
    int? pageSize,
  }) async {
    if ((databaseId == null) == (dataSourceId == null)) {
      throw ArgumentError(
        'Exactly one of databaseId or dataSourceId is required',
      );
    }

    final response = await _httpClient.get(
      '/views',
      queryParameters: {
        if (databaseId != null) 'database_id': databaseId,
        if (dataSourceId != null) 'data_source_id': dataSourceId,
        if (startCursor != null) 'start_cursor': startCursor,
        if (pageSize != null) 'page_size': pageSize,
      },
    );
    return PaginatedList.fromJson(response, View.fromJson);
  }

  /// Retrieves a view by ID.
  Future<View> retrieve(String viewId) async {
    final response = await _httpClient.get('/views/$viewId');
    return View.fromJson(response);
  }

  /// Creates a view.
  Future<View> create({
    required String dataSourceId,
    required String name,
    required String type,
    String? databaseId,
    String? viewId,
    Map<String, dynamic>? createDatabase,
    Map<String, dynamic>? filter,
    List<Map<String, dynamic>>? sorts,
    Map<String, dynamic>? configuration,
    Map<String, dynamic>? position,
  }) async {
    final parentTargets = [
      databaseId,
      viewId,
      createDatabase,
    ].where((e) => e != null).length;
    if (parentTargets != 1) {
      throw ArgumentError(
        'Exactly one of databaseId, viewId, or createDatabase is required',
      );
    }

    final response = await _httpClient.post(
      '/views',
      data: {
        'data_source_id': dataSourceId,
        'name': name,
        'type': type,
        if (databaseId != null) 'database_id': databaseId,
        if (viewId != null) 'view_id': viewId,
        if (createDatabase != null) 'create_database': createDatabase,
        if (filter != null) 'filter': filter,
        if (sorts != null) 'sorts': sorts,
        if (configuration != null) 'configuration': configuration,
        if (position != null) 'position': position,
      },
    );
    return View.fromJson(response);
  }

  /// Updates a view by ID.
  Future<View> update(
    String viewId, {
    String? name,
    Map<String, dynamic>? filter,
    List<Map<String, dynamic>>? sorts,
    Map<String, dynamic>? configuration,
  }) async {
    final response = await _httpClient.patch(
      '/views/$viewId',
      data: {
        if (name != null) 'name': name,
        if (filter != null) 'filter': filter,
        if (sorts != null) 'sorts': sorts,
        if (configuration != null) 'configuration': configuration,
      },
    );
    return View.fromJson(response);
  }

  /// Deletes a view by ID.
  Future<View> delete(String viewId) async {
    final response = await _httpClient.delete('/views/$viewId');
    return View.fromJson(response);
  }

  /// Creates a cached query for a view and returns the first page of results.
  Future<ViewQuery> createQuery(String viewId) async {
    final response = await _httpClient.post('/views/$viewId/queries');
    return ViewQuery.fromJson(response);
  }

  /// Retrieves a page of results from a cached view query.
  Future<ViewQuery> retrieveQueryResults(
    String viewId,
    String queryId, {
    String? startCursor,
    int? pageSize,
  }) async {
    final response = await _httpClient.get(
      '/views/$viewId/queries/$queryId',
      queryParameters: {
        if (startCursor != null) 'start_cursor': startCursor,
        if (pageSize != null) 'page_size': pageSize,
      },
    );
    return ViewQuery.fromJson(response);
  }

  /// Deletes a cached view query.
  Future<Map<String, dynamic>> deleteQuery(String viewId, String queryId) =>
      _httpClient.delete('/views/$viewId/queries/$queryId');
}
