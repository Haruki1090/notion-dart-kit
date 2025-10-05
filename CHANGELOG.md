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
- **Custom exceptions**: Specific exception classes for different API error types

#### API Services
- **UsersService**: User operations (me, retrieve, list)
- **PagesService**: Page operations (create, retrieve, update, archive, restore)
- **DatabasesService**: Database operations (create, retrieve, update, query, archive, restore)
- **BlocksService**: Block operations (retrieve, retrieveChildren, appendChildren, update, delete)
- **SearchService**: Search across pages and databases with filters

#### Models
- **User**: Person and Bot user types with union type support
- **Page**: Page object with properties and metadata
- **Database**: Database object with schema and properties
- **Block**: Block object with various block types
- **RichText**: Rich text formatting support
- **File**: File and icon support
- **Parent**: Parent object (page, database, workspace)
- **PropertyValue**: Database property values
- **Pagination**: Paginated list support with cursors

#### HTTP Client Features
- Automatic retry on 429 (rate limit) errors
- Exponential backoff with jitter
- Configurable timeouts (30s default)
- Configurable retry attempts (3 by default)
- Notion API version header (2022-06-28)
- Bearer token authentication

#### Documentation
- Comprehensive README (English)
- Japanese README (日本語)
- Basic usage example
- API reference documentation
- MIT License

### Dependencies
- `dio: ^5.4.0` - HTTP client
- `json_annotation: ^4.8.1` - JSON serialization annotations
- `freezed_annotation: ^2.4.1` - Immutable class annotations
- `meta: ^1.10.0` - Metadata annotations

### Dev Dependencies
- `build_runner: ^2.4.6` - Code generation
- `freezed: ^2.4.5` - Freezed code generator
- `json_serializable: ^6.7.1` - JSON serialization generator
- `test: ^1.24.0` - Testing framework
- `mockito: ^5.4.2` - Mock generation
- `lints: ^3.0.0` - Dart linter

### Known Limitations
- Query Builder (DSL for filters/sorts) not yet implemented
- Comments API not yet implemented
- Data Sources API not yet implemented
- File Upload API not yet implemented
- Webhooks Support not yet implemented
- Page Property Items API not yet implemented

## [Unreleased]

### Planned Features
- Query Builder with fluent API for filters and sorts
- Comments API support
- Data Sources API support
- File Upload API support
- Webhooks support
- Page Property Items API
- Enhanced error messages
- Request/response logging options
- Caching layer
- Offline support

---

[0.1.0]: https://github.com/Haruki1090/notion-dart-kit/releases/tag/v0.1.0
