import '../../notion_dart_kit.dart' show NotionException;
import '../client/http_client.dart';
import '../models/file.dart';
import '../models/page.dart';
import '../models/parent.dart';
import '../utils/exceptions.dart' show NotionException;

/// Service for interacting with Notion Pages API
class PagesService {
  PagesService(this._httpClient);
  final NotionHttpClient _httpClient;

  /// Creates a new page.
  ///
  /// [parent] - The parent page or data source where the new page is inserted.
  /// [properties] - The property values for the new page.
  /// [children] - Optional page content as block objects.
  /// [icon] - Optional page icon (emoji or file).
  /// [cover] - Optional cover image.
  ///
  /// Returns the created Page object.
  /// Throws [NotionException] if the request fails.
  Future<Page> create({
    required Parent parent,
    required Map<String, dynamic> properties,
    List<Map<String, dynamic>>? children,
    PageIcon? icon,
    NotionFile? cover,
  }) async {
    final body = <String, dynamic>{
      'parent': parent.toJson(),
      'properties': properties,
      if (children != null) 'children': children,
      if (icon != null) 'icon': icon.toJson(),
      if (cover != null) 'cover': cover.toJson(),
    };

    final response = await _httpClient.post('/pages', data: body);
    return Page.fromJson(response);
  }

  /// Retrieves a page by its ID.
  ///
  /// [pageId] - The ID of the page to retrieve.
  /// [filterProperties] - Optional list of property IDs to filter the response.
  ///
  /// Returns the Page object.
  /// Throws [NotionException] if the request fails.
  Future<Page> retrieve(String pageId, {List<String>? filterProperties}) async {
    final queryParams = <String, dynamic>{};
    if (filterProperties != null && filterProperties.isNotEmpty) {
      queryParams['filter_properties'] = filterProperties.join(',');
    }

    final response = await _httpClient.get(
      '/pages/$pageId',
      queryParameters: queryParams.isNotEmpty ? queryParams : null,
    );

    return Page.fromJson(response);
  }

  /// Updates page properties.
  ///
  /// [pageId] - The ID of the page to update.
  /// [properties] - The property values to update.
  /// [icon] - Optional new page icon.
  /// [cover] - Optional new cover image.
  /// [inTrash] - Set to true to move to trash, false to restore.
  ///
  /// Returns the updated Page object.
  /// Throws [NotionException] if the request fails.
  Future<Page> update(
    String pageId, {
    Map<String, dynamic>? properties,
    PageIcon? icon,
    NotionFile? cover,
    bool? inTrash,
  }) async {
    final body = <String, dynamic>{};
    if (properties != null) {
      body['properties'] = properties;
    }
    if (icon != null) {
      body['icon'] = icon.toJson();
    }
    if (cover != null) {
      body['cover'] = cover.toJson();
    }
    if (inTrash != null) {
      body['in_trash'] = inTrash;
    }

    final response = await _httpClient.patch('/pages/$pageId', data: body);
    return Page.fromJson(response);
  }

  /// Archives a page by moving it to trash.
  ///
  /// [pageId] - The ID of the page to archive.
  ///
  /// Returns the archived Page object.
  /// Throws [NotionException] if the request fails.
  Future<Page> archive(String pageId) async => update(pageId, inTrash: true);

  /// Restores a page from trash.
  ///
  /// [pageId] - The ID of the page to restore.
  ///
  /// Returns the restored Page object.
  /// Throws [NotionException] if the request fails.
  Future<Page> restore(String pageId) async => update(pageId, inTrash: false);
}
