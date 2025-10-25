import 'package:notion_dart_kit/notion_dart_kit.dart';

/// Example demonstrating the Template API functionality (NEW in v0.2.2)
/// 
/// This example shows how to:
/// - List templates from a data source
/// - Retrieve specific template details
/// - Create pages using templates
/// - Handle template-related errors
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
  const dataSourceId = 'YOUR_DATA_SOURCE_ID'; // Replace with actual data source ID
  const databaseId = 'YOUR_DATABASE_ID'; // Replace with actual database ID

  print('🔍 Template API Examples\n');

  // Example 1: List all templates from a data source
  print('1. Listing templates from data source...');
  try {
    final templates = await client.templates.listTemplates(dataSourceId);
    
    print('Found ${templates.results.length} templates:');
    for (final template in templates.results) {
      print('  📄 ${template.title}');
      print('     ID: ${template.id}');
      print('     Description: ${template.description ?? 'No description'}');
      print('     Created: ${template.createdTime}');
      print('     Archived: ${template.archived}');
      print('     URL: ${template.url}');
      print('');
    }

    // Handle pagination if there are more templates
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

  print('\n' + '=' * 50 + '\n');

  // Example 2: Retrieve a specific template
  print('2. Retrieving specific template...');
  try {
    // First, get a template ID from the list
    final templates = await client.templates.listTemplates(dataSourceId);
    
    if (templates.results.isNotEmpty) {
      final templateId = templates.results.first.id;
      
      final template = await client.templates.retrieveTemplate(
        dataSourceId,
        templateId,
      );
      
      print('📄 Template Details:');
      print('   Title: ${template.title}');
      print('   Description: ${template.description ?? 'No description'}');
      print('   Created: ${template.createdTime}');
      print('   Last edited: ${template.lastEditedTime}');
      print('   Created by: ${template.createdBy.name ?? 'Unknown'}');
      print('   Last edited by: ${template.lastEditedBy.name ?? 'Unknown'}');
      print('   Archived: ${template.archived}');
      print('   URL: ${template.url}');
    } else {
      print('❌ No templates found in data source');
    }
  } catch (e) {
    print('❌ Error retrieving template: $e');
  }

  print('\n' + '=' * 50 + '\n');

  // Example 3: Create a page using a template
  print('3. Creating page from template...');
  try {
    // Get the first available template
    final templates = await client.templates.listTemplates(dataSourceId);
    
    if (templates.results.isNotEmpty) {
      final template = templates.results.first;
      
      print('📄 Using template: ${template.title}');
      
      // Create a page from the template
      final pageFromTemplate = await client.pages.create(
        parent: Parent.database(databaseId),
        properties: {
          'Name': {
            'title': [
              {
                'text': {
                  'content': 'Page created from ${template.title} template'
                }
              }
            ]
          },
          // Add other properties as needed based on your database schema
        },
        templateId: template.id, // This is the key - specify the template
      );
      
      print('✅ Successfully created page from template!');
      print('   Page ID: ${pageFromTemplate.id}');
      print('   Page URL: ${pageFromTemplate.url}');
      print('   Created from template: ${template.title}');
    } else {
      print('❌ No templates available to create page from');
    }
  } catch (e) {
    print('❌ Error creating page from template: $e');
  }

  print('\n' + '=' * 50 + '\n');

  // Example 4: Error handling for template operations
  print('4. Demonstrating error handling...');
  
  // Template not found error
  try {
    await client.templates.retrieveTemplate(
      dataSourceId,
      'nonexistent_template_id',
    );
  } on TemplateNotFoundException catch (e) {
    print('✅ Caught TemplateNotFoundException: ${e.message}');
  } catch (e) {
    print('❌ Unexpected error: $e');
  }

  // Invalid template error (when creating page)
  try {
    await client.pages.create(
      parent: Parent.database(databaseId),
      properties: {
        'Name': {
          'title': [
            {'text': {'content': 'Test page'}}
          ]
        }
      },
      templateId: 'invalid_template_id',
    );
  } on InvalidTemplateException catch (e) {
    print('✅ Caught InvalidTemplateException: ${e.message}');
  } on TemplateNotFoundException catch (e) {
    print('✅ Caught TemplateNotFoundException: ${e.message}');
  } catch (e) {
    print('❌ Unexpected error: $e');
  }

  print('\n' + '=' * 50 + '\n');

  // Example 5: Pagination with custom page size
  print('5. Pagination example with custom page size...');
  try {
    var cursor = null;
    var pageNumber = 1;
    const pageSize = 5;
    
    do {
      print('📄 Loading page $pageNumber (size: $pageSize)...');
      
      final templates = await client.templates.listTemplates(
        dataSourceId,
        startCursor: cursor,
        pageSize: pageSize,
      );
      
      print('   Found ${templates.results.length} templates on this page');
      for (var i = 0; i < templates.results.length; i++) {
        final template = templates.results[i];
        print('   ${i + 1}. ${template.title}');
      }
      
      cursor = templates.nextCursor;
      pageNumber++;
      
      // Break after 3 pages to avoid infinite loop in example
      if (pageNumber > 3) break;
      
    } while (cursor != null);
    
    print('✅ Pagination example completed');
  } catch (e) {
    print('❌ Error in pagination example: $e');
  }

  print('\n🎉 Template API examples completed!');
}

/// Helper function to demonstrate template filtering and searching
Future<void> templateSearchExample(NotionClient client, String dataSourceId) async {
  print('🔍 Template Search Example');
  
  try {
    final templates = await client.templates.listTemplates(dataSourceId);
    
    // Filter templates by title (client-side filtering)
    final projectTemplates = templates.results
        .where((template) => template.title.toLowerCase().contains('project'))
        .toList();
    
    print('Found ${projectTemplates.length} project-related templates:');
    for (final template in projectTemplates) {
      print('  📄 ${template.title}');
    }
    
    // Filter non-archived templates
    final activeTemplates = templates.results
        .where((template) => !template.archived)
        .toList();
    
    print('Found ${activeTemplates.length} active templates');
    
    // Sort templates by creation date (newest first)
    final sortedTemplates = List<Template>.from(templates.results)
      ..sort((a, b) => b.createdTime.compareTo(a.createdTime));
    
    print('Most recent template: ${sortedTemplates.first.title}');
    
  } catch (e) {
    print('❌ Error in template search: $e');
  }
}