import 'package:notion_dart_kit/notion_dart_kit.dart';

/// BlockBuilder example for notion_dart_kit
///
/// This example demonstrates the BlockBuilder API for creating block objects
/// for use in pages. BlockBuilder provides a fluent interface that eliminates
/// the need for deeply nested Maps when creating formatted blocks.
///
/// **NEW in v1.x**: BlockBuilder simplifies block creation!
/// - No more deeply nested Maps
/// - Fluent API with method chaining
/// - Type-safe block construction
/// - Support for 31+ block types
void main() async {
  print('=== BlockBuilder Example ===\n');

  final client = NotionClient(
    token: 'YOUR_INTEGRATION_TOKEN',
  );

  const pageId = 'YOUR_PAGE_ID';

  try {
    // ========================================
    // 1. Text Blocks
    // ========================================
    print('📝 1. Text Blocks\n');

    // Simple paragraph
    final paragraph =
        BlockBuilder.paragraph('This is a simple paragraph.').toJson();
    print('Paragraph block created\n');

    // Paragraph with color
    final coloredParagraph =
        BlockBuilder.paragraph('Colored paragraph').color('blue').toJson();
    print('Colored paragraph created\n');

    // Headings
    final heading1 = BlockBuilder.heading1('Chapter 1: Introduction').toJson();
    final heading2 =
        BlockBuilder.heading2('Section 1.1').color('blue').toJson();
    final heading3 = BlockBuilder.heading3('Subsection 1.1.1').toJson();
    print('Headings created\n');

    // Quote
    final quote = BlockBuilder.quote(
      'The only way to do great work is to love what you do.',
    ).color('gray').toJson();
    print('Quote created\n');

    // Callout
    final callout = BlockBuilder.callout('Important information!')
        .icon('💡')
        .color('yellow_background')
        .toJson();
    print('Callout created\n');

    // ========================================
    // 2. List Blocks
    // ========================================
    print('📋 2. List Blocks\n');

    // Bulleted list
    final bulletedItem1 = BlockBuilder.bulletedListItem('First item').toJson();
    final bulletedItem2 = BlockBuilder.bulletedListItem('Second item').toJson();
    print('Bulleted list items created\n');

    // Numbered list
    final numberedItem1 = BlockBuilder.numberedListItem('Step 1').toJson();
    final numberedItem2 = BlockBuilder.numberedListItem('Step 2').toJson();
    print('Numbered list items created\n');

    // To-do items
    final todoUnchecked = BlockBuilder.toDo('Task to complete').toJson();
    final todoChecked = BlockBuilder.toDo('Completed task').checked().toJson();
    print('To-do items created\n');

    // Toggle
    final toggle = BlockBuilder.toggle('Click to expand').toJson();
    print('Toggle created\n');

    // ========================================
    // 3. Nested Blocks
    // ========================================
    print('🗂️  3. Nested Blocks\n');

    // List with nested items
    final nestedList = BlockBuilder.bulletedListItem('Parent item').children([
      BlockBuilder.bulletedListItem('Child item 1').toJson(),
      BlockBuilder.bulletedListItem('Child item 2').toJson(),
    ]).toJson();
    print('Nested list created\n');

    // Toggle with content
    final toggleWithContent = BlockBuilder.toggle('FAQs').children([
      BlockBuilder.paragraph('Q: What is Notion?').toJson(),
      BlockBuilder.paragraph('A: A note-taking application.').toJson(),
    ]).toJson();
    print('Toggle with content created\n');

    // Toggleable heading
    final toggleableHeading =
        BlockBuilder.heading2('Expandable Section').toggleable().children([
      BlockBuilder.paragraph('Hidden content goes here.').toJson(),
    ]).toJson();
    print('Toggleable heading created\n');

    // ========================================
    // 4. Code Blocks
    // ========================================
    print('💻 4. Code Blocks\n');

    // Simple code
    final pythonCode = BlockBuilder.code(
      'def hello():\n    print("Hello, World!")',
      language: 'python',
    ).toJson();
    print('Python code block created\n');

    // Code with caption
    final jsCode = BlockBuilder.code(
      'const greeting = "Hello";',
      language: 'javascript',
    ).caption('JavaScript example').toJson();
    print('JavaScript code with caption created\n');

    // ========================================
    // 5. Layout Blocks
    // ========================================
    print('🎨 5. Layout Blocks\n');

    // Divider
    final divider = BlockBuilder.divider().toJson();
    print('Divider created\n');

    // Table of contents
    final toc = BlockBuilder.tableOfContents().toJson();
    print('Table of contents created\n');

    // Breadcrumb
    final breadcrumb = BlockBuilder.breadcrumb().toJson();
    print('Breadcrumb created\n');

    // ========================================
    // 6. Media Blocks
    // ========================================
    print('🖼️  6. Media Blocks\n');

    // Image
    final image = BlockBuilder.image('https://example.com/image.jpg').toJson();
    print('Image block created\n');

    // Image with caption
    final imageWithCaption = BlockBuilder.image('https://example.com/photo.jpg')
        .caption('A beautiful photo')
        .toJson();
    print('Image with caption created\n');

    // Video
    final video = BlockBuilder.video('https://example.com/video.mp4').toJson();
    print('Video block created\n');

    // File
    final file = BlockBuilder.file('https://example.com/document.pdf').toJson();
    print('File block created\n');

    // PDF
    final pdf = BlockBuilder.pdf('https://example.com/report.pdf').toJson();
    print('PDF block created\n');

    // ========================================
    // 7. Advanced Blocks
    // ========================================
    print('🚀 7. Advanced Blocks\n');

    // Bookmark
    final bookmark = BlockBuilder.bookmark('https://notion.so')
        .caption('Notion website')
        .toJson();
    print('Bookmark created\n');

    // Embed
    final embed =
        BlockBuilder.embed('https://www.youtube.com/watch?v=example').toJson();
    print('Embed created\n');

    // Equation
    final equation = BlockBuilder.equation('E = mc^2').toJson();
    print('Equation created\n');

    // Table
    final table = BlockBuilder.table(
      rows: [
        ['Name', 'Role', 'Department'],
        ['Alice', 'Engineer', 'Development'],
        ['Bob', 'Designer', 'Design'],
        ['Charlie', 'Manager', 'Operations'],
      ],
      hasColumnHeader: true,
    ).toJson();
    print('Table created\n');

    // ========================================
    // 8. Formatted Text in Blocks
    // ========================================
    print('✨ 8. Formatted Text in Blocks\n');

    // Paragraph with formatted text
    final formattedParagraph = BlockBuilder.paragraph()
        .addText('This text is ')
        .addRichText(RichTextBuilder.text('bold').bold().toJson())
        .addText(', this is ')
        .addRichText(RichTextBuilder.text('italic').italic().toJson())
        .addText(', and this is ')
        .addRichText(RichTextBuilder.text('colored').color('red').toJson())
        .addText('.')
        .toJson();
    print('Formatted paragraph created\n');

    // Paragraph with mentions
    final paragraphWithMentions = BlockBuilder.paragraph()
        .addText('Hey ')
        .addRichText(RichTextBuilder.mentionUser('user_id_123').toJson())
        .addText(', check out ')
        .addRichText(RichTextBuilder.mentionPage('page_id_456').toJson())
        .addText('!')
        .toJson();
    print('Paragraph with mentions created\n');

    // ========================================
    // 9. Complete Page Structure
    // ========================================
    print('📄 9. Complete Page Structure\n');

    final completePageBlocks = [
      // Title
      BlockBuilder.heading1('Project Documentation').toJson(),

      // Introduction
      BlockBuilder.paragraph(
        'Welcome to the comprehensive project documentation.',
      ).toJson(),

      BlockBuilder.divider().toJson(),

      // Section 1
      BlockBuilder.heading2('Getting Started').toJson(),
      BlockBuilder.paragraph('Follow these steps to set up the project:')
          .toJson(),
      BlockBuilder.numberedListItem('Clone the repository').toJson(),
      BlockBuilder.numberedListItem('Install dependencies').toJson(),
      BlockBuilder.numberedListItem('Run the development server').toJson(),

      // Callout
      BlockBuilder.callout('Make sure you have Node.js installed!')
          .icon('⚠️')
          .color('yellow_background')
          .toJson(),

      // Section 2
      BlockBuilder.heading2('Installation').toJson(),
      BlockBuilder.paragraph('Install the required packages:').toJson(),
      BlockBuilder.code(
        'npm install\nnpm run dev',
        language: 'bash',
      ).caption('Installation commands').toJson(),

      BlockBuilder.divider().toJson(),

      // Section 3
      BlockBuilder.heading2('Features').toJson(),
      BlockBuilder.bulletedListItem('Easy to use').toJson(),
      BlockBuilder.bulletedListItem('Fast and efficient').toJson(),
      BlockBuilder.bulletedListItem('Well documented').toJson(),

      // Quote
      BlockBuilder.quote(
        'Simplicity is the ultimate sophistication.',
      ).color('gray').toJson(),

      // FAQ
      BlockBuilder.heading2('FAQ').toJson(),
      BlockBuilder.toggle('What is this project?').children([
        BlockBuilder.paragraph(
          'This is a demonstration of the BlockBuilder API.',
        ).toJson(),
      ]).toJson(),
      BlockBuilder.toggle('How do I contribute?').children([
        BlockBuilder.paragraph('Fork the repository and submit a PR.').toJson(),
      ]).toJson(),
    ];

    print('Created ${completePageBlocks.length} blocks for complete page\n');

    // ========================================
    // 10. Appending Blocks to a Page
    // ========================================
    print('➕ 10. Appending Blocks to a Page\n');

    // Prepare simple blocks to append
    final blocksToAppend = [
      BlockBuilder.heading1('New Section').toJson(),
      BlockBuilder.paragraph('This content was added using BlockBuilder.')
          .toJson(),
      BlockBuilder.bulletedListItem('First point').toJson(),
      BlockBuilder.bulletedListItem('Second point').toJson(),
      BlockBuilder.callout('Created with BlockBuilder!').icon('🎉').toJson(),
    ];

    print('Prepared ${blocksToAppend.length} blocks to append\n');

    // Uncomment to append blocks:
    /*
    await client.blocks.appendChildren(pageId, blocksToAppend);
    print('✅ Appended ${blocksToAppend.length} blocks to page\n');
    */

    // ========================================
    // 11. Complex Nested Structure
    // ========================================
    print('🏗️  11. Complex Nested Structure\n');

    final complexStructure = BlockBuilder.callout('Project Roadmap')
        .icon('🗓️')
        .color('blue_background')
        .children([
      BlockBuilder.paragraph()
          .addText('Our ')
          .addRichText(RichTextBuilder.text('Q1 2025').bold().toJson())
          .addText(' milestones:')
          .toJson(),
      BlockBuilder.toDo('Complete MVP').checked().toJson(),
      BlockBuilder.toDo('Launch beta version').toJson(),
      BlockBuilder.toDo('Gather user feedback').toJson(),
      BlockBuilder.toggle('Detailed Timeline').children([
        BlockBuilder.bulletedListItem('January: Development').toJson(),
        BlockBuilder.bulletedListItem('February: Testing').toJson(),
        BlockBuilder.bulletedListItem('March: Launch').toJson(),
      ]).toJson(),
    ]).toJson();

    print('Complex nested structure created\n');

    // ========================================
    // 12. Comparison: Old vs New API
    // ========================================
    print('📊 12. Comparison: Old vs New API\n');

    print('❌ OLD WAY (Deeply nested Maps):');
    print('''
    {
      'object': 'block',
      'type': 'paragraph',
      'paragraph': {
        'rich_text': [
          {
            'type': 'text',
            'text': {'content': 'Hello World'},
            'annotations': {
              'bold': false,
              'italic': false,
              'strikethrough': false,
              'underline': false,
              'code': false,
              'color': 'default'
            },
            'plain_text': 'Hello World'
          }
        ],
        'color': 'default'
      }
    }
    ''');

    print('✅ NEW WAY (BlockBuilder):');
    print('''
    BlockBuilder.paragraph('Hello World').toJson()
    ''');

    print('\n💡 Benefits:');
    print('  ✓ Much less nesting');
    print('  ✓ Fluent API with method chaining');
    print('  ✓ No need to manually set all fields');
    print('  ✓ Type-safe block construction');
    print('  ✓ Support for 31+ block types\n');

    // ========================================
    // Summary
    // ========================================
    print('=' * 50);
    print('✅ BlockBuilder examples completed!');
    print('=' * 50);
    print('\n💡 Key Takeaways:');
    print('   📝 Use BlockBuilder for all block types');
    print('   🎨 Chain formatting methods naturally');
    print('   🗂️  Create nested structures with .children()');
    print('   ✨ Integrate with RichTextBuilder for formatting');
    print('   🚀 31+ block types supported');
    print('\n💡 Next steps:');
    print('   1. Replace YOUR_INTEGRATION_TOKEN and PAGE_ID');
    print('   2. Uncomment block appending code to test');
    print('   3. Experiment with different block combinations');
    print('   4. Combine with PropertyBuilder for complete pages');
  } catch (e) {
    print('❌ Error: $e');
  } finally {
    client.close();
    print('\n🔒 Client closed.');
  }
}
