import '../../notion_dart_kit.dart' show NotionException, ValidationException;
import '../client/http_client.dart';
import '../models/comment.dart';
import '../models/parent.dart';
import '../models/rich_text.dart';

/// Service for interacting with Notion Comments API
class CommentsService {
  CommentsService(this._httpClient);
  final NotionHttpClient _httpClient;

  /// Creates a new comment.
  ///
  /// Exactly one of [parent] or [discussionId] must be provided.
  /// - When using [parent], only `page_id` or `block_id` are valid parent types.
  /// - [richText] is the comment content.
  /// - [attachments] is an optional array of request objects containing `file_upload_id`.
  /// - [displayName] optional request object to override author display name.
  ///
  /// Returns the created [Comment].
  /// Throws [NotionException] if the request fails.
  Future<Comment> create({
    required List<RichText> richText,
    Parent? parent,
    String? discussionId,
    List<Map<String, dynamic>>? attachments,
    Map<String, dynamic>? displayName,
  }) async {
    // Local validation to mirror API contract: exactly one must be specified
    final hasParent = parent != null;
    final hasDiscussion = discussionId != null && discussionId.isNotEmpty;
    if (hasParent == hasDiscussion) {
      throw ValidationException(
        'Exactly one of parent or discussionId must be provided',
        statusCode: 400,
      );
    }

    final body = <String, dynamic>{
      if (parent != null) 'parent': parent.toJson(),
      if (discussionId != null) 'discussion_id': discussionId,
      'rich_text': richText.map((e) => e.toJson()).toList(),
      if (attachments != null) 'attachments': attachments,
      if (displayName != null) 'display_name': displayName,
    };

    final response = await _httpClient.post('/comments', data: body);
    return Comment.fromJson(response);
  }

  /// Lists un-resolved comments for a page or block.
  ///
  /// [blockId] is the identifier for a Notion block or page.
  /// Optional [startCursor] and [pageSize] control pagination.
  Future<PaginatedComments> list({
    required String blockId,
    String? startCursor,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{'block_id': blockId};
    if (startCursor != null) {
      queryParams['start_cursor'] = startCursor;
    }
    if (pageSize != null) {
      queryParams['page_size'] = pageSize;
    }

    final response = await _httpClient.get(
      '/comments',
      queryParameters: queryParams,
    );
    return PaginatedComments.fromJson(response);
  }

  /// Retrieves a comment by its ID.
  Future<Comment> retrieve(String commentId) async {
    final response = await _httpClient.get('/comments/$commentId');
    return Comment.fromJson(response);
  }
}
