import '../services/blocks_service.dart';
import '../services/comments_service.dart';
import '../services/data_sources_service.dart';
import '../services/databases_service.dart';
import '../services/file_uploads_service.dart';
import '../services/pages_service.dart';
import '../services/search_service.dart';
import '../services/users_service.dart';
import 'http_client.dart';
import 'retry_queue.dart';

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
  ///
  /// Provides low-level access to the HTTP client for advanced use cases.
  final NotionHttpClient httpClient;

  /// Service for Users API endpoints.
  ///
  /// Provides methods to retrieve user information, including the bot user
  /// and workspace members.
  late final UsersService users;

  /// Service for Pages API endpoints.
  ///
  /// Provides methods to create, retrieve, update, archive, and restore pages.
  late final PagesService pages;

  /// Service for Databases API endpoints.
  ///
  /// Provides methods to create, retrieve, update, query, archive, and restore databases.
  late final DatabasesService databases;

  /// Service for Data Sources API endpoints.
  ///
  /// Provides methods to work with data sources (v3 API) including creating,
  /// retrieving, updating, and querying data sources.
  late final DataSourcesService dataSources;

  /// Service for Search API endpoints.
  ///
  /// Provides methods to search across pages and databases in the workspace.
  late final SearchService search;

  /// Service for Blocks API endpoints.
  ///
  /// Provides methods to retrieve, update, and manage page content blocks.
  late final BlocksService blocks;

  /// Service for Comments API endpoints.
  ///
  /// Provides methods to create, retrieve, and manage comments on pages.
  late final CommentsService comments;

  /// Service for File Uploads API endpoints.
  ///
  /// Provides methods to upload small files to Notion pages.
  late final FileUploadsService fileUploads;

  /// The Notion API integration token.
  ///
  /// Returns the integration token used for authentication with the Notion API.
  String get token => httpClient.token;

  /// Retry queue instance for inspecting or customizing behavior.
  ///
  /// Provides access to the retry queue for monitoring failed requests
  /// and customizing retry behavior.
  RetryQueue get retryQueue => httpClient.retryQueue;

  /// Closes the client and releases resources.
  void close() {
    httpClient.close();
  }
}
