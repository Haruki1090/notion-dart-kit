import '../../notion_dart_kit.dart' show NotionException;
import '../client/http_client.dart';
import '../models/file.dart';
import '../models/page.dart';
import '../models/parent.dart';
import '../models/property_item.dart';
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
  /// [templateId] - Optional template ID to create the page from a template.
  ///
  /// Returns the created Page object.
  /// Throws [NotionException] if the request fails.
  ///
  /// Example with template:
  /// ```dart
  /// final page = await client.pages.create(
  ///   parent: Parent.database(databaseId),
  ///   properties: {
  ///     'Title': PropertyValue.title([RichText.text('New Page')])
  ///   },
  ///   templateId: 'template_id_here',
  /// );
  /// ```
  Future<Page> create({
    required Parent parent,
    required Map<String, dynamic> properties,
    List<Map<String, dynamic>>? children,
    PageIcon? icon,
    NotionFile? cover,
    String? templateId,
  }) async {
    final body = <String, dynamic>{
      'parent': parent.toJson(),
      'properties': properties,
      if (children != null) 'children': children,
      if (icon != null) 'icon': icon.toJson(),
      if (cover != null) 'cover': cover.toJson(),
      if (templateId != null) 'template_id': templateId,
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
  /// [isLocked] - Set to true to lock the page, false to unlock.
  ///
  /// Returns the updated Page object.
  /// Throws [NotionException] if the request fails.
  Future<Page> update(
    String pageId, {
    Map<String, dynamic>? properties,
    PageIcon? icon,
    NotionFile? cover,
    bool? inTrash,
    bool? isLocked,
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
    if (isLocked != null) {
      body['is_locked'] = isLocked;
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

  /// Retrieves a specific property item from a page.
  ///
  /// [pageId] - The ID of the page containing the property.
  /// [propertyId] - The ID of the property to retrieve.
  /// [startCursor] - Optional cursor for pagination.
  /// [pageSize] - Optional page size for pagination (max 100).
  ///
  /// Returns a PropertyItemList containing the property data.
  /// Throws [NotionException] if the request fails.
  Future<PropertyItemList> retrieveProperty(
    String pageId,
    String propertyId, {
    String? startCursor,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    if (startCursor != null) {
      queryParams['start_cursor'] = startCursor;
    }
    if (pageSize != null) {
      queryParams['page_size'] = pageSize.clamp(1, 100);
    }

    final response = await _httpClient.get(
      '/pages/$pageId/properties/$propertyId',
      queryParameters: queryParams.isNotEmpty ? queryParams : null,
    );

    return PropertyItemList.fromJson(response);
  }
}
