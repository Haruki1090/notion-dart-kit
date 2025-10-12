import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('CommentsService', () {
    test('client exposes comments service', () {
      final client = NotionClient(token: 'test_token');
      expect(client.comments, isA<CommentsService>());
      client.close();
    });

    test('create() requires exactly one of parent or discussionId', () async {
      final client = NotionClient(token: 'test_token');
      final comments = client.comments;

      final richText = [
        RichText.text(
          text: const TextContent(content: 'hello'),
          annotations: const Annotations(),
          plainText: 'hello',
        ),
      ];

      // Both null -> invalid
      expect(
        () => comments.create(richText: richText),
        throwsA(isA<ValidationException>()),
      );

      // Both provided -> invalid
      expect(
        () => comments.create(
          parent: const Parent.page(pageId: 'p'),
          discussionId: 'd',
          richText: richText,
        ),
        throwsA(isA<ValidationException>()),
      );

      client.close();
    });
  });
}
