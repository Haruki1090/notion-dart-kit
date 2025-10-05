import '../client/http_client.dart';
import '../models/database.dart';
import '../models/parent.dart';
import '../models/file.dart';
import '../models/rich_text.dart';

/// Service for interacting with Notion Databases API
class DatabasesService {
  final NotionHttpClient _httpClient;

  DatabasesService(this._httpClient);

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
      if (properties != null)
        'initial_data_source': {
          'properties': properties,
        },
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
    if (title != null) body['title'] = title.map((e) => e.toJson()).toList();
    if (description != null) {
      body['description'] = description.map((e) => e.toJson()).toList();
    }
    if (icon != null) body['icon'] = icon.toJson();
    if (cover != null) body['cover'] = cover.toJson();
    if (isInline != null) body['is_inline'] = isInline;
    if (inTrash != null) body['in_trash'] = inTrash;
    if (isLocked != null) body['is_locked'] = isLocked;

    final response =
        await _httpClient.patch('/databases/$databaseId', data: body);
    return Database.fromJson(response);
  }

  /// Archives a database by moving it to trash.
  ///
  /// [databaseId] - The ID of the database to archive.
  ///
  /// Returns the archived Database object.
  /// Throws [NotionException] if the request fails.
  Future<Database> archive(String databaseId) async {
    return update(databaseId, inTrash: true);
  }

  /// Restores a database from trash.
  ///
  /// [databaseId] - The ID of the database to restore.
  ///
  /// Returns the restored Database object.
  /// Throws [NotionException] if the request fails.
  Future<Database> restore(String databaseId) async {
    return update(databaseId, inTrash: false);
  }
}
