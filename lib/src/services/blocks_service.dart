import '../../notion_dart_kit.dart' show NotFoundException, AuthenticationException;
import '../client/http_client.dart';
import '../models/block.dart';
import '../utils/exceptions.dart' show NotFoundException, AuthenticationException;

/// Service for interacting with Notion Blocks API
class BlocksService {

  BlocksService(this._httpClient);
  final NotionHttpClient _httpClient;

  /// Retrieves a block by ID
  ///
  /// Returns a Block object using the ID specified.
  /// If the block has children, use [retrieveChildren] to get the list.
  ///
  /// Throws:
  /// - [NotFoundException] if the block doesn't exist
  /// - [AuthenticationException] if not authenticated
  Future<Block> retrieve(String blockId) async {
    final response = await _httpClient.get('/blocks/$blockId');
    return Block.fromJson(response);
  }

  /// Retrieves a paginated list of child blocks
  ///
  /// Returns a paginated array of child Block objects contained in the block.
  /// To receive a complete representation, you may need to recursively
  /// retrieve children of child blocks.
  ///
  /// Parameters:
  /// - [blockId]: The ID of the parent block
  /// - [startCursor]: Cursor for pagination
  /// - [pageSize]: Number of results to return (max 100)
  ///
  /// Returns:
  /// - A map with 'results' (List<Block>), 'next_cursor', and 'has_more'
  Future<BlockChildren> retrieveChildren(
    String blockId, {
    String? startCursor,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    if (startCursor != null) queryParams['start_cursor'] = startCursor;
    if (pageSize != null) queryParams['page_size'] = pageSize;

    final response = await _httpClient.get(
      '/blocks/$blockId/children',
      queryParameters: queryParams,
    );

    return BlockChildren.fromJson(response);
  }

  /// Appends child blocks to a parent block
  ///
  /// Creates new child blocks appended to the parent block_id specified.
  /// Returns the Block object for the parent with the new children appended.
  ///
  /// Parameters:
  /// - [blockId]: The ID of the parent block
  /// - [children]: List of child blocks to append
  ///
  /// Note: You can pass up to 100 children at a time.
  Future<BlockChildren> appendChildren(
    String blockId,
    List<Map<String, dynamic>> children,
  ) async {
    final response = await _httpClient.patch(
      '/blocks/$blockId/children',
      data: {'children': children},
    );

    return BlockChildren.fromJson(response);
  }

  /// Updates a block
  ///
  /// Updates the content of a block specified by block_id.
  ///
  /// Parameters:
  /// - [blockId]: The ID of the block to update
  /// - [data]: The block type-specific data to update
  ///
  /// Note: Some properties like 'type' and 'parent' cannot be changed.
  Future<Block> update(
    String blockId,
    Map<String, dynamic> data,
  ) async {
    final response = await _httpClient.patch('/blocks/$blockId', data: data);
    return Block.fromJson(response);
  }

  /// Deletes a block
  ///
  /// Sets a Block object, including page blocks, to archived: true using
  /// the ID specified. Archived blocks will not appear in the UI.
  ///
  /// Note: This sets archived to true, it doesn't permanently delete the block.
  Future<Block> delete(String blockId) async {
    final response = await _httpClient.delete('/blocks/$blockId');
    return Block.fromJson(response);
  }
}

/// Block children response with pagination
class BlockChildren {

  const BlockChildren({
    required this.object,
    required this.results,
    required this.hasMore, this.nextCursor,
  });

  factory BlockChildren.fromJson(Map<String, dynamic> json) => BlockChildren(
      object: json['object'] as String,
      results: (json['results'] as List)
          .map((e) => Block.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: json['next_cursor'] as String?,
      hasMore: json['has_more'] as bool,
    );
  final String object;
  final List<Block> results;
  final String? nextCursor;
  final bool hasMore;

  Map<String, dynamic> toJson() => {
      'object': object,
      'results': results.map((e) => e.toJson()).toList(),
      if (nextCursor != null) 'next_cursor': nextCursor,
      'has_more': hasMore,
    };
}
