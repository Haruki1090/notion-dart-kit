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
  /// - Provide exactly one of [richText] or [markdown] for the comment body.
  /// - [attachments] is an optional array of request objects containing `file_upload_id`.
  /// - [displayName] optional request object to override author display name.
  ///
  /// Returns the created [Comment].
  /// Throws [NotionException] if the request fails.
  Future<Comment> create({
    List<RichText>? richText,
    String? markdown,
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
    _validateBody(richText: richText, markdown: markdown);

    final body = <String, dynamic>{
      if (parent != null) 'parent': parent.toJson(),
      if (discussionId != null) 'discussion_id': discussionId,
      if (richText != null)
        'rich_text': richText.map((e) => e.toJson()).toList(),
      if (markdown != null) 'markdown': markdown,
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

  /// Updates a comment by its ID.
  ///
  /// Provide exactly one of [richText] or [markdown].
  Future<Comment> update(
    String commentId, {
    List<RichText>? richText,
    String? markdown,
    List<Map<String, dynamic>>? attachments,
    Map<String, dynamic>? displayName,
  }) async {
    _validateBody(richText: richText, markdown: markdown);

    final body = <String, dynamic>{
      if (richText != null)
        'rich_text': richText.map((e) => e.toJson()).toList(),
      if (markdown != null) 'markdown': markdown,
      if (attachments != null) 'attachments': attachments,
      if (displayName != null) 'display_name': displayName,
    };

    final response =
        await _httpClient.patch('/comments/$commentId', data: body);
    return Comment.fromJson(response);
  }

  /// Deletes a comment by its ID.
  ///
  /// The API can return either a partial or full comment object, so this method
  /// returns the raw response map.
  Future<Map<String, dynamic>> delete(String commentId) =>
      _httpClient.delete('/comments/$commentId');

  void _validateBody({List<RichText>? richText, String? markdown}) {
    final hasRichText = richText != null;
    final hasMarkdown = markdown != null && markdown.isNotEmpty;
    if (hasRichText == hasMarkdown) {
      throw ValidationException(
        'Exactly one of richText or markdown must be provided',
        statusCode: 400,
      );
    }
  }
}
