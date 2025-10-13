import 'package:notion_dart_kit/notion_dart_kit.dart';

/// PropertyBuilder example for notion_dart_kit
///
/// This example demonstrates the PropertyBuilder API for creating property values
/// without deeply nested Maps. PropertyBuilder provides a fluent, type-safe
/// interface for building properties when creating or updating pages.
///
/// **NEW in v1.x**: PropertyBuilder simplifies property creation!
/// - No more deeply nested Maps
/// - Fluent API with method chaining
/// - Type-safe property construction
/// - IDE autocomplete support
void main() async {
  print('=== PropertyBuilder Example ===\n');

  final client = NotionClient(
    token: 'YOUR_INTEGRATION_TOKEN',
  );

  const databaseId = 'YOUR_DATABASE_ID';

  try {
    // ========================================
    // 1. Simple Properties (No Chaining)
    // ========================================
    print('📝 1. Simple Properties\n');

    // These properties are simple values that don't need method chaining
    final simpleProperties = {
      // Number property
      'Priority': PropertyBuilder.number(5),

      // Checkbox property
      'Completed': PropertyBuilder.checkbox(false),

      // URL property
      'Reference': PropertyBuilder.url('https://example.com/docs'),

      // Email property
      'Contact': PropertyBuilder.email('team@example.com'),

      // Phone property
      'Phone': PropertyBuilder.phone('+1-234-567-8900'),

      // Select property
      'Status': PropertyBuilder.select('In Progress'),

      // Multi-select property
      'Tags': PropertyBuilder.multiSelect(['urgent', 'bug', 'frontend']),

      // Status property
      'WorkStatus': PropertyBuilder.status('Active'),

      // People property
      'Assignees': PropertyBuilder.people(['user_id_1', 'user_id_2']),

      // Relation property
      'Related Pages': PropertyBuilder.relation(['page_id_1', 'page_id_2']),
    };

    print('Simple properties created:');
    print('  - Priority: 5');
    print('  - Completed: false');
    print('  - Status: In Progress');
    print('  - Tags: [urgent, bug, frontend]');
    print('  - Assignees: 2 users');
    print('  - Related Pages: 2 pages\n');

    // ========================================
    // 2. Title Property with Formatting
    // ========================================
    print('📝 2. Title Property with Formatting\n');

    // Simple title
    final simpleTitleProp = PropertyBuilder.title('Simple Page Title').toJson();
    print('Simple title created\n');

    // Title with bold formatting
    final boldTitleProp = PropertyBuilder.title('Bold Title').bold().toJson();
    print('Bold title created\n');

    // Title with multiple formatting options
    final fancyTitleProp =
        PropertyBuilder.title('Fancy Title').bold().color('blue').toJson();
    print('Fancy title (bold + blue) created\n');

    // Title with link
    final linkedTitleProp = PropertyBuilder.title('Documentation')
        .link('https://docs.example.com')
        .bold()
        .toJson();
    print('Linked title created\n');

    // Title with all formatting
    final fullTitleProp = PropertyBuilder.title('Full Format')
        .bold()
        .italic()
        .underline()
        .strikethrough()
        .code()
        .color('red')
        .link('https://example.com')
        .toJson();
    print('Fully formatted title created\n');

    // ========================================
    // 3. Rich Text Property with Formatting
    // ========================================
    print('📝 3. Rich Text Property with Formatting\n');

    // Simple rich text
    final simpleRichTextProp =
        PropertyBuilder.richText('This is a description').toJson();
    print('Simple rich text created\n');

    // Rich text with formatting
    final styledRichTextProp = PropertyBuilder.richText('Important note')
        .bold()
        .color('yellow_background')
        .toJson();
    print('Styled rich text (bold + yellow background) created\n');

    // Rich text with link
    final linkedRichTextProp = PropertyBuilder.richText('Click here')
        .link('https://example.com')
        .underline()
        .toJson();
    print('Linked rich text created\n');

    // ========================================
    // 4. Date Property
    // ========================================
    print('📅 4. Date Property\n');

    // Single date
    final singleDateProp = PropertyBuilder.date(
      start: DateTime(2025, 10, 20),
    ).toJson();
    print('Single date property created\n');

    // Date range
    final dateRangeProp = PropertyBuilder.date(
      start: DateTime(2025, 10, 20),
      end: DateTime(2025, 10, 25),
    ).toJson();
    print('Date range property created\n');

    // Date with time zone
    final dateWithTimezoneProp = PropertyBuilder.date(
      start: DateTime(2025, 10, 20, 14, 30),
    ).timeZone('America/New_York').toJson();
    print('Date with timezone property created\n');

    // ========================================
    // 5. Files Property
    // ========================================
    print('📎 5. Files Property\n');

    final filesProp = PropertyBuilder.files([
      {
        'name': 'document.pdf',
        'type': 'external',
        'external': {'url': 'https://example.com/doc.pdf'},
      },
      {
        'name': 'image.png',
        'type': 'external',
        'external': {'url': 'https://example.com/image.png'},
      },
    ]);
    print('Files property created with 2 files\n');

    // ========================================
    // 6. Complete Page Creation Example
    // ========================================
    print('🚀 6. Complete Page Creation Example\n');

    // Build a complete set of properties using PropertyBuilder
    final pageProperties = {
      // Title with formatting
      'Title': PropertyBuilder.title('Q1 Planning Document')
          .bold()
          .color('blue')
          .toJson(),

      // Rich text description
      'Description': PropertyBuilder.richText(
        'This document outlines our Q1 objectives and key results.',
      ).toJson(),

      // Simple properties
      'Status': PropertyBuilder.select('In Progress'),
      'Priority': PropertyBuilder.number(5),
      'Completed': PropertyBuilder.checkbox(false),

      // Date range
      'Due Date': PropertyBuilder.date(
        start: DateTime.now().add(const Duration(days: 7)),
        end: DateTime.now().add(const Duration(days: 14)),
      ).toJson(),

      // Collections
      'Tags': PropertyBuilder.multiSelect(['planning', 'q1', 'objectives']),
      'Assignees': PropertyBuilder.people(['user_id_1', 'user_id_2']),
      'Related Projects': PropertyBuilder.relation(['project_page_id']),

      // Contact info
      'Contact Email': PropertyBuilder.email('team@example.com'),
      'Phone': PropertyBuilder.phone('+1-234-567-8900'),
      'Reference URL': PropertyBuilder.url('https://example.com/q1-plan'),

      // Files
      'Attachments': PropertyBuilder.files([
        {
          'name': 'q1-objectives.pdf',
          'type': 'external',
          'external': {'url': 'https://example.com/q1-objectives.pdf'},
        },
      ]),
    };

    print('Complete property set created with:');
    print('  ✓ Formatted title (bold, blue)');
    print('  ✓ Rich text description');
    print('  ✓ Status, priority, checkbox');
    print('  ✓ Date range (7-14 days from now)');
    print('  ✓ Tags, assignees, relations');
    print('  ✓ Contact info (email, phone, URL)');
    print('  ✓ File attachments\n');

    // Uncomment to create the page:
    /*
    final newPage = await client.pages.create(
      parent: {'type': 'database_id', 'database_id': databaseId},
      properties: pageProperties,
    );
    print('✅ Created page: ${newPage.id}\n');
    */

    // ========================================
    // 7. Updating Page Properties
    // ========================================
    print('🔄 7. Updating Page Properties\n');

    final updateProperties = {
      'Status': PropertyBuilder.select('Done'),
      'Completed': PropertyBuilder.checkbox(true),
      'Priority': PropertyBuilder.number(3),
      'Title': PropertyBuilder.title('Updated Title')
          .bold()
          .italic()
          .color('green')
          .toJson(),
    };

    print('Update properties created:');
    print('  - Status: Done');
    print('  - Completed: true');
    print('  - Priority: 3');
    print('  - Title: Updated with green color\n');

    // Uncomment to update a page:
    /*
    const pageId = 'YOUR_PAGE_ID';
    await client.pages.update(
      pageId,
      properties: updateProperties,
    );
    print('✅ Updated page properties\n');
    */

    // ========================================
    // 8. Comparison: Old vs New API
    // ========================================
    print('📊 8. Comparison: Old vs New API\n');

    print('❌ OLD WAY (Deeply nested Maps):');
    print('''
    final properties = {
      'Title': {
        'title': [
          {
            'text': {'content': 'My Page'},
            'annotations': {'bold': true, 'color': 'blue'}
          }
        ]
      },
      'Status': {
        'select': {'name': 'In Progress'}
      },
      'Priority': {'number': 5},
    };
    ''');

    print('✅ NEW WAY (PropertyBuilder):');
    print('''
    final properties = {
      'Title': PropertyBuilder.title('My Page')
        .bold()
        .color('blue')
        .toJson(),
      'Status': PropertyBuilder.select('In Progress'),
      'Priority': PropertyBuilder.number(5),
    };
    ''');

    print('\n💡 Benefits:');
    print('  ✓ Less nesting, more readable');
    print('  ✓ Fluent API with method chaining');
    print('  ✓ Type-safe property construction');
    print('  ✓ IDE autocomplete support');
    print('  ✓ Reduced chance of errors\n');

    // ========================================
    // Summary
    // ========================================
    print('=' * 50);
    print('✅ PropertyBuilder examples completed!');
    print('=' * 50);
    print('\n💡 Key Takeaways:');
    print('   📝 Use PropertyBuilder for all property creation');
    print('   🎨 Chain methods for formatting (title, richText)');
    print('   🔗 Call .toJson() on builders (title, richText, date)');
    print('   ⚡ Simple properties return Maps directly');
    print('\n💡 Next steps:');
    print('   1. Replace YOUR_INTEGRATION_TOKEN and IDs');
    print('   2. Uncomment examples to create/update pages');
    print('   3. Experiment with different property types');
    print('   4. Check out query_dsl_example.dart for filtering');
  } catch (e) {
    print('❌ Error: $e');
  } finally {
    client.close();
    print('\n🔒 Client closed.');
  }
}
