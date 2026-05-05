import '../client/http_client.dart';
import '../models/custom_emoji.dart';
import '../models/pagination.dart';

/// Service for Notion custom emoji endpoints.
class CustomEmojisService {
  CustomEmojisService(this._httpClient);
  final NotionHttpClient _httpClient;

  /// Lists workspace custom emojis.
  Future<PaginatedList<CustomEmoji>> list({
    String? name,
    String? startCursor,
    int? pageSize,
  }) async {
    final response = await _httpClient.get(
      '/custom_emojis',
      queryParameters: {
        if (name != null) 'name': name,
        if (startCursor != null) 'start_cursor': startCursor,
        if (pageSize != null) 'page_size': pageSize.clamp(1, 100),
      },
    );
    return PaginatedList.fromJson(response, CustomEmoji.fromJson);
  }
}
