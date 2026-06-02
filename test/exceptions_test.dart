import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:notion_dart_kit/src/client/http_client.dart';
import 'package:test/test.dart';

/// A minimal [HttpClientAdapter] that returns a canned JSON error response so
/// the client's error interceptor can be exercised without real network I/O.
class _StubErrorAdapter implements HttpClientAdapter {
  _StubErrorAdapter({
    required this.statusCode,
    required this.body,
    this.requestId,
  });

  final int statusCode;
  final Map<String, dynamic> body;
  final String? requestId;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<dynamic>? cancelFuture,
  ) async {
    return ResponseBody.fromString(
      jsonEncode(body),
      statusCode,
      headers: {
        Headers.contentTypeHeader: ['application/json'],
        if (requestId != null) 'x-notion-request-id': [requestId!],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

NotionHttpClient _clientReturning({
  required int statusCode,
  required Map<String, dynamic> body,
  String? requestId,
}) {
  final dio = Dio()
    ..httpClientAdapter = _StubErrorAdapter(
      statusCode: statusCode,
      body: body,
      requestId: requestId,
    );
  return NotionHttpClient(token: 'test_token', dio: dio);
}

void main() {
  group('NotionException fields and formatting', () {
    test('carries code and requestId and surfaces them in toString', () {
      final ex = NotionException(
        'Something went wrong',
        statusCode: 400,
        code: 'validation_error',
        requestId: 'req-123',
      );

      expect(ex.code, 'validation_error');
      expect(ex.requestId, 'req-123');
      expect(ex.statusCode, 400);
      expect(
        ex.toString(),
        'NotionException: Something went wrong '
        '(code: validation_error, status: 400, request_id: req-123)',
      );
    });

    test('omits the detail suffix when no metadata is present', () {
      expect(NotionException('boom').toString(), 'NotionException: boom');
    });

    test('subclasses thread code and requestId through super', () {
      final ex = ConflictException(
        'conflict',
        statusCode: 409,
        code: 'conflict_error',
        requestId: 'req-9',
      );
      expect(ex, isA<NotionException>());
      expect(ex.code, 'conflict_error');
      expect(ex.requestId, 'req-9');
      expect(ex.toString(), contains('ConflictException: conflict'));
      expect(ex.toString(), contains('code: conflict_error'));
    });
  });

  group('HTTP error mapping', () {
    test('403 maps to RestrictedResourceException with code and requestId',
        () async {
      final client = _clientReturning(
        statusCode: 403,
        body: {
          'object': 'error',
          'status': 403,
          'code': 'restricted_resource',
          'message': 'Insufficient permissions.',
        },
        requestId: 'req-403',
      );
      addTearDown(client.close);

      await expectLater(
        client.get('/pages/abc'),
        throwsA(
          isA<RestrictedResourceException>()
              .having((e) => e.code, 'code', 'restricted_resource')
              .having((e) => e.statusCode, 'statusCode', 403)
              .having((e) => e.requestId, 'requestId', 'req-403')
              .having((e) => e.message, 'message', 'Insufficient permissions.'),
        ),
      );
    });

    test('409 maps to ConflictException', () async {
      final client = _clientReturning(
        statusCode: 409,
        body: {
          'object': 'error',
          'code': 'conflict_error',
          'message': 'Conflict occurred.',
        },
        requestId: 'req-409',
      );
      addTearDown(client.close);

      await expectLater(
        client.post('/pages'),
        throwsA(
          isA<ConflictException>()
              .having((e) => e.code, 'code', 'conflict_error')
              .having((e) => e.requestId, 'requestId', 'req-409'),
        ),
      );
    });

    test('falls back to request_id in the body when header is absent',
        () async {
      final client = _clientReturning(
        statusCode: 400,
        body: {
          'object': 'error',
          'code': 'validation_error',
          'message': 'Bad request.',
          'request_id': 'body-req-id',
        },
      );
      addTearDown(client.close);

      await expectLater(
        client.patch('/pages/abc'),
        throwsA(
          isA<ValidationException>()
              .having((e) => e.code, 'code', 'validation_error')
              .having((e) => e.requestId, 'requestId', 'body-req-id'),
        ),
      );
    });
  });
}
