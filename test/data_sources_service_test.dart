import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:notion_dart_kit/src/client/http_client.dart';
import 'package:test/test.dart';

import 'data_sources_service_test.mocks.dart';

@GenerateMocks([NotionHttpClient])
void main() {
  late MockNotionHttpClient mockHttpClient;
  late DataSourcesService service;

  setUp(() {
    mockHttpClient = MockNotionHttpClient();
    service = DataSourcesService(mockHttpClient);
  });

  group('DataSourcesService', () {
    test('create() sends correct request', () async {
      final mockResponse = {
        'object': 'data_source',
        'id': 'ds_123',
        'created_time': '2024-01-01T00:00:00.000Z',
        'last_edited_time': '2024-01-01T00:00:00.000Z',
        'parent': {'type': 'database_id', 'database_id': 'db_456'},
        'database_parent': {'type': 'page_id', 'page_id': 'page_789'},
        'title': [
          {
            'type': 'text',
            'text': {'content': 'Test Data Source'},
            'plain_text': 'Test Data Source',
            'annotations': {
              'bold': false,
              'italic': false,
              'strikethrough': false,
              'underline': false,
              'code': false,
              'color': 'default',
            },
          },
        ],
        'properties': {
          'Name': {
            'id': 'title',
            'name': 'Name',
            'type': 'title',
            'title': {},
          },
        },
        'archived': false,
        'is_inline': true,
        'url': 'https://notion.so/ds_123',
      };

      when(mockHttpClient.post('/data_sources', data: anyNamed('data')))
          .thenAnswer((_) async => mockResponse);

      final result = await service.create(
        title: [
          {
            'type': 'text',
            'text': {'content': 'Test Data Source'},
          },
        ],
        databaseId: 'db_456',
      );

      expect(result.id, 'ds_123');
      expect(result.title.first.plainText, 'Test Data Source');
      verify(mockHttpClient.post('/data_sources', data: anyNamed('data')))
          .called(1);
    });

    test('retrieve() fetches data source', () async {
      final mockResponse = {
        'object': 'data_source',
        'id': 'ds_123',
        'created_time': '2024-01-01T00:00:00.000Z',
        'last_edited_time': '2024-01-01T00:00:00.000Z',
        'parent': {'type': 'database_id', 'database_id': 'db_456'},
        'database_parent': {'type': 'page_id', 'page_id': 'page_789'},
        'title': [
          {
            'type': 'text',
            'text': {'content': 'Test Data Source'},
            'plain_text': 'Test Data Source',
            'annotations': {
              'bold': false,
              'italic': false,
              'strikethrough': false,
              'underline': false,
              'code': false,
              'color': 'default',
            },
          },
        ],
        'properties': {
          'Name': {
            'id': 'title',
            'name': 'Name',
            'type': 'title',
            'title': {},
          },
        },
        'archived': false,
        'is_inline': true,
        'url': 'https://notion.so/ds_123',
      };

      when(mockHttpClient.get('/data_sources/ds_123'))
          .thenAnswer((_) async => mockResponse);

      final result = await service.retrieve('ds_123');

      expect(result.id, 'ds_123');
      expect(result.properties.containsKey('Name'), true);
      verify(mockHttpClient.get('/data_sources/ds_123')).called(1);
    });

    test('update() sends update request', () async {
      final mockResponse = {
        'object': 'data_source',
        'id': 'ds_123',
        'created_time': '2024-01-01T00:00:00.000Z',
        'last_edited_time': '2024-01-02T00:00:00.000Z',
        'parent': {'type': 'database_id', 'database_id': 'db_456'},
        'database_parent': {'type': 'page_id', 'page_id': 'page_789'},
        'title': [
          {
            'type': 'text',
            'text': {'content': 'Updated Data Source'},
            'plain_text': 'Updated Data Source',
            'annotations': {
              'bold': false,
              'italic': false,
              'strikethrough': false,
              'underline': false,
              'code': false,
              'color': 'default',
            },
          },
        ],
        'properties': {
          'Name': {
            'id': 'title',
            'name': 'Name',
            'type': 'title',
            'title': {},
          },
        },
        'archived': false,
        'is_inline': true,
        'url': 'https://notion.so/ds_123',
      };

      when(
        mockHttpClient.patch('/data_sources/ds_123', data: anyNamed('data')),
      ).thenAnswer((_) async => mockResponse);

      final result = await service.update(
        'ds_123',
        title: [
          {
            'type': 'text',
            'text': {'content': 'Updated Data Source'},
          },
        ],
      );

      expect(result.title.first.plainText, 'Updated Data Source');
      verify(
        mockHttpClient.patch('/data_sources/ds_123', data: anyNamed('data')),
      ).called(1);
    });

    test('query() sends query with filters', () async {
      final mockResponse = {
        'object': 'list',
        'results': [
          {
            'object': 'page',
            'id': 'page_123',
            'created_time': '2024-01-01T00:00:00.000Z',
            'last_edited_time': '2024-01-01T00:00:00.000Z',
            'created_by': {
              'object': 'user',
              'id': 'user_123',
            },
            'last_edited_by': {
              'object': 'user',
              'id': 'user_123',
            },
            'parent': {
              'type': 'database_id',
              'database_id': 'db_456',
            },
            'archived': false,
            'in_trash': false,
            'properties': {
              'Name': {
                'id': 'title',
                'type': 'title',
                'title': [],
              },
            },
            'url': 'https://notion.so/page_123',
          },
        ],
        'next_cursor': null,
        'has_more': false,
        'type': 'page',
      };

      when(
        mockHttpClient.post(
          '/data_sources/ds_123/query',
          data: anyNamed('data'),
        ),
      ).thenAnswer((_) async => mockResponse);

      final result = await service.query(
        'ds_123',
        filter: {
          'property': 'Name',
          'title': {'is_not_empty': true},
        },
      );

      expect(result.results.length, 1);
      expect(result.hasMore, false);
      verify(
        mockHttpClient.post(
          '/data_sources/ds_123/query',
          data: anyNamed('data'),
        ),
      ).called(1);
    });

    test('query() with sorts and pagination', () async {
      final mockResponse = {
        'object': 'list',
        'results': [],
        'next_cursor': 'cursor_123',
        'has_more': true,
        'type': 'page',
      };

      when(
        mockHttpClient.post(
          '/data_sources/ds_123/query',
          data: anyNamed('data'),
        ),
      ).thenAnswer((_) async => mockResponse);

      final result = await service.query(
        'ds_123',
        sorts: [
          {'property': 'Name', 'direction': 'ascending'},
        ],
        startCursor: 'cursor_456',
        pageSize: 50,
      );

      expect(result.nextCursor, 'cursor_123');
      expect(result.hasMore, true);
    });

    test('query() with filter properties', () async {
      final mockResponse = {
        'object': 'list',
        'results': [],
        'next_cursor': null,
        'has_more': false,
        'type': 'page',
      };

      when(
        mockHttpClient.post(
          '/data_sources/ds_123/query?filter_properties=prop1%2Cprop2',
          data: anyNamed('data'),
        ),
      ).thenAnswer((_) async => mockResponse);

      await service.query(
        'ds_123',
        filterProperties: ['prop1', 'prop2'],
      );

      verify(
        mockHttpClient.post(
          '/data_sources/ds_123/query?filter_properties=prop1%2Cprop2',
          data: anyNamed('data'),
        ),
      ).called(1);
    });
  });
}
