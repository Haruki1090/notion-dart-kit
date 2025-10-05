import 'http_client.dart';
import '../services/users_service.dart';

/// Main client for interacting with the Notion API.
///
/// Example usage:
/// ```dart
/// final client = NotionClient(token: 'your_integration_token');
/// final botUser = await client.users.me();
/// ```
class NotionClient {
  /// The HTTP client used for API requests.
  final NotionHttpClient httpClient;

  /// Service for Users API endpoints.
  late final UsersService users;

  /// The Notion API integration token.
  String get token => httpClient.token;

  /// Creates a new [NotionClient] with the given [token].
  NotionClient({required String token})
      : httpClient = NotionHttpClient(token: token) {
    users = UsersService(httpClient);
  }

  /// Closes the client and releases resources.
  void close() {
    httpClient.close();
  }

// TODO: Add pages service
// TODO: Add databases service
// TODO: Add blocks service
// TODO: Add search service
}