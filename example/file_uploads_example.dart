import 'dart:io';

import 'package:notion_dart_kit/notion_dart_kit.dart';

Future<void> main() async {
  final token =
      Platform.environment['NOTION_TOKEN'] ?? 'your_integration_token';
  final client = NotionClient(token: token);

  // Small file upload (single_part)
  final created = await client.fileUploads.create(
    mode: FileUploadMode.singlePart,
    filename: 'hello.txt',
    contentType: 'text/plain',
  );

  final uploaded = await client.fileUploads.sendBytes(
    created.id,
    'Hello Notion'.codeUnits,
    filename: 'hello.txt',
    contentType: 'text/plain',
  );

  print('Uploaded: \\${uploaded.status}');

  client.close();
}
