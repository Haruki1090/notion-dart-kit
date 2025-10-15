import 'package:notion_dart_kit/notion_dart_kit.dart';

/// Advanced Query example for notion_dart_kit
///
/// This example demonstrates advanced query patterns including complex filters,
/// pagination, aggregation, and real-world use cases.
void main() async {
  print('=== Advanced Query Example ===\n');

  final client = NotionClient(token: 'YOUR_INTEGRATION_TOKEN');

  const databaseId = 'YOUR_DATABASE_ID';

  try {
    // ========================================
    // 1. Complex Nested Filters
    // ========================================
    print('🎯 1. Complex Nested Filters\n');

    // Query: (Status = "In Progress" OR Status = "Todo") AND
    //        Priority >= 3 AND
    //        (Assignees not empty OR Tags contains "urgent")
    final complexFilter = Filter.and([
      Filter.or([
        'Status'.property.select().equals('In Progress'),
        'Status'.property.select().equals('Todo'),
      ]),
      'Priority'.property.number().greaterThanOrEqual(3),
      Filter.or([
        'Assignees'.property.people().isNotEmpty(),
        'Tags'.property.multiSelect().contains('urgent'),
      ]),
    ]);

    print('Complex filter structure:');
    print('  (Status = "In Progress" OR Status = "Todo")');
    print('  AND Priority >= 3');
    print('  AND (Assignees not empty OR Tags contains "urgent")');
    print('');
    print('Filter JSON:');
    print('${complexFilter.toJson()}\n');

    // ========================================
    // 2. Date Range Queries
    // ========================================
    print('📅 2. Date Range Queries\n');

    // This week's tasks
    final thisWeekFilter = Filter.and([
      'Due Date'.property.date().thisWeek(),
      'Completed'.property.checkbox().equals(false),
    ]);

    print('This week\'s uncompleted tasks:');
    print('  Due Date this week AND not completed\n');

    // Overdue tasks
    final overdueFilter = Filter.and([
      'Due Date'.property.date().before('now'),
      'Completed'.property.checkbox().equals(false),
    ]);

    print('Overdue tasks:');
    print('  Due Date before now AND not completed\n');

    // Date range (custom)
    final dateRangeFilter = Filter.and([
      'Created'.property.date().onOrAfter('2024-01-01'),
      'Created'.property.date().onOrBefore('2024-12-31'),
    ]);

    print('Tasks created in 2024:');
    print('  Created >= 2024-01-01 AND Created <= 2024-12-31\n');

    // Next 7 days
    final upcomingFilter = Filter.and([
      'Due Date'.property.date().nextWeek(),
      'Status'.property.select().doesNotEqual('Done'),
    ]);

    print('Upcoming tasks (next 7 days):');
    print('  Due Date next week AND Status != "Done"\n');

    // ========================================
    // 3. Text Search Queries
    // ========================================
    print('🔍 3. Text Search Queries\n');

    // Search in title
    final titleSearchFilter = Filter.or([
      'Title'.property.text().contains('API'),
      'Title'.property.text().contains('integration'),
      'Title'.property.text().startsWith('Project'),
    ]);

    print('Title contains "API" or "integration" or starts with "Project"\n');

    // Search across multiple text fields
    final multiFieldSearchFilter = Filter.or([
      'Title'.property.text().contains('bug'),
      'Description'.property.richText().contains('bug'),
      'Tags'.property.multiSelect().contains('bug'),
    ]);

    print('Search "bug" across title, description, and tags\n');

    // ========================================
    // 4. Empty/Non-Empty Queries
    // ========================================
    print('📭 4. Empty/Non-Empty Queries\n');

    // Unassigned tasks
    final unassignedFilter = Filter.and([
      'Assignees'.property.people().isEmpty(),
      'Status'.property.select().equals('Todo'),
    ]);

    print('Unassigned tasks:');
    print('  Assignees empty AND Status = "Todo"\n');

    // Tasks without due date
    final noDueDateFilter = Filter.and([
      'Due Date'.property.date().isEmpty(),
      'Priority'.property.number().greaterThan(2),
    ]);

    print('High priority tasks without due date:');
    print('  Due Date empty AND Priority > 2\n');

    // ========================================
    // 5. Multi-Select Queries
    // ========================================
    print('🏷️  5. Multi-Select Queries\n');

    // Contains any of multiple tags
    final multiTagFilter = Filter.or([
      'Tags'.property.multiSelect().contains('frontend'),
      'Tags'.property.multiSelect().contains('backend'),
      'Tags'.property.multiSelect().contains('fullstack'),
    ]);

    print('Tasks with frontend, backend, or fullstack tags\n');

    // Doesn\'t contain specific tag
    final excludeTagFilter = Filter.and([
      'Tags'.property.multiSelect().doesNotContain('archived'),
      'Status'.property.select().equals('In Progress'),
    ]);

    print('In progress tasks excluding archived\n');

    // ========================================
    // 6. Number Range Queries
    // ========================================
    print('🔢 6. Number Range Queries\n');

    // Priority range
    final priorityRangeFilter = Filter.and([
      'Priority'.property.number().greaterThanOrEqual(3),
      'Priority'.property.number().lessThanOrEqual(5),
    ]);

    print('Tasks with priority 3-5\n');

    // Specific priority
    final specificPriorityFilter = 'Priority'.property.number().equals(5);

    print('Critical priority tasks (priority = 5)\n');

    // ========================================
    // 7. Sorting Strategies
    // ========================================
    print('📊 7. Sorting Strategies\n');

    // Multi-level sorting
    final prioritySorts = [
      'Priority'.descending(), // Highest priority first
      'Due Date'.ascending(), // Earliest due date first
      SortBuilder.createdTimeDescending(), // Newest first
    ];

    print('Sort by:');
    print('  1. Priority (high to low)');
    print('  2. Due Date (earliest first)');
    print('  3. Created Time (newest first)\n');

    // Status-based sorting
    final statusSorts = [
      'Status'.ascending(), // Alphabetical
      'Priority'.descending(),
      SortBuilder.lastEditedTimeDescending(),
    ];

    print('Sort by:');
    print('  1. Status (alphabetical)');
    print('  2. Priority (high to low)');
    print('  3. Last Edited (newest first)\n');

    // ========================================
    // 8. Pagination Patterns
    // ========================================
    print('📄 8. Pagination Patterns\n');

    print('Pattern 1: Fetch all pages (simple):\n');
    print('```dart');
    print('Future<List<Page>> fetchAllPages(String databaseId) async {');
    print('  final allPages = <Page>[];');
    print('  String? cursor;');
    print('');
    print('  do {');
    print('    final response = await client.databases.query(');
    print('      databaseId,');
    print('      startCursor: cursor,');
    print('      pageSize: 100,');
    print('    );');
    print('');
    print('    allPages.addAll(response.results);');
    print('    cursor = response.nextCursor;');
    print('  } while (cursor != null);');
    print('');
    print('  return allPages;');
    print('}');
    print('```\n');

    print('Pattern 2: Streaming pagination:\n');
    print('```dart');
    print('Stream<Page> streamPages(String databaseId) async* {');
    print('  String? cursor;');
    print('');
    print('  do {');
    print('    final response = await client.databases.query(');
    print('      databaseId,');
    print('      startCursor: cursor,');
    print('      pageSize: 100,');
    print('    );');
    print('');
    print('    for (final page in response.results) {');
    print('      yield page;');
    print('    }');
    print('');
    print('    cursor = response.nextCursor;');
    print('  } while (cursor != null);');
    print('}');
    print('');
    print('// Usage');
    print('await for (final page in streamPages(databaseId)) {');
    print(r'  print("Processing page ${page.id}");');
    print('}');
    print('```\n');

    print('Pattern 3: Batch processing:\n');
    print('```dart');
    print('Future<void> processBatches(');
    print('  String databaseId,');
    print('  Future<void> Function(List<Page>) processor,');
    print(') async {');
    print('  String? cursor;');
    print('  const batchSize = 50;');
    print('');
    print('  do {');
    print('    final response = await client.databases.query(');
    print('      databaseId,');
    print('      startCursor: cursor,');
    print('      pageSize: batchSize,');
    print('    );');
    print('');
    print('    // Process entire batch');
    print('    await processor(response.results);');
    print('');
    print('    cursor = response.nextCursor;');
    print('  } while (cursor != null);');
    print('}');
    print('```\n');

    // ========================================
    // 9. Real-World Query Examples
    // ========================================
    print('🌍 9. Real-World Query Examples\n');

    print('Example 1: Task Management Dashboard\n');
    print('```dart');
    print('// Get my urgent tasks');
    print('final myUrgentTasks = await client.databases.query(');
    print('  databaseId,');
    print('  filter: Filter.and([');
    print("    'Assignee'.property.people().contains('user_id'),");
    print("    'Priority'.property.number().greaterThanOrEqual(4),");
    print("    'Status'.property.select().doesNotEqual('Done'),");
    print('  ]).toJson(),');
    print('  sorts: [');
    print("    'Priority'.descending().toJson(),");
    print("    'Due Date'.ascending().toJson(),");
    print('  ],');
    print(');');
    print('');
    print('// Get overdue tasks');
    print('final overdueTasks = await client.databases.query(');
    print('  databaseId,');
    print('  filter: Filter.and([');
    print("    'Due Date'.property.date().before('now'),");
    print("    'Completed'.property.checkbox().equals(false),");
    print('  ]).toJson(),');
    print('  sorts: [');
    print("    'Due Date'.ascending().toJson(),");
    print('  ],');
    print(');');
    print('');
    print('// Get recently completed tasks');
    print('final recentlyCompleted = await client.databases.query(');
    print('  databaseId,');
    print('  filter: Filter.and([');
    print("    'Completed'.property.checkbox().equals(true),");
    print("    'Last Edited'.property.date().pastWeek(),");
    print('  ]).toJson(),');
    print('  sorts: [');
    print('    SortBuilder.lastEditedTimeDescending().toJson(),');
    print('  ],');
    print('  pageSize: 10,');
    print(');');
    print('```\n');

    print('Example 2: Project Tracking\n');
    print('```dart');
    print('// Active projects by team');
    print('final activeProjects = await client.databases.query(');
    print('  projectsDbId,');
    print('  filter: Filter.and([');
    print("    'Status'.property.select().equals('Active'),");
    print("    'Team'.property.select().equals('Engineering'),");
    print("    'Progress'.property.number().lessThan(100),");
    print('  ]).toJson(),');
    print('  sorts: [');
    print("    'Priority'.descending().toJson(),");
    print("    'Start Date'.ascending().toJson(),");
    print('  ],');
    print(');');
    print('');
    print('// Projects at risk');
    print('final atRiskProjects = await client.databases.query(');
    print('  projectsDbId,');
    print('  filter: Filter.and([');
    print('    Filter.or([');
    print("      'Status'.property.select().equals('Blocked'),");
    print("      'Tags'.property.multiSelect().contains('at-risk'),");
    print('    ]),');
    print("    'Archived'.property.checkbox().equals(false),");
    print('  ]).toJson(),');
    print(');');
    print('```\n');

    print('Example 3: Content Management\n');
    print('```dart');
    print('// Drafts ready for review');
    print('final draftsForReview = await client.databases.query(');
    print('  contentDbId,');
    print('  filter: Filter.and([');
    print("    'Status'.property.select().equals('Draft'),");
    print("    'Word Count'.property.number().greaterThan(500),");
    print("    'Reviewer'.property.people().isNotEmpty(),");
    print('  ]).toJson(),');
    print('  sorts: [');
    print('    SortBuilder.createdTimeAscending().toJson(),');
    print('  ],');
    print(');');
    print('');
    print('// Published this month');
    print('final publishedThisMonth = await client.databases.query(');
    print('  contentDbId,');
    print('  filter: Filter.and([');
    print("    'Status'.property.select().equals('Published'),");
    print("    'Published Date'.property.date().pastMonth(),");
    print('  ]).toJson(),');
    print('  sorts: [');
    print("    'Published Date'.descending().toJson(),");
    print('  ],');
    print(');');
    print('```\n');

    // ========================================
    // 10. Query Optimization Tips
    // ========================================
    print('⚡ 10. Query Optimization Tips\n');

    print('1️⃣  Use specific filters to reduce result set:');
    print('   // ❌ Bad: Fetch all, filter in code');
    print('   final all = await client.databases.query(databaseId);');
    print('   final filtered = all.results.where((p) => /* ... */);');
    print('');
    print('   // ✅ Good: Filter on server');
    print('   final filtered = await client.databases.query(');
    print('     databaseId,');
    print('     filter: yourFilter.toJson(),');
    print('   );');
    print('');
    print('2️⃣  Use pageSize appropriately:');
    print('   // Small UI lists: pageSize: 10-20');
    print('   // Batch processing: pageSize: 100 (max)');
    print('   // Balance: network overhead vs memory usage');
    print('');
    print('3️⃣  Sort on server, not in code:');
    print('   // ✅ Good: Let Notion handle sorting');
    print('   sorts: ["Priority".descending().toJson()],');
    print('');
    print('4️⃣  Cache results when appropriate:');
    print('   // Store results if data doesn\'t change frequently');
    print('   // Invalidate cache on updates');
    print('');
    print('5️⃣  Use streaming for large datasets:');
    print('   // Process pages as they arrive');
    print('   // Reduces memory footprint');
    print('');
    print('6️⃣  Combine filters efficiently:');
    print('   // AND narrows results (faster)');
    print('   // OR expands results (slower)');
    print('   // Put most selective filters first in AND');
    print('');
    print('7️⃣  Monitor rate limits:');
    print('   // Built-in rate limiter: 3 req/s');
    print('   // Batch queries when possible');
    print('   // Use pagination efficiently');
    print('');

    // ========================================
    // 11. Advanced Aggregation (Manual)
    // ========================================
    print('\n📈 11. Advanced Aggregation (Manual)\n');

    print(
      'Notion API doesn\'t support aggregation, but you can do it manually:\n',
    );
    print('```dart');
    print('// Count pages by status');
    print('Future<Map<String, int>> countByStatus(String databaseId) async {');
    print('  final counts = <String, int>{};');
    print('  String? cursor;');
    print('');
    print('  do {');
    print('    final response = await client.databases.query(');
    print('      databaseId,');
    print('      startCursor: cursor,');
    print('      pageSize: 100,');
    print('    );');
    print('');
    print('    for (final page in response.results) {');
    print("      final status = page.properties['Status']?.maybeWhen(");
    print('        select: (id, option) => option?.name ?? "None",');
    print('        orElse: () => "None",');
    print('      ) ?? "None";');
    print('');
    print('      counts[status] = (counts[status] ?? 0) + 1;');
    print('    }');
    print('');
    print('    cursor = response.nextCursor;');
    print('  } while (cursor != null);');
    print('');
    print('  return counts;');
    print('}');
    print('');
    print('// Calculate average priority');
    print('Future<double> averagePriority(String databaseId) async {');
    print('  var sum = 0.0;');
    print('  var count = 0;');
    print('  String? cursor;');
    print('');
    print('  do {');
    print('    final response = await client.databases.query(');
    print('      databaseId,');
    print('      startCursor: cursor,');
    print('    );');
    print('');
    print('    for (final page in response.results) {');
    print("      final priority = page.properties['Priority']?.maybeWhen(");
    print('        number: (id, value) => value,');
    print('        orElse: () => null,');
    print('      );');
    print('');
    print('      if (priority != null) {');
    print('        sum += priority;');
    print('        count++;');
    print('      }');
    print('    }');
    print('');
    print('    cursor = response.nextCursor;');
    print('  } while (cursor != null);');
    print('');
    print('  return count > 0 ? sum / count : 0;');
    print('}');
    print('```\n');

    // ========================================
    // Summary
    // ========================================
    print('=' * 50);
    print('✅ Advanced query examples completed!');
    print('=' * 50);
    print('\n📚 Key Takeaways:');
    print('   ✓ Combine filters with AND/OR for complex queries');
    print('   ✓ Use date helpers (thisWeek, pastMonth, etc.)');
    print('   ✓ Multi-level sorting for precise ordering');
    print('   ✓ Efficient pagination with cursors');
    print('   ✓ Filter on server, not in client code');
    print('   ✓ Stream large datasets for memory efficiency');
    print('\n💡 Performance Tips:');
    print('   • Use pageSize: 100 for batch processing');
    print('   • Put most selective filters first in AND');
    print('   • Cache results when data is stable');
    print('   • Monitor rate limits (3 req/s)');
    print('   • Process pages as they arrive with streaming');
    print('\n💡 Common Patterns:');
    print('   • Task dashboards: Priority + Status + Assignee filters');
    print('   • Overdue items: Date before now + Not completed');
    print('   • Search: OR across multiple text fields');
    print('   • Unassigned: People isEmpty()');
    print('   • Date ranges: onOrAfter + onOrBefore');
    print('\n💡 Next steps:');
    print('   1. Replace YOUR_INTEGRATION_TOKEN and DATABASE_ID');
    print('   2. Adapt filters to your database schema');
    print('   3. Test pagination with large datasets');
    print('   4. Implement streaming for memory efficiency');
    print('   5. Build aggregation functions for analytics');
  } catch (e) {
    print('❌ Error: $e');
  } finally {
    client.close();
    print('\n🔒 Client closed.');
  }
}
