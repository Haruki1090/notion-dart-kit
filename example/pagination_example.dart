import 'package:notion_dart_kit/notion_dart_kit.dart';

/// Pagination example for notion_dart_kit
///
/// This example demonstrates various pagination patterns for handling
/// large datasets from Notion databases.
void main() async {
  print('=== Pagination Example ===\n');

  final client = NotionClient(token: 'YOUR_INTEGRATION_TOKEN');

  const databaseId = 'YOUR_DATABASE_ID';

  try {
    // ========================================
    // 1. Basic Pagination
    // ========================================
    print('📄 1. Basic Pagination\n');

    print('Fetching first page (page size: 10)...');
    // Uncomment to run:
    /*
    final firstPage = await client.databases.query(
      databaseId,
      pageSize: 10,
    );

    print('✅ Retrieved ${firstPage.results.length} pages');
    print('   Has more: ${firstPage.hasMore}');
    print('   Next cursor: ${firstPage.nextCursor ?? "null"}\n');

    // Fetch next page if available
    if (firstPage.hasMore && firstPage.nextCursor != null) {
      print('Fetching next page...');
      final secondPage = await client.databases.query(
        databaseId,
        pageSize: 10,
        startCursor: firstPage.nextCursor,
      );

      print('✅ Retrieved ${secondPage.results.length} pages');
      print('   Has more: ${secondPage.hasMore}\n');
    }
    */

    // ========================================
    // 2. Fetch All Pages (Simple Loop)
    // ========================================
    print('📚 2. Fetch All Pages with Simple Loop\n');

    print('Example code:');
    print('''
    final allPages = <Page>[];
    String? cursor;

    do {
      final response = await client.databases.query(
        databaseId,
        startCursor: cursor,
        pageSize: 100,
      );

      allPages.addAll(response.results);
      cursor = response.nextCursor;

      print('Fetched \${allPages.length} pages so far...');
    } while (cursor != null);

    print('Total pages: \${allPages.length}');
    ''');
    print('');

    // Uncomment to run:
    /*
    final allPages = <Page>[];
    String? cursor;
    var batchCount = 0;

    do {
      final response = await client.databases.query(
        databaseId,
        startCursor: cursor,
        pageSize: 100,
      );

      allPages.addAll(response.results);
      cursor = response.nextCursor;
      batchCount++;

      print('Batch $batchCount: Fetched ${response.results.length} pages');
      print('Total so far: ${allPages.length}');
    } while (cursor != null);

    print('\n✅ Complete! Total pages: ${allPages.length}\n');
    */

    // ========================================
    // 3. Fetch All with Filter and Sort
    // ========================================
    print('🔍 3. Fetch All with Filter and Sort\n');

    print('Example: Get all incomplete tasks sorted by priority');
    print('''
    final allTasks = <Page>[];
    String? cursor;

    final filter = Filter.property('Completed').checkbox.equals(false);
    final sorts = [Sort.property('Priority').descending()];

    do {
      final response = await client.databases.query(
        databaseId,
        filter: filter.toJson(),
        sorts: sorts.map((s) => s.toJson()).toList(),
        startCursor: cursor,
        pageSize: 50,
      );

      allTasks.addAll(response.results);
      cursor = response.nextCursor;
    } while (cursor != null);

    print('Found \${allTasks.length} incomplete tasks');
    ''');
    print('');

    // ========================================
    // 4. Streaming Pagination (Process as You Go)
    // ========================================
    print('🌊 4. Streaming Pagination Pattern\n');

    print('Process pages without storing all in memory:');
    print('''
    String? cursor;
    var totalProcessed = 0;

    do {
      final response = await client.databases.query(
        databaseId,
        startCursor: cursor,
        pageSize: 100,
      );

      // Process each page immediately
      for (final page in response.results) {
        // Do something with the page
        await processPage(page);
        totalProcessed++;
      }

      cursor = response.nextCursor;
      print('Processed \$totalProcessed pages so far...');
    } while (cursor != null);

    print('Done! Processed \$totalProcessed pages total');
    ''');
    print('');

    // ========================================
    // 5. Pagination Helper Function
    // ========================================
    print('🛠️  5. Reusable Pagination Helper\n');

    print('Create a helper function for cleaner code:');
    print('''
    Future<List<Page>> fetchAllPages(
      NotionClient client,
      String databaseId, {
      Map<String, dynamic>? filter,
      List<Map<String, dynamic>>? sorts,
      int pageSize = 100,
    }) async {
      final allPages = <Page>[];
      String? cursor;

      do {
        final response = await client.databases.query(
          databaseId,
          filter: filter,
          sorts: sorts,
          startCursor: cursor,
          pageSize: pageSize,
        );

        allPages.addAll(response.results);
        cursor = response.nextCursor;
      } while (cursor != null);

      return allPages;
    }

    // Usage:
    final pages = await fetchAllPages(
      client,
      databaseId,
      filter: Filter.property('Status').select.equals('Active').toJson(),
    );
    ''');
    print('');

    // ========================================
    // 6. Pagination with Progress Callback
    // ========================================
    print('📊 6. Pagination with Progress Tracking\n');

    print('Track progress during pagination:');
    print('''
    Future<List<Page>> fetchWithProgress(
      NotionClient client,
      String databaseId, {
      void Function(int fetched, bool hasMore)? onProgress,
    }) async {
      final allPages = <Page>[];
      String? cursor;

      do {
        final response = await client.databases.query(
          databaseId,
          startCursor: cursor,
          pageSize: 100,
        );

        allPages.addAll(response.results);
        cursor = response.nextCursor;

        // Call progress callback
        onProgress?.call(allPages.length, cursor != null);
      } while (cursor != null);

      return allPages;
    }

    // Usage:
    final pages = await fetchWithProgress(
      client,
      databaseId,
      onProgress: (count, hasMore) {
        print('Progress: \$count pages fetched, more: \$hasMore');
      },
    );
    ''');
    print('');

    // ========================================
    // 7. Handling Large Datasets
    // ========================================
    print('💾 7. Best Practices for Large Datasets\n');

    print('Tips for handling large datasets:');
    print('');
    print('1. Use appropriate page size:');
    print('   - Small (10-50): Quick responses, more API calls');
    print('   - Large (100): Fewer API calls, slower responses');
    print('   - Maximum allowed: 100');
    print('');
    print('2. Process incrementally:');
    print('   - Don\'t load everything into memory at once');
    print('   - Process and discard data as you go');
    print('   - Use streaming pattern for very large datasets');
    print('');
    print('3. Be mindful of rate limits:');
    print('   - Built-in rate limiting handles this automatically');
    print('   - 3 requests/second by default');
    print('   - Exponential backoff on rate limit errors');
    print('');
    print('4. Use filters to reduce dataset size:');
    print('   - Filter on the server side, not client side');
    print('   - Reduces data transfer and processing time');
    print('   - More efficient than fetching all and filtering locally\n');

    // ========================================
    // 8. Search API Pagination
    // ========================================
    print('🔎 8. Search API Pagination\n');

    print('Search API also supports pagination:');
    print('''
    final allResults = <SearchResult>[];
    String? cursor;

    do {
      final response = await client.search.search(
        query: 'project',
        filter: {'property': 'object', 'value': 'page'},
        startCursor: cursor,
        pageSize: 100,
      );

      allResults.addAll(response.results);
      cursor = response.nextCursor;
    } while (cursor != null);

    print('Found \${allResults.length} matching pages');
    ''');
    print('');

    // ========================================
    // 9. Blocks Pagination
    // ========================================
    print('📦 9. Block Children Pagination\n');

    print('Retrieve all child blocks with pagination:');
    print('''
    final allBlocks = <Block>[];
    String? cursor;
    const blockId = 'parent_block_id';

    do {
      final response = await client.blocks.retrieveChildren(
        blockId,
        startCursor: cursor,
        pageSize: 100,
      );

      allBlocks.addAll(response.results);
      cursor = response.nextCursor;
    } while (cursor != null);

    print('Total child blocks: \${allBlocks.length}');
    ''');
    print('');

    // ========================================
    // Summary
    // ========================================
    print('=' * 50);
    print('✅ Pagination examples completed!');
    print('=' * 50);
    print('\n📚 Key Patterns:');
    print('   ✓ Basic pagination with cursor');
    print('   ✓ Fetch all pages loop');
    print('   ✓ Streaming pattern (memory efficient)');
    print('   ✓ Progress tracking');
    print('   ✓ Reusable helper functions');
    print('\n💡 Best Practices:');
    print('   ✓ Use appropriate page size (max 100)');
    print('   ✓ Process data incrementally for large datasets');
    print('   ✓ Filter server-side when possible');
    print('   ✓ Be mindful of rate limits (handled automatically)');
    print('\n🔗 Applicable to:');
    print('   - Database queries');
    print('   - Search results');
    print('   - Block children retrieval');
  } catch (e) {
    print('❌ Error: $e');
  } finally {
    client.close();
    print('\n🔒 Client closed.');
  }
}
