import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('FileUploadsService', () {
    test('client exposes fileUploads service', () {
      final client = NotionClient(token: 'test_token');
      expect(client.fileUploads, isA<FileUploadsService>());
      client.close();
    });

    test('create() validates required params for multi_part', () async {
      final client = NotionClient(token: 'test_token');
      final svc = client.fileUploads;

      expect(
        () => svc.create(
          mode: FileUploadMode.multiPart,
          // missing filename and numberOfParts
        ),
        throwsA(isA<ValidationException>()),
      );

      expect(
        () => svc.create(
          mode: FileUploadMode.multiPart,
          filename: 'a.bin',
          numberOfParts: 0,
        ),
        throwsA(isA<ValidationException>()),
      );

      client.close();
    });

    test('fromJson reads complete_url and file_import_result', () {
      final upload = FileUpload.fromJson({
        'object': 'file_upload',
        'id': 'fu-1',
        'created_time': '2026-01-01T00:00:00.000Z',
        'last_edited_time': '2026-01-01T00:00:00.000Z',
        'archived': false,
        'status': 'uploaded',
        'filename': 'photo.png',
        'content_type': 'image/png',
        'content_length': 1024,
        'complete_url': 'https://api.notion.com/v1/file_uploads/fu-1/complete',
        'file_import_result': {
          'type': 'success',
          'success': <String, dynamic>{},
        },
      });

      expect(
        upload.completeUrl,
        'https://api.notion.com/v1/file_uploads/fu-1/complete',
      );
      expect(upload.fileImportResult, isA<Map<String, dynamic>>());
      expect(upload.fileImportResult!['type'], 'success');

      final json = upload.toJson();
      expect(
        json['complete_url'],
        'https://api.notion.com/v1/file_uploads/fu-1/complete',
      );
      expect(json['file_import_result'], isA<Map<String, dynamic>>());
    });

    test('toJson omits new fields when absent', () {
      final upload = FileUpload.fromJson({
        'object': 'file_upload',
        'id': 'fu-2',
        'created_time': '2026-01-01T00:00:00.000Z',
        'last_edited_time': '2026-01-01T00:00:00.000Z',
        'archived': false,
        'status': 'pending',
        'filename': 'doc.pdf',
        'content_type': 'application/pdf',
        'content_length': 2048,
      });

      final json = upload.toJson();
      expect(json.containsKey('complete_url'), false);
      expect(json.containsKey('file_import_result'), false);
    });

    test('create() validates required params for external_url', () async {
      final client = NotionClient(token: 'test_token');
      final svc = client.fileUploads;

      expect(
        () => svc.create(mode: FileUploadMode.externalUrl),
        throwsA(isA<ValidationException>()),
      );

      expect(
        () => svc.create(mode: FileUploadMode.externalUrl, filename: 'a.png'),
        throwsA(isA<ValidationException>()),
      );

      client.close();
    });
  });
}
