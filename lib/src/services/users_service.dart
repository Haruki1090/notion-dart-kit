import '../client/http_client.dart';
import '../models/user.dart';
import '../models/pagination.dart';

/// Service for interacting with Notion Users API
class UsersService {
  final NotionHttpClient _httpClient;

  UsersService(this._httpClient);

  /// Retrieves the bot User associated with the API token.
  ///
  /// Returns information about the bot user, including owner information.
  ///
  /// Throws [NotionException] if the request fails.
  Future<User> me() async {
    final response = await _httpClient.get('/users/me');
    return User.fromJson(response);
  }

  /// Retrieves a User by their ID.
  ///
  /// [userId] - The ID of the user to retrieve.
  ///
  /// Returns the User object.
  /// Throws [NotionException] if the request fails.
  Future<User> retrieve(String userId) async {
    final response = await _httpClient.get('/users/$userId');
    return User.fromJson(response);
  }

  /// Lists all users in the workspace.
  ///
  /// [startCursor] - Optional cursor for pagination.
  /// [pageSize] - Number of items to return (max 100).
  ///
  /// Returns a paginated list of users.
  /// Throws [NotionException] if the request fails.
  Future<PaginatedList<User>> list({
    String? startCursor,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    if (startCursor != null) queryParams['start_cursor'] = startCursor;
    if (pageSize != null) queryParams['page_size'] = pageSize;

    final response = await _httpClient.get(
      '/users',
      queryParameters: queryParams.isNotEmpty ? queryParams : null,
    );

    return PaginatedList.fromJson(response, User.fromJson);
  }
}
