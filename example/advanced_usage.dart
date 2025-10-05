import 'package:notion_dart_kit/notion_dart_kit.dart';

/// Advanced usage examples for notion_dart_kit
///
/// This example demonstrates more complex scenarios and best practices.
/// Before running, set your integration token as an environment variable:
/// export NOTION_TOKEN=your_token_here
void main() async {
  print('=== notion_dart_kit Advanced Usage Examples ===\n');

  // Get token from environment variable (recommended for security)
  const token = String.fromEnvironment(
    'NOTION_TOKEN',
    defaultValue: 'YOUR_INTEGRATION_TOKEN',
  );

  if (token == 'YOUR_INTEGRATION_TOKEN') {
    print('⚠️  Please set NOTION_TOKEN environment variable');
    print('   export NOTION_TOKEN=your_token_here\n');
    return;
  }

  final client = NotionClient(token: token);

  try {
    await _demonstrateErrorHandling(client);
    await _demonstratePagination(client);
    await _demonstrateComplexQueries(client);
    await _demonstrateBlockOperations(client);
    await _demonstrateBatchOperations(client);
    await _demonstrateSearchFeatures(client);

    print('\n${'=' * 60}');
    print('✅ All advanced examples completed successfully!');
    print('=' * 60);
  } catch (e) {
    print('\n❌ Unexpected error: $e');
  } finally {
    client.close();
    print('\n🔒 Client closed.');
  }
}

// ============================================================================
// 1. Advanced Error Handling
// ============================================================================

Future<void> _demonstrateErrorHandling(NotionClient client) async {
  print('📌 1. Advanced Error Handling\n');

  // Example 1: Handling specific exceptions
  print('   Example 1a: Graceful error handling');
  try {
    await client.pages.retrieve('invalid-page-id-12345');
  } on NotFoundException catch (e) {
    print('   ℹ️  Expected: Page not found (${e.statusCode})');
  } on AuthenticationException catch (e) {
    print('   ❌ Authentication failed: ${e.message}');
    // Re-authenticate or notify user
  } on RateLimitException catch (e) {
    print('   ⏳ Rate limited: ${e.message}');
    // The client automatically retries, but you can handle it here
  } on ValidationException catch (e) {
    print('   ⚠️  Invalid request: ${e.message}');
    // Fix request parameters
  } on NotionException catch (e) {
    print('   ❌ Notion API error: ${e.message} (${e.statusCode})');
    // Handle other errors
  }

  // Example 2: Defensive programming with validation
  print('\n   Example 1b: Input validation');
  const pageId = 'test-page-id';

  if (_isValidNotionId(pageId)) {
    try {
      await client.pages.retrieve(pageId);
    } on NotFoundException {
      print('   ℹ️  Page does not exist or is not accessible');
    }
  } else {
    print('   ⚠️  Invalid page ID format');
  }

  print('   ✅ Error handling demonstrated\n');
}

// ============================================================================
// 2. Pagination Handling
// ============================================================================

Future<void> _demonstratePagination(NotionClient client) async {
  print('📌 2. Pagination Patterns\n');

  print('   Fetching all search results with pagination...');

  final allResults = <SearchResult>[];
  String? cursor;
  var pageCount = 0;

  do {
    try {
      final response = await client.search.search(
        startCursor: cursor,
        pageSize: 10, // Smaller page size for demonstration
      );

      allResults.addAll(response.results);
      cursor = response.nextCursor;
      pageCount++;

      print('   📄 Fetched page $pageCount: ${response.results.length} items');

      // Break after a few pages for demonstration
      if (pageCount >= 3) {
        print('   ℹ️  Stopping after $pageCount pages for demo purposes');
        break;
      }

      if (!response.hasMore) {
        break;
      }
    } on NotionException catch (e) {
      print('   ❌ Error during pagination: ${e.message}');
      break;
    }
  } while (cursor != null);

  print('   ✅ Total items collected: ${allResults.length}\n');
}

// ============================================================================
// 3. Complex Database Queries
// ============================================================================

