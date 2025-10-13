import 'package:notion_dart_kit/notion_dart_kit.dart';

/// Query DSL example for notion_dart_kit
///
/// This example demonstrates the type-safe Query DSL for building filters and sorts.
/// Replace 'YOUR_INTEGRATION_TOKEN' and 'YOUR_DATABASE_ID' with your actual values.
void main() async {
  print('=== Query DSL Example ===\n');

  final client = NotionClient(
    token: 'YOUR_INTEGRATION_TOKEN',
  );

  const databaseId = 'YOUR_DATABASE_ID';

  try {
    // ========================================
    // 1. Simple Filters
    // ========================================
    print('📝 1. Simple Filters\n');

    // Using string extension for property filters
    final filter1 = 'Status'.property.select().equals('In Progress');
    print('Filter: Status = "In Progress"');
    print('JSON: ${filter1.toJson()}\n');

    final filter2 = 'Priority'.property.number().greaterThan(3);
    print('Filter: Priority > 3');
    print('JSON: ${filter2.toJson()}\n');

    final filter3 = 'Completed'.property.checkbox().equals(false);
    print('Filter: Completed = false');
    print('JSON: ${filter3.toJson()}\n');

    // ========================================
    // 2. Text Filters
    // ========================================
    print('🔤 2. Text Filters\n');

    final textFilter1 = 'Title'.property.text().contains('API');
    print('Filter: Title contains "API"');
    print('JSON: ${textFilter1.toJson()}\n');

    final textFilter2 = 'Name'.property.text().startsWith('Project');
    print('Filter: Name starts with "Project"');
    print('JSON: ${textFilter2.toJson()}\n');

    // ========================================
    // 3. Date Filters
    // ========================================
    print('📅 3. Date Filters\n');

    final dateFilter1 = 'Due Date'.property.date().pastWeek();
    print('Filter: Due Date in past week');
    print('JSON: ${dateFilter1.toJson()}\n');

    final dateFilter2 = 'Created'.property.date().after('2024-01-15');
    print('Filter: Created after 2024-01-15');
    print('JSON: ${dateFilter2.toJson()}\n');

    // ========================================
    // 4. Compound Filters (AND)
    // ========================================
    print('🔗 4. Compound Filters (AND)\n');

    final andFilter = Filter.and([
      'Status'.property.select().equals('In Progress'),
      'Priority'.property.number().greaterThan(3),
    ]);
    print('Filter: Status = "In Progress" AND Priority > 3');
    print('JSON: ${andFilter.toJson()}\n');

    // ========================================
    // 5. Compound Filters (OR)
    // ========================================
    print('🔀 5. Compound Filters (OR)\n');

    final orFilter = Filter.or([
      'Status'.property.select().equals('Todo'),
      'Status'.property.select().equals('In Progress'),
    ]);
    print('Filter: Status = "Todo" OR Status = "In Progress"');
    print('JSON: ${orFilter.toJson()}\n');

    // ========================================
    // 6. Nested Filters
    // ========================================
    print('🎯 6. Nested Filters\n');

    final nestedFilter = Filter.and([
      Filter.or([
        'Status'.property.select().equals('Todo'),
        'Status'.property.select().equals('In Progress'),
      ]),
      'Priority'.property.number().greaterThanOrEqual(3),
      'Assignees'.property.people().isNotEmpty(),
    ]);
    print('Filter: (Status = "Todo" OR Status = "In Progress") '
        'AND Priority >= 3 AND Assignees not empty');
    print('JSON: ${nestedFilter.toJson()}\n');

    // ========================================
    // 7. Sorting
    // ========================================
    print('📊 7. Sorting\n');

    // Using string extension
    final sort1 = 'Priority'.descending();
    print('Sort: Priority descending');
    print('JSON: ${sort1.toJson()}\n');

    final sort2 = 'Due Date'.ascending();
    print('Sort: Due Date ascending');
    print('JSON: ${sort2.toJson()}\n');

    // Using SortBuilder
    final sort3 = SortBuilder.createdTimeDescending();
    print('Sort: Created Time descending');
    print('JSON: ${sort3.toJson()}\n');

    final sort4 = SortBuilder.lastEditedTimeAscending();
    print('Sort: Last Edited Time ascending');
    print('JSON: ${sort4.toJson()}\n');

    // Multiple sorts
    final sorts = [
      'Priority'.descending(),
      'Due Date'.ascending(),
      SortBuilder.createdTimeDescending(),
    ];
    print('Multiple sorts: Priority DESC, Due Date ASC, Created Time DESC');
    print('JSON: ${sorts.map((s) => s.toJson()).toList()}\n');

    // ========================================
    // 8. Real Query Example
    // ========================================
    print('🚀 8. Real Query Example\n');

    print('Building query with filters and sorts...\n');

    // Build a complex filter
    final queryFilter = Filter.and([
      'Completed'.property.checkbox().equals(false),
      'Priority'.property.number().greaterThanOrEqual(3),
    ]);

    // Build sorts
    final querySorts = [
      'Priority'.descending(),
      'Due Date'.ascending(),
    ];

    print('Filter JSON:');
    print('${queryFilter.toJson()}\n');
    print('Sorts JSON:');
    print('${querySorts.map((s) => s.toJson()).toList()}\n');

    // Execute query (uncomment when using valid credentials)
    /*
    print('Executing query...');
    final results = await client.databases.query(
      databaseId,
      filter: queryFilter.toJson(),
      sorts: querySorts.map((s) => s.toJson()).toList(),
      pageSize: 10,
    );

    print('✅ Found ${results.results.length} pages\n');
    for (final page in results.results) {
      print('   📄 Page ID: ${page.id}');

      // Extract title
      final titleProp = page.properties['Title'];
      final title = titleProp?.when(
        title: (id, richText) => richText.map((rt) => rt.plainText).join(),
        orElse: () => 'Untitled',
      ) ?? 'Untitled';
      print('      Title: $title');

      // Extract status
      final statusProp = page.properties['Status'];
      final status = statusProp?.when(
        select: (id, option) => option?.name ?? 'No status',
        orElse: () => 'No status',
      ) ?? 'No status';
      print('      Status: $status');

      // Extract priority
      final priorityProp = page.properties['Priority'];
      final priority = priorityProp?.when(
        number: (id, value) => value?.toString() ?? 'No priority',
        orElse: () => 'No priority',
      ) ?? 'No priority';
      print('      Priority: $priority\n');
    }

    // Handle pagination
    if (results.hasMore) {
      print('ℹ️  More results available (cursor: ${results.nextCursor})');
    }
    */

    print('ℹ️  Query setup complete!');
    print(
        '   Uncomment the query execution code to run with valid credentials.\n');

    // ========================================
    // Summary
    // ========================================
    print('=' * 50);
    print('✅ Query DSL examples completed!');
    print('=' * 50);
    print('\n📚 Key Features:');
    print('   ✓ String extensions for property filters');
    print('   ✓ Type-safe filter builders');
    print('   ✓ Logical operators (AND, OR)');
    print('   ✓ Nested filter support');
    print('   ✓ Multiple sort criteria');
    print('   ✓ Pattern matching for reading properties');
    print('\n💡 Next steps:');
    print('   1. Replace YOUR_INTEGRATION_TOKEN and YOUR_DATABASE_ID');
    print('   2. Uncomment the query execution code');
    print('   3. Customize filters for your database schema');
    print('   4. Run: dart run example/query_dsl_example.dart');
  } catch (e) {
    print('❌ Error: $e');
  } finally {
    client.close();
    print('\n🔒 Client closed.');
  }
}
