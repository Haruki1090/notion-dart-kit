import 'package:notion_dart_kit/notion_dart_kit.dart';

/// Main example for notion_dart_kit
///
/// This example demonstrates the core features of the library:
/// - Client initialization
/// - User operations
/// - Search functionality
/// - Error handling
///
/// Before running, replace 'YOUR_INTEGRATION_TOKEN' with your actual token.
/// Get your token from: https://www.notion.so/my-integrations
void main() async {
  print('🚀 notion_dart_kit Example\n');

  // Initialize the client with your integration token
  final client = NotionClient(token: 'YOUR_INTEGRATION_TOKEN');

  try {
    // ========================================
    // 1. Get Bot User Information
    // ========================================
    print('📱 Getting bot user information...');
    final botUser = await client.users.me();
    print('✅ Bot User: ${botUser.name}');
    print('   ID: ${botUser.id}\n');

    // ========================================
    // 2. Search for Pages and Databases
    // ========================================
    print('🔍 Searching for pages and databases...');
    final searchResults = await client.search.search(pageSize: 5);
    print('✅ Found ${searchResults.results.length} items');

    for (final result in searchResults.results) {
      result.when(
        page: (page) => print('   📄 Page: ${page.id}'),
        database: (database) => print('   📊 Database: ${database.id}'),
      );
    }
    print('');

    // ========================================
    // 3. Working with Pages (Example)
    // ========================================
    print('📄 Pages API Example:');
    print('   To retrieve a page:');
    print("   final page = await client.pages.retrieve('page_id');");
    print('');
    print('   To create a new page:');
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

    // ========================================
    // 4. Working with Databases (Example)
    // ========================================
    print('📊 Databases API Example:');
    print('   To query a database:');
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

    // ========================================
    // 5. Working with Blocks (Example)
    // ========================================
    print('📦 Blocks API Example:');
    print('   To get block children:');
    print(
      "   final children = await client.blocks.retrieveChildren('block_id');",
    );
    print('');
    print('   To append new blocks:');
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
    print('');

    // ========================================
    // 6. Error Handling
    // ========================================
    print('⚠️  Error Handling:');
    print('   The library provides specific exception types:');
    print('   - NotFoundException: Page/resource not found');
    print('   - AuthenticationException: Invalid token');
    print('   - RateLimitException: Rate limit exceeded');
    print('   - ValidationException: Invalid request data');
    print('   - NotionException: General API errors');
    print('');

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
    print('   3. Try running the examples with real IDs');
    print('   4. Check out other examples in the example/ directory');
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
