import '../services/blocks_service.dart';
import '../services/data_sources_service.dart';
import '../services/databases_service.dart';
import '../services/comments_service.dart';
import '../services/pages_service.dart';
import '../services/file_uploads_service.dart';
import '../services/search_service.dart';
import '../services/users_service.dart';
import 'http_client.dart';

/// Main client for interacting with the Notion API.
///
/// Example usage:
/// ```dart
/// final client = NotionClient(token: 'your_integration_token');
/// final botUser = await client.users.me();
/// final page = await client.pages.retrieve('page_id');
/// ```
class NotionClient {
  /// Creates a new [NotionClient] with the given [token].
  NotionClient({required String token})
      : httpClient = NotionHttpClient(token: token) {
    users = UsersService(httpClient);
    pages = PagesService(httpClient);
    databases = DatabasesService(httpClient);
    dataSources = DataSourcesService(httpClient);
    search = SearchService(httpClient);
    blocks = BlocksService(httpClient);
    comments = CommentsService(httpClient);
    fileUploads = FileUploadsService(httpClient);
  }

  /// The HTTP client used for API requests.
  final NotionHttpClient httpClient;

  /// Service for Users API endpoints.
  late final UsersService users;

  /// Service for Pages API endpoints.
  late final PagesService pages;

  /// Service for Databases API endpoints.
  late final DatabasesService databases;

  /// Service for Data Sources API endpoints.
  late final DataSourcesService dataSources;

  /// Service for Search API endpoints.
  late final SearchService search;

  /// Service for Blocks API endpoints.
  late final BlocksService blocks;

  /// Service for Comments API endpoints.
  late final CommentsService comments;

  /// Service for File Uploads API endpoints.
  late final FileUploadsService fileUploads;

  /// The Notion API integration token.
  String get token => httpClient.token;

  /// Closes the client and releases resources.
  void close() {
    httpClient.close();
  }
}