Future<void> _demonstrateComplexQueries(NotionClient client) async {
  print('📌 3. Complex Database Queries\n');

  print('   Note: These require a valid database_id\n');

  // Example filter structures for reference
  print('   Example 3a: Compound filter (AND)');
  print('   ```dart');
  print('   final results = await client.databases.query(');
  print("     'database_id',");
  print('     filter: {');
  print("       'and': [");
  print('         {');
  print("           'property': 'Status',");
  print("           'select': {'equals': 'In Progress'}");
  print('         },');
  print('         {');
  print("           'property': 'Priority',");
  print("           'select': {'equals': 'High'}");
  print('         },');
  print('       ]');
  print('     },');
  print('   );');
  print('   ```\n');

  print('   Example 3b: Compound filter (OR) with sorting');
  print('   ```dart');
  print('   final results = await client.databases.query(');
  print("     'database_id',");
  print('     filter: {');
  print("       'or': [");
  print("         {'property': 'Status', 'select': {'equals': 'Done'}},");
  print("         {'property': 'Status', 'select': {'equals': 'Archived'}},");
  print('       ]');
  print('     },');
  print('     sorts: [');
  print("       {'property': 'Created', 'direction': 'descending'},");
  print("       {'property': 'Name', 'direction': 'ascending'},");
  print('     ],');
  print('   );');
  print('   ```\n');

  print('   Example 3c: Date range filter');
  print('   ```dart');
  print('   final results = await client.databases.query(');
  print("     'database_id',");
  print('     filter: {');
  print("       'property': 'Due Date',");
  print("       'date': {");
  print("         'on_or_after': '2025-01-01',");
  print("         'before': '2025-12-31',");
  print('       }');
  print('     },');
  print('   );');
  print('   ```\n');

  print('   ✅ Query patterns demonstrated\n');
}

// ============================================================================
// 4. Advanced Block Operations
// ============================================================================

Future<void> _demonstrateBlockOperations(NotionClient client) async {
  print('📌 4. Advanced Block Operations\n');

  print('   Example 4a: Creating nested blocks');
  print('   ```dart');
  print('   // Create a page with nested content');
  print('   final page = await client.pages.create(');
  print("     parent: Parent.database('database_id'),");
  print('     properties: {');
  print("       'Name': {'title': [{'text': {'content': 'New Page'}}]}");
  print('     },');
  print('     children: [');
  print('       {');
  print("         'object': 'block',");
  print("         'type': 'heading_1',");
  print("         'heading_1': {");
  print("           'rich_text': [{'text': {'content': 'Main Title'}}]");
  print('         }');
  print('       },');
  print('       {');
  print("         'object': 'block',");
  print("         'type': 'paragraph',");
  print("         'paragraph': {");
  print("           'rich_text': [");
  print('             {');
  print("               'text': {'content': 'This is '},");
  print("               'annotations': {'bold': false}");
  print('             },');
  print('             {');
  print("               'text': {'content': 'bold'},");
  print("               'annotations': {'bold': true}");
  print('             },');
  print('             {');
  print("               'text': {'content': ' and this is '},");
  print('             },');
  print('             {');
  print("               'text': {'content': 'italic'},");
  print("               'annotations': {'italic': true}");
  print('             },');
  print('           ]');
  print('         }');
  print('       },');
  print('       {');
  print("         'object': 'block',");
  print("         'type': 'bulleted_list_item',");
  print("         'bulleted_list_item': {");
  print("           'rich_text': [{'text': {'content': 'Item 1'}}],");
  print("           'children': [");
  print('             {');
  print("               'object': 'block',");
  print("               'type': 'bulleted_list_item',");
  print("               'bulleted_list_item': {");
  print("                 'rich_text': [{'text': {'content': 'Nested item'}}]");
  print('               }');
  print('             }');
  print('           ]');
  print('         }');
  print('       },');
  print('     ],');
  print('   );');
  print('   ```\n');

  print('   Example 4b: Recursively fetching all blocks');
  print('   ```dart');
  print('   Future<List<Block>> getAllBlocks(');
  print('     NotionClient client,');
  print('     String blockId,');
  print('   ) async {');
  print('     final allBlocks = <Block>[];');
  print('     final children = await client.blocks.retrieveChildren(blockId);');
  print('     ');
  print('     for (final block in children.results) {');
  print('       allBlocks.add(block);');
  print('       ');
  print('       // Recursively fetch nested blocks');
  print('       if (block.hasChildren) {');
  print('         final nested = await getAllBlocks(client, block.id);');
  print('         allBlocks.addAll(nested);');
  print('       }');
  print('     }');
  print('     ');
  print('     return allBlocks;');
  print('   }');
  print('   ```\n');

  print('   ✅ Block operation patterns demonstrated\n');
}

