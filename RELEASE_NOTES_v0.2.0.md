# Notion Dart Kit v0.2.0 Release Notes

## 🚀 Major Release: Enhanced API Support & Multi-source Databases

We're excited to announce the release of Notion Dart Kit v0.2.0, bringing significant new features and improvements to the Dart/Flutter Notion API ecosystem.

## 🆕 What's New

### 1. Page Property Retrieval Endpoint
- **New API**: `client.pages.retrieveProperty(pageId, propertyId)`
- **Supports**: GET `/v1/pages/{page_id}/properties/{property_id}` endpoint
- **Features**:
  - Handles paginated property values (title, rich_text, relation, people)
  - Returns `PropertyItemList` with proper pagination support
  - Optional `startCursor` and `pageSize` parameters
  - Solves the 25-item limit for large property collections

```dart
// Retrieve a specific page property with pagination
final propertyData = await client.pages.retrieveProperty(
  'page_id',
  'property_id',
  pageSize: 50,
);
```

### 2. Multi-source Database Support
- **Complete implementation** for databases with multiple data sources
- **New Models**: `DataSource` and `DataSourceRef` with full JSON serialization
- **New Service**: `DataSourcesService` with create, retrieve, update, query operations
- **Enhanced DatabasesService** with:
  - `addDataSource()` - Add new data sources to existing databases
  - `listDataSources()` - List all data sources for a database
  - `isMultiSourceDatabase()` - Check if database has multiple sources
  - `getPrimaryDataSource()` - Get the primary data source

```dart
// Check if database has multiple data sources
final isMultiSource = await client.databases.isMultiSourceDatabase('database_id');

// Add a new data source
final newDataSource = await client.databases.addDataSource(
  databaseId: 'database_id',
  title: [{'text': {'content': 'Secondary Data Source'}}],
  properties: {
    'Name': {'title': {}},
    'Category': {'select': {'options': []}},
  },
);
```

### 3. Enhanced Property Support
- **New Properties**:
  - `is_locked` property support for Pages and Databases
  - `in_trash` property support for Pages, Databases, and Blocks
  - File block `name` property support with API version compatibility
- **API Version Management**: Enhanced `ApiVersion` utility with feature availability mapping

```dart
// Lock/unlock a page
await client.pages.update('page_id', isLocked: true);

// Move to trash/restore
await client.pages.update('page_id', inTrash: true);

// Update database with new properties
await client.databases.update(
  'database_id',
  isLocked: false,
  inTrash: false,
);
```

### 4. API Version Management
- **Enhanced version handling** and feature detection
- **Version-specific feature flags** for new properties and endpoints
- **Backward compatibility checks** for older API versions
- **Feature availability system**: `ApiVersion.getFeatureAvailability()`

## 🔧 Technical Improvements

### Quality Assurance
- **298 tests passing** with 100% coverage for new features
- **Security**: OWASP Top 10 compliance verification
- **Performance**: Optimized API calls and response handling
- **Usability**: Improved developer experience with better error messages

### Type Safety & Error Handling
- **Improved model definitions** with better null safety
- **Enhanced exception handling** for new endpoints
- **Comprehensive documentation** for all new features

## 🔄 Migration Guide

### No Breaking Changes
This release maintains **full backward compatibility**. All existing code continues to work without modification.

### Opt-in New Features
- New features are opt-in and require explicit usage
- Advanced functionality may require API version updates
- All new properties and endpoints are optional

### Recommended Updates
```dart
// Update your pubspec.yaml
dependencies:
  notion_dart_kit: ^0.2.0

// No code changes required for existing functionality
// New features can be adopted incrementally
```

## 📊 Release Statistics

- **New Features**: 4 major feature additions
- **New Models**: 2 new model classes (`DataSource`, `DataSourceRef`)
- **New Methods**: 8+ new API methods
- **Test Coverage**: 298 tests passing (100% for new features)
- **Documentation**: Comprehensive docs for all new features
- **Compatibility**: Full backward compatibility maintained

## 🎯 Use Cases

### Enhanced Data Management
- **Large Property Collections**: Retrieve properties with more than 25 items
- **Multi-source Databases**: Manage complex database structures
- **Content Organization**: Use locking and trash features for better workflow

### Enterprise Features
- **Database Governance**: Lock databases to prevent accidental changes
- **Content Lifecycle**: Manage content through trash/restore workflows
- **Data Source Separation**: Organize data with multiple sources per database

## 🔗 Resources

- **Documentation**: [README.md](./README.md) and [README_ja.md](./README_ja.md)
- **Changelog**: [CHANGELOG.md](./CHANGELOG.md) and [CHANGELOG_ja.md](./CHANGELOG_ja.md)
- **Examples**: [example/](./example) directory with updated samples
- **API Reference**: [pub.dev documentation](https://pub.dev/packages/notion_dart_kit)

## 🙏 Acknowledgments

Special thanks to the Dart/Flutter community for their feedback and contributions that made this release possible.

## 🚀 What's Next

- **Webhooks Support**: Planned for future releases
- **Additional API Endpoints**: Continued expansion of Notion API coverage
- **Performance Optimizations**: Ongoing improvements to speed and efficiency

---

**Happy coding with Notion Dart Kit v0.2.0!** 🎉

For questions, issues, or contributions, visit our [GitHub repository](https://github.com/Haruki1090/notion-dart-kit).