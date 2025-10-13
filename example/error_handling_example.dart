import 'package:notion_dart_kit/notion_dart_kit.dart';

/// Error Handling example for notion_dart_kit
///
/// This example demonstrates comprehensive error handling with the library's
/// exception hierarchy and retry mechanisms.
///
/// Exception Hierarchy:
/// - NotionException (base)
///   ├── AuthenticationException (401)
///   ├── NotFoundException (404)
///   ├── ValidationException (400)
///   └── RateLimitException (429)
void main() async {
  print('=== Error Handling Example ===\n');

  final client = NotionClient(
    token: 'YOUR_INTEGRATION_TOKEN',
  );

  try {
    // ========================================
    // 1. Basic Exception Handling
    // ========================================
    print('⚠️  1. Basic Exception Handling\n');

    print('All API errors are typed exceptions:\n');
    print('```dart');
    print('try {');
    print("  final page = await client.pages.retrieve('page_id');");
    print('} on NotFoundException catch (e) {');
    print('  // 404 - Page not found');
    print(r"  print('Page not found: ${e.message}');");
    print(r"  print('Status code: ${e.statusCode}'); // 404");
    print('} on AuthenticationException catch (e) {');
    print('  // 401 - Invalid token or insufficient permissions');
    print(r"  print('Auth error: ${e.message}');");
    print('} on ValidationException catch (e) {');
    print('  // 400 - Invalid request parameters');
    print(r"  print('Validation error: ${e.message}');");
    print('} on RateLimitException catch (e) {');
    print('  // 429 - Too many requests');
    print(r"  print('Rate limited: ${e.message}');");
    print('} on NotionException catch (e) {');
    print('  // Catch-all for other Notion API errors');
    print(r"  print('Notion error: ${e.message} (${e.statusCode})');");
    print('} catch (e) {');
    print('  // Non-Notion errors (network, parsing, etc.)');
    print(r"  print('Unexpected error: $e');");
    print('}');
    print('```\n');

    // ========================================
    // 2. Specific Exception Types
    // ========================================
    print('🔍 2. Specific Exception Types\n');

    // NotFoundException Example
    print('📄 NotFoundException (404):\n');
    print('```dart');
    print('try {');
    print("  await client.pages.retrieve('invalid_page_id');");
    print('} on NotFoundException catch (e) {');
    print(r"  print('Page not found: ${e.message}');");
    print('  // Handle: Show user-friendly message, offer search');
    print('}');
    print('```\n');

    // AuthenticationException Example
    print('🔐 AuthenticationException (401):\n');
    print('```dart');
    print('try {');
    print("  final client = NotionClient(token: 'invalid_token');");
    print('  await client.users.me();');
    print('} on AuthenticationException catch (e) {');
    print(r"  print('Authentication failed: ${e.message}');");
    print('  // Handle: Prompt user to check integration token');
    print('  // Common causes:');
    print('  // - Invalid token');
    print('  // - Token expired');
    print('  // - Insufficient permissions');
    print('  // - Integration not shared with content');
    print('}');
    print('```\n');

    // ValidationException Example
    print('✅ ValidationException (400):\n');
    print('```dart');
    print('try {');
    print('  await client.pages.create(');
    print("    parent: {'invalid': 'parent'},");
    print('    properties: {},');
    print('  );');
    print('} on ValidationException catch (e) {');
    print(r"  print('Invalid request: ${e.message}');");
    print('  // Handle: Check request parameters');
    print('  // Common causes:');
    print('  // - Missing required fields');
    print('  // - Invalid property types');
    print('  // - Malformed JSON');
    print('  // - Invalid IDs');
    print('}');
    print('```\n');

    // RateLimitException Example
    print('⏱️  RateLimitException (429):\n');
    print('```dart');
    print('try {');
    print('  // Making too many requests too fast');
    print('  for (var i = 0; i < 100; i++) {');
    print('    await client.users.me();');
    print('  }');
    print('} on RateLimitException catch (e) {');
    print(r"  print('Rate limited: ${e.message}');");
    print('  // The library handles this automatically with:');
    print('  // - Built-in rate limiter (3 req/s default)');
    print('  // - Automatic retry with exponential backoff');
    print('  // - Respects Retry-After header');
    print('  ');
    print('  // Manual handling if needed:');
    print('  await Future.delayed(Duration(seconds: 1));');
    print('  // Retry the request');
    print('}');
    print('```\n');

    // ========================================
    // 3. Retry Queue & Rate Limiting
    // ========================================
    print('🔄 3. Automatic Retry Queue & Rate Limiting\n');

    print('The library includes automatic retry handling:\n');

    print('Rate Limiter:');
    print('```dart');
    print('// Built-in rate limiter (3 requests/second default)');
    print('final client = NotionClient(');
    print("  token: 'YOUR_TOKEN',");
    print('  // Rate limiter is enabled by default');
    print(');');
    print('');
    print('// The rate limiter automatically:');
    print('// - Throttles requests to avoid 429 errors');
    print('// - Uses token bucket algorithm');
    print('// - Respects Retry-After header from API');
    print('```\n');

    print('Retry Queue:');
    print('```dart');
    print('// Transient failures are automatically retried');
    print('// - 429 (Rate Limit)');
    print('// - 5xx (Server Errors)');
    print('// - Network timeouts');
    print('');
    print('// Check retry queue status');
    print('print("Pending retries: ${client.retryQueue.pendingCount}");');
    print('print("Failed requests: ${client.retryQueue.failedCount}");');
    print('');
    print('// Retry queue uses:');
    print('// - Exponential backoff with jitter');
    print('// - Priority queue (rate limits get priority)');
    print('// - Respects Retry-After header');
    print('```\n');

    // ========================================
    // 4. Pagination Error Handling
    // ========================================
    print('📄 4. Pagination Error Handling\n');

    print('Handle errors during pagination:\n');
    print('```dart');
    print('Future<List<Page>> fetchAllPages(String databaseId) async {');
    print('  final allPages = <Page>[];');
    print('  String? cursor;');
    print('  int retries = 0;');
    print('  const maxRetries = 3;');
    print('');
    print('  do {');
    print('    try {');
    print('      final response = await client.databases.query(');
    print('        databaseId,');
    print('        startCursor: cursor,');
    print('        pageSize: 100,');
    print('      );');
    print('');
    print('      allPages.addAll(response.results);');
    print('      cursor = response.nextCursor;');
    print('      retries = 0; // Reset on success');
    print('');
    print('    } on RateLimitException catch (e) {');
    print('      // Rate limit - wait and retry');
    print(r"      print('Rate limited, waiting...');");
    print('      await Future.delayed(Duration(seconds: 2));');
    print('      continue; // Retry same cursor');
    print('');
    print('    } on NotionException catch (e) {');
    print('      if (retries < maxRetries) {');
    print('        retries++;');
    print(
        r'        print("Retry $retries/$maxRetries after error: ${e.message}");');
    print('        await Future.delayed(');
    print('          Duration(seconds: retries * 2),');
    print('        );');
    print('        continue; // Retry same cursor');
    print('      } else {');
    print('        // Max retries exceeded');
    print(r'        print("Failed after $maxRetries retries: ${e.message}");');
    print('        rethrow;');
    print('      }');
    print('    }');
    print('  } while (cursor != null);');
    print('');
    print('  return allPages;');
    print('}');
    print('```\n');

    // ========================================
    // 5. Batch Operation Error Handling
    // ========================================
    print('📦 5. Batch Operation Error Handling\n');

    print('Handle errors when processing multiple items:\n');
    print('```dart');
    print('class BatchResult<T> {');
    print('  final List<T> successful;');
    print('  final List<(String id, NotionException error)> failed;');
    print('');
    print('  BatchResult({');
    print('    required this.successful,');
    print('    required this.failed,');
    print('  });');
    print('}');
    print('');
    print('Future<BatchResult<Page>> updatePages(');
    print('  List<String> pageIds,');
    print('  Map<String, dynamic> properties,');
    print(') async {');
    print('  final successful = <Page>[];');
    print('  final failed = <(String, NotionException)>[];');
    print('');
    print('  for (final pageId in pageIds) {');
    print('    try {');
    print('      final page = await client.pages.update(');
    print('        pageId,');
    print('        properties: properties,');
    print('      );');
    print('      successful.add(page);');
    print('    } on NotionException catch (e) {');
    print('      failed.add((pageId, e));');
    print('      // Continue with other pages');
    print('    }');
    print('  }');
    print('');
    print('  return BatchResult(successful: successful, failed: failed);');
    print('}');
    print('');
    print('// Usage');
    print("final result = await updatePages(['id1', 'id2', 'id3'], {");
    print("  'Status': {'select': {'name': 'Done'}},");
    print('});');
    print('');
    print(r'print("Successfully updated: ${result.successful.length}");');
    print(r'print("Failed: ${result.failed.length}");');
    print('');
    print('for (final (id, error) in result.failed) {');
    print(r'  print("  $id: ${error.message}");');
    print('}');
    print('```\n');

    // ========================================
    // 6. Result Type Pattern (Advanced)
    // ========================================
    print('🎯 6. Result Type Pattern (Advanced)\n');

    print('Use the Result type for functional error handling:\n');
    print('```dart');
    print('Future<Result<Page, NotionException>> fetchPageSafe(');
    print('  String pageId,');
    print(') async {');
    print('  try {');
    print('    final page = await client.pages.retrieve(pageId);');
    print('    return Result.success(page);');
    print('  } on NotionException catch (e) {');
    print('    return Result.failure(e);');
    print('  }');
    print('}');
    print('');
    print('// Usage with pattern matching');
    print("final result = await fetchPageSafe('page_id');");
    print('');
    print('result.when(');
    print('  success: (page) {');
    print(r'    print("Got page: ${page.id}");');
    print('  },');
    print('  failure: (error) {');
    print(r'    print("Error: ${error.message}");');
    print('  },');
    print(');');
    print('');
    print('// Or use functional methods');
    print('final title = result');
    print('  .mapValue((page) => page.properties)');
    print('  .mapValue((props) => extractTitle(props))');
    print('  .getOrElse("Untitled");');
    print('```\n');

    // ========================================
    // 7. Logging & Debugging
    // ========================================
    print('🐛 7. Logging & Debugging\n');

    print('Enable debug logging for troubleshooting:\n');
    print('```dart');
    print('// Enable debug mode');
    print('NotionLogger.instance.initialize(isDebugMode: true);');
    print('');
    print('final client = NotionClient(');
    print("  token: 'YOUR_TOKEN',");
    print(');');
    print('');
    print('// Now all requests/responses/errors will be logged');
    print('// Example output:');
    print('// [NOTION] GET https://api.notion.com/v1/users/me');
    print('// [NOTION] Response: 200 OK');
    print('// [NOTION] ERROR: NotFoundException (404): Page not found');
    print('');
    print('// Disable for production');
    print('NotionLogger.instance.initialize(isDebugMode: false);');
    print('```\n');

    // ========================================
    // 8. Best Practices
    // ========================================
    print('✨ 8. Error Handling Best Practices\n');

    print('1️⃣  Always handle specific exceptions first:');
    print('   try {');
    print('     // ...');
    print('   } on NotFoundException catch (e) { /* ... */ }');
    print('   } on ValidationException catch (e) { /* ... */ }');
    print('   } on NotionException catch (e) { /* catch-all */ }');
    print('');
    print('2️⃣  Use the retry queue for transient failures:');
    print('   // Automatic retry for 429, 5xx, network errors');
    print('   // Check status: client.retryQueue.pendingCount');
    print('');
    print('3️⃣  Implement exponential backoff for manual retries:');
    print('   await Future.delayed(Duration(seconds: 2 ^ retryCount));');
    print('');
    print('4️⃣  Batch operations should collect errors, not fail fast:');
    print('   // Process all items, collect failures, report at end');
    print('');
    print('5️⃣  Enable debug logging during development:');
    print('   NotionLogger.instance.initialize(isDebugMode: true);');
    print('');
    print('6️⃣  Always close the client when done:');
    print('   try {');
    print('     // ...');
    print('   } finally {');
    print('     client.close();');
    print('   }');
    print('');
    print('7️⃣  Provide user-friendly error messages:');
    print('   on NotFoundException catch (e) {');
    print(
        '     showError("Could not find that page. It may have been deleted.");');
    print('   }');
    print('');
    print('8️⃣  Log errors for debugging but sanitize sensitive data:');
    print('   // NotionLogger automatically sanitizes auth headers');
    print('');

    // ========================================
    // 9. Common Error Scenarios
    // ========================================
    print('\n📋 9. Common Error Scenarios\n');

    print('❌ "Page not found" (404):');
    print('   • Page was deleted');
    print('   • Integration not shared with page');
    print('   • Invalid page ID');
    print('   • No permission to access');
    print('');
    print('❌ "Unauthorized" (401):');
    print('   • Invalid integration token');
    print('   • Token expired (shouldn\'t happen with internal integrations)');
    print('   • Missing required permissions');
    print('');
    print('❌ "Validation error" (400):');
    print('   • Invalid property types');
    print('   • Missing required fields');
    print('   • Malformed request body');
    print('   • Invalid enum values');
    print('');
    print('❌ "Rate limited" (429):');
    print('   • Too many requests per second (>3)');
    print('   • Burst limit exceeded');
    print('   • Solution: Library handles automatically with rate limiter');
    print('');
    print('❌ "Server error" (5xx):');
    print('   • Notion API issues');
    print('   • Temporary outages');
    print('   • Solution: Automatic retry with exponential backoff');
    print('');

    // ========================================
    // Summary
    // ========================================
    print('=' * 50);
    print('✅ Error handling examples completed!');
    print('=' * 50);
    print('\n📚 Key Takeaways:');
    print('   ✓ Use specific exception types for better handling');
    print('   ✓ Built-in rate limiter prevents most 429 errors');
    print('   ✓ Retry queue handles transient failures automatically');
    print('   ✓ Always close client in finally block');
    print('   ✓ Enable debug logging during development');
    print('   ✓ Collect errors in batch operations');
    print('\n💡 Exception Hierarchy:');
    print('   NotionException (base)');
    print('   ├── AuthenticationException (401)');
    print('   ├── NotFoundException (404)');
    print('   ├── ValidationException (400)');
    print('   └── RateLimitException (429)');
    print('\n💡 Automatic Features:');
    print('   • Rate limiter (3 req/s, token bucket algorithm)');
    print('   • Retry queue (exponential backoff, respects Retry-After)');
    print('   • Request/response logging (when debug mode enabled)');
    print('   • Auth header sanitization in logs');
    print('\n💡 Next steps:');
    print('   1. Add proper error handling to your app');
    print('   2. Enable debug logging during development');
    print('   3. Monitor retry queue status for issues');
    print('   4. Implement batch error collection pattern');
  } catch (e) {
    print('❌ Error: $e');
  } finally {
    client.close();
    print('\n🔒 Client closed.');
  }
}