// ============================================================================
// 5. Batch Operations with Error Recovery
// ============================================================================

Future<void> _demonstrateBatchOperations(NotionClient client) async {
  print('📌 5. Batch Operations with Error Recovery\n');

  print('   Example 5a: Bulk page creation with error handling');
  print('   ```dart');
  print('   Future<List<Page>> createPagesInBulk(');
  print('     NotionClient client,');
  print('     String databaseId,');
  print('     List<Map<String, dynamic>> pagesData,');
  print('   ) async {');
  print('     final created = <Page>[];');
  print('     final errors = <String>[];');
  print('     ');
  print('     for (var i = 0; i < pagesData.length; i++) {');
  print('       try {');
  print('         final page = await client.pages.create(');
  print('           parent: Parent.database(databaseId),');
  print('           properties: pagesData[i],');
  print('         );');
  print('         created.add(page);');
  print(r'         print("Created page ${i + 1}/${pagesData.length}");');
  print('         ');
  print('         // Add delay to avoid rate limiting');
  print('         await Future.delayed(Duration(milliseconds: 300));');
  print('       } on NotionException catch (e) {');
  print(r'         errors.add("Page ${i + 1}: ${e.message}");');
  print(r'         print("Failed to create page ${i + 1}: ${e.message}");');
  print('       }');
  print('     }');
  print('     ');
  print(r'     print("Successfully created: ${created.length}");');
  print(r'     print("Failed: ${errors.length}");');
  print('     ');
  print('     return created;');
  print('   }');
  print('   ```\n');

  print('   ✅ Batch operation patterns demonstrated\n');
}

// ============================================================================
// 6. Advanced Search Features
// ============================================================================

Future<void> _demonstrateSearchFeatures(NotionClient client) async {
  print('📌 6. Advanced Search Features\n');

  print('   Example 6a: Search with type filtering');
  try {
    // Search only for pages
    final pages = await client.search.search(
      query: 'project',
      filter: SearchFilter.page,
      pageSize: 5,
    );

    print('   Found ${pages.results.length} pages matching "project"');

    // Search only for databases
    final databases = await client.search.search(
      query: 'project',
      filter: SearchFilter.dataSource,
      pageSize: 5,
    );

    print('   Found ${databases.results.length} databases matching "project"');
  } on NotionException catch (e) {
    print('   ℹ️  Search error (expected if no matches): ${e.message}');
  }

  print('\n   Example 6b: Processing mixed search results');
  print('   ```dart');
  print('   final results = await client.search.search(query: "todo");');
  print('   ');
  print('   final pages = <Page>[];');
  print('   final databases = <Database>[];');
  print('   ');
  print('   for (final result in results.results) {');
  print('     result.when(');
  print('       page: (page) {');
  print('         pages.add(page);');
  print(r'         print("Page: ${page.id}");');
  print('       },');
  print('       database: (database) {');
  print('         databases.add(database);');
  print(r'         print("Database: ${database.id}");');
  print('       },');
  print('     );');
  print('   }');
  print('   ```\n');

  print('   ✅ Search features demonstrated\n');
}

// ============================================================================
// Helper Functions
// ============================================================================

/// Validates if a string is a valid Notion ID format
bool _isValidNotionId(String id) {
  // Notion IDs are typically 32 characters (UUID without hyphens)
  // or 36 characters (UUID with hyphens)
  final pattern = RegExp(
    r'^[a-f0-9]{8}-?[a-f0-9]{4}-?[a-f0-9]{4}-?[a-f0-9]{4}-?[a-f0-9]{12}$',
  );
  return pattern.hasMatch(id.toLowerCase());
}
