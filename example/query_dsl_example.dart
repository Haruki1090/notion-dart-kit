import 'package:notion_dart_kit/notion_dart_kit.dart';

/// Query DSL example for notion_dart_kit
///
/// This example demonstrates filtering and sorting for database queries.
/// Replace 'YOUR_INTEGRATION_TOKEN' and 'YOUR_DATABASE_ID' with your actual values.
void main() async {
  print('=== Query DSL Example ===\n');

  final client = NotionClient(
    token: 'YOUR_INTEGRATION_TOKEN',
  );

  const databaseId = 'YOUR_DATABASE_ID';

  try {
    // ========================================
    // 1. Simple Filters (JSON Format)
    // ========================================
    print('📝 1. Simple Filters\n');

    print('Filter: Status equals "In Progress"');
    print('{"property": "Status", "select": {"equals": "In Progress"}}\n');

    print('Filter: Completed is true');
    print('{"property": "Completed", "checkbox": {"equals": true}}\n');

    print('Filter: Priority greater than 3');
    print('{"property": "Priority", "number": {"greater_than": 3}}\n');

    // ========================================
    // 2. Text Filters
    // ========================================
    print('🔤 2. Text Filters\n');

    print('Filter: Title contains "API"');
    print('{"property": "Title", "title": {"contains": "API"}}\n');

    print('Filter: Name starts with "Project"');
    print('{"property": "Name", "rich_text": {"starts_with": "Project"}}\n');

    // ========================================
    // 3. Date Filters
    // ========================================
    print('📅 3. Date Filters\n');

    print('Filter: Due date after today');
    print('{"property": "Due Date", "date": {"after": "2024-01-15"}}\n');

    print('Filter: Created this week');
    print('{"property": "Created", "date": {"this_week": {}}}\n');

    // ========================================
    // 4. Compound Filters (AND)
    // ========================================
    print('🔗 4. Compound Filters (AND)\n');

    print('Filter: Status="In Progress" AND Priority>3');
    final andFilterJson = {
      'and': [
        {
          'property': 'Status',
          'select': {'equals': 'In Progress'}
        },
        {
          'property': 'Priority',
          'number': {'greater_than': 3}
        },
      ]
    };
    print('$andFilterJson\n');

    // ========================================
    // 5. Compound Filters (OR)
    // ========================================
    print('🔀 5. Compound Filters (OR)\n');

    print('Filter: Status="Todo" OR Status="In Progress"');
    final orFilterJson = {
      'or': [
        {
          'property': 'Status',
          'select': {'equals': 'Todo'}
        },
        {
          'property': 'Status',
          'select': {'equals': 'In Progress'}
        },
      ]
    };
    print('$orFilterJson\n');

    // ========================================
    // 6. Sorting
    // ========================================
    print('📊 6. Sorting\n');

    print('Sort: Priority descending');
    final sortDesc = {'property': 'Priority', 'direction': 'descending'};
    print('$sortDesc\n');

    print('Sort: Created Time ascending');
    final sortAsc = {'timestamp': 'created_time', 'direction': 'ascending'};
    print('$sortAsc\n');

    // ========================================
    // 7. Real Query Example
    // ========================================
    print('🚀 7. Real Query Example\n');

    print('Querying database with filters and sorts...\n');

    // Uncomment to run actual query:
    /*
    final results = await client.databases.query(
      databaseId,
      filter: {
        'and': [
          {'property': 'Completed', 'checkbox': {'equals': false}},
          {'property': 'Priority', 'number': {'greater_than_or_equal_to': 3}},
        ]
      },
      sorts: [
        {'property': 'Priority', 'direction': 'descending'},
        {'property': 'Due Date', 'direction': 'ascending'},
      ],
      pageSize: 10,
    );

    print('✅ Found ${results.results.length} pages');
    for (final page in results.results) {
      print('   📄 Page ID: ${page.id}');
    }
    */

    // ========================================
    // Summary
    // ========================================
    print('=' * 50);
    print('✅ Query examples completed!');
    print('=' * 50);
    print('\n📚 Supported Features:');
    print('   ✓ Property filters (text, number, date, select, etc.)');
    print('   ✓ Logical operators (AND, OR)');
    print('   ✓ Sorting by property or timestamp');
    print('   ✓ Pagination with cursor');
    print('\n💡 Next steps:');
    print('   1. Replace YOUR_INTEGRATION_TOKEN and YOUR_DATABASE_ID');
    print('   2. Uncomment the real query example');
    print('   3. Customize filters for your database schema');
  } catch (e) {
    print('❌ Error: $e');
  } finally {
    client.close();
    print('\n🔒 Client closed.');
  }
}
