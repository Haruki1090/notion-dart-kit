import '../../notion_dart_kit.dart' show NotionClient;
import '../models/block.dart';
import '../services/blocks_service.dart';

/// Cache for block children lookups.
///
/// Stores the full list of children for a given block ID to avoid
/// repeated network requests when the same block is encountered again.
class BlockChildrenCache {
  final Map<String, List<Block>> _cache = {};

  bool has(String blockId) => _cache.containsKey(blockId);

  List<Block>? get(String blockId) => _cache[blockId];

  void put(String blockId, List<Block> children) {
    _cache[blockId] = children;
  }

  void clear() => _cache.clear();
}

/// Recursively load all descendant blocks for the given [blockId].
///
/// - Paginates children under each block to return a complete list.
/// - Stops at [maxDepth] levels below the starting [blockId] when provided
///   (depth 0 returns only direct children; null means no depth limit).
/// - Uses an in-memory [cache] to avoid re-fetching the same block's children.
/// - Fetches children for multiple parents concurrently up to [concurrency].
///
/// Returns a flat list of all descendant blocks (does not include the root).
Future<List<Block>> recursivelyLoadBlocks(
  NotionClient client,
  String blockId, {
  int? maxDepth,
  int concurrency = 4,
  BlockChildrenCache? cache,
}) async => recursivelyLoadBlocksFromService(
  client.blocks,
  blockId,
  maxDepth: maxDepth,
  concurrency: concurrency,
  cache: cache,
);

/// Variant that accepts a [BlocksService] directly (useful for testing).
Future<List<Block>> recursivelyLoadBlocksFromService(
  BlocksService blocksService,
  String blockId, {
  int? maxDepth,
  int concurrency = 4,
  BlockChildrenCache? cache,
}) async {
  final childrenCache = cache ?? BlockChildrenCache();

  // Use BFS across depth levels to better control concurrency per level.
  final all = <Block>[];
  final processedParents = <String>{};

  // Queue of (parentId, depth)
  var currentLevel = <_QueueItem>[_QueueItem(parentId: blockId, depth: 0)];

  while (currentLevel.isNotEmpty) {
    // If maxDepth is set and the current level exceeds it, stop.
    final levelDepth = currentLevel.first.depth;
    if (maxDepth != null && levelDepth > maxDepth) {
      break;
    }

    // Fetch children for all parents in this level with bounded concurrency.
    final nextLevel = <_QueueItem>[];

    for (var i = 0; i < currentLevel.length; i += concurrency) {
      final batch = currentLevel.sublist(
        i,
        (i + concurrency > currentLevel.length)
            ? currentLevel.length
            : i + concurrency,
      );

      final futures = batch.map((item) async {
        // Avoid fetching same parent's children multiple times.
        if (processedParents.contains(item.parentId)) {
          return <Block>[];
        }
        processedParents.add(item.parentId);

        final children = await _getAllChildren(
          blocksService,
          item.parentId,
          childrenCache,
        );

        // Collect children for this level
        all.addAll(children);

        // If we can go deeper, schedule children that have further descendants.
        final nextDepth = item.depth + 1;
        if (maxDepth == null || nextDepth <= maxDepth) {
          for (final child in children) {
            if (child.hasChildren) {
              nextLevel.add(_QueueItem(parentId: child.id, depth: nextDepth));
            }
          }
        }

        return children;
      }).toList();

      // Wait for this batch to complete before starting the next batch.
      await Future.wait(futures);
    }

    currentLevel = nextLevel;
  }

  return all;
}

/// Retrieve all children for a given block, paginating as needed.
/// Uses [cache] when present to avoid duplicate network calls.
Future<List<Block>> _getAllChildren(
  BlocksService blocksService,
  String blockId,
  BlockChildrenCache cache,
) async {
  if (cache.has(blockId)) {
    return cache.get(blockId)!;
  }

  final results = <Block>[];
  String? cursor;

  do {
    final page = await blocksService.retrieveChildren(
      blockId,
      startCursor: cursor,
      pageSize: 100,
    );

    results.addAll(page.results);
    cursor = page.hasMore ? page.nextCursor : null;
  } while (cursor != null);

  cache.put(blockId, results);
  return results;
}

class _QueueItem {
  const _QueueItem({required this.parentId, required this.depth});
  final String parentId;
  final int depth;
}

// End of file
