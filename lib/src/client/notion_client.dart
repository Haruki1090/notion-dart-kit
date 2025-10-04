import 'http_client.dart';

/// Main client for interacting with the Notion API.
///
/// Example usage:
/// ```dart
/// final client = NotionClient(token: 'your_integration_token');
/// ```
class NotionClient {
  /// The HTTP client used for API requests.
  final NotionHttpClient httpClient;

  /// The Notion API integration token.
  String get token => httpClient.token;

  /// Creates a new [NotionClient] with the given [token].
  NotionClient({required String token})
      : httpClient = NotionHttpClient(token: token);

  /// Closes the client and releases resources.
  void close() {
    httpClient.close();
  }

// TODO: Add pages service
// TODO: Add databases service
// TODO: Add blocks service
// TODO: Add search service
// TODO: Add users service
}