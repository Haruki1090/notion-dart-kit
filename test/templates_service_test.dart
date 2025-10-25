import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:notion_dart_kit/src/client/http_client.dart';
import 'package:test/test.dart';

import 'templates_service_test.mocks.dart';

@GenerateMocks([NotionHttpClient])
void main() {
  group('TemplatesService', () {
    late MockNotionHttpClient mockHttpClient;
    late TemplatesService templatesService;

    setUp(() {
      mockHttpClient = MockNotionHttpClient();
      templatesService = TemplatesService(mockHttpClient);
    });

    group('listTemplates', () {
      test('should return paginated list of templates', () async {
        const dataSourceId = 'data_source_123';
        final mockResponse = {
          'object': 'list',
          'type': 'template',
          'results': [
            {
              'id': 'template_1',
              'title': 'Template 1',
              'description': 'First template',
              'created_time': '2023-01-01T00:00:00.000Z',
              'last_edited_time': '2023-01-02T00:00:00.000Z',
              'created_by': {
                'object': 'user',
                'id': 'user_123',
                'type': 'person',
                'person': {'email': 'test@example.com'},
                'name': 'Test User',
                'avatar_url': null,
              },
              'last_edited_by': {
                'object': 'user',
                'id': 'user_456',
                'type': 'person',
                'person': {'email': 'editor@example.com'},
                'name': 'Editor User',
                'avatar_url': null,
              },
              'url': 'https://notion.so/template_1',
              'archived': false,
            },
            {
              'id': 'template_2',
              'title': 'Template 2',
              'description': 'Second template',
              'created_time': '2023-01-01T00:00:00.000Z',
              'last_edited_time': '2023-01-02T00:00:00.000Z',
              'created_by': {
                'object': 'user',
                'id': 'user_123',
                'type': 'person',
                'person': {'email': 'test@example.com'},
                'name': 'Test User',
                'avatar_url': null,
              },
              'last_edited_by': {
                'object': 'user',
                'id': 'user_456',
                'type': 'person',
                'person': {'email': 'editor@example.com'},
                'name': 'Editor User',
                'avatar_url': null,
              },
              'url': 'https://notion.so/template_2',
              'archived': false,
            },
          ],
          'next_cursor': null,
          'has_more': false,
        };

        when(mockHttpClient.get('/data_sources/$dataSourceId/templates'))
            .thenAnswer((_) async => mockResponse);

        final result = await templatesService.listTemplates(dataSourceId);

        expect(result.results, hasLength(2));
        expect(result.results[0].id, equals('template_1'));
        expect(result.results[0].title, equals('Template 1'));
        expect(result.results[1].id, equals('template_2'));
        expect(result.results[1].title, equals('Template 2'));
        expect(result.hasMore, equals(false));
        expect(result.nextCursor, isNull);

        verify(mockHttpClient.get('/data_sources/$dataSourceId/templates'))
            .called(1);
      });

      test('should handle pagination parameters', () async {
        const dataSourceId = 'data_source_123';
        const startCursor = 'cursor_123';
        const pageSize = 50;

        final mockResponse = {
          'object': 'list',
          'type': 'template',
          'results': [],
          'next_cursor': 'next_cursor_456',
          'has_more': true,
        };

        when(mockHttpClient.get(
          '/data_sources/$dataSourceId/templates?start_cursor=$startCursor&page_size=$pageSize',
        )).thenAnswer((_) async => mockResponse);

        final result = await templatesService.listTemplates(
          dataSourceId,
          startCursor: startCursor,
          pageSize: pageSize,
        );

        expect(result.results, isEmpty);
        expect(result.hasMore, equals(true));
        expect(result.nextCursor, equals('next_cursor_456'));

        verify(mockHttpClient.get(
          '/data_sources/$dataSourceId/templates?start_cursor=$startCursor&page_size=$pageSize',
        )).called(1);
      });

      test('should handle only start cursor parameter', () async {
        const dataSourceId = 'data_source_123';
        const startCursor = 'cursor_123';

        final mockResponse = {
          'object': 'list',
          'type': 'template',
          'results': [],
          'next_cursor': null,
          'has_more': false,
        };

        when(mockHttpClient.get(
          '/data_sources/$dataSourceId/templates?start_cursor=$startCursor',
        )).thenAnswer((_) async => mockResponse);

        await templatesService.listTemplates(
          dataSourceId,
          startCursor: startCursor,
        );

        verify(mockHttpClient.get(
          '/data_sources/$dataSourceId/templates?start_cursor=$startCursor',
        )).called(1);
      });

      test('should handle only page size parameter', () async {
        const dataSourceId = 'data_source_123';
        const pageSize = 25;

        final mockResponse = {
          'object': 'list',
          'type': 'template',
          'results': [],
          'next_cursor': null,
          'has_more': false,
        };

        when(mockHttpClient.get(
          '/data_sources/$dataSourceId/templates?page_size=$pageSize',
        )).thenAnswer((_) async => mockResponse);

        await templatesService.listTemplates(
          dataSourceId,
          pageSize: pageSize,
        );

        verify(mockHttpClient.get(
          '/data_sources/$dataSourceId/templates?page_size=$pageSize',
        )).called(1);
      });
    });

    group('retrieveTemplate', () {
      test('should return specific template', () async {
        const dataSourceId = 'data_source_123';
        const templateId = 'template_456';

        final mockResponse = {
          'id': templateId,
          'title': 'Specific Template',
          'description': 'A specific template',
          'created_time': '2023-01-01T00:00:00.000Z',
          'last_edited_time': '2023-01-02T00:00:00.000Z',
          'created_by': {
            'object': 'user',
            'id': 'user_123',
            'type': 'person',
            'person': {'email': 'test@example.com'},
            'name': 'Test User',
            'avatar_url': null,
          },
          'last_edited_by': {
            'object': 'user',
            'id': 'user_456',
            'type': 'person',
            'person': {'email': 'editor@example.com'},
            'name': 'Editor User',
            'avatar_url': null,
          },
          'url': 'https://notion.so/$templateId',
          'archived': false,
        };

        when(mockHttpClient.get('/data_sources/$dataSourceId/templates/$templateId'))
            .thenAnswer((_) async => mockResponse);

        final result = await templatesService.retrieveTemplate(dataSourceId, templateId);

        expect(result.id, equals(templateId));
        expect(result.title, equals('Specific Template'));
        expect(result.description, equals('A specific template'));
        expect(result.archived, equals(false));

        verify(mockHttpClient.get('/data_sources/$dataSourceId/templates/$templateId'))
            .called(1);
      });
    });

    group('error handling', () {
      test('should propagate HTTP client errors', () async {
        const dataSourceId = 'data_source_123';

        when(mockHttpClient.get('/data_sources/$dataSourceId/templates'))
            .thenThrow(NotionException('API Error'));

        expect(
          () => templatesService.listTemplates(dataSourceId),
          throwsA(isA<NotionException>()),
        );
      });

      test('should propagate template not found errors', () async {
        const dataSourceId = 'data_source_123';
        const templateId = 'nonexistent_template';

        when(mockHttpClient.get('/data_sources/$dataSourceId/templates/$templateId'))
            .thenThrow(TemplateNotFoundException('Template not found'));

        expect(
          () => templatesService.retrieveTemplate(dataSourceId, templateId),
          throwsA(isA<TemplateNotFoundException>()),
        );
      });
    });
  });
}