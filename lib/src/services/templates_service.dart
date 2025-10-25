import '../client/http_client.dart';
import '../models/pagination.dart';
import '../models/template.dart';

/// Service for interacting with Notion Templates API
///
/// Provides methods to retrieve templates from data sources.
/// Templates are predefined page structures that can be used to create new pages.
class TemplatesService {
  TemplatesService(this._httpClient);
  final NotionHttpClient _httpClient;

  /// Retrieves a list of templates from a data source
  ///
  /// [dataSourceId] - The ID of the data source to retrieve templates from
  /// [startCursor] - Optional pagination cursor for retrieving the next page
  /// [pageSize] - Optional page size (max 100, default 100)
  ///
  /// Returns a [PaginatedList] of [Template] objects
  ///
  /// Example:
  /// ```dart
  /// final templates = await client.templates.listTemplates(
  ///   'data_source_id',
  ///   pageSize: 50,
  /// );
  ///
  /// for (final template in templates.results) {
  ///   print('Template: ${template.title}');
  /// }
  /// ```
  Future<PaginatedList<Template>> listTemplates(
    String dataSourceId, {
    String? startCursor,
    int? pageSize,
  }) async {
    final queryParams = <String, String>{};

    if (startCursor != null) {
      queryParams['start_cursor'] = startCursor;
    }

    if (pageSize != null) {
      queryParams['page_size'] = pageSize.toString();
    }

    final path = queryParams.isEmpty
        ? '/data_sources/$dataSourceId/templates'
        : '/data_sources/$dataSourceId/templates?${_buildQueryString(queryParams)}';

    final response = await _httpClient.get(path);
    return PaginatedList.fromJson(response, Template.fromJson);
  }

  /// Retrieves a specific template by ID from a data source
  ///
  /// [dataSourceId] - The ID of the data source
  /// [templateId] - The ID of the template to retrieve
  ///
  /// Returns a [Template] object
  ///
  /// Example:
  /// ```dart
  /// final template = await client.templates.retrieveTemplate(
  ///   'data_source_id',
  ///   'template_id',
  /// );
  /// print('Template title: ${template.title}');
  /// ```
  Future<Template> retrieveTemplate(
    String dataSourceId,
    String templateId,
  ) async {
    final response = await _httpClient.get(
      '/data_sources/$dataSourceId/templates/$templateId',
    );
    return Template.fromJson(response);
  }

  String _buildQueryString(Map<String, String> params) => params.entries
      .map(
        (e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
      )
      .join('&');
}
