## Unreleased

### Added
- Database integration test covering 21 property types (test/database_test.dart)
- File Upload API support:
  - `FileUploadsService` with `create`, `sendBytes`, `sendFile`, `complete`, `retrieve`, `list`
  - `FileUpload` model and `FileUploadStatus` enum
  - Public exports and `NotionClient.fileUploads`
  - Example `example/file_uploads_example.dart`

# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.0] - 2025-01-XX

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
