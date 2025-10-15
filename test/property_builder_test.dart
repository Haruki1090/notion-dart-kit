import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('PropertyBuilder - Simple Properties', () {
    test('number property generates correct JSON', () {
      final property = PropertyBuilder.number(42);

      expect(property, {'number': 42});
    });

    test('number property with decimal', () {
      final property = PropertyBuilder.number(3.14);

      expect(property, {'number': 3.14});
    });

    test('checkbox property (true) generates correct JSON', () {
      final property = PropertyBuilder.checkbox(true);

      expect(property, {'checkbox': true});
    });

    test('checkbox property (false) generates correct JSON', () {
      final property = PropertyBuilder.checkbox(false);

      expect(property, {'checkbox': false});
    });

    test('url property generates correct JSON', () {
      final property = PropertyBuilder.url('https://example.com');

      expect(property, {'url': 'https://example.com'});
    });

    test('url property with null', () {
      final property = PropertyBuilder.url(null);

      expect(property, {'url': null});
    });

    test('email property generates correct JSON', () {
      final property = PropertyBuilder.email('user@example.com');

      expect(property, {'email': 'user@example.com'});
    });

    test('email property with null', () {
      final property = PropertyBuilder.email(null);

      expect(property, {'email': null});
    });

    test('phone property generates correct JSON', () {
      final property = PropertyBuilder.phone('+1-234-567-8900');

      expect(property, {'phone_number': '+1-234-567-8900'});
    });

    test('phone property with null', () {
      final property = PropertyBuilder.phone(null);

      expect(property, {'phone_number': null});
    });

    test('select property generates correct JSON', () {
      final property = PropertyBuilder.select('In Progress');

      expect(property, {
        'select': {'name': 'In Progress'},
      });
    });

    test('multi-select property generates correct JSON', () {
      final property = PropertyBuilder.multiSelect([
        'bug',
        'urgent',
        'frontend',
      ]);

      expect(property, {
        'multi_select': [
          {'name': 'bug'},
          {'name': 'urgent'},
          {'name': 'frontend'},
        ],
      });
    });

    test('multi-select property with empty list', () {
      final property = PropertyBuilder.multiSelect([]);

      expect(property, {'multi_select': []});
    });

    test('status property generates correct JSON', () {
      final property = PropertyBuilder.status('Done');

      expect(property, {
        'status': {'name': 'Done'},
      });
    });

    test('relation property generates correct JSON', () {
      final property = PropertyBuilder.relation(['page-id-1', 'page-id-2']);

      expect(property, {
        'relation': [
          {'id': 'page-id-1'},
          {'id': 'page-id-2'},
        ],
      });
    });

    test('relation property with single page', () {
      final property = PropertyBuilder.relation(['page-id-1']);

      expect(property, {
        'relation': [
          {'id': 'page-id-1'},
        ],
      });
    });

    test('people property generates correct JSON', () {
      final property = PropertyBuilder.people(['user-id-1', 'user-id-2']);

      expect(property, {
        'people': [
          {'id': 'user-id-1'},
          {'id': 'user-id-2'},
        ],
      });
    });

    test('files property generates correct JSON', () {
      final property = PropertyBuilder.files([
        {
          'name': 'document.pdf',
          'type': 'external',
          'external': {'url': 'https://example.com/doc.pdf'},
        },
      ]);

      expect(property, {
        'files': [
          {
            'name': 'document.pdf',
            'type': 'external',
            'external': {'url': 'https://example.com/doc.pdf'},
          },
        ],
      });
    });
  });

  group('PropertyBuilder - Title Property', () {
    test('simple title generates correct JSON', () {
      final property = PropertyBuilder.title('My Page Title').toJson();

      expect(property, {
        'title': [
          {
            'type': 'text',
            'text': {'content': 'My Page Title'},
          },
        ],
      });
    });

    test('bold title generates correct JSON', () {
      final property = PropertyBuilder.title('Bold Title').bold().toJson();

      expect(property, {
        'title': [
          {
            'type': 'text',
            'text': {'content': 'Bold Title'},
            'annotations': {
              'bold': true,
              'italic': false,
              'strikethrough': false,
              'underline': false,
              'code': false,
              'color': 'default',
            },
          },
        ],
      });
    });

    test('italic title generates correct JSON', () {
      final property = PropertyBuilder.title('Italic Title').italic().toJson();

      expect(property, {
        'title': [
          {
            'type': 'text',
            'text': {'content': 'Italic Title'},
            'annotations': {
              'bold': false,
              'italic': true,
              'strikethrough': false,
              'underline': false,
              'code': false,
              'color': 'default',
            },
          },
        ],
      });
    });

    test('title with color generates correct JSON', () {
      final property = PropertyBuilder.title(
        'Colored Title',
      ).color('blue').toJson();

      expect(property, {
        'title': [
          {
            'type': 'text',
            'text': {'content': 'Colored Title'},
            'annotations': {
              'bold': false,
              'italic': false,
              'strikethrough': false,
              'underline': false,
              'code': false,
              'color': 'blue',
            },
          },
        ],
      });
    });

    test('title with link generates correct JSON', () {
      final property = PropertyBuilder.title(
        'Link Title',
      ).link('https://example.com').toJson();

      expect(property, {
        'title': [
          {
            'type': 'text',
            'text': {
              'content': 'Link Title',
              'link': {'url': 'https://example.com'},
            },
          },
        ],
      });
    });

    test('title with multiple formatting options', () {
      final property = PropertyBuilder.title(
        'Formatted Title',
      ).bold().italic().color('red').toJson();

      expect(property, {
        'title': [
          {
            'type': 'text',
            'text': {'content': 'Formatted Title'},
            'annotations': {
              'bold': true,
              'italic': true,
              'strikethrough': false,
              'underline': false,
              'code': false,
              'color': 'red',
            },
          },
        ],
      });
    });

    test('title with all formatting options', () {
      final property = PropertyBuilder.title('Full Formatting')
          .bold()
          .italic()
          .strikethrough()
          .underline()
          .code()
          .color('purple')
          .link('https://example.com')
          .toJson();

      expect(property, {
        'title': [
          {
            'type': 'text',
            'text': {
              'content': 'Full Formatting',
              'link': {'url': 'https://example.com'},
            },
            'annotations': {
              'bold': true,
              'italic': true,
              'strikethrough': true,
              'underline': true,
              'code': true,
              'color': 'purple',
            },
          },
        ],
      });
    });
  });

  group('PropertyBuilder - Rich Text Property', () {
    test('simple rich text generates correct JSON', () {
      final property = PropertyBuilder.richText('Some text').toJson();

      expect(property, {
        'rich_text': [
          {
            'type': 'text',
            'text': {'content': 'Some text'},
          },
        ],
      });
    });

    test('bold rich text generates correct JSON', () {
      final property = PropertyBuilder.richText('Bold text').bold().toJson();

      expect(property, {
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
              'color': 'default',
            },
          },
        ],
      });
    });

    test('rich text with color generates correct JSON', () {
      final property = PropertyBuilder.richText(
        'Colored text',
      ).color('orange').toJson();

      expect(property, {
        'rich_text': [
          {
            'type': 'text',
            'text': {'content': 'Colored text'},
            'annotations': {
              'bold': false,
              'italic': false,
              'strikethrough': false,
              'underline': false,
              'code': false,
              'color': 'orange',
            },
          },
        ],
      });
    });

    test('rich text with link generates correct JSON', () {
      final property = PropertyBuilder.richText(
        'Link text',
      ).link('https://example.com').toJson();

      expect(property, {
        'rich_text': [
          {
            'type': 'text',
            'text': {
              'content': 'Link text',
              'link': {'url': 'https://example.com'},
            },
          },
        ],
      });
    });

    test('rich text with multiple formatting', () {
      final property = PropertyBuilder.richText(
        'Formatted',
      ).bold().underline().color('green').toJson();

      expect(property, {
        'rich_text': [
          {
            'type': 'text',
            'text': {'content': 'Formatted'},
            'annotations': {
              'bold': true,
              'italic': false,
              'strikethrough': false,
              'underline': true,
              'code': false,
              'color': 'green',
            },
          },
        ],
      });
    });
  });

  group('PropertyBuilder - Date Property', () {
    test('date with start only generates correct JSON', () {
      final startDate = DateTime(2025, 10, 15, 10, 30);
      final property = PropertyBuilder.date(start: startDate).toJson();

      expect(property, {
        'date': {'start': '2025-10-15T10:30:00.000'},
      });
    });

    test('date with start and end generates correct JSON', () {
      final startDate = DateTime(2025, 10, 15);
      final endDate = DateTime(2025, 10, 20);
      final property = PropertyBuilder.date(
        start: startDate,
        end: endDate,
      ).toJson();

      expect(property, {
        'date': {
          'start': '2025-10-15T00:00:00.000',
          'end': '2025-10-20T00:00:00.000',
        },
      });
    });

    test('date with time zone generates correct JSON', () {
      final startDate = DateTime(2025, 10, 15);
      final property = PropertyBuilder.date(
        start: startDate,
      ).timeZone('America/New_York').toJson();

      expect(property, {
        'date': {
          'start': '2025-10-15T00:00:00.000',
          'time_zone': 'America/New_York',
        },
      });
    });

    test('date range with time zone', () {
      final startDate = DateTime(2025, 10, 15);
      final endDate = DateTime(2025, 10, 20);
      final property = PropertyBuilder.date(
        start: startDate,
        end: endDate,
      ).timeZone('Europe/London').toJson();

      expect(property, {
        'date': {
          'start': '2025-10-15T00:00:00.000',
          'end': '2025-10-20T00:00:00.000',
          'time_zone': 'Europe/London',
        },
      });
    });
  });

  group('PropertyBuilder - Integration Tests', () {
    test('complete page properties example', () {
      final properties = {
        'Title': PropertyBuilder.title(
          'Project Planning',
        ).bold().color('blue').toJson(),
        'Status': PropertyBuilder.select('In Progress'),
        'Priority': PropertyBuilder.number(5),
        'Due Date': PropertyBuilder.date(
          start: DateTime(2025, 10, 20),
          end: DateTime(2025, 10, 25),
        ).toJson(),
        'Completed': PropertyBuilder.checkbox(false),
        'Assignees': PropertyBuilder.people(['user-1', 'user-2']),
        'Tags': PropertyBuilder.multiSelect(['urgent', 'planning']),
        'Reference': PropertyBuilder.url('https://example.com/docs'),
        'Contact': PropertyBuilder.email('team@example.com'),
        'Phone': PropertyBuilder.phone('+1-234-567-8900'),
        'Related': PropertyBuilder.relation(['page-1']),
      };

      expect(properties['Title'], {
        'title': [
          {
            'type': 'text',
            'text': {'content': 'Project Planning'},
            'annotations': {
              'bold': true,
              'italic': false,
              'strikethrough': false,
              'underline': false,
              'code': false,
              'color': 'blue',
            },
          },
        ],
      });

      expect(properties['Status'], {
        'select': {'name': 'In Progress'},
      });

      expect(properties['Priority'], {'number': 5});

      expect(properties['Completed'], {'checkbox': false});

      expect(properties['Assignees'], {
        'people': [
          {'id': 'user-1'},
          {'id': 'user-2'},
        ],
      });

      expect(properties['Tags'], {
        'multi_select': [
          {'name': 'urgent'},
          {'name': 'planning'},
        ],
      });
    });

    test('fluent API chaining works correctly', () {
      // Test that chaining returns the correct type
      final builder = PropertyBuilder.title(
        'Test',
      ).bold().italic().color('red').link('https://example.com');

      expect(builder, isA<TitlePropertyBuilder>());

      final json = builder.toJson();
      expect(json, isA<Map<String, dynamic>>());
      expect(json['title'], isA<List>());
    });
  });
}
