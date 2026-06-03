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
            {'id': 'template_1', 'name': 'Template 1', 'is_default': true},
            {'id': 'template_2', 'name': 'Template 2', 'is_default': false},
          ],
          'next_cursor': null,
          'has_more': false,
        };

        when(
          mockHttpClient.get('/data_sources/$dataSourceId/templates'),
        ).thenAnswer((_) async => mockResponse);

        final result = await templatesService.listTemplates(dataSourceId);

        expect(result.results, hasLength(2));
        expect(result.results[0].id, equals('template_1'));
        expect(result.results[0].name, equals('Template 1'));
        expect(result.results[0].isDefault, isTrue);
        expect(result.results[1].id, equals('template_2'));
        expect(result.results[1].isDefault, isFalse);
        expect(result.hasMore, equals(false));
        expect(result.nextCursor, isNull);

        verify(
          mockHttpClient.get('/data_sources/$dataSourceId/templates'),
        ).called(1);
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

        when(
          mockHttpClient.get(
            '/data_sources/$dataSourceId/templates?start_cursor=$startCursor&page_size=$pageSize',
          ),
        ).thenAnswer((_) async => mockResponse);

        final result = await templatesService.listTemplates(
          dataSourceId,
          startCursor: startCursor,
          pageSize: pageSize,
        );

        expect(result.results, isEmpty);
        expect(result.hasMore, equals(true));
        expect(result.nextCursor, equals('next_cursor_456'));

        verify(
          mockHttpClient.get(
            '/data_sources/$dataSourceId/templates?start_cursor=$startCursor&page_size=$pageSize',
          ),
        ).called(1);
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

        when(
          mockHttpClient.get(
            '/data_sources/$dataSourceId/templates?start_cursor=$startCursor',
          ),
        ).thenAnswer((_) async => mockResponse);

        await templatesService.listTemplates(
          dataSourceId,
          startCursor: startCursor,
        );

        verify(
          mockHttpClient.get(
            '/data_sources/$dataSourceId/templates?start_cursor=$startCursor',
          ),
        ).called(1);
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

        when(
          mockHttpClient.get(
            '/data_sources/$dataSourceId/templates?page_size=$pageSize',
          ),
        ).thenAnswer((_) async => mockResponse);

        await templatesService.listTemplates(dataSourceId, pageSize: pageSize);

        verify(
          mockHttpClient.get(
            '/data_sources/$dataSourceId/templates?page_size=$pageSize',
          ),
        ).called(1);
      });
    });

    group('error handling', () {
      test('should propagate HTTP client errors', () async {
        const dataSourceId = 'data_source_123';

        when(
          mockHttpClient.get('/data_sources/$dataSourceId/templates'),
        ).thenThrow(NotionException('API Error'));

        expect(
          () => templatesService.listTemplates(dataSourceId),
          throwsA(isA<NotionException>()),
        );
      });
    });
  });
}
