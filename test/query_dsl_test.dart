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

    test('multi-value select and status filters generate correct JSON', () {
      final selectFilter = 'Priority'.property.select().equalsAny([
        'Low',
        'Medium',
      ]);
      final statusFilter = 'Status'.property.status().doesNotEqualAny(['Done']);

      expect(selectFilter.toJson(), {
        'property': 'Priority',
        'select': {
          'equals': ['Low', 'Medium'],
        },
      });

      expect(statusFilter.toJson(), {
        'property': 'Status',
        'status': {
          'does_not_equal': ['Done'],
        },
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

    test('multi-value multi-select filter', () {
      final filter = 'Tags'.property.multiSelect().containsAny([
        'Important',
        'Urgent',
      ]);

      expect(filter.toJson(), {
        'property': 'Tags',
        'multi_select': {
          'contains': ['Important', 'Urgent'],
        },
      });
    });

    test('people filter', () {
      final filter = 'Assignee'.property.people().contains('user-id-123');

      expect(filter.toJson(), {
        'property': 'Assignee',
        'people': {'contains': 'user-id-123'},
      });
    });

    test('people me filter', () {
      final filter = 'Assignee'.property.people().containsMe();

      expect(filter.toJson(), {
        'property': 'Assignee',
        'people': {'contains': 'me'},
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

    test('relative date value filter', () {
      final filter = 'Due Date'.property.date().oneWeekFromNow();

      expect(filter.toJson(), {
        'property': 'Due Date',
        'date': {'equals': 'one_week_from_now'},
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

  group('Filter DSL - additional filter types', () {
    test('checkbox does_not_equal generates correct JSON', () {
      final filter = 'Done'.property.checkbox().doesNotEqual(true);

      expect(filter.toJson(), {
        'property': 'Done',
        'checkbox': {'does_not_equal': true},
      });
    });

    test('formula filter wraps the result-type condition', () {
      final filter = 'One month deadline'
          .property
          .formula()
          .matches(const PropertyFilter.dateAfter('2021-05-10'));

      expect(filter.toJson(), {
        'property': 'One month deadline',
        'formula': {
          'date': {'after': '2021-05-10'},
        },
      });
    });

    test('rollup any/every/none generate correct JSON', () {
      final anyFilter = 'Related tasks'
          .property
          .rollup()
          .any(const PropertyFilter.textContains('Migrate data source'));
      final everyFilter = 'Scores'
          .property
          .rollup()
          .every(const PropertyFilter.numberGreaterThan(3));
      final noneFilter = 'Scores'
          .property
          .rollup()
          .none(const PropertyFilter.numberEquals(0));

      expect(anyFilter.toJson(), {
        'property': 'Related tasks',
        'rollup': {
          'any': {
            'rich_text': {'contains': 'Migrate data source'},
          },
        },
      });
      expect(everyFilter.toJson(), {
        'property': 'Scores',
        'rollup': {
          'every': {
            'number': {'greater_than': 3.0},
          },
        },
      });
      expect(noneFilter.toJson(), {
        'property': 'Scores',
        'rollup': {
          'none': {
            'number': {'equals': 0.0},
          },
        },
      });
    });

    test('rollup direct number/date condition generates correct JSON', () {
      final filter = 'Total estimated working days'
          .property
          .rollup()
          .matches(const PropertyFilter.numberDoesNotEqual(42));

      expect(filter.toJson(), {
        'property': 'Total estimated working days',
        'rollup': {
          'number': {'does_not_equal': 42.0},
        },
      });
    });

    test('verification filter generates correct JSON', () {
      final filter = 'verification'.property.verification().verified();

      expect(filter.toJson(), {
        'property': 'verification',
        'verification': {'status': 'verified'},
      });
    });

    test('unique_id filters generate correct JSON', () {
      final equalsFilter = 'ID'.property.uniqueId().equals(42);
      final rangeFilter = 'ID'.property.uniqueId().greaterThanOrEqual(1);

      expect(equalsFilter.toJson(), {
        'property': 'ID',
        'unique_id': {'equals': 42},
      });
      expect(rangeFilter.toJson(), {
        'property': 'ID',
        'unique_id': {'greater_than_or_equal_to': 1},
      });
    });

    test('timestamp filters omit the property name', () {
      final created =
          TimestampFilter.createdTime.onOrBefore('2022-10-13');
      final edited = TimestampFilter.lastEditedTime.pastWeek();

      expect(created.toJson(), {
        'timestamp': 'created_time',
        'created_time': {'on_or_before': '2022-10-13'},
      });
      expect(edited.toJson(), {
        'timestamp': 'last_edited_time',
        'last_edited_time': {'past_week': <String, dynamic>{}},
      });
    });

    test('timestamp filter can be combined inside compound filters', () {
      final filter = Filter.and([
        TimestampFilter.createdTime.after('2022-01-01'),
        'ID'.property.uniqueId().lessThan(100),
      ]);

      expect(filter.toJson(), {
        'and': [
          {
            'timestamp': 'created_time',
            'created_time': {'after': '2022-01-01'},
          },
          {
            'property': 'ID',
            'unique_id': {'less_than': 100},
          },
        ],
      });
    });
  });
}
