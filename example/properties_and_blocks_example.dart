import 'package:notion_dart_kit/notion_dart_kit.dart';

/// Properties and Blocks example for notion_dart_kit
///
/// This example shows how to work with various property types and block types
/// when creating and updating Notion pages.
///
/// **IMPORTANT NOTES:**
/// - PropertyValue, RichText, and Block models are READ-ONLY
/// - They are used for parsing API responses, not for creating content
/// - When creating pages/blocks, use raw Maps as shown in this example
/// - For easier property/block creation, see the PropertyBuilder (#15),
///   RichTextBuilder (#17), and BlockBuilder (#18) APIs (coming soon)
void main() async {
  print('=== Properties and Blocks Example ===\n');

  final client = NotionClient(
    token: 'YOUR_INTEGRATION_TOKEN',
  );

  const databaseId = 'YOUR_DATABASE_ID';
  const pageId = 'YOUR_PAGE_ID';

  try {
    // ========================================
    // 1. Creating Pages with Various Properties
    // ========================================
    print('📝 1. Creating a Page with Various Properties\n');
    print(
        'ℹ️  Note: Properties must be provided as Maps (not PropertyValue models)\n');

    // Property creation uses raw Maps
    // (PropertyValue models are read-only and used for parsing responses)
    final pageProperties = {
      // Title property
      'Title': {
        'title': [
          {
            'text': {'content': 'Project Planning Document'},
            'annotations': {
              'bold': true,
              'color': 'blue',
            },
          }
        ]
      },

      // Rich Text property
      'Description': {
        'rich_text': [
          {
            'text': {'content': 'This is a '}
          },
          {
            'text': {'content': 'detailed'},
            'annotations': {'italic': true},
          },
          {
            'text': {'content': ' project plan.'}
          },
        ]
      },

      // Number property
      'Priority': {'number': 5},

      // Select property
      'Status': {
        'select': {'name': 'In Progress'}
      },

      // Multi-select property
      'Tags': {
        'multi_select': [
          {'name': 'urgent'},
          {'name': 'planning'},
          {'name': 'q1'},
        ]
      },

      // Date property (with start and end)
      'Due Date': {
        'date': {
          'start':
              DateTime.now().add(const Duration(days: 7)).toIso8601String(),
          'end': DateTime.now().add(const Duration(days: 14)).toIso8601String(),
        }
      },

      // Checkbox property
      'Completed': {'checkbox': false},

      // URL property
      'Reference': {'url': 'https://example.com/docs'},

      // Email property
      'Contact': {'email': 'team@example.com'},

      // Phone property
      'Phone': {'phone_number': '+1-234-567-8900'},

      // People property
      'Assignees': {
        'people': [
          {'id': 'user_id_1'},
          {'id': 'user_id_2'},
        ]
      },

      // Files property
      'Attachments': {
        'files': [
          {
            'name': 'diagram.png',
            'type': 'external',
            'external': {'url': 'https://example.com/diagram.png'},
          }
        ]
      },
    };

    print('Properties structure:');
    print('  - Title: Rich text with bold, blue formatting');
    print('  - Description: Multi-part rich text with italic');
    print('  - Priority: Number (5)');
    print('  - Status: Select ("In Progress")');
    print('  - Tags: Multi-select (urgent, planning, q1)');
    print('  - Due Date: Date range (7-14 days from now)');
    print('  - Completed: Checkbox (false)');
    print('  - Reference: URL');
    print('  - Contact: Email');
    print('  - Phone: Phone number');
    print('  - Assignees: People (2 users)');
    print('  - Attachments: Files (external file)\n');

    // Uncomment to create the page:
    /*
    final newPage = await client.pages.create(
      parent: {'type': 'database_id', 'database_id': databaseId},
      properties: pageProperties,
    );
    print('✅ Created page: ${newPage.id}\n');
    */

    // ========================================
    // 2. Updating Page Properties
    // ========================================
    print('🔄 2. Updating Page Properties\n');

    final updateProperties = {
      'Status': {
        'select': {'name': 'Done'}
      },
      'Completed': {'checkbox': true},
      'Priority': {'number': 3},
    };

    print('Updating properties:');
    print('  - Status: Done');
    print('  - Completed: true');
    print('  - Priority: 3\n');

    // Uncomment to update the page:
    /*
    await client.pages.update(
      pageId,
      properties: updateProperties,
    );
    print('✅ Updated page properties\n');
    */

    // ========================================
    // 3. Working with Rich Text Mentions
    // ========================================
    print('🏷️  3. Rich Text with Mentions\n');

    // Example structure (for demonstration purposes)
    print('Rich text with mentions can be created with:');
    print('  - Text: "Assigned to "');
    print('  - User mention: @user');
    print('  - Text: " for review on "');
    print('  - Date mention: @date\n');

    // ========================================
    // 4. Creating Pages with Content (Blocks)
    // ========================================
    print('📦 4. Creating a Page with Content Blocks\n');

    final pageContent = [
      // Heading 1
      {
        'object': 'block',
        'type': 'heading_1',
        'heading_1': {
          'rich_text': [
            {
              'type': 'text',
              'text': {'content': 'Project Overview'}
            }
          ],
          'color': 'blue',
        }
      },

      // Paragraph
      {
        'object': 'block',
        'type': 'paragraph',
        'paragraph': {
          'rich_text': [
            {
              'type': 'text',
              'text': {'content': 'This project aims to deliver...'}
            }
          ]
        }
      },

      // Bulleted list
      {
        'object': 'block',
        'type': 'bulleted_list_item',
        'bulleted_list_item': {
          'rich_text': [
            {
              'type': 'text',
              'text': {'content': 'Research phase'}
            }
          ]
        }
      },
      {
        'object': 'block',
        'type': 'bulleted_list_item',
        'bulleted_list_item': {
          'rich_text': [
            {
              'type': 'text',
              'text': {'content': 'Design phase'}
            }
          ]
        }
      },
      {
        'object': 'block',
        'type': 'bulleted_list_item',
        'bulleted_list_item': {
          'rich_text': [
            {
              'type': 'text',
              'text': {'content': 'Implementation phase'}
            }
          ]
        }
      },

      // To-do items
      {
        'object': 'block',
        'type': 'to_do',
        'to_do': {
          'rich_text': [
            {
              'type': 'text',
              'text': {'content': 'Complete requirements gathering'}
            }
          ],
          'checked': true,
        }
      },
      {
        'object': 'block',
        'type': 'to_do',
        'to_do': {
          'rich_text': [
            {
              'type': 'text',
              'text': {'content': 'Create wireframes'}
            }
          ],
          'checked': false,
        }
      },

      // Callout block
      {
        'object': 'block',
        'type': 'callout',
        'callout': {
          'rich_text': [
            {
              'type': 'text',
              'text': {'content': 'Important: Review with stakeholders'}
            }
          ],
          'icon': {
            'type': 'emoji',
            'emoji': '⚠️',
          },
          'color': 'yellow_background',
        }
      },

      // Code block
      {
        'object': 'block',
        'type': 'code',
        'code': {
          'rich_text': [
            {
              'type': 'text',
              'text': {'content': 'function example() {\n  return "Hello";\n}'}
            }
          ],
          'language': 'javascript',
        }
      },

      // Quote
      {
        'object': 'block',
        'type': 'quote',
        'quote': {
          'rich_text': [
            {
              'type': 'text',
              'text': {
                'content': 'Quality is not an act, it is a habit. - Aristotle'
              }
            }
          ],
          'color': 'gray',
        }
      },

      // Divider
      {'object': 'block', 'type': 'divider', 'divider': {}},

      // Heading 2
      {
        'object': 'block',
        'type': 'heading_2',
        'heading_2': {
          'rich_text': [
            {
              'type': 'text',
              'text': {'content': 'Timeline'}
            }
          ]
        }
      },

      // Table of Contents
      {
        'object': 'block',
        'type': 'table_of_contents',
        'table_of_contents': {'color': 'default'}
      },
    ];

    print('Content blocks structure:');
    print('  1. Heading 1 (blue): "Project Overview"');
    print('  2. Paragraph: Introduction text');
    print('  3-5. Bulleted list: 3 items');
    print('  6-7. To-do items: 2 items (1 checked)');
    print('  8. Callout: Warning message');
    print('  9. Code block: JavaScript example');
    print('  10. Quote: Inspirational quote');
    print('  11. Divider');
    print('  12. Heading 2: "Timeline"');
    print('  13. Table of Contents\n');

    // Uncomment to create page with content:
    /*
    final pageWithContent = await client.pages.create(
      parent: {'type': 'database_id', 'database_id': databaseId},
      properties: {
        'Title': {
          'title': [
            {'text': {'content': 'Page with Rich Content'}}
          ]
        },
      },
      children: pageContent,
    );
    print('✅ Created page with content: ${pageWithContent.id}\n');
    */

    // ========================================
    // 5. Appending Blocks to Existing Page
    // ========================================
    print('➕ 5. Appending Blocks to Existing Page\n');

    final newBlocks = [
      {
        'object': 'block',
        'type': 'heading_3',
        'heading_3': {
          'rich_text': [
            {
              'type': 'text',
              'text': {'content': 'Updates'}
            }
          ]
        }
      },
      {
        'object': 'block',
        'type': 'numbered_list_item',
        'numbered_list_item': {
          'rich_text': [
            {
              'type': 'text',
              'text': {'content': 'Phase 1 completed'}
            }
          ]
        }
      },
      {
        'object': 'block',
        'type': 'numbered_list_item',
        'numbered_list_item': {
          'rich_text': [
            {
              'type': 'text',
              'text': {'content': 'Phase 2 in progress'}
            }
          ]
        }
      },
    ];

    print('Appending blocks:');
    print('  - Heading 3: "Updates"');
    print('  - Numbered list: 2 items\n');

    // Uncomment to append blocks:
    /*
    await client.blocks.appendChildren(
      pageId,
      newBlocks,
    );
    print('✅ Appended blocks to page\n');
    */

    // ========================================
    // 6. Property Value Examples Summary
    // ========================================
    print('📊 6. All Supported Property Types\n');
    print('✓ Title - Rich text for page titles');
    print('✓ Rich Text - Formatted text with mentions');
    print('✓ Number - Numeric values');
    print('✓ Select - Single selection');
    print('✓ Multi-select - Multiple selections');
    print('✓ Date - Date or date range');
    print('✓ People - User references');
    print('✓ Checkbox - Boolean values');
    print('✓ URL - Web links');
    print('✓ Email - Email addresses');
    print('✓ Phone - Phone numbers');
    print('✓ Files - File attachments');
    print('✓ Relation - Database relations');
    print('✓ Rollup - Computed from relations');
    print('✓ Formula - Computed formulas');
    print('✓ Status - Status values\n');

    // ========================================
    // 7. Block Types Summary
    // ========================================
    print('📦 7. All Supported Block Types\n');
    print('✓ Paragraph - Basic text block');
    print('✓ Heading 1/2/3 - Section headings');
    print('✓ Bulleted List - Unordered lists');
    print('✓ Numbered List - Ordered lists');
    print('✓ To-do - Checkbox items');
    print('✓ Toggle - Collapsible content');
    print('✓ Code - Code snippets');
    print('✓ Quote - Quotations');
    print('✓ Callout - Highlighted messages');
    print('✓ Divider - Horizontal rule');
    print('✓ Table - Data tables');
    print('✓ Table of Contents - Auto-generated TOC');
    print('✓ Breadcrumb - Navigation trail');
    print('✓ Embed - External embeds');
    print('✓ Image/Video/File/PDF - Media blocks');
    print('✓ Bookmark - Link preview');
    print('✓ Equation - Math formulas');
    print('✓ Column List - Multi-column layout');
    print('✓ And 13+ more types!\n');

    // ========================================
    // 8. Reading Properties (PropertyValue models)
    // ========================================
    print('📖 8. Reading Properties from Retrieved Pages\n');
    print('ℹ️  PropertyValue models ARE used for reading API responses\n');

    // Example of reading properties using pattern matching
    print('Example code for reading properties:');
    print('```dart');
    print("final page = await client.pages.retrieve('page_id');");
    print('');
    print("// Reading title property");
    print("final titleProp = page.properties['Title'];");
    print('final title = titleProp?.when(');
    print('  title: (id, richText) {');
    print('    return richText.map((rt) => rt.plainText).join();');
    print('  },');
    print("  orElse: () => 'Untitled',");
    print(") ?? 'Untitled';");
    print('');
    print("// Reading select property");
    print("final statusProp = page.properties['Status'];");
    print('final status = statusProp?.when(');
    print('  select: (id, option) => option?.name,');
    print('  orElse: () => null,');
    print(');');
    print('');
    print("// Reading number property");
    print("final priorityProp = page.properties['Priority'];");
    print('final priority = priorityProp?.when(');
    print('  number: (id, value) => value,');
    print('  orElse: () => null,');
    print(');');
    print('```\n');

    print('Key Points:');
    print('  ✓ PropertyValue models have .when() for pattern matching');
    print('  ✓ Each property type has its own case in when()');
    print('  ✓ Use orElse() to handle unexpected types');
    print('  ✓ Rich text arrays can be joined to get plain text');
    print('  ✓ Type-safe access to property values\n');

    // ========================================
    // Summary
    // ========================================
    print('=' * 50);
    print('✅ Properties and Blocks examples completed!');
    print('=' * 50);
    print('\n💡 Key Takeaways:');
    print('   📝 Creating: Use raw Maps (shown above)');
    print('   📖 Reading: Use PropertyValue models with .when()');
    print('   🔜 Coming soon: Builder APIs for easier creation');
    print('\n💡 Next steps:');
    print('   1. Replace YOUR_INTEGRATION_TOKEN and IDs');
    print('   2. Uncomment examples to create real content');
    print('   3. Customize properties for your database schema');
    print('   4. Experiment with different block combinations');
  } catch (e) {
    print('❌ Error: $e');
  } finally {
    client.close();
    print('\n🔒 Client closed.');
  }
}
