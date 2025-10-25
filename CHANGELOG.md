## Unreleased

# Changelog

## [0.2.2] - 2025-01-25

### Added
- **Template API Support**: Complete implementation of Notion's Template API
  - New `Template` model with full JSON serialization support
  - `TemplatesService` with `listTemplates` and `retrieveTemplate` methods
  - Pagination support for template listings with `startCursor` and `pageSize`
  - Integration with `NotionClient` via `client.templates`
  - Template-based page creation via optional `templateId` parameter in `PagesService.create`
- **Enhanced Error Handling**: Template-specific exception classes
  - `TemplateNotFoundException` for missing templates
  - `InvalidTemplateException` for invalid template operations
  - Proper error propagation and handling throughout the template workflow
- **Comprehensive Test Suite**: Full test coverage for template functionality
  - Unit tests for `Template` model serialization/deserialization
  - Service tests for `TemplatesService` with mocked HTTP client
  - Integration tests for template-based page creation
  - Error handling tests for template-specific exceptions
- **Documentation & Examples**: Complete documentation for Template API
  - Updated README with Template API section and usage examples
  - New `templates_example.dart` with comprehensive template workflow examples
  - Error handling examples and pagination demonstrations
  - Integration examples showing template-to-page creation workflow

### Enhanced
- **Backward Compatibility**: All existing functionality remains unchanged
- **Type Safety**: Strong typing throughout the Template API implementation
- **Performance**: Efficient pagination and caching for template operations

## [0.2.1] - 2025-01-XX

### Added
- **Template API Support**: Complete implementation of Notion's Template API
  - New `Template` model with full JSON serialization support
  - `TemplatesService` with `listTemplates` and `retrieveTemplate` methods
  - Pagination support for template listings with `startCursor` and `pageSize`
  - Integration with `NotionClient` via `client.templates`
  - Template-based page creation via optional `templateId` parameter in `PagesService.create`
- **Enhanced Error Handling**: Template-specific exception classes
  - `TemplateNotFoundException` for missing templates
  - `InvalidTemplateException` for invalid template operations
  - Proper error propagation and handling throughout the template workflow
- **Comprehensive Test Suite**: Full test coverage for template functionality
  - Unit tests for `Template` model serialization/deserialization
  - Service tests for `TemplatesService` with mocked HTTP client
  - Integration tests for template-based page creation
  - Error handling tests for template-specific exceptions
- **Documentation & Examples**: Complete documentation for Template API
  - Updated README with Template API section and usage examples
  - New `templates_example.dart` with comprehensive template workflow examples
  - Error handling examples and pagination demonstrations
  - Integration examples showing template-to-page creation workflow

### Enhanced
- **Backward Compatibility**: All existing functionality remains unchanged
  - `PagesService.create` maintains existing signature with optional `templateId`
  - No breaking changes to existing APIs or models
  - Template functionality is additive and opt-in
- **Type Safety**: Full type safety for template operations
  - Strongly typed `Template` model with Freezed annotations
  - Type-safe template service methods with proper return types
  - Null safety compliance throughout template implementation
- **API Coverage**: Extended API coverage to include Template endpoints
  - GET `/data_sources/{data_source_id}/templates` - List templates
  - GET `/data_sources/{data_source_id}/templates/{template_id}` - Retrieve template
  - POST `/pages` with `template_id` parameter - Create page from template

### Technical Improvements
- **Service Architecture**: Consistent service pattern following existing codebase
  - Template service follows same patterns as other services
  - Proper HTTP client integration and error handling
  - Consistent method signatures and return types
- **Export Management**: Proper module exports for template functionality
  - Template model exported in main library
  - TemplatesService exported for direct usage
  - Template exceptions available for error handling
- **Code Quality**: High-quality implementation with comprehensive testing
  - 100% test coverage for new template functionality
  - Consistent code style and documentation
  - Proper error handling and edge case coverage

### Breaking Changes
- None - This release maintains full backward compatibility

### Migration Guide
- No migration required - all existing code continues to work
- Template functionality is available immediately via `client.templates`
- Existing page creation continues to work; `templateId` parameter is optional

