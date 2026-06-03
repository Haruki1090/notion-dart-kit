import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('Template', () {
    test('should deserialize the official template shape', () {
      final json = {
        'id': 'template_123',
        'name': 'Project Template',
        'is_default': true,
      };

      final template = Template.fromJson(json);

      expect(template.id, equals('template_123'));
      expect(template.name, equals('Project Template'));
      expect(template.isDefault, isTrue);
    });

    test('should default is_default to false when absent', () {
      final template = Template.fromJson({
        'id': 'template_456',
        'name': 'Simple Template',
      });

      expect(template.isDefault, isFalse);
      expect(template.name, equals('Simple Template'));
    });

    test('should serialize back to snake_case', () {
      const template = Template(
        id: 'template_789',
        name: 'New Template',
        isDefault: true,
      );

      expect(template.toJson(), {
        'id': 'template_789',
        'name': 'New Template',
        'is_default': true,
      });
    });

    test('should create template with factory constructor', () {
      const template = Template(id: 'template_new', name: 'New Template');

      expect(template.id, equals('template_new'));
      expect(template.name, equals('New Template'));
      expect(template.isDefault, isFalse);
    });
  });
}
