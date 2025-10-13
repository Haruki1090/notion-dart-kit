import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('BlockBuilder - Paragraph', () {
    test('simple paragraph generates correct JSON', () {
      final block = BlockBuilder.paragraph('Hello World').toJson();

      expect(block, {
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
                'color': 'default',
              },
              'plain_text': 'Hello World',
            },
          ],
          'color': 'default',
        },
      });
    });

    test('paragraph with color', () {
      final block = BlockBuilder.paragraph('Colored').color('blue').toJson();

      expect(block['paragraph']['color'], 'blue');
    });

    test('paragraph with children', () {
      final block = BlockBuilder.paragraph('Parent').children([
        BlockBuilder.paragraph('Child').toJson(),
      ]).toJson();

      expect(block['paragraph']['children'], hasLength(1));
    });

    test('paragraph without initial text', () {
      final block =
          BlockBuilder.paragraph().addText('Hello').addText(' World').toJson();

      expect(block['paragraph']['rich_text'], hasLength(2));
    });
  });

  group('BlockBuilder - Headings', () {
    test('heading 1 generates correct JSON', () {
      final block = BlockBuilder.heading1('Chapter 1').toJson();

      expect(block, {
        'object': 'block',
        'type': 'heading_1',
        'heading_1': {
          'rich_text': [
            {
              'type': 'text',
              'text': {'content': 'Chapter 1'},
              'annotations': {
                'bold': false,
                'italic': false,
                'strikethrough': false,
                'underline': false,
                'code': false,
                'color': 'default',
              },
              'plain_text': 'Chapter 1',
            },
          ],
          'color': 'default',
          'is_toggleable': false,
        },
      });
    });

    test('heading 2 with color', () {
      final block = BlockBuilder.heading2('Section').color('blue').toJson();

      expect(block['heading_2']['color'], 'blue');
    });

    test('heading 3 toggleable', () {
      final block = BlockBuilder.heading3('Subsection').toggleable().toJson();

      expect(block['heading_3']['is_toggleable'], true);
    });

    test('toggleable heading with children', () {
      final block =
          BlockBuilder.heading2('Toggle Heading').toggleable().children([
        BlockBuilder.paragraph('Hidden content').toJson(),
      ]).toJson();

      expect(block['heading_2']['is_toggleable'], true);
      expect(block['heading_2']['children'], hasLength(1));
    });
  });

  group('BlockBuilder - Quote', () {
    test('simple quote generates correct JSON', () {
      final block = BlockBuilder.quote('This is a quote').toJson();

      expect(block['type'], 'quote');
      expect(
          block['quote']['rich_text'][0]['text']['content'], 'This is a quote');
    });

    test('quote with color', () {
      final block = BlockBuilder.quote('Quote').color('gray').toJson();

      expect(block['quote']['color'], 'gray');
    });

    test('quote with children', () {
      final block = BlockBuilder.quote('Quote').children([
        BlockBuilder.paragraph('Nested').toJson(),
      ]).toJson();

      expect(block['quote']['children'], hasLength(1));
    });
  });

  group('BlockBuilder - Callout', () {
    test('simple callout generates correct JSON', () {
      final block = BlockBuilder.callout('Important note').toJson();

      expect(block['type'], 'callout');
      expect(block['callout']['rich_text'][0]['text']['content'],
          'Important note');
      expect(block['callout']['icon'], {
        'type': 'emoji',
        'emoji': '💡',
      });
    });

    test('callout with custom icon', () {
      final block = BlockBuilder.callout('Warning').icon('⚠️').toJson();

      expect(block['callout']['icon']['emoji'], '⚠️');
    });

    test('callout with color', () {
      final block =
          BlockBuilder.callout('Note').color('yellow_background').toJson();

      expect(block['callout']['color'], 'yellow_background');
    });

    test('callout with all options', () {
      final block = BlockBuilder.callout('Full callout')
          .icon('🔥')
          .color('red_background')
          .children([
        BlockBuilder.paragraph('Details').toJson(),
      ]).toJson();

      expect(block['callout']['icon']['emoji'], '🔥');
      expect(block['callout']['color'], 'red_background');
      expect(block['callout']['children'], hasLength(1));
    });
  });

  group('BlockBuilder - Lists', () {
    test('bulleted list item generates correct JSON', () {
      final block = BlockBuilder.bulletedListItem('First item').toJson();

      expect(block['type'], 'bulleted_list_item');
      expect(block['bulleted_list_item']['rich_text'][0]['text']['content'],
          'First item');
    });

    test('numbered list item generates correct JSON', () {
      final block = BlockBuilder.numberedListItem('First item').toJson();

      expect(block['type'], 'numbered_list_item');
      expect(block['numbered_list_item']['rich_text'][0]['text']['content'],
          'First item');
    });

    test('nested list items', () {
      final block = BlockBuilder.bulletedListItem('Parent').children([
        BlockBuilder.bulletedListItem('Child 1').toJson(),
        BlockBuilder.bulletedListItem('Child 2').toJson(),
      ]).toJson();

      expect(block['bulleted_list_item']['children'], hasLength(2));
    });

    test('list item with color', () {
      final block =
          BlockBuilder.bulletedListItem('Item').color('blue').toJson();

      expect(block['bulleted_list_item']['color'], 'blue');
    });
  });

  group('BlockBuilder - To-Do', () {
    test('unchecked to-do generates correct JSON', () {
      final block = BlockBuilder.toDo('Task 1').toJson();

      expect(block['type'], 'to_do');
      expect(block['to_do']['rich_text'][0]['text']['content'], 'Task 1');
      expect(block['to_do']['checked'], false);
    });

    test('checked to-do', () {
      final block = BlockBuilder.toDo('Task 1').checked().toJson();

      expect(block['to_do']['checked'], true);
    });

    test('to-do with children', () {
      final block = BlockBuilder.toDo('Parent task').children([
        BlockBuilder.toDo('Subtask 1').toJson(),
        BlockBuilder.toDo('Subtask 2').checked().toJson(),
      ]).toJson();

      expect(block['to_do']['children'], hasLength(2));
    });

    test('to-do with color', () {
      final block = BlockBuilder.toDo('Task').color('green').toJson();

      expect(block['to_do']['color'], 'green');
    });
  });

  group('BlockBuilder - Toggle', () {
    test('simple toggle generates correct JSON', () {
      final block = BlockBuilder.toggle('Click to expand').toJson();

      expect(block['type'], 'toggle');
      expect(block['toggle']['rich_text'][0]['text']['content'],
          'Click to expand');
    });

    test('toggle with children', () {
      final block = BlockBuilder.toggle('Expandable').children([
        BlockBuilder.paragraph('Hidden content').toJson(),
        BlockBuilder.paragraph('More content').toJson(),
      ]).toJson();

      expect(block['toggle']['children'], hasLength(2));
    });

    test('toggle with color', () {
      final block = BlockBuilder.toggle('Toggle').color('gray').toJson();

      expect(block['toggle']['color'], 'gray');
    });
  });

  group('BlockBuilder - Code', () {
    test('simple code block generates correct JSON', () {
      final block = BlockBuilder.code(
        'print("Hello")',
        language: 'python',
      ).toJson();

      expect(block['type'], 'code');
      expect(
          block['code']['rich_text'][0]['text']['content'], 'print("Hello")');
      expect(block['code']['language'], 'python');
    });

    test('code with caption', () {
      final block = BlockBuilder.code(
        'const x = 1;',
        language: 'javascript',
      ).caption('Example code').toJson();

      expect(block['code']['caption'], isNotEmpty);
      expect(block['code']['caption'][0]['text']['content'], 'Example code');
    });

    test('code with default language', () {
      final block = BlockBuilder.code('plain text').toJson();

      expect(block['code']['language'], 'plain text');
    });
  });

  group('BlockBuilder - Layout', () {
    test('divider generates correct JSON', () {
      final block = BlockBuilder.divider().toJson();

      expect(block, {
        'object': 'block',
        'type': 'divider',
        'divider': {},
      });
    });

    test('table of contents generates correct JSON', () {
      final block = BlockBuilder.tableOfContents().toJson();

      expect(block['type'], 'table_of_contents');
      expect(block['table_of_contents']['color'], 'default');
    });

    test('table of contents with color', () {
      final block = BlockBuilder.tableOfContents().color('gray').toJson();

      expect(block['table_of_contents']['color'], 'gray');
    });

    test('breadcrumb generates correct JSON', () {
      final block = BlockBuilder.breadcrumb().toJson();

      expect(block, {
        'object': 'block',
        'type': 'breadcrumb',
        'breadcrumb': {},
      });
    });
  });

  group('BlockBuilder - Media', () {
    test('image block generates correct JSON', () {
      final block =
          BlockBuilder.image('https://example.com/image.jpg').toJson();

      expect(block['type'], 'image');
      expect(block['image']['type'], 'external');
      expect(
        block['image']['external']['url'],
        'https://example.com/image.jpg',
      );
    });

    test('video block generates correct JSON', () {
      final block =
          BlockBuilder.video('https://example.com/video.mp4').toJson();

      expect(block['type'], 'video');
      expect(
          block['video']['external']['url'], 'https://example.com/video.mp4');
    });

    test('file block generates correct JSON', () {
      final block = BlockBuilder.file('https://example.com/file.pdf').toJson();

      expect(block['type'], 'file');
      expect(block['file']['external']['url'], 'https://example.com/file.pdf');
    });

    test('pdf block generates correct JSON', () {
      final block =
          BlockBuilder.pdf('https://example.com/document.pdf').toJson();

      expect(block['type'], 'pdf');
      expect(
        block['pdf']['external']['url'],
        'https://example.com/document.pdf',
      );
    });

    test('media with caption', () {
      final block = BlockBuilder.image('https://example.com/image.jpg')
          .caption('My image')
          .toJson();

      expect(block['image']['caption'], isNotEmpty);
      expect(block['image']['caption'][0]['text']['content'], 'My image');
    });
  });

  group('BlockBuilder - Advanced', () {
    test('bookmark block generates correct JSON', () {
      final block = BlockBuilder.bookmark('https://example.com').toJson();

      expect(block['type'], 'bookmark');
      expect(block['bookmark']['url'], 'https://example.com');
    });

    test('bookmark with caption', () {
      final block = BlockBuilder.bookmark('https://example.com')
          .caption('Example website')
          .toJson();

      expect(block['bookmark']['caption'], isNotEmpty);
      expect(block['bookmark']['caption'][0]['text']['content'],
          'Example website');
    });

    test('embed block generates correct JSON', () {
      final block = BlockBuilder.embed('https://example.com/embed').toJson();

      expect(block['type'], 'embed');
      expect(block['embed']['url'], 'https://example.com/embed');
    });

    test('equation block generates correct JSON', () {
      final block = BlockBuilder.equation('E = mc^2').toJson();

      expect(block['type'], 'equation');
      expect(block['equation']['expression'], 'E = mc^2');
    });

    test('table block generates correct JSON', () {
      final block = BlockBuilder.table(
        rows: [
          ['Header 1', 'Header 2'],
          ['Cell 1', 'Cell 2'],
          ['Cell 3', 'Cell 4'],
        ],
        hasColumnHeader: true,
      ).toJson();

      expect(block['type'], 'table');
      expect(block['table']['table_width'], 2);
      expect(block['table']['has_column_header'], true);
      expect(block['table']['has_row_header'], false);
      expect(block['table']['children'], hasLength(3));
    });

    test('table with custom width', () {
      final block = BlockBuilder.table(
        rows: [
          ['A', 'B'],
          ['C', 'D'],
        ],
        tableWidth: 5,
      ).toJson();

      expect(block['table']['table_width'], 5);
    });

    test('table with row header', () {
      final block = BlockBuilder.table(
        rows: [
          ['A', 'B'],
        ],
        hasRowHeader: true,
      ).toJson();

      expect(block['table']['has_row_header'], true);
    });
  });

  group('BlockBuilder - Integration Tests', () {
    test('paragraph with multiple rich text elements', () {
      final block = BlockBuilder.paragraph()
          .addText('Normal text, ')
          .addRichText(RichTextBuilder.text('bold text').bold().toJson())
          .addText(', and ')
          .addRichText(RichTextBuilder.text('italic text').italic().toJson())
          .toJson();

      final richText = block['paragraph']['rich_text'] as List;
      expect(richText, hasLength(4));
      expect((richText[1] as Map)['annotations']['bold'], true);
      expect((richText[3] as Map)['annotations']['italic'], true);
    });

    test('nested structure with various block types', () {
      final blocks = [
        BlockBuilder.heading1('Chapter 1').toJson(),
        BlockBuilder.paragraph('Introduction text').toJson(),
        BlockBuilder.bulletedListItem('First point').toJson(),
        BlockBuilder.bulletedListItem('Second point').toJson(),
        BlockBuilder.quote('Important quote').color('gray').toJson(),
        BlockBuilder.callout('Note').icon('📝').toJson(),
        BlockBuilder.divider().toJson(),
      ];

      expect(blocks, hasLength(7));
      expect(blocks[0]['type'], 'heading_1');
      expect(blocks[1]['type'], 'paragraph');
      expect(blocks[2]['type'], 'bulleted_list_item');
      expect(blocks[4]['type'], 'quote');
      expect(blocks[5]['type'], 'callout');
      expect(blocks[6]['type'], 'divider');
    });

    test('complete page structure example', () {
      final blocks = [
        BlockBuilder.heading1('Project Documentation').toJson(),
        BlockBuilder.paragraph('Welcome to the project documentation.')
            .toJson(),
        BlockBuilder.divider().toJson(),
        BlockBuilder.heading2('Getting Started').toJson(),
        BlockBuilder.paragraph()
            .addText('Follow these steps to ')
            .addRichText(
              RichTextBuilder.text('install').bold().toJson(),
            )
            .addText(' the project:')
            .toJson(),
        BlockBuilder.numberedListItem('Clone the repository').toJson(),
        BlockBuilder.numberedListItem('Install dependencies').toJson(),
        BlockBuilder.numberedListItem('Run the project').toJson(),
        BlockBuilder.callout('Make sure you have Node.js installed!')
            .icon('⚠️')
            .color('yellow_background')
            .toJson(),
        BlockBuilder.heading2('Code Example').toJson(),
        BlockBuilder.code(
          'npm install\nnpm start',
          language: 'bash',
        ).caption('Installation commands').toJson(),
      ];

      expect(blocks, hasLength(11));
      // Verify structure
      expect(blocks[0]['type'], 'heading_1');
      expect(blocks[3]['type'], 'heading_2');
      expect(blocks[5]['type'], 'numbered_list_item');
      expect(blocks[8]['type'], 'callout');
      expect(blocks[10]['type'], 'code');
    });

    test('nested list structure', () {
      final block = BlockBuilder.bulletedListItem('Main item').children([
        BlockBuilder.bulletedListItem('Sub item 1').children([
          BlockBuilder.bulletedListItem('Sub-sub item 1').toJson(),
          BlockBuilder.bulletedListItem('Sub-sub item 2').toJson(),
        ]).toJson(),
        BlockBuilder.bulletedListItem('Sub item 2').toJson(),
      ]).toJson();

      final children = block['bulleted_list_item']['children'] as List;
      expect(children, hasLength(2));
      final subChildren =
          (children[0] as Map)['bulleted_list_item']['children'] as List;
      expect(subChildren, hasLength(2));
    });

    test('complex callout with formatted content', () {
      final block = BlockBuilder.callout('Important Information')
          .icon('📚')
          .color('blue_background')
          .children([
        BlockBuilder.paragraph()
            .addText('This is ')
            .addRichText(RichTextBuilder.text('critical').bold().toJson())
            .addText(' information.')
            .toJson(),
        BlockBuilder.bulletedListItem('Key point 1').toJson(),
        BlockBuilder.bulletedListItem('Key point 2').toJson(),
      ]).toJson();

      expect(block['callout']['icon']['emoji'], '📚');
      expect(block['callout']['color'], 'blue_background');
      expect(block['callout']['children'], hasLength(3));
    });
  });
}