## [0.2.0] - 2025-10-25

### Added
- **Page Property Retrieval Endpoint**: New `retrieveProperty` method in `PagesService`
  - Supports GET `/v1/pages/{page_id}/properties/{property_id}` endpoint
  - Handles paginated property values (title, rich_text, relation, people)
  - Returns `PropertyItemList` with proper pagination support
  - Includes optional `startCursor` and `pageSize` parameters
- **Multi-source Database Support**: Complete implementation for databases with multiple data sources
  - New `DataSource` and `DataSourceRef` models with full JSON serialization
  - `DataSourcesService` with create, retrieve, update, query operations
  - `DatabasesService` enhanced with `addDataSource`, `listDataSources`, `isMultiSourceDatabase`, `getPrimaryDataSource`
  - API version compatibility checks for multi-source features
  - Comprehensive test coverage for multi-source scenarios
- **Enhanced Property Support**: New properties for improved data management
  - `is_locked` property support for Pages and Databases
  - `in_trash` property support for Pages, Databases, and Blocks
  - File block `name` property support with API version compatibility
  - API version feature availability system (`ApiVersion.getFeatureAvailability`)
- **API Version Management**: Improved version handling and feature detection
  - Enhanced `ApiVersion` utility with feature availability mapping
  - Version-specific feature flags for new properties and endpoints
  - Backward compatibility checks for older API versions

### Enhanced
- **Type Safety**: Improved model definitions with better null safety
- **Error Handling**: Enhanced exception handling for new endpoints
- **Documentation**: Comprehensive documentation for all new features
- **Testing**: 298 tests passing with 100% coverage for new features

### Technical Improvements
- **Security**: OWASP Top 10 compliance verification
- **Performance**: Optimized API calls and response handling
- **Usability**: Improved developer experience with better error messages
- **Accessibility**: Enhanced documentation with multilingual support

### Breaking Changes
- None - This release maintains full backward compatibility

### Migration Guide
- No migration required - all existing code continues to work
- New features are opt-in and require explicit API version updates for advanced functionality

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.2] - 2025-10-16

### Fixed
- Documentation updates in README files
  - Updated installation version from ^0.1.0 to ^0.1.1
  - Marked Comments API as implemented in Planned Features section
  - Added Data Sources and Comments to Full API Coverage list in Features section
  - Removed '(New)' label from Retry Queue feature

# Changelog (Archive)

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.1] - 2025-10-16

### Added
- **Web Platform Support**: Full support for web platforms with conditional imports
  - Web-compatible logger implementation (`notion_logger_web.dart`)
  - Conditional imports for platform-specific logger packages
  - Web platform tests (`notion_logger_web_test.dart`, `web_platform_test.dart`)
  - Updated `pubspec.yaml` to include web platform support
- Database integration test covering 21 property types (test/database_test.dart)
- File Upload API support:
  - `FileUploadsService` with `create`, `sendBytes`, `sendFile`, `complete`, `retrieve`, `list`
  - `FileUpload` model and `FileUploadStatus` enum
  - Public exports and `NotionClient.fileUploads`
  - Example `example/file_uploads_example.dart`
- Recursive Block Loader utility:
  - `recursivelyLoadBlocks` with depth limit, caching, and parallel fetching
  - `BlockChildrenCache` for reusing child block results across calls
  - Public export `src/utils/recursive_block_loader.dart`

### Fixed
- Static analysis errors in `notion_logger_web.dart`
  - Converted `Level` class to enhanced enum
  - Added library directive for dangling doc comments
  - Fixed constructor ordering
  - Removed unused `_NoLogFilter` class
- Code formatting issues across 87 files
- CI/CD formatting check to exclude `example/flutter_todo_app/` directory

# Changelog (Archive)

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.0] - 2025-10-15

### Added

