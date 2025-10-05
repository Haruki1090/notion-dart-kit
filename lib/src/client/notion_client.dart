import 'http_client.dart';
import '../services/users_service.dart';
import '../services/pages_service.dart';
import '../services/databases_service.dart';

/// Main client for interacting with the Notion API.
///
/// Example usage:
/// ```dart
/// final client = NotionClient(token: 'your_integration_token');
/// final botUser = await client.users.me();
/// final page = await client.pages.retrieve('page_id');
/// ```
class NotionClient {
  /// The HTTP client used for API requests.
  final NotionHttpClient httpClient;

  /// Service for Users API endpoints.
  late final UsersService users;

  /// Service for Pages API endpoints.
  late final PagesService pages;

  /// Service for Databases API endpoints.
  late final DatabasesService databases;

  /// The Notion API integration token.
  String get token => httpClient.token;

  /// Creates a new [NotionClient] with the given [token].
  NotionClient({required String token})
      : httpClient = NotionHttpClient(token: token) {
    users = UsersService(httpClient);
    pages = PagesService(httpClient);
    databases = DatabasesService(httpClient);
  }

  /// Closes the client and releases resources.
  void close() {
    httpClient.close();
  }

  // TODO: Add blocks service
  // TODO: Add search service
}