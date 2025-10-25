import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('Template', () {
    test('should serialize and deserialize correctly', () {
      final json = {
        'id': 'template_123',
        'title': 'Project Template',
        'description': 'A template for new projects',
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
        'url': 'https://notion.so/template_123',
        'archived': false,
      };

      final template = Template.fromJson(json);

      expect(template.id, equals('template_123'));
      expect(template.title, equals('Project Template'));
      expect(template.description, equals('A template for new projects'));
      expect(
        template.createdTime,
        equals(DateTime.parse('2023-01-01T00:00:00.000Z')),
      );
      expect(
        template.lastEditedTime,
        equals(DateTime.parse('2023-01-02T00:00:00.000Z')),
      );
      expect(template.createdBy.id, equals('user_123'));
      expect(template.lastEditedBy.id, equals('user_456'));
      expect(template.url, equals('https://notion.so/template_123'));
      expect(template.archived, equals(false));

      final serialized = template.toJson();
      expect(serialized['id'], equals('template_123'));
      expect(serialized['title'], equals('Project Template'));
      expect(serialized['description'], equals('A template for new projects'));
      expect(serialized['archived'], equals(false));
    });

    test('should handle null description', () {
      final json = {
        'id': 'template_123',
        'title': 'Simple Template',
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
        'url': 'https://notion.so/template_123',
        'archived': false,
      };

      final template = Template.fromJson(json);

      expect(template.description, isNull);
      expect(template.title, equals('Simple Template'));
    });

    test('should handle archived template', () {
      final json = {
        'id': 'template_archived',
        'title': 'Archived Template',
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
        'url': 'https://notion.so/template_archived',
        'archived': true,
      };

      final template = Template.fromJson(json);

      expect(template.archived, equals(true));
      expect(template.id, equals('template_archived'));
    });

    test('should create template with factory constructor', () {
      const createdBy = User.person(
        id: 'user_123',
        person: PersonInfo(email: 'test@example.com'),
        name: 'Test User',
      );

      const lastEditedBy = User.person(
        id: 'user_456',
        person: PersonInfo(email: 'editor@example.com'),
        name: 'Editor User',
      );

      final template = Template(
        id: 'template_new',
        title: 'New Template',
        description: 'A newly created template',
        createdTime: DateTime.parse('2023-01-01T00:00:00.000Z'),
        lastEditedTime: DateTime.parse('2023-01-02T00:00:00.000Z'),
        createdBy: createdBy,
        lastEditedBy: lastEditedBy,
        url: 'https://notion.so/template_new',
      );

      expect(template.id, equals('template_new'));
      expect(template.title, equals('New Template'));
      expect(template.description, equals('A newly created template'));
      expect(template.archived, equals(false));
    });
  });
}
