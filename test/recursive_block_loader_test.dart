import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:notion_dart_kit/src/client/http_client.dart';
import 'package:test/test.dart';

class _FakeBlocksService extends BlocksService {
  _FakeBlocksService() : super(NotionHttpClient(token: 'test'));

  final Map<String, List<Block>> tree = {};
  final Map<String, int> calls = {};

  void setChildren(String parentId, List<Block> children) {
    tree[parentId] = children;
  }

  int callCount(String parentId) => calls[parentId] ?? 0;

  @override
  Future<BlockChildren> retrieveChildren(
    String blockId, {
    String? startCursor,
    int? pageSize,
  }) async {
    calls[blockId] = (calls[blockId] ?? 0) + 1;
    final results = tree[blockId] ?? <Block>[];
    // For simplicity, ignore pagination in the fake and return all.
    return BlockChildren(object: 'list', results: results, hasMore: false);
  }
}

Block _makeParagraph({
  required String id,
  required Parent parent,
  required bool hasChildren,
}) {
  final now = DateTime.now();
  const user = User.person(id: 'user1', person: PersonInfo());
  return Block.paragraph(
    id: id,
    parent: parent,
    createdTime: now,
    lastEditedTime: now,
    createdBy: user,
    lastEditedBy: user,
    hasChildren: hasChildren,
    archived: false,
    inTrash: false,
    content: const BlockContent(),
  );
}

void main() {
  group('recursive_block_loader', () {
    late _FakeBlocksService service;
    late BlockChildrenCache cache;

    setUp(() {
      service = _FakeBlocksService();
      cache = BlockChildrenCache();

      // Graph:
      // root -> A(has), B(no)
      // A -> A1(has), A2(no)
      // A1 -> A1a(no)
      const root = 'root';
      final a = _makeParagraph(
        id: 'A',
        parent: const Parent.page(pageId: root),
        hasChildren: true,
      );
      final b = _makeParagraph(
        id: 'B',
        parent: const Parent.page(pageId: root),
        hasChildren: false,
      );

      final a1 = _makeParagraph(
        id: 'A1',
        parent: const Parent.block(blockId: 'A'),
        hasChildren: true,
      );
      final a2 = _makeParagraph(
        id: 'A2',
        parent: const Parent.block(blockId: 'A'),
        hasChildren: false,
      );

      final a1a = _makeParagraph(
        id: 'A1a',
        parent: const Parent.block(blockId: 'A1'),
        hasChildren: false,
      );

      service.setChildren(root, [a, b]);
      service.setChildren('A', [a1, a2]);
      service.setChildren('A1', [a1a]);
      service.setChildren('A2', []);
      service.setChildren('B', []);
    });

    test('loads recursively with depth limit', () async {
      final resultDepthDirect = await recursivelyLoadBlocksFromService(
        service,
        'root',
        maxDepth: 0,
        cache: cache,
        concurrency: 2,
      );

      // Depth 0: only direct children of root
      final ids1 =
          resultDepthDirect.map((b) => b.toJson()['id'] as String).toSet();
      expect(ids1, {'A', 'B'});

      final resultDepth2 = await recursivelyLoadBlocksFromService(
        service,
        'root',
        maxDepth: 1,
        cache: cache,
        concurrency: 2,
      );
      final ids2 = resultDepth2.map((b) => b.toJson()['id'] as String);
      expect(ids2.toSet(), {'A', 'B', 'A1', 'A2'});

      final resultUnlimited = await recursivelyLoadBlocksFromService(
        service,
        'root',
        cache: cache,
        concurrency: 2,
      );
      final idsAll = resultUnlimited.map((b) => b.toJson()['id'] as String);
      expect(idsAll.toSet(), {'A', 'B', 'A1', 'A2', 'A1a'});
    });

    test('uses cache across calls to avoid duplicate fetches', () async {
      final localCache = BlockChildrenCache();

      // First call populates cache
      await recursivelyLoadBlocksFromService(
        service,
        'root',
        cache: localCache,
        concurrency: 3,
      );

      final callsAfterFirst = Map<String, int>.from(service.calls);

      // Second call reuses cache; no additional retrieveChildren calls expected
      await recursivelyLoadBlocksFromService(
        service,
        'root',
        cache: localCache,
        concurrency: 3,
      );

      expect(service.calls, callsAfterFirst);
    });

    test('concurrency setting yields same set of results', () async {
      final r1 = await recursivelyLoadBlocksFromService(
        service,
        'root',
        concurrency: 1,
      );
      final r2 = await recursivelyLoadBlocksFromService(
        service,
        'root',
        concurrency: 8,
      );

      expect(
        r1.map((b) => b.toJson()['id']).toSet(),
        r2.map((b) => b.toJson()['id']).toSet(),
      );
    });
  });
}
