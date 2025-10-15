import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('RichTextBuilder - Text', () {
    test('simple text generates correct JSON', () {
      final richText = RichTextBuilder.text('Hello World').toJson();

      expect(richText, {
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
      });
    });

    test('bold text generates correct JSON', () {
      final richText = RichTextBuilder.text('Bold text').bold().toJson();

      expect(richText['annotations']['bold'], true);
      expect(richText['plain_text'], 'Bold text');
    });

    test('italic text generates correct JSON', () {
      final richText = RichTextBuilder.text('Italic text').italic().toJson();

      expect(richText['annotations']['italic'], true);
    });

    test('strikethrough text generates correct JSON', () {
      final richText = RichTextBuilder.text(
        'Strikethrough',
      ).strikethrough().toJson();

      expect(richText['annotations']['strikethrough'], true);
    });

    test('underline text generates correct JSON', () {
      final richText = RichTextBuilder.text('Underline').underline().toJson();

      expect(richText['annotations']['underline'], true);
    });

    test('code text generates correct JSON', () {
      final richText = RichTextBuilder.text('code()').code().toJson();

      expect(richText['annotations']['code'], true);
    });

    test('colored text generates correct JSON', () {
      final richText = RichTextBuilder.text('Red text').color('red').toJson();

      expect(richText['annotations']['color'], 'red');
    });

    test('text with link generates correct JSON', () {
      final richText = RichTextBuilder.text(
        'Click here',
      ).link('https://example.com').toJson();

      expect(richText, {
        'type': 'text',
        'text': {
          'content': 'Click here',
          'link': {'url': 'https://example.com'},
        },
        'annotations': {
          'bold': false,
          'italic': false,
          'strikethrough': false,
          'underline': false,
          'code': false,
          'color': 'default',
        },
        'plain_text': 'Click here',
        'href': 'https://example.com',
      });
    });

    test('multiple formatting options', () {
      final richText = RichTextBuilder.text(
        'Formatted',
      ).bold().italic().underline().color('blue').toJson();

      expect(richText['annotations'], {
        'bold': true,
        'italic': true,
        'strikethrough': false,
        'underline': true,
        'code': false,
        'color': 'blue',
      });
    });

    test('all formatting options', () {
      final richText = RichTextBuilder.text('All formats')
          .bold()
          .italic()
          .strikethrough()
          .underline()
          .code()
          .color('purple')
          .link('https://example.com')
          .toJson();

      expect(richText['annotations']['bold'], true);
      expect(richText['annotations']['italic'], true);
      expect(richText['annotations']['strikethrough'], true);
      expect(richText['annotations']['underline'], true);
      expect(richText['annotations']['code'], true);
      expect(richText['annotations']['color'], 'purple');
      expect(richText['text']['link']['url'], 'https://example.com');
      expect(richText['href'], 'https://example.com');
    });
  });

  group('RichTextBuilder - Mentions', () {
    test('user mention generates correct JSON', () {
      final richText = RichTextBuilder.mentionUser('user_id_123').toJson();

      expect(richText, {
        'type': 'mention',
        'mention': {
          'type': 'user',
          'user': {'id': 'user_id_123'},
        },
        'annotations': {
          'bold': false,
          'italic': false,
          'strikethrough': false,
          'underline': false,
          'code': false,
          'color': 'default',
        },
        'plain_text': '@user',
      });
    });

    test('page mention generates correct JSON', () {
      final richText = RichTextBuilder.mentionPage('page_id_456').toJson();

      expect(richText['mention'], {
        'type': 'page',
        'page': {'id': 'page_id_456'},
      });
      expect(richText['plain_text'], '@page');
    });

    test('database mention generates correct JSON', () {
      final richText = RichTextBuilder.mentionDatabase(
        'database_id_789',
      ).toJson();

      expect(richText['mention'], {
        'type': 'database',
        'database': {'id': 'database_id_789'},
      });
      expect(richText['plain_text'], '@database');
    });

    test('date mention with start only', () {
      final date = DateTime(2025, 10, 15);
      final richText = RichTextBuilder.mentionDate(start: date).toJson();

      expect(richText['mention']['type'], 'date');
      expect(richText['mention']['date']['start'], '2025-10-15T00:00:00.000');
      expect(richText['mention']['date'].containsKey('end'), false);
    });

    test('date mention with start and end', () {
      final startDate = DateTime(2025, 10, 15);
      final endDate = DateTime(2025, 10, 20);
      final richText = RichTextBuilder.mentionDate(
        start: startDate,
        end: endDate,
      ).toJson();

      expect(richText['mention']['date']['start'], '2025-10-15T00:00:00.000');
      expect(richText['mention']['date']['end'], '2025-10-20T00:00:00.000');
    });

    test('link preview mention generates correct JSON', () {
      final richText = RichTextBuilder.mentionLinkPreview(
        'https://example.com',
      ).toJson();

      expect(richText['mention'], {
        'type': 'link_preview',
        'link_preview': {'url': 'https://example.com'},
      });
      expect(richText['plain_text'], 'https://example.com');
    });

    test('mention with formatting', () {
      final richText = RichTextBuilder.mentionUser(
        'user_id',
      ).bold().color('blue').toJson();

      expect(richText['annotations']['bold'], true);
      expect(richText['annotations']['color'], 'blue');
    });
  });

  group('RichTextBuilder - Equations', () {
    test('simple equation generates correct JSON', () {
      final richText = RichTextBuilder.equation('E = mc^2').toJson();

      expect(richText, {
        'type': 'equation',
        'equation': {'expression': 'E = mc^2'},
        'annotations': {
          'bold': false,
          'italic': false,
          'strikethrough': false,
          'underline': false,
          'code': false,
          'color': 'default',
        },
        'plain_text': 'E = mc^2',
      });
    });

    test('equation with formatting', () {
      final richText = RichTextBuilder.equation(
        'x^2 + y^2 = z^2',
      ).color('blue').toJson();

      expect(richText['equation']['expression'], 'x^2 + y^2 = z^2');
      expect(richText['annotations']['color'], 'blue');
    });
  });

  group('RichTextBuilder - Helper Methods', () {
    test('plainArray creates simple array', () {
      final array = RichTextBuilder.plainArray('Simple text');

      expect(array, isA<List<Map<String, dynamic>>>());
      expect(array.length, 1);
      expect(array[0]['type'], 'text');
      expect(array[0]['text']['content'], 'Simple text');
      expect(array[0]['plain_text'], 'Simple text');
    });
  });

  group('RichTextBuilder - Integration Tests', () {
    test('paragraph with mixed formatting', () {
      final richTextArray = [
        RichTextBuilder.text('This is ').toJson(),
        RichTextBuilder.text('bold').bold().toJson(),
        RichTextBuilder.text(', ').toJson(),
        RichTextBuilder.text('italic').italic().toJson(),
        RichTextBuilder.text(', and ').toJson(),
        RichTextBuilder.text('colored').color('red').toJson(),
        RichTextBuilder.text(' text.').toJson(),
      ];

      expect(richTextArray.length, 7);
      expect(richTextArray[1]['annotations']['bold'], true);
      expect(richTextArray[3]['annotations']['italic'], true);
      expect(richTextArray[5]['annotations']['color'], 'red');
    });

    test('paragraph with mentions', () {
      final richTextArray = [
        RichTextBuilder.text('Hey ').toJson(),
        RichTextBuilder.mentionUser('user_123').bold().toJson(),
        RichTextBuilder.text(', check this ').toJson(),
        RichTextBuilder.mentionPage('page_456').toJson(),
        RichTextBuilder.text(' out!').toJson(),
      ];

      expect(richTextArray.length, 5);
      expect(richTextArray[1]['type'], 'mention');
      expect(richTextArray[1]['annotations']['bold'], true);
      expect(richTextArray[3]['type'], 'mention');
    });

    test('complete block with rich text', () {
      final block = {
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

      final paragraph = block['paragraph']! as Map<String, dynamic>;
      final richText = paragraph['rich_text'] as List;
      expect(richText.length, 3);
      final first = richText[0] as Map<String, dynamic>;
      final second = richText[1] as Map<String, dynamic>;
      final third = richText[2] as Map<String, dynamic>;
      expect((first['text'] as Map)['content'], 'Normal text, ');
      expect((second['annotations'] as Map)['bold'], true);
      expect((third['annotations'] as Map)['italic'], true);
    });

    test('callout block with formatted text and link', () {
      final block = {
        'object': 'block',
        'type': 'callout',
        'callout': {
          'rich_text': [
            RichTextBuilder.text('Important: ').bold().color('red').toJson(),
            RichTextBuilder.text(
              'Read the docs',
            ).link('https://docs.example.com').underline().toJson(),
            RichTextBuilder.text(' before proceeding.').toJson(),
          ],
          'icon': {'type': 'emoji', 'emoji': '⚠️'},
        },
      };

      final callout = block['callout']! as Map<String, dynamic>;
      final richText = callout['rich_text'] as List;
      expect(richText.length, 3);
      final first = richText[0] as Map<String, dynamic>;
      final second = richText[1] as Map<String, dynamic>;
      expect((first['annotations'] as Map)['bold'], true);
      expect((first['annotations'] as Map)['color'], 'red');
      expect(
        ((second['text'] as Map)['link'] as Map)['url'],
        'https://docs.example.com',
      );
      expect((second['annotations'] as Map)['underline'], true);
    });

    test('fluent API chaining works correctly', () {
      final builder = RichTextBuilder.text(
        'Test',
      ).bold().italic().color('blue').link('https://example.com');

      expect(builder, isA<TextRichTextBuilder>());

      final json = builder.toJson();
      expect(json, isA<Map<String, dynamic>>());
      expect(json['type'], 'text');
      expect(json['annotations']['bold'], true);
      expect(json['annotations']['italic'], true);
      expect(json['text']['link']['url'], 'https://example.com');
    });
  });
}
