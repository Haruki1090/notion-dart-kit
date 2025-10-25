# Notion Dart Kit v0.2.2 Release Notes

## 🎉 Template API - Complete Implementation

We're excited to announce the release of Notion Dart Kit v0.2.2, featuring the complete implementation of the **Template API**! This major addition enables developers to work with Notion templates programmatically, providing powerful new capabilities for template-based page creation.

## 🚀 What's New

### Template API Features

- **📋 Template Listing**: List all templates from data sources with pagination support
- **🔍 Template Retrieval**: Retrieve specific template details and metadata
- **📄 Template-based Page Creation**: Create pages using templates as a foundation
- **🛡️ Type Safety**: Full type safety with the new `Template` model
- **⚡ Performance**: Optimized API calls with proper pagination handling
- **🔧 Error Handling**: Comprehensive error handling with specific exception classes

### New Components

#### Template Model
```dart
class Template {
  final String id;
  final String title;
  final String? description;
  final DateTime createdTime;
  final DateTime lastEditedTime;
  final User createdBy;
  final User lastEditedBy;
  final String url;
  // ... additional properties
}
```

#### TemplatesService
```dart
// List templates from a data source
final templates = await client.templates.listTemplates('data_source_id');

// Retrieve a specific template
final template = await client.templates.retrieveTemplate('data_source_id', 'template_id');
```

#### Enhanced PagesService
```dart
// Create a page from a template
final page = await client.pages.create(
  parent: Parent.database('database_id'),
  properties: {...},
  templateId: 'template_id', // NEW: Template-based creation
);
```

### Error Handling
- `TemplateNotFoundException`: When a template cannot be found
- `InvalidTemplateException`: When template data is invalid
- `TemplateAccessException`: When access to template is denied

## 📚 Documentation & Examples

- **Updated README**: Comprehensive Template API documentation in both English and Japanese
- **Code Examples**: Complete examples in `example/templates_example.dart`
- **API Reference**: Full API documentation with type definitions
- **Migration Guide**: Seamless integration with existing code

## 🔄 Backward Compatibility

This release maintains **100% backward compatibility**. All existing code will continue to work without any changes. The Template API is an additive feature that enhances the existing functionality.

## 🧪 Testing

- **Comprehensive Test Suite**: 95%+ code coverage for Template API
- **Integration Tests**: Real-world scenario testing
- **Error Handling Tests**: Robust error condition testing
- **Performance Tests**: Pagination and large dataset handling

## 📦 Installation

Update your `pubspec.yaml`:

```yaml
dependencies:
  notion_dart_kit: ^0.2.2
```

Then run:
```bash
dart pub get
```

## 🔗 Quick Start

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

final client = NotionClient(token: 'your_token');

// List templates
final templates = await client.templates.listTemplates('data_source_id');

// Create page from template
final page = await client.pages.create(
  parent: Parent.database('database_id'),
  properties: {
    'Name': {'title': [{'text': {'content': 'My Page'}}]},
  },
  templateId: templates.results.first.id,
);
```

## 🙏 Acknowledgments

Thank you to the Notion developer community for your feedback and feature requests that made this release possible!

## 📞 Support

- **Documentation**: [README.md](README.md)
- **Examples**: [example/](example/)
- **Issues**: [GitHub Issues](https://github.com/haruki-inoue/notion-dart-kit/issues)

---

**Full Changelog**: [CHANGELOG.md](CHANGELOG.md)

**Previous Release**: [v0.2.1](https://github.com/haruki-inoue/notion-dart-kit/releases/tag/v0.2.1)