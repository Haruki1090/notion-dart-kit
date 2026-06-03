import 'package:notion_dart_kit/notion_dart_kit.dart';

/// Example demonstrating the data source templates API.
///
/// This example shows how to:
/// - List templates from a data source
/// - Find the default template
/// - Create a page using a template (via the `templateId` parameter)
void main() async {
  // Initialize the Notion client
  final client = NotionClient(
    token: 'YOUR_INTEGRATION_TOKEN', // Replace with your actual token
  );

  try {
    await templatesExample(client);
  } catch (e) {
    print('Error: $e');
  } finally {
    client.close();
  }
}

Future<void> templatesExample(NotionClient client) async {
  const dataSourceId =
      'YOUR_DATA_SOURCE_ID'; // Replace with actual data source ID
  const databaseId = 'YOUR_DATABASE_ID'; // Replace with actual database ID

  print('🔍 Template API Examples\n');

  // Example 1: List all templates from a data source.
  //
  // Each template exposes only `id`, `name`, and `isDefault`.
  print('1. Listing templates from data source...');
  try {
    final templates = await client.templates.listTemplates(dataSourceId);

    print('Found ${templates.results.length} templates:');
    for (final template in templates.results) {
      final marker = template.isDefault ? ' (default)' : '';
      print('  📄 ${template.name}$marker');
      print('     ID: ${template.id}');
      print('');
    }

    // Handle pagination if there are more templates.
    if (templates.hasMore) {
      print('📄 Loading more templates...');
      final nextPage = await client.templates.listTemplates(
        dataSourceId,
        startCursor: templates.nextCursor,
        pageSize: 10,
      );
      print('Next page has ${nextPage.results.length} templates');
    }
  } catch (e) {
    print('❌ Error listing templates: $e');
  }

  print('\n${'=' * 50}\n');

  // Example 2: Find the default template.
  print('2. Finding the default template...');
  try {
    final templates = await client.templates.listTemplates(dataSourceId);
    Template? defaultTemplate;
    for (final t in templates.results) {
      if (t.isDefault) {
        defaultTemplate = t;
        break;
      }
    }

    if (defaultTemplate != null) {
      print('📄 Default template: ${defaultTemplate.name} '
          '(${defaultTemplate.id})');
    } else {
      print('No default template configured for this data source.');
    }
  } catch (e) {
    print('❌ Error finding default template: $e');
  }

  print('\n${'=' * 50}\n');

  // Example 3: Create a page using a template.
  print('3. Creating page from template...');
  try {
    final templates = await client.templates.listTemplates(dataSourceId);

    if (templates.results.isNotEmpty) {
      final template = templates.results.first;
      print('📄 Using template: ${template.name}');

      final pageFromTemplate = await client.pages.create(
        parent: const Parent.database(databaseId: databaseId),
        properties: {
          'Name': {
            'title': [
              {
                'text': {
                  'content': 'Page created from ${template.name} template',
                },
              },
            ],
          },
        },
        templateId: template.id, // Apply the template on creation.
      );

      print('✅ Successfully created page from template!');
      print('   Page ID: ${pageFromTemplate.id}');
    } else {
      print('❌ No templates available to create page from');
    }
  } catch (e) {
    print('❌ Error creating page from template: $e');
  }

  print('\n🎉 Template API examples completed!');
}

/// Helper demonstrating client-side template filtering.
Future<void> templateSearchExample(
  NotionClient client,
  String dataSourceId,
) async {
  print('🔍 Template Search Example');

  try {
    final templates = await client.templates.listTemplates(dataSourceId);

    // Filter templates by name (client-side filtering).
    final projectTemplates = templates.results
        .where((template) => template.name.toLowerCase().contains('project'))
        .toList();

    print('Found ${projectTemplates.length} project-related templates:');
    for (final template in projectTemplates) {
      print('  📄 ${template.name}');
    }
  } catch (e) {
    print('❌ Error in template search: $e');
  }
}
