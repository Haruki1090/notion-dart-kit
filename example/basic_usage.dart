import 'package:notion_dart_kit/notion_dart_kit.dart';

/// Basic usage example for notion_dart_kit
///
/// This example demonstrates how to use the main features of the library.
/// Before running, replace 'YOUR_INTEGRATION_TOKEN' with your actual token.
/// Get your token from: https://www.notion.so/my-integrations
void main() async {
  print('=== notion_dart_kit Basic Usage Example ===\n');

  // Initialize the client with your integration token
  final client = NotionClient(
    token: 'YOUR_INTEGRATION_TOKEN',
  );

  try {
    // ========================================
    // 1. Users API
    // ========================================
    print('📱 1. Getting bot user information...');
    final botUser = await client.users.me();
    print('✅ Bot User: ${botUser.name}');
    botUser.when(
      person: (id, person, name, avatarUrl) {
        print('   Type: Person');
        print('   Email: ${person.email ?? "N/A"}');
      },
      bot: (id, bot, name, avatarUrl) {
        print('   Type: Bot');
        print('   Workspace: ${bot.workspaceName ?? "N/A"}');
      },
    );
    print('   ID: ${botUser.id}\n');

    // ========================================
    // 2. Search API
    // ========================================
    print('🔍 2. Searching for pages and databases...');
    final searchResults = await client.search.search(
      pageSize: 5,
    );
    print('✅ Found ${searchResults.results.length} items');
    for (final result in searchResults.results) {
      result.when(
        page: (page) => print('   📄 Page: ${page.id}'),
        database: (database) => print('   📊 Database: ${database.id}'),
      );
    }
    print('');

    // ========================================
    // 3. Pages API - Example (requires page_id)
    // ========================================
    print('📄 3. Working with Pages...');
    print('   To use pages API, you need a valid page_id:');
    print('   ```dart');
    print("   final page = await client.pages.retrieve('page_id');");
    print(r"   print('Page title: ${page.properties}');");
    print('');
    print('   // Create a new page');
    print('   final newPage = await client.pages.create(');
    print("     parent: Parent.database('database_id'),");
    print('     properties: {');
    print("       'Name': {");
    print("         'title': [");
    print("           {'text': {'content': 'New Page'}}");
    print('         ]');
    print('       }');
    print('     },');
    print('   );');
    print('');
    print('   // Update page properties');
    print("   await client.pages.update('page_id',");
    print('     properties: {');
    print("       'Status': {'select': {'name': 'Done'}}");
    print('     },');
    print('   );');
    print('');
    print('   // Archive a page');
    print("   await client.pages.archive('page_id');");
    print('   ```\n');

    // ========================================
    // 4. Databases API - Example (requires database_id)
    // ========================================
    print('📊 4. Working with Databases...');
    print('   To query a database, you need a valid database_id:');
    print('   ```dart');
    print('   // Query a database with filters and sorts');
    print("   final results = await client.databases.query('database_id',");
    print('     filter: {');
    print("       'property': 'Status',");
    print("       'select': {'equals': 'In Progress'}");
    print('     },');
    print('     sorts: [');
    print("       {'property': 'Name', 'direction': 'ascending'}");
    print('     ],');
    print('     pageSize: 50,');
    print('   );');
    print('');
    print('   // Process results');
    print('   for (final page in results.results) {');
    print(r"     print('Page: ${page.id}');");
    print('   }');
    print('');
    print('   // Handle pagination');
    print('   if (results.hasMore) {');
    print("     final nextPage = await client.databases.query('database_id',");
    print('       startCursor: results.nextCursor,');
    print('     );');
    print('   }');
    print('   ```\n');

    // ========================================
    // 5. Blocks API - Example (requires block_id)
    // ========================================
    print('📦 5. Working with Blocks...');
    print('   To work with blocks, you need a valid block_id:');
    print('   ```dart');
    print('   // Get block children');
    print(
      "   final children = await client.blocks.retrieveChildren('block_id');",
    );
    print(r"   print('Found ${children.results.length} child blocks');");
    print('');
    print('   // Append new blocks');
    print("   await client.blocks.appendChildren('block_id', [");
    print('     {');
    print("       'object': 'block',");
    print("       'type': 'paragraph',");
    print("       'paragraph': {");
    print("         'rich_text': [");
    print("           {'type': 'text', 'text': {'content': 'New paragraph'}}");
    print('         ]');
    print('       }');
    print('     },');
    print('   ]);');
    print('   ```\n');

    // ========================================
    // 6. Error Handling Example
    // ========================================
    print('⚠️  6. Error Handling...');
    print('   The library provides specific exception types:');
    print('   ```dart');
    print('   try {');
    print("     final page = await client.pages.retrieve('invalid_id');");
    print('   } on NotFoundException catch (e) {');
    print(r"     print('Page not found: ${e.message}');");
    print('   } on AuthenticationException catch (e) {');
    print(r"     print('Authentication failed: ${e.message}');");
    print('   } on RateLimitException catch (e) {');
    print(r"     print('Rate limited: ${e.message}');");
    print('   } on ValidationException catch (e) {');
    print(r"     print('Invalid request: ${e.message}');");
    print('   } on NotionException catch (e) {');
    print(r"     print('Notion API error: ${e.message}');");
    print('   }');
    print('   ```\n');

    // ========================================
    // Summary
    // ========================================
    print('=' * 50);
    print('✅ Example completed successfully!');
    print('=' * 50);
    print('');
    print('📚 Next steps:');
    print('   1. Replace YOUR_INTEGRATION_TOKEN with your actual token');
    print('   2. Get page/database IDs from your Notion workspace');
    print('   3. Try running the commented examples with real IDs');
    print('   4. Check out the README for more detailed examples');
    print('');
    print('🔗 Useful links:');
    print('   - Create integration: https://www.notion.so/my-integrations');
    print('   - API docs: https://developers.notion.com/');
    print('   - Package docs: https://pub.dev/packages/notion_dart_kit');
  } catch (e) {
    print('❌ Error occurred: $e');
    print('');
    print('💡 Tips:');
    print('   - Make sure you replaced YOUR_INTEGRATION_TOKEN');
    print('   - Check that your token has the required permissions');
    print('   - Ensure your integration is connected to the workspace');
  } finally {
    // Always close the client when done
    client.close();
    print('\n🔒 Client closed.');
  }
}