#### Core Features
- **NotionClient**: Main client for interacting with the Notion API
- **Type-safe models**: Strongly typed models using Freezed for immutable data classes
- **Auto-retry logic**: Built-in exponential backoff with jitter for rate limit handling
- **Rate Limiting**: Token bucket algorithm with 3 requests/second default
- **Result Type Pattern**: Functional error handling with `Result<T, E>`
- **Comprehensive Logging**: Debug logging with sanitized output (NotionLogger)
- **Custom exceptions**: Specific exception classes for different API error types

#### API Services
- **UsersService**: User operations (me, retrieve, list)
- **PagesService**: Page operations (create, retrieve, update, archive, restore)
- **DatabasesService**: Database operations (create, retrieve, update, query, archive, restore)
- **BlocksService**: Block operations (retrieve, retrieveChildren, appendChildren, update, delete)
- **SearchService**: Search across pages and databases with filters

#### Query DSL
- **Filter**: Type-safe filter construction for database queries
  - Support for all property types (text, number, select, multi-select, date, people, files, etc.)
  - Logical operators: AND, OR
  - Nested filter combinations
- **Sort**: Type-safe sorting for database queries
  - Property sorting (ascending/descending)
  - Timestamp sorting (created_time, last_edited_time)

#### Models
- **User**: Person and Bot user types with union type support
- **Page**: Page object with properties and metadata
- **Database**: Database object with schema and properties
- **Block**: 31+ block types (paragraph, headings, lists, to-do, code, callout, etc.)
- **RichText**: Rich text formatting with annotations, mentions, and equations
- **File**: File and icon support (external and internal)
- **Parent**: Parent object (page, database, workspace, block, data source)
- **PropertyValue**: 21 property types (title, rich_text, number, select, multi_select, date, people, checkbox, url, email, phone, files, relation, rollup, formula, status, etc.)
- **PropertySchema**: 21 property schema types for database structure
- **Pagination**: Paginated list support with cursors

#### HTTP Client Features
- Automatic retry on 429 (rate limit) errors
- Exponential backoff with jitter
- Configurable timeouts (30s default)
- Configurable retry attempts (3 by default)
- Notion API version header (2022-06-28)
- Bearer token authentication

#### Documentation & Examples
- Comprehensive README (English)
- Japanese README (日本語)
- **Example Files**:
  - `basic_usage.dart` - Getting started with all APIs
  - `query_dsl_example.dart` - Advanced filtering and sorting examples
  - `properties_and_blocks_example.dart` - Working with properties and blocks
  - `pagination_example.dart` - Handling large datasets with pagination
- Troubleshooting guide
- Contributing guidelines (English & Japanese)
- API reference documentation
- MIT License

#### Testing
- **113+ comprehensive tests** covering all core functionality
- Unit tests for models, services, and utilities
- Integration test structure
- 80%+ test coverage

### Dependencies
- `dio: ^5.4.0` - HTTP client
- `json_annotation: ^4.8.1` - JSON serialization annotations
- `freezed_annotation: ^2.4.1` - Immutable class annotations
- `meta: ^1.10.0` - Metadata annotations
- `logger: ^2.0.2` - Logging

### Dev Dependencies
- `build_runner: ^2.4.6` - Code generation
- `freezed: ^2.4.5` - Freezed code generator
- `json_serializable: ^6.7.1` - JSON serialization generator
- `test: ^1.24.0` - Testing framework
- `mockito: ^5.4.2` - Mock generation
- `lints: ^3.0.0` - Dart linter

### Known Limitations
- Comments API not yet implemented
- File Upload API not yet implemented
- Webhooks Support not yet implemented
- Page Property Items API not yet implemented

## [Unreleased]

### Added
- Retry Queue: background re-enqueue and retry for transient failures (429/5xx/network)
- Exposed `RetryQueue` via `NotionClient.retryQueue` and public export
- Automatic enqueue on retryable failures in `NotionHttpClient`

### Planned Features
- Comments API support
- File Upload API support
- Webhooks support
- Page Property Items API
- Enhanced error messages with detailed context
- Caching layer for frequently accessed data
- Offline support with local data persistence
- More comprehensive integration tests
- Performance optimizations for large datasets

---

[0.1.0]: https://github.com/Haruki1090/notion-dart-kit/releases/tag/v0.1.0
