import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('Filter DSL', () {
    test('simple text filter generates correct JSON', () {
      final filter = 'Title'.property.text().contains('Flutter');

      expect(filter.toJson(), {
        'property': 'Title',
        'rich_text': {'contains': 'Flutter'},
      });
    });

    test('number filter generates correct JSON', () {
      final filter = 'Price'.property.number().greaterThan(100);

      expect(filter.toJson(), {
        'property': 'Price',
        'number': {'greater_than': 100.0},
      });
    });

    test('checkbox filter generates correct JSON', () {
      final filter = 'Done'.property.checkbox().equals(true);

      expect(filter.toJson(), {
        'property': 'Done',
        'checkbox': {'equals': true},
      });
    });

    test('select filter generates correct JSON', () {
      final filter = 'Status'.property.select().equals('In Progress');

      expect(filter.toJson(), {
        'property': 'Status',
        'select': {'equals': 'In Progress'},
      });
    });

    test('date filter generates correct JSON', () {
      final filter = 'Due Date'.property.date().after('2025-10-05');

      expect(filter.toJson(), {
        'property': 'Due Date',
        'date': {'after': '2025-10-05'},
      });
    });

    test('AND filter with multiple conditions', () {
      final filter = Filter.and([
        'Status'.property.select().equals('Todo'),
        'Priority'.property.number().greaterThan(3),
      ]);

      expect(filter.toJson(), {
        'and': [
          {
            'property': 'Status',
            'select': {'equals': 'Todo'},
          },
          {
            'property': 'Priority',
            'number': {'greater_than': 3},
          },
        ],
      });
    });

    test('OR filter with multiple conditions', () {
      final filter = Filter.or([
        'Status'.property.select().equals('Todo'),
        'Status'.property.select().equals('In Progress'),
      ]);

      expect(filter.toJson(), {
        'or': [
          {
            'property': 'Status',
            'select': {'equals': 'Todo'},
          },
          {
            'property': 'Status',
            'select': {'equals': 'In Progress'},
          },
        ],
      });
    });

    test('complex nested filter (AND + OR)', () {
      final filter = Filter.and([
        Filter.or([
          'Status'.property.select().equals('Todo'),
          'Status'.property.select().equals('In Progress'),
        ]),
        'Priority'.property.number().greaterThanOrEqual(3),
      ]);

      expect(filter.toJson(), {
        'and': [
          {
            'or': [
              {
                'property': 'Status',
                'select': {'equals': 'Todo'},
              },
              {
                'property': 'Status',
                'select': {'equals': 'In Progress'},
              },
            ],
          },
          {
            'property': 'Priority',
            'number': {'greater_than_or_equal_to': 3},
          },
        ],
      });
    });

    test('multi-select filter', () {
      final filter = 'Tags'.property.multiSelect().contains('Important');

      expect(filter.toJson(), {
        'property': 'Tags',
        'multi_select': {'contains': 'Important'},
      });
    });

    test('people filter', () {
      final filter = 'Assignee'.property.people().contains('user-id-123');

      expect(filter.toJson(), {
        'property': 'Assignee',
        'people': {'contains': 'user-id-123'},
      });
    });

    test('relation filter', () {
      final filter = 'Project'.property.relation().contains('page-id-456');

      expect(filter.toJson(), {
        'property': 'Project',
        'relation': {'contains': 'page-id-456'},
      });
    });

    test('isEmpty filter', () {
      final filter = 'Notes'.property.text().isEmpty();

      expect(filter.toJson(), {
        'property': 'Notes',
        'rich_text': {'is_empty': true},
      });
    });

    test('relative date filter', () {
      final filter = 'Created'.property.date().pastWeek();

      expect(filter.toJson(), {
        'property': 'Created',
        'date': {'past_week': {}},
      });
    });
  });

  group('Sort DSL', () {
    test('property ascending sort generates correct JSON', () {
      final sort = 'Due Date'.ascending();

      expect(sort.toJson(), {'property': 'Due Date', 'direction': 'ascending'});
    });

    test('property descending sort generates correct JSON', () {
      final sort = 'Priority'.descending();

      expect(sort.toJson(), {
        'property': 'Priority',
        'direction': 'descending',
      });
    });

    test('timestamp sort generates correct JSON', () {
      final sort = SortBuilder.createdTimeDescending();

      expect(sort.toJson(), {
        'timestamp': 'created_time',
        'direction': 'descending',
      });
    });

    test('last edited time sort', () {
      final sort = SortBuilder.lastEditedTimeAscending();

      expect(sort.toJson(), {
        'timestamp': 'last_edited_time',
        'direction': 'ascending',
      });
    });

    test('multiple sorts as array', () {
      final sorts = [
        'Status'.ascending(),
        'Priority'.descending(),
        'Due Date'.ascending(),
      ];

      final sortsJson = sorts.map((s) => s.toJson()).toList();

      expect(sortsJson, [
        {'property': 'Status', 'direction': 'ascending'},
        {'property': 'Priority', 'direction': 'descending'},
        {'property': 'Due Date', 'direction': 'ascending'},
      ]);
    });
  });

  group('Integration - Query with Filter and Sort', () {
    test('complete query structure', () {
      final filter = Filter.and([
        Filter.or([
          'Status'.property.select().equals('Todo'),
          'Status'.property.select().equals('In Progress'),
        ]),
        'Priority'.property.number().greaterThan(2),
      ]);

      final sorts = ['Priority'.descending(), 'Due Date'.ascending()];

      final queryJson = {
        'filter': filter.toJson(),
        'sorts': sorts.map((s) => s.toJson()).toList(),
      };

      expect(queryJson, {
        'filter': {
          'and': [
            {
              'or': [
                {
                  'property': 'Status',
                  'select': {'equals': 'Todo'},
                },
                {
                  'property': 'Status',
                  'select': {'equals': 'In Progress'},
                },
              ],
            },
            {
              'property': 'Priority',
              'number': {'greater_than': 2},
            },
          ],
        },
        'sorts': [
          {'property': 'Priority', 'direction': 'descending'},
          {'property': 'Due Date', 'direction': 'ascending'},
        ],
      });
    });
  });
}
