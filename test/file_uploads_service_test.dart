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

    test('create() validates required params for external_url', () async {
      final client = NotionClient(token: 'test_token');
      final svc = client.fileUploads;

      expect(
        () => svc.create(mode: FileUploadMode.externalUrl),
        throwsA(isA<ValidationException>()),
      );

      expect(
        () => svc.create(
          mode: FileUploadMode.externalUrl,
          filename: 'a.png',
        ),
        throwsA(isA<ValidationException>()),
      );

      client.close();
    });
  });
}
