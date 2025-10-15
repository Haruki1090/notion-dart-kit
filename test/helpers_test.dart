import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

// Helper to create properly typed Map for Page.fromJson
Map<String, dynamic> createPageJson(Map<String, dynamic> json) =>
    Map<String, dynamic>.from({
      ...json,
      'properties': Map<String, dynamic>.from(json['properties'] as Map? ?? {}),
    });

// Helper to create rich text object with proper structure
Map<String, dynamic> createRichTextJson(String content) => {
  'type': 'text',
  'text': {'content': content},
  'plain_text': content,
  'annotations': {
    'bold': false,
    'italic': false,
    'strikethrough': false,
    'underline': false,
    'code': false,
    'color': 'default',
  },
  'href': null,
};

// Helper to create select option with proper structure
Map<String, dynamic> createSelectOptionJson(String name, String color) => {
  'id': 'opt_${name.toLowerCase()}',
  'name': name,
  'color': color,
};

void main() {
  group('PageHelper', () {
    test('extractTitle returns title from title property', () {
      final page = Page.fromJson(
        createPageJson({
          'id': 'page_id',
          'created_time': '2024-01-01T00:00:00Z',
          'last_edited_time': '2024-01-01T00:00:00Z',
          'created_by': {'object': 'user', 'id': 'user1'},
          'last_edited_by': {'object': 'user', 'id': 'user1'},
          'parent': {'type': 'workspace', 'workspace': true},
          'archived': false,
          'in_trash': false,
          'properties': {
            'Title': {
              'id': 'title',
              'type': 'title',
              'title': [createRichTextJson('My Page Title')],
            },
          },
          'url': 'https://notion.so/page_id',
        }),
      );

      final title = PageHelper.extractTitle(page);
      expect(title, 'My Page Title');
    });

    test('extractTitle returns default value when no title property', () {
      final page = Page.fromJson(
        createPageJson({
          'id': 'page_id',
          'created_time': '2024-01-01T00:00:00Z',
          'last_edited_time': '2024-01-01T00:00:00Z',
          'created_by': {'object': 'user', 'id': 'user1'},
          'last_edited_by': {'object': 'user', 'id': 'user1'},
          'parent': {'type': 'workspace', 'workspace': true},
          'archived': false,
          'in_trash': false,
          'properties': {},
          'url': 'https://notion.so/page_id',
        }),
      );

      final title = PageHelper.extractTitle(page);
      expect(title, 'Untitled');
    });

    test('getProperty returns property by name', () {
      final page = Page.fromJson(
        createPageJson({
          'id': 'page_id',
          'created_time': '2024-01-01T00:00:00Z',
          'last_edited_time': '2024-01-01T00:00:00Z',
          'created_by': {'object': 'user', 'id': 'user1'},
          'last_edited_by': {'object': 'user', 'id': 'user1'},
          'parent': {'type': 'workspace', 'workspace': true},
          'archived': false,
          'in_trash': false,
          'properties': {
            'Status': {
              'id': 'status',
              'type': 'select',
              'select': {'name': 'In Progress'},
            },
          },
          'url': 'https://notion.so/page_id',
        }),
      );

      final property = PageHelper.getProperty(page, 'Status');
      expect(property, isNotNull);
      expect(property!['type'], 'select');
    });

    test('getPropertyNames returns all property names', () {
      final page = Page.fromJson(
        createPageJson({
          'id': 'page_id',
          'created_time': '2024-01-01T00:00:00Z',
          'last_edited_time': '2024-01-01T00:00:00Z',
          'created_by': {'object': 'user', 'id': 'user1'},
          'last_edited_by': {'object': 'user', 'id': 'user1'},
          'parent': {'type': 'workspace', 'workspace': true},
          'archived': false,
          'in_trash': false,
          'properties': {
            'Title': {'id': 'title', 'type': 'title', 'title': []},
            'Status': {'id': 'status', 'type': 'select', 'select': null},
          },
          'url': 'https://notion.so/page_id',
        }),
      );

      final names = PageHelper.getPropertyNames(page);
      expect(names, contains('Title'));
      expect(names, contains('Status'));
    });

    test('isArchived returns correct status', () {
      final archivedPage = Page.fromJson(
        createPageJson({
          'id': 'page_id',
          'created_time': '2024-01-01T00:00:00Z',
          'last_edited_time': '2024-01-01T00:00:00Z',
          'created_by': {'object': 'user', 'id': 'user1'},
          'last_edited_by': {'object': 'user', 'id': 'user1'},
          'parent': {'type': 'workspace', 'workspace': true},
          'archived': true,
          'in_trash': false,
          'properties': {},
          'url': 'https://notion.so/page_id',
        }),
      );

      expect(PageHelper.isArchived(archivedPage), true);
    });

    test('isInTrash returns correct status', () {
      final trashedPage = Page.fromJson(
        createPageJson({
          'id': 'page_id',
          'created_time': '2024-01-01T00:00:00Z',
          'last_edited_time': '2024-01-01T00:00:00Z',
          'created_by': {'object': 'user', 'id': 'user1'},
          'last_edited_by': {'object': 'user', 'id': 'user1'},
          'parent': {'type': 'workspace', 'workspace': true},
          'archived': false,
          'in_trash': true,
          'properties': {},
          'url': 'https://notion.so/page_id',
        }),
      );

      expect(PageHelper.isInTrash(trashedPage), true);
    });
  });

  group('PropertyHelper', () {
    test('extractTitle returns title text', () {
      final propertyMap = {
        'id': 'title',
        'type': 'title',
        'title': [createRichTextJson('Test Title')],
      };

      final title = PropertyHelper.extractTitle(propertyMap);
      expect(title, 'Test Title');
    });

    test('extractTitle returns default value for non-title property', () {
      final propertyMap = {
        'id': 'status',
        'type': 'select',
        'select': {'name': 'In Progress'},
      };

      final title = PropertyHelper.extractTitle(propertyMap);
      expect(title, '');
    });

    test('extractTitle returns default value for null property', () {
      final title = PropertyHelper.extractTitle(null);
      expect(title, '');
    });
  });

  group('RichTextHelper', () {
    test('toPlainText joins rich text elements', () {
      final richText = [
        const RichText.text(
          text: TextContent(content: 'Hello '),
          annotations: Annotations(),
          plainText: 'Hello ',
        ),
        const RichText.text(
          text: TextContent(content: 'World'),
          annotations: Annotations(),
          plainText: 'World',
        ),
      ];

      final plain = RichTextHelper.toPlainText(richText);
      expect(plain, 'Hello World');
    });

    test('toPlainTextWithSeparator uses custom separator', () {
      final richText = [
        const RichText.text(
          text: TextContent(content: 'First'),
          annotations: Annotations(),
          plainText: 'First',
        ),
        const RichText.text(
          text: TextContent(content: 'Second'),
          annotations: Annotations(),
          plainText: 'Second',
        ),
      ];

      final plain = RichTextHelper.toPlainTextWithSeparator(richText, ' | ');
      expect(plain, 'First | Second');
    });

    test('isEmpty returns true for empty array', () {
      expect(RichTextHelper.isEmpty([]), true);
    });

    test('isEmpty returns true for whitespace-only text', () {
      final richText = [
        const RichText.text(
          text: TextContent(content: '   '),
          annotations: Annotations(),
          plainText: '   ',
        ),
      ];

      expect(RichTextHelper.isEmpty(richText), true);
    });

    test('length returns total character count', () {
      final richText = [
        const RichText.text(
          text: TextContent(content: 'Hello'),
          annotations: Annotations(),
          plainText: 'Hello',
        ),
        const RichText.text(
          text: TextContent(content: 'World'),
          annotations: Annotations(),
          plainText: 'World',
        ),
      ];

      expect(RichTextHelper.length(richText), 10);
    });
  });

  group('BatchHelper', () {
    late List<Page> pages;

    setUp(() {
      pages = [
        Page.fromJson(
          createPageJson({
            'id': 'page1',
            'created_time': '2024-01-01T00:00:00Z',
            'last_edited_time': '2024-01-01T00:00:00Z',
            'created_by': {'object': 'user', 'id': 'user1'},
            'last_edited_by': {'object': 'user', 'id': 'user1'},
            'parent': {'type': 'workspace', 'workspace': true},
            'archived': false,
            'in_trash': false,
            'properties': {
              'Title': {
                'id': 'title',
                'type': 'title',
                'title': [createRichTextJson('Page 1')],
              },
              'Status': {
                'id': 'status',
                'type': 'select',
                'select': createSelectOptionJson('Todo', 'default'),
              },
              'Priority': {'id': 'priority', 'type': 'number', 'number': 5},
            },
            'url': 'https://notion.so/page1',
          }),
        ),
        Page.fromJson(
          createPageJson({
            'id': 'page2',
            'created_time': '2024-01-02T00:00:00Z',
            'last_edited_time': '2024-01-02T00:00:00Z',
            'created_by': {'object': 'user', 'id': 'user1'},
            'last_edited_by': {'object': 'user', 'id': 'user1'},
            'parent': {'type': 'workspace', 'workspace': true},
            'archived': false,
            'in_trash': false,
            'properties': {
              'Title': {
                'id': 'title',
                'type': 'title',
                'title': [createRichTextJson('Page 2')],
              },
              'Status': {
                'id': 'status',
                'type': 'select',
                'select': createSelectOptionJson('In Progress', 'blue'),
              },
              'Priority': {'id': 'priority', 'type': 'number', 'number': 3},
            },
            'url': 'https://notion.so/page2',
          }),
        ),
        Page.fromJson(
          createPageJson({
            'id': 'page3',
            'created_time': '2024-01-03T00:00:00Z',
            'last_edited_time': '2024-01-03T00:00:00Z',
            'created_by': {'object': 'user', 'id': 'user1'},
            'last_edited_by': {'object': 'user', 'id': 'user1'},
            'parent': {'type': 'workspace', 'workspace': true},
            'archived': true,
            'in_trash': false,
            'properties': {
              'Title': {
                'id': 'title',
                'type': 'title',
                'title': [createRichTextJson('Page 3')],
              },
              'Status': {
                'id': 'status',
                'type': 'select',
                'select': createSelectOptionJson('Done', 'green'),
              },
              'Priority': {'id': 'priority', 'type': 'number', 'number': 1},
            },
            'url': 'https://notion.so/page3',
          }),
        ),
      ];
    });

    test('extractTitles returns all titles', () {
      final titles = BatchHelper.extractTitles(pages);
      expect(titles, ['Page 1', 'Page 2', 'Page 3']);
    });

    test('filterByProperty filters pages correctly', () {
      final filtered = BatchHelper.filterByProperty(
        pages,
        'Status',
        (prop) =>
            prop != null && (prop as Map<String, dynamic>)['type'] == 'select',
      );

      expect(filtered, hasLength(3)); // All pages have Status property
    });

    test('groupByProperty groups pages correctly', () {
      final grouped = BatchHelper.groupByProperty(
        pages,
        'Status',
        (prop) => prop != null ? 'Has Status' : 'No Status',
      );

      expect(grouped.keys, containsAll(['Has Status']));
      expect(grouped['Has Status'], hasLength(3));
    });

    test('sortByProperty sorts ascending', () {
      final sorted = BatchHelper.sortByProperty(
        pages,
        'Priority',
        (prop) => prop != null
            ? (prop as Map<String, dynamic>)['number'] as num? ?? 0
            : 0,
      );

      expect(sorted[0].id, 'page3'); // Priority 1
      expect(sorted[1].id, 'page2'); // Priority 3
      expect(sorted[2].id, 'page1'); // Priority 5
    });

    test('sortByProperty sorts descending', () {
      final sorted = BatchHelper.sortByProperty(
        pages,
        'Priority',
        (prop) => prop != null
            ? (prop as Map<String, dynamic>)['number'] as num? ?? 0
            : 0,
        descending: true,
      );

      expect(sorted[0].id, 'page1'); // Priority 5
      expect(sorted[1].id, 'page2'); // Priority 3
      expect(sorted[2].id, 'page3'); // Priority 1
    });

    test('countByProperty counts correctly', () {
      final counts = BatchHelper.countByProperty(
        pages,
        'Status',
        (prop) => prop != null ? 'Has Status' : 'No Status',
      );

      expect(counts['Has Status'], 3);
    });

    test('filterArchived excludes archived pages', () {
      final filtered = BatchHelper.filterArchived(
        pages,
        includeArchived: false,
      );

      expect(filtered, hasLength(2));
      expect(filtered.every((p) => !PageHelper.isArchived(p)), true);
    });

    test('filterArchived includes archived pages when requested', () {
      final filtered = BatchHelper.filterArchived(pages, includeArchived: true);

      expect(filtered, hasLength(3));
    });

    test('filterTrashed excludes trashed pages', () {
      final filtered = BatchHelper.filterTrashed(pages, includeTrashed: false);

      expect(filtered, hasLength(3)); // None are trashed in test data
    });
  });
}
