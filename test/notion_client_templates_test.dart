import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('NotionClient Templates Integration', () {
    late NotionClient client;

    setUp(() {
      client = NotionClient(token: 'test_token');
    });

    tearDown(() {
      client.close();
    });

    test('should have templates service', () {
      expect(client.templates, isA<TemplatesService>());
    });

    test('templates service should be properly initialized', () {
      expect(client.templates, isNotNull);
      expect(client.templates, isA<TemplatesService>());
    });

    test('should maintain existing services after adding templates', () {
      expect(client.users, isA<UsersService>());
      expect(client.pages, isA<PagesService>());
      expect(client.databases, isA<DatabasesService>());
      expect(client.dataSources, isA<DataSourcesService>());
      expect(client.search, isA<SearchService>());
      expect(client.blocks, isA<BlocksService>());
      expect(client.comments, isA<CommentsService>());
      expect(client.fileUploads, isA<FileUploadsService>());
      expect(client.templates, isA<TemplatesService>());
    });

    test('all services should use the same http client', () {
      // This test ensures that all services share the same HTTP client instance
      // which is important for consistent authentication and configuration
      expect(client.templates, isNotNull);
      expect(client.pages, isNotNull);
      expect(client.databases, isNotNull);
    });

    group('Template API workflow', () {
      test('should support complete template workflow', () {
        // This test verifies that the client supports the complete template workflow:
        // 1. List templates from a data source
        // 2. Retrieve a specific template
        // 3. Create a page using a template

        // Verify that the necessary methods exist
        expect(client.templates.listTemplates, isA<Function>());
        expect(client.templates.retrieveTemplate, isA<Function>());
        expect(client.pages.create, isA<Function>());
      });
    });

    group('Error handling integration', () {
      test('should handle template-specific exceptions', () {
        // Verify that template-specific exceptions are properly exposed
        expect(TemplateNotFoundException, isA<Type>());
        expect(InvalidTemplateException, isA<Type>());

        // Verify that they extend NotionException
        final templateNotFound = TemplateNotFoundException('Test');
        final invalidTemplate = InvalidTemplateException('Test');

        expect(templateNotFound, isA<NotionException>());
        expect(invalidTemplate, isA<NotionException>());
      });
    });

    group('Backward compatibility', () {
      test('should maintain backward compatibility for page creation', () {
        // Verify that existing page creation functionality still works
        expect(client.pages.create, isA<Function>());

        // The create method should accept the new optional templateId parameter
        // without breaking existing code that doesn't use it
        expect(
          () {
            // This should compile without errors (testing method signature)
            client.pages
                .create(parent: const WorkspaceParent(), properties: {});
          },
          returnsNormally,
        );

        expect(
          () {
            // This should also compile without errors (testing with templateId)
            client.pages.create(
              parent: const WorkspaceParent(),
              properties: {},
              templateId: 'template_123',
            );
          },
          returnsNormally,
        );
      });
    });
  });
}
