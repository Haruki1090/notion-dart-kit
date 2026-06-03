import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:notion_dart_kit/src/client/http_client.dart';
import 'package:notion_dart_kit/src/services/views_service.dart';
import 'package:test/test.dart';

/// Records the most recent request and returns a canned response that satisfies
/// View / PaginatedList<View> / ViewQuery parsers.
class _RecordingAdapter implements HttpClientAdapter {
  RequestOptions? last;

  static final Map<String, dynamic> _body = {
    'object': 'list',
    'id': 'view_1',
    'name': 'Grid',
    'type': 'table',
    'results': <dynamic>[],
    'has_more': false,
    'next_cursor': null,
  };

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<dynamic>? cancelFuture,
  ) async {
    last = options;
    return ResponseBody.fromString(
      jsonEncode(_body),
      200,
      headers: {
        Headers.contentTypeHeader: ['application/json'],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

void main() {
  // These tests pin the ViewsService endpoint shapes against the official
  // Notion API (verified against makenotion/notion-sdk-js v5.12.0,
  // API version 2026-03-11).
  group('ViewsService endpoint shapes', () {
    late _RecordingAdapter adapter;
    late NotionHttpClient httpClient;
    late ViewsService views;

    setUp(() {
      adapter = _RecordingAdapter();
      final dio = Dio()..httpClientAdapter = adapter;
      httpClient = NotionHttpClient(token: 'test_token', dio: dio);
      views = ViewsService(httpClient);
    });

    tearDown(() => httpClient.close());

    test('list -> GET /views with database_id query', () async {
      await views.list(databaseId: 'db_1', pageSize: 10);
      expect(adapter.last!.method, 'GET');
      expect(adapter.last!.path, '/views');
      expect(adapter.last!.queryParameters['database_id'], 'db_1');
      expect(adapter.last!.queryParameters['page_size'], 10);
    });

    test('list -> GET /views with data_source_id query', () async {
      await views.list(dataSourceId: 'ds_1');
      expect(adapter.last!.method, 'GET');
      expect(adapter.last!.path, '/views');
      expect(adapter.last!.queryParameters['data_source_id'], 'ds_1');
    });

    test('list requires exactly one parent', () async {
      await expectLater(views.list(), throwsArgumentError);
      await expectLater(
        views.list(databaseId: 'db', dataSourceId: 'ds'),
        throwsArgumentError,
      );
    });

    test('retrieve -> GET /views/{id}', () async {
      await views.retrieve('view_1');
      expect(adapter.last!.method, 'GET');
      expect(adapter.last!.path, '/views/view_1');
    });

    test('create -> POST /views with body', () async {
      await views.create(
        dataSourceId: 'ds_1',
        name: 'My View',
        type: 'table',
        databaseId: 'db_1',
      );
      expect(adapter.last!.method, 'POST');
      expect(adapter.last!.path, '/views');
      final body = adapter.last!.data as Map<String, dynamic>;
      expect(body['data_source_id'], 'ds_1');
      expect(body['name'], 'My View');
      expect(body['type'], 'table');
      expect(body['database_id'], 'db_1');
    });

    test('update -> PATCH /views/{id}', () async {
      await views.update('view_1', name: 'Renamed');
      expect(adapter.last!.method, 'PATCH');
      expect(adapter.last!.path, '/views/view_1');
      expect((adapter.last!.data as Map<String, dynamic>)['name'], 'Renamed');
    });

    test('delete -> DELETE /views/{id}', () async {
      await views.delete('view_1');
      expect(adapter.last!.method, 'DELETE');
      expect(adapter.last!.path, '/views/view_1');
    });

    test('createQuery -> POST /views/{id}/queries', () async {
      await views.createQuery('view_1');
      expect(adapter.last!.method, 'POST');
      expect(adapter.last!.path, '/views/view_1/queries');
    });

    test('retrieveQueryResults -> GET /views/{id}/queries/{queryId}', () async {
      await views.retrieveQueryResults('view_1', 'q_1', pageSize: 25);
      expect(adapter.last!.method, 'GET');
      expect(adapter.last!.path, '/views/view_1/queries/q_1');
      expect(adapter.last!.queryParameters['page_size'], 25);
    });

    test('deleteQuery -> DELETE /views/{id}/queries/{queryId}', () async {
      await views.deleteQuery('view_1', 'q_1');
      expect(adapter.last!.method, 'DELETE');
      expect(adapter.last!.path, '/views/view_1/queries/q_1');
    });
  });
}
