// ignore_for_file: avoid_print

import 'package:notion_dart_kit/notion_dart_kit.dart';

/// Example demonstrating the convenience helper functions.
///
/// This example shows how to use the helper classes to simplify common
/// operations when working with Notion pages and properties.
///
/// Before running this example, make sure to set the NOTION_API_KEY
/// environment variable with your Notion integration token.
Future<void> main() async {
  // Get API key from environment
  final apiKey = const String.fromEnvironment('NOTION_API_KEY');
  if (apiKey.isEmpty) {
    print('Error: NOTION_API_KEY environment variable not set');
    print('Usage: dart run example/helpers_example.dart '
        '--dart-define=NOTION_API_KEY=your_key_here');
    return;
  }

  // Initialize client
  final client = NotionClient(token: apiKey);

  try {
    print('=== Notion Helper Functions Example ===\n');

    // Get database ID from environment or use a default
    final databaseId = const String.fromEnvironment(
      'NOTION_DATABASE_ID',
      defaultValue: '',
    );

    if (databaseId.isEmpty) {
      print('Note: Set NOTION_DATABASE_ID to run database examples');
      print('Example: --dart-define=NOTION_DATABASE_ID=your_db_id\n');
      return;
    }

    // Query the database to get some pages
    print('Fetching pages from database...');
    final response = await client.databases.query(databaseId);
    final pages = response.results;

    if (pages.isEmpty) {
      print('No pages found in database');
      return;
    }

    print('Found ${pages.length} pages\n');

    // ==========================================================================
    // PageHelper Examples
    // ==========================================================================
    print('--- PageHelper Examples ---\n');

    // Extract titles from all pages
    print('1. Extract titles using PageHelper:');
    for (final page in pages.take(3)) {
      final title = PageHelper.extractTitle(page);
      print('  - $title');
    }
    print('');

    // Get property names from a page
    print('2. Get property names from first page:');
    final firstPage = pages.first;
    final propertyNames = PageHelper.getPropertyNames(firstPage);
    print('  Properties: ${propertyNames.join(", ")}');
    print('');

    // Check page status
    print('3. Check page status:');
    print('  - Archived: ${PageHelper.isArchived(firstPage)}');
    print('  - In Trash: ${PageHelper.isInTrash(firstPage)}');
    print('  - Created: ${PageHelper.getCreatedTime(firstPage)}');
    print('  - Last Edited: ${PageHelper.getLastEditedTime(firstPage)}');
    print('');

    // ==========================================================================
    // PropertyHelper Examples
    // ==========================================================================
    print('--- PropertyHelper Examples ---\n');

    // Extract different property types
    print('4. Extract property values:');
    final properties = firstPage.properties;

    for (final entry in properties.entries) {
      final name = entry.key;
      final legacyValue = entry.value;
      final property = legacyValue.toPropertyValue();

      print('  Property: $name (${legacyValue.type})');

      // Extract value based on type
      property.when(
        title: (id, richText) {
          final text = PropertyHelper.extractTitle(property);
          print('    → Title: $text');
        },
        richText: (id, richText) {
          final text = PropertyHelper.extractRichText(property);
          print('    → Rich Text: $text');
        },
        number: (id, value) {
          final num = PropertyHelper.extractNumber(property);
          print('    → Number: $num');
        },
        select: (id, option) {
          final selected = PropertyHelper.extractSelect(property);
          print('    → Select: $selected');
        },
        multiSelect: (id, options) {
          final selected = PropertyHelper.extractMultiSelect(property);
          print('    → Multi-Select: ${selected.join(", ")}');
        },
        status: (id, status) {
          final statusName = PropertyHelper.extractStatus(property);
          print('    → Status: $statusName');
        },
        date: (id, date) {
          final dateValue = PropertyHelper.extractDate(property);
          if (dateValue != null) {
            print('    → Date: $dateValue');
          }
          final range = PropertyHelper.extractDateRange(property);
          if (range != null) {
            print('    → Range: ${range.$1} to ${range.$2}');
          }
        },
        checkbox: (id, checked) {
          final value = PropertyHelper.extractCheckbox(property);
          print('    → Checkbox: $value');
        },
        url: (id, url) {
          final urlValue = PropertyHelper.extractUrl(property);
          print('    → URL: $urlValue');
        },
        email: (id, email) {
          final emailValue = PropertyHelper.extractEmail(property);
          print('    → Email: $emailValue');
        },
        phoneNumber: (id, phone) {
          final phoneValue = PropertyHelper.extractPhoneNumber(property);
          print('    → Phone: $phoneValue');
        },
        people: (id, users) {
          final names = PropertyHelper.extractPeople(property);
          print('    → People: ${names.join(", ")}');
        },
        relation: (id, relations) {
          final ids = PropertyHelper.extractRelation(property);
          print('    → Related Pages: ${ids.length} pages');
        },
        formula: (id, formula) {
          print('    → Formula (computed)');
        },
        rollup: (id, rollup) {
          print('    → Rollup (computed)');
        },
        createdTime: (id, time) {
          print('    → Created Time: $time');
        },
        createdBy: (id, user) {
          print('    → Created By: ${user.name}');
        },
        lastEditedTime: (id, time) {
          print('    → Last Edited Time: $time');
        },
        lastEditedBy: (id, user) {
          print('    → Last Edited By: ${user.name}');
        },
        files: (id, files) {
          print('    → Files: ${files.length} files');
        },
        uniqueId: (id, uniqueId) {
          print('    → Unique ID: ${uniqueId.prefix}-${uniqueId.number}');
        },
        verification: (id, verification) {
          print('    → Verification: ${verification?.state}');
        },
      );
    }
    print('');

    // Check if properties are empty
    print('5. Check for empty properties:');
    for (final entry in properties.entries.take(3)) {
      final name = entry.key;
      final property = entry.value.toPropertyValue();
      final empty = PropertyHelper.isEmpty(property);
      print('  - $name: ${empty ? "empty" : "has value"}');
    }
    print('');

    // ==========================================================================
    // BatchHelper Examples
    // ==========================================================================
    print('--- BatchHelper Examples ---\n');

    // Extract all titles at once
    print('6. Extract all titles in batch:');
    final allTitles = BatchHelper.extractTitles(pages);
    for (final title in allTitles.take(5)) {
      print('  - $title');
    }
    if (allTitles.length > 5) {
      print('  ... and ${allTitles.length - 5} more');
    }
    print('');

    // Filter pages by property value (assuming there's a Status property)
    print('7. Filter pages by property:');
    if (propertyNames.contains('Status')) {
      final inProgress = BatchHelper.filterByProperty(
        pages,
        'Status',
        (prop) => PropertyHelper.extractSelect(prop) == 'In Progress',
      );
      print('  - Pages with Status="In Progress": ${inProgress.length}');
    } else {
      print('  - No "Status" property found, skipping filter example');
    }
    print('');

    // Group pages by property value
    print('8. Group pages by property:');
    if (propertyNames.contains('Status')) {
      final grouped = BatchHelper.groupByProperty(
        pages,
        'Status',
        (prop) => PropertyHelper.extractSelect(prop) ?? 'None',
      );
      print('  - Groups:');
      for (final entry in grouped.entries) {
        print('    ${entry.key}: ${entry.value.length} pages');
      }
    } else {
      print('  - No "Status" property found, skipping group example');
    }
    print('');

    // Sort pages by property value
    print('9. Sort pages by property:');
    if (propertyNames.contains('Priority')) {
      final sorted = BatchHelper.sortByProperty(
        pages,
        'Priority',
        (prop) => PropertyHelper.extractNumber(prop) ?? 0,
        descending: true,
      );
      print('  - Top 3 by Priority:');
      for (final page in sorted.take(3)) {
        final title = PageHelper.extractTitle(page);
        final priority = PropertyHelper.extractNumber(
          page.properties['Priority']?.toPropertyValue(),
        );
        print('    $title (Priority: $priority)');
      }
    } else {
      print('  - No "Priority" property found, skipping sort example');
    }
    print('');

    // Count pages by property value
    print('10. Count pages by property:');
    if (propertyNames.contains('Status')) {
      final counts = BatchHelper.countByProperty(
        pages,
        'Status',
        (prop) => PropertyHelper.extractSelect(prop) ?? 'None',
      );
      print('  - Status counts:');
      for (final entry in counts.entries) {
        print('    ${entry.key}: ${entry.value}');
      }
    } else {
      print('  - No "Status" property found, skipping count example');
    }
    print('');

    // Filter archived and trashed pages
    print('11. Filter by page status:');
    final activePages = BatchHelper.filterArchived(
      pages,
      includeArchived: false,
    );
    final nonTrashed = BatchHelper.filterTrashed(
      pages,
      includeTrashed: false,
    );
    print('  - Total pages: ${pages.length}');
    print('  - Active (not archived): ${activePages.length}');
    print('  - Not in trash: ${nonTrashed.length}');
    print('');

    // ==========================================================================
    // RichTextHelper Examples
    // ==========================================================================
    print('--- RichTextHelper Examples ---\n');

    // Extract rich text from first page title
    print('12. Work with rich text:');
    final titleProp = firstPage.properties.values.firstWhere(
      (prop) => prop.type == 'title',
      orElse: () => throw Exception('No title property found'),
    );
    final titlePropertyValue = titleProp.toPropertyValue();

    titlePropertyValue.when(
      title: (id, richText) {
        final plainText = RichTextHelper.toPlainText(richText);
        final isEmpty = RichTextHelper.isEmpty(richText);
        final length = RichTextHelper.length(richText);

        print('  - Plain text: $plainText');
        print('  - Is empty: $isEmpty');
        print('  - Length: $length characters');

        // Show with custom separator
        if (richText.length > 1) {
          final separated = RichTextHelper.toPlainTextWithSeparator(
            richText,
            ' | ',
          );
          print('  - With separator: $separated');
        }
      },
      richText: (_, __) {},
      number: (_, __) {},
      select: (_, __) {},
      multiSelect: (_, __) {},
      status: (_, __) {},
      date: (_, __) {},
      people: (_, __) {},
      files: (_, __) {},
      email: (_, __) {},
      phoneNumber: (_, __) {},
      url: (_, __) {},
      createdTime: (_, __) {},
      createdBy: (_, __) {},
      lastEditedTime: (_, __) {},
      lastEditedBy: (_, __) {},
      formula: (_, __) {},
      relation: (_, __) {},
      rollup: (_, __) {},
      checkbox: (_, __) {},
      uniqueId: (_, __) {},
      verification: (_, __) {},
    );
    print('');

    print('=== Example completed successfully! ===');
  } catch (e) {
    print('Error: $e');
  } finally {
    client.close();
  }
}
