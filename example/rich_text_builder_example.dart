import 'package:notion_dart_kit/notion_dart_kit.dart';

/// RichTextBuilder example for notion_dart_kit
///
/// This example demonstrates the RichTextBuilder API for creating rich text
/// objects for use in block content. RichTextBuilder provides a fluent interface
/// that eliminates the need for deeply nested Maps when creating formatted text.
///
/// **NEW in v1.x**: RichTextBuilder simplifies rich text creation!
/// - No more deeply nested Maps
/// - Fluent API with method chaining
/// - Type-safe rich text construction
/// - Support for text, mentions, and equations
void main() async {
  print('=== RichTextBuilder Example ===\n');

  final client = NotionClient(token: 'YOUR_INTEGRATION_TOKEN');

  const pageId = 'YOUR_PAGE_ID';

  try {
    // ========================================
    // 1. Simple Text
    // ========================================
    print('📝 1. Simple Text\n');

    // Plain text
    final plainText = RichTextBuilder.text('Hello World').toJson();
    print('Plain text JSON created\n');

    // Bold text
    final boldText = RichTextBuilder.text('Bold text').bold().toJson();
    print('Bold text JSON created\n');

    // Italic text
    final italicText = RichTextBuilder.text('Italic text').italic().toJson();
    print('Italic text JSON created\n');

    // ========================================
    // 2. Text with Multiple Formatting
    // ========================================
    print('🎨 2. Text with Multiple Formatting\n');

    // Multiple styles
    final styledText = RichTextBuilder.text(
      'Styled text',
    ).bold().italic().underline().color('blue').toJson();
    print('Multi-styled text created\n');

    // Code formatting
    final codeText = RichTextBuilder.text(
      'console.log("Hello")',
    ).code().toJson();
    print('Code formatted text created\n');

    // Strikethrough
    final strikethroughText = RichTextBuilder.text(
      'Deleted text',
    ).strikethrough().toJson();
    print('Strikethrough text created\n');

    // Colored text
    final coloredText = RichTextBuilder.text(
      'Important',
    ).color('red_background').toJson();
    print('Colored text created\n');

    // ========================================
    // 3. Text with Links
    // ========================================
    print('🔗 3. Text with Links\n');

    // Simple link
    final linkText = RichTextBuilder.text(
      'Click here',
    ).link('https://example.com').underline().toJson();
    print('Link text created\n');

    // Styled link
    final styledLink = RichTextBuilder.text(
      'Documentation',
    ).link('https://docs.example.com').bold().color('blue').toJson();
    print('Styled link created\n');

    // ========================================
    // 4. Mentions
    // ========================================
    print('👤 4. Mentions\n');

    // User mention
    final userMention = RichTextBuilder.mentionUser('user_id_123').toJson();
    print('User mention created\n');

    // Page mention
    final pageMention = RichTextBuilder.mentionPage('page_id_456').toJson();
    print('Page mention created\n');

    // Database mention
    final databaseMention = RichTextBuilder.mentionDatabase(
      'database_id_789',
    ).toJson();
    print('Database mention created\n');

    // Date mention
    final dateMention = RichTextBuilder.mentionDate(
      start: DateTime(2025, 12, 25),
    ).toJson();
    print('Date mention created\n');

    // Date range mention
    final dateRangeMention = RichTextBuilder.mentionDate(
      start: DateTime(2025, 12, 20),
      end: DateTime(2025, 12, 25),
    ).toJson();
    print('Date range mention created\n');

    // Link preview mention
    final linkPreview = RichTextBuilder.mentionLinkPreview(
      'https://example.com',
    ).toJson();
    print('Link preview mention created\n');

    // Styled mention
    final styledMention = RichTextBuilder.mentionUser(
      'user_id',
    ).bold().color('blue').toJson();
    print('Styled mention created\n');

    // ========================================
    // 5. Equations
    // ========================================
    print('📐 5. Equations\n');

    // Simple equation
    final equation = RichTextBuilder.equation('E = mc^2').toJson();
    print('Equation created\n');

    // Complex equation
    final complexEquation = RichTextBuilder.equation(
      r'\int_{0}^{\infty} x^2 dx',
    ).toJson();
    print('Complex equation created\n');

    // ========================================
    // 6. Rich Text Arrays for Blocks
    // ========================================
    print('📦 6. Rich Text Arrays for Blocks\n');

    // Paragraph with mixed formatting
    final paragraphContent = [
      RichTextBuilder.text('This is ').toJson(),
      RichTextBuilder.text('bold').bold().toJson(),
      RichTextBuilder.text(', ').toJson(),
      RichTextBuilder.text('italic').italic().toJson(),
      RichTextBuilder.text(', and ').toJson(),
      RichTextBuilder.text('colored').color('red').toJson(),
      RichTextBuilder.text(' text.').toJson(),
    ];

    print('Created rich text array with ${paragraphContent.length} elements\n');

    // ========================================
    // 7. Complete Block Examples
    // ========================================
    print('🏗️  7. Complete Block Examples\n');

    // Paragraph block
    final paragraphBlock = {
      'object': 'block',
      'type': 'paragraph',
      'paragraph': {
        'rich_text': [
          RichTextBuilder.text('Normal text, ').toJson(),
          RichTextBuilder.text('bold text, ').bold().toJson(),
          RichTextBuilder.text('and italic text.').italic().toJson(),
        ],
      },
    };

    print('Paragraph block created\n');

    // Heading block
    final headingBlock = {
      'object': 'block',
      'type': 'heading_1',
      'heading_1': {
        'rich_text': [
          RichTextBuilder.text(
            'Chapter 1: Introduction',
          ).bold().color('blue').toJson(),
        ],
      },
    };

    print('Heading block created\n');

    // Callout block
    final calloutBlock = {
      'object': 'block',
      'type': 'callout',
      'callout': {
        'rich_text': [
          RichTextBuilder.text('Important: ').bold().color('red').toJson(),
          RichTextBuilder.text('Read the ').toJson(),
          RichTextBuilder.text(
            'documentation',
          ).link('https://docs.example.com').underline().toJson(),
          RichTextBuilder.text(' before proceeding.').toJson(),
        ],
        'icon': {'type': 'emoji', 'emoji': '⚠️'},
        'color': 'yellow_background',
      },
    };

    print('Callout block created\n');

    // To-do block with mentions
    final todoBlock = {
      'object': 'block',
      'type': 'to_do',
      'to_do': {
        'rich_text': [
          RichTextBuilder.text('Review with ').toJson(),
          RichTextBuilder.mentionUser('user_id').bold().toJson(),
          RichTextBuilder.text(' by ').toJson(),
          RichTextBuilder.mentionDate(
            start: DateTime.now().add(const Duration(days: 3)),
          ).toJson(),
        ],
        'checked': false,
      },
    };

    print('To-do block with mentions created\n');

    // Code block with explanation
    final codeExplanationBlocks = [
      {
        'object': 'block',
        'type': 'paragraph',
        'paragraph': {
          'rich_text': [
            RichTextBuilder.text('Here\'s a simple ').toJson(),
            RichTextBuilder.text('Python').code().toJson(),
            RichTextBuilder.text(' example:').toJson(),
          ],
        },
      },
      {
        'object': 'block',
        'type': 'code',
        'code': {
          'rich_text': [
            RichTextBuilder.text(
              'def hello():\n    print("Hello World")',
            ).toJson(),
          ],
          'language': 'python',
        },
      },
    ];

    print('Code explanation blocks created\n');

    // ========================================
    // 8. Helper Method - plainArray()
    // ========================================
    print('⚡ 8. Helper Method - plainArray()\n');

    // Quick way to create a simple text array
    final simpleArray = RichTextBuilder.plainArray('Just plain text');

    print('Plain array: ${simpleArray.length} element\n');

    // Use in block
    final simpleBlock = {
      'object': 'block',
      'type': 'paragraph',
      'paragraph': {
        'rich_text': RichTextBuilder.plainArray('Simple paragraph text'),
      },
    };

    print('Simple block created\n');

    // ========================================
    // 9. Appending Blocks with RichTextBuilder
    // ========================================
    print('➕ 9. Appending Blocks with RichTextBuilder\n');

    // Prepare blocks to append
    final blocksToAppend = [
      paragraphBlock,
      headingBlock,
      calloutBlock,
      todoBlock,
    ];

    print('Prepared ${blocksToAppend.length} blocks to append\n');

    // Uncomment to append blocks:
    /*
    await client.blocks.appendChildren(pageId, blocksToAppend);
    print('✅ Appended ${blocksToAppend.length} blocks to page\n');
    */

    // ========================================
    // 10. Comparison: Old vs New API
    // ========================================
    print('📊 10. Comparison: Old vs New API\n');

    print('❌ OLD WAY (Deeply nested Maps):');
    print('''
    {
      'object': 'block',
      'type': 'paragraph',
      'paragraph': {
        'rich_text': [
          {
            'type': 'text',
            'text': {'content': 'Bold text'},
            'annotations': {
              'bold': true,
              'italic': false,
              'strikethrough': false,
              'underline': false,
              'code': false,
              'color': 'default'
            },
            'plain_text': 'Bold text'
          }
        ]
      }
    }
    ''');

    print('✅ NEW WAY (RichTextBuilder):');
    print('''
    {
      'object': 'block',
      'type': 'paragraph',
      'paragraph': {
        'rich_text': [
          RichTextBuilder.text('Bold text').bold().toJson()
        ]
      }
    }
    ''');

    print('\n💡 Benefits:');
    print('  ✓ Much less nesting');
    print('  ✓ Fluent API with method chaining');
    print('  ✓ No need to manually set all annotations');
    print('  ✓ plain_text auto-generated from content');
    print('  ✓ Type-safe rich text construction\n');

    // ========================================
    // Summary
    // ========================================
    print('=' * 50);
    print('✅ RichTextBuilder examples completed!');
    print('=' * 50);
    print('\n💡 Key Takeaways:');
    print('   📝 Use RichTextBuilder.text() for formatted text');
    print('   👤 Use RichTextBuilder.mention*() for mentions');
    print('   📐 Use RichTextBuilder.equation() for equations');
    print('   ⚡ Use .plainArray() for simple text arrays');
    print('   🎨 Chain formatting methods naturally');
    print('\n💡 Next steps:');
    print('   1. Replace YOUR_INTEGRATION_TOKEN and IDs');
    print('   2. Uncomment block appending code to test');
    print('   3. Experiment with different formatting combinations');
    print('   4. Use with PropertyBuilder for complete page creation');
  } catch (e) {
    print('❌ Error: $e');
  } finally {
    client.close();
    print('\n🔒 Client closed.');
  }
}
