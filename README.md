# notion-dart-kit

[![pub package](https://img.shields.io/pub/v/notion_dart_kit.svg)](https://pub.dev/packages/notion_dart_kit)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![CI](https://github.com/Haruki1090/notion-dart-kit/actions/workflows/ci.yml/badge.svg)](https://github.com/Haruki1090/notion-dart-kit/actions)

A comprehensive, type-safe Dart toolkit for the Notion API. Full endpoint coverage, built-in rate limiting, retry logic, and intuitive API for Dart & Flutter applications.

[日本語版 README はこちら](./README_ja.md)

## ✨ Features

- **🎯 Type-Safe**: Strongly typed models using Freezed for immutable data classes
- **🔄 Auto-Retry**: Built-in exponential backoff with jitter for rate limit handling
- **⚡ Rate Limiting**: Automatic 429 error handling with configurable retry logic
- **📦 Full API Coverage**: Support for Pages, Databases, Blocks, Users, and Search
- **🛡️ Error Handling**: Custom exception classes for different API error types
- **📱 Flutter Ready**: Works seamlessly with Flutter applications
- **🎨 Clean API**: Intuitive, service-based architecture for easy integration
- **🔧 Configurable**: Customizable HTTP client with timeout and retry settings

## 📦 Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  notion_dart_kit: ^0.1.0
```

Then run:

```bash
dart pub get
```

Or for Flutter:

```bash
flutter pub get
```

## 🚀 Quick Start

### 1. Get Your Integration Token

Create an integration and get your token from [Notion Integrations](https://www.notion.so/my-integrations).

### 2. Initialize the Client

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

void main() async {
  // Initialize the client with your integration token
  final client = NotionClient(
    token: 'YOUR_INTEGRATION_TOKEN',
  );

  // Get bot user information
  final botUser = await client.users.me();
  print('Bot User: ${botUser.name}');

  // Don't forget to close the client when done
  client.close();
}
```

## 🧭 Architecture Overview

> _A high-level tour of the moving parts that power `notion_dart_kit`._

- **Composable Client** – `NotionClient` wires together dedicated services for pages, databases, data sources, blocks, search, and users so that each domain stays focused and type-safe.
- **Thin HTTP Core** – `NotionHttpClient` wraps `dio` with shared configuration, Notion API headers, logging, and automatic error translation into rich domain exceptions.
- **Resilient Requests** – A purpose-built `RateLimiter` throttles bursts, honours `Retry-After`, and retries with exponential backoff to protect your integration from 429s.
- **Expressive Models** – Freezed-generated models keep responses immutable and exhaustively typed, making it straightforward to work with blocks, pages, databases, data sources, files, and rich text primitives.

### Service Surface at a Glance

| Domain | Key Methods | Notes |
| --- | --- | --- |
| Pages | `create`, `retrieve`, `update`, `archive`, `restore` | Mirrors the Pages REST endpoints with optional icons, covers, and selective property retrieval. |
| Databases | `create`, `retrieve`, `update`, `query`, `archive`, `restore` | Handles inline/locked flags, initial data source provisioning, and filtered queries with server-side sorting. |
| Data Sources | `create`, `retrieve`, `update`, `query` | Encapsulates the v3 Data Sources API including schema and property filtering per request. |
| Blocks | `retrieve`, `retrieveChildren`, `appendChildren`, `update`, `delete` | Supports pagination helpers for child traversal and safe mutation of block content. |
| Search | `search` | Combines page and database hits with ergonomic discriminated unions. |
| Users | `me`, `retrieve`, `list` | Provides pagination-ready user listings and bot metadata access. |

## 🛡️ Resilience & Error Handling

- **Smart Exceptions** – HTTP failures are mapped into `AuthenticationException`, `NotFoundException`, `RateLimitException`, and friends so you can handle them precisely in your app logic.
- **Backoff Without Boilerplate** – All service calls automatically flow through the shared rate limiter, so you get jittered retries and token-bucket throttling for free.
- **Explicit Closure** – Calling `client.close()` disposes of underlying network resources when you are done, keeping long-lived CLI tools and servers tidy.

## 🧪 Explore via Examples

The [`example/`](./example) directory doubles as living documentation. Start with [`basic_usage.dart`](./example/basic_usage.dart) to see service orchestration, pagination loops, and typed pattern matching end-to-end.

## 📚 Usage Examples

For complete, runnable examples, see the [example](./example) directory:
- [basic_usage.dart](./example/basic_usage.dart) - Getting started with all APIs
- [query_dsl_example.dart](./example/query_dsl_example.dart) - Advanced filtering and sorting
- [properties_and_blocks_example.dart](./example/properties_and_blocks_example.dart) - Working with properties and blocks
- [pagination_example.dart](./example/pagination_example.dart) - Handling large datasets

### Working with Pages

```dart
// Create a new page
final page = await client.pages.create(
  parent: Parent.database('database_id'),
  properties: {
    'Name': {
      'title': [
        {'text': {'content': 'New Page'}}
      ]
    }
  },
);

// Retrieve a page
final retrievedPage = await client.pages.retrieve('page_id');

// Update page properties
final updatedPage = await client.pages.update(
  'page_id',
  properties: {
    'Status': {
      'select': {'name': 'In Progress'}
    }
  },
);

// Archive a page
await client.pages.archive('page_id');

// Restore from trash
await client.pages.restore('page_id');
```

### Working with Databases

```dart
// Create a database
final database = await client.databases.create(
  parent: Parent.page('parent_page_id'),
  title: [
    RichText.text(content: 'My Database')
  ],
  properties: {
    'Name': {
      'title': {}
    },
    'Status': {
      'select': {
        'options': [
          {'name': 'To Do', 'color': 'red'},
          {'name': 'In Progress', 'color': 'yellow'},
          {'name': 'Done', 'color': 'green'},
        ]
      }
    }
  },
);

// Retrieve a database
final db = await client.databases.retrieve('database_id');

// Query a database
final results = await client.databases.query(
  'database_id',
  filter: {
    'property': 'Status',
    'select': {
      'equals': 'In Progress'
    }
  },
  sorts: [
    {
      'property': 'Name',
      'direction': 'ascending'
    }
  ],
  pageSize: 50,
);

// Iterate through results
for (final page in results.results) {
  print('Page: ${page.id}');
}

// Handle pagination
if (results.hasMore) {
  final nextPage = await client.databases.query(
    'database_id',
    startCursor: results.nextCursor,
  );
}

// Update database
await client.databases.update(
  'database_id',
  title: [RichText.text(content: 'Updated Database Name')],
  description: [RichText.text(content: 'New description')],
);
```

### Working with Blocks

```dart
// Retrieve a block
final block = await client.blocks.retrieve('block_id');

// Get block children
final children = await client.blocks.retrieveChildren('block_id');

// Append new blocks
await client.blocks.appendChildren('block_id', [
  {
    'object': 'block',
    'type': 'paragraph',
    'paragraph': {
      'rich_text': [
        {
          'type': 'text',
          'text': {'content': 'This is a new paragraph'}
        }
      ]
    }
  },
  {
    'object': 'block',
    'type': 'heading_2',
    'heading_2': {
      'rich_text': [
        {
          'type': 'text',
          'text': {'content': 'New Section'}
        }
      ]
    }
  }
]);

// Update a block
await client.blocks.update('block_id', {
  'paragraph': {
    'rich_text': [
      {
        'type': 'text',
        'text': {'content': 'Updated content'}
      }
    ]
  }
});

// Delete (archive) a block
await client.blocks.delete('block_id');
```

### Working with Users

```dart
// Get bot user (me)
final me = await client.users.me();
print('Bot: ${me.name}');

// Retrieve a specific user
final user = await client.users.retrieve('user_id');

// List all users
final users = await client.users.list(pageSize: 100);
for (final user in users.results) {
  print('User: ${user.name}');
}
```

### Search

```dart
// Search for pages and databases
final results = await client.search.search(
  query: 'project',
  filter: SearchFilter.page,
  sortDirection: 'descending',
  pageSize: 10,
);

// Process search results
for (final result in results.results) {
  result.when(
    page: (page) => print('Found page: ${page.id}'),
    database: (database) => print('Found database: ${database.id}'),
  );
}

// Search only databases
final databases = await client.search.search(
  filter: SearchFilter.dataSource,
);

// Get all pages/databases (no query)
final all = await client.search.search();
```

### Query DSL (Type-Safe Filters & Sorts)

The library includes a powerful Query DSL for building type-safe filters and sorts:

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

// Simple filters
final statusFilter = Filter.property('Status').select.equals('In Progress');
final priorityFilter = Filter.property('Priority').number.greaterThan(3);
final dateFilter = Filter.property('Due Date').date.thisWeek(const {});

// Compound filters with AND
final andFilter = Filter.and([
  Filter.property('Status').select.equals('In Progress'),
  Filter.property('Priority').number.greaterThan(3),
]);

// Compound filters with OR
final orFilter = Filter.or([
  Filter.property('Status').select.equals('Todo'),
  Filter.property('Status').select.equals('In Progress'),
]);

// Nested filters
final complexFilter = Filter.and([
  Filter.or([
    Filter.property('Status').select.equals('Todo'),
    Filter.property('Status').select.equals('In Progress'),
  ]),
  Filter.property('Priority').number.greaterThan(3),
]);

// Sorting
final sorts = [
  Sort.property('Priority').descending(),
  Sort.createdTime.ascending(),
];

// Use in query
final results = await client.databases.query(
  databaseId,
  filter: complexFilter.toJson(),
  sorts: sorts.map((s) => s.toJson()).toList(),
);
```

**Supported Filter Types:**
- Text: `contains`, `equals`, `startsWith`, `endsWith`, `isEmpty`, `isNotEmpty`
- Number: `equals`, `greaterThan`, `lessThan`, `greaterThanOrEqualTo`, `lessThanOrEqualTo`
- Checkbox: `equals`, `doesNotEqual`
- Select: `equals`, `doesNotEqual`, `isEmpty`, `isNotEmpty`
- Multi-select: `contains`, `doesNotContain`, `isEmpty`, `isNotEmpty`
- Date: `after`, `before`, `equals`, `onOrAfter`, `onOrBefore`, `pastWeek`, `pastMonth`, `thisWeek`, `nextWeek`, etc.
- People: `contains`, `doesNotContain`, `isEmpty`, `isNotEmpty`
- Files: `isEmpty`, `isNotEmpty`
- And many more...

See [query_dsl_example.dart](./example/query_dsl_example.dart) for comprehensive examples.

### Working with Properties

```dart
// Create a page with various property types
final properties = {
  'Title': PropertyValue.title([
    RichText.text(
      text: 'My Page',
      annotations: const Annotations(bold: true, color: 'blue'),
    ),
  ]).toJson(),

  'Status': PropertyValue.select('In Progress').toJson(),
  'Priority': PropertyValue.number(5).toJson(),
  'Tags': PropertyValue.multiSelect(['urgent', 'planning']).toJson(),
  'Due Date': PropertyValue.date(
    start: DateTime.now().add(const Duration(days: 7)),
  ).toJson(),
  'Completed': PropertyValue.checkbox(false).toJson(),
  'Assignees': PropertyValue.people(['user_id']).toJson(),
  'URL': PropertyValue.url('https://example.com').toJson(),
};

final page = await client.pages.create(
  parent: Parent.database(databaseId).toJson(),
  properties: properties,
);
```

**Supported Property Types:** Title, Rich Text, Number, Select, Multi-select, Date, People, Checkbox, URL, Email, Phone, Files, Relation, Rollup, Formula, Status, Created Time, Created By, Last Edited Time, Last Edited By, and Unique ID.

See [properties_and_blocks_example.dart](./example/properties_and_blocks_example.dart) for more examples.

### Pagination

Handle large datasets efficiently with built-in pagination support:

```dart
// Fetch all pages from a database
final allPages = <Page>[];
String? cursor;

do {
  final response = await client.databases.query(
    databaseId,
    startCursor: cursor,
    pageSize: 100,
  );

  allPages.addAll(response.results);
  cursor = response.nextCursor;

  print('Fetched ${allPages.length} pages so far...');
} while (cursor != null);

print('Total pages: ${allPages.length}');
```

See [pagination_example.dart](./example/pagination_example.dart) for advanced pagination patterns.

## 🔧 Advanced Configuration

### Custom HTTP Client Configuration

```dart
final client = NotionClient(
  token: 'YOUR_INTEGRATION_TOKEN',
);

// The HTTP client supports:
// - Automatic retry on 429 (rate limit) errors
// - Exponential backoff with jitter
// - Configurable timeouts (30s default)
// - Custom retry attempts (3 by default)
```

### Error Handling

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

try {
  final page = await client.pages.retrieve('invalid_id');
} on NotFoundException catch (e) {
  print('Page not found: ${e.message}');
} on AuthenticationException catch (e) {
  print('Authentication failed: ${e.message}');
} on RateLimitException catch (e) {
  print('Rate limited: ${e.message}');
} on ValidationException catch (e) {
  print('Invalid request: ${e.message}');
} on NotionException catch (e) {
  print('Notion API error: ${e.message} (${e.statusCode})');
}
```

## 📖 API Reference

### Services

| Service | Description | Status |
|---------|-------------|--------|
| `client.users` | User operations (me, retrieve, list) | ✅ Implemented |
| `client.pages` | Page operations (create, retrieve, update, archive) | ✅ Implemented |
| `client.databases` | Database operations (create, retrieve, update, query) | ✅ Implemented |
| `client.dataSources` | Data Sources API (v3) | ✅ Implemented |
| `client.blocks` | Block operations (retrieve, update, append, delete) | ✅ Implemented |
| `client.search` | Search across pages and databases | ✅ Implemented |

### Core Features

| Feature | Status |
|---------|--------|
| Query DSL (Type-safe filters/sorts) | ✅ Implemented |
| Rate Limiting & Retry Logic | ✅ Implemented |
| Result Type Pattern | ✅ Implemented |
| Comprehensive Logging | ✅ Implemented |
| 21 Property Types | ✅ Implemented |
| 31+ Block Types | ✅ Implemented |

### Planned Features

| Feature | Status |
|---------|--------|
| Comments API | 🚧 Planned ([#6](https://github.com/Haruki1090/notion-dart-kit/issues/6)) |
| File Upload API | 🚧 Planned ([#7](https://github.com/Haruki1090/notion-dart-kit/issues/7)) |
| Webhooks Support | 🚧 Planned |
| Page Property Items API | 🚧 Planned |

> 🗂️ Progress for these roadmap items now lives in the public GitHub Issues queue so you can follow along or subscribe for updates.

## 🏗️ Architecture

```
notion-dart-kit/
├── lib/
│   ├── notion_dart_kit.dart          # Main export file
│   └── src/
│       ├── client/
│       │   ├── http_client.dart       # HTTP client with retry logic
│       │   ├── notion_client.dart     # Main API client
│       │   └── rate_limiter.dart      # Rate limiting implementation
│       ├── models/
│       │   ├── user.dart              # User models
│       │   ├── page.dart              # Page models
│       │   ├── database.dart          # Database models
│       │   ├── block.dart             # Block models (31+ types)
│       │   ├── rich_text.dart         # Rich text models
│       │   ├── file.dart              # File/icon models
│       │   ├── parent.dart            # Parent object models
│       │   ├── property_value.dart    # Property value models (21 types)
│       │   ├── property_schema.dart   # Property schema models
│       │   └── pagination.dart        # Pagination models
│       ├── services/
│       │   ├── users_service.dart     # User API endpoints
│       │   ├── pages_service.dart     # Page API endpoints
│       │   ├── databases_service.dart # Database API endpoints
│       │   ├── data_sources_service.dart # Data Sources API (v3)
│       │   ├── blocks_service.dart    # Block API endpoints
│       │   └── search_service.dart    # Search API endpoints
│       ├── query/
│       │   ├── filter.dart            # Query filter DSL
│       │   ├── filter_builder.dart    # Type-safe filter builders
│       │   └── sort.dart              # Sort DSL
│       └── utils/
│           ├── exceptions.dart        # Custom exception classes
│           ├── notion_logger.dart     # Logging utilities
│           └── result.dart            # Result type pattern
```

## 🧪 Testing

Run tests with:

```bash
dart test
```

Current test coverage: **118 tests passing** covering all core functionality.

Run integration tests (requires valid Notion token):

```bash
export NOTION_TOKEN=your_token_here
dart test test/integration/
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Run tests and ensure they pass (`dart test`)
4. Format code (`dart format .`)
5. Commit your changes (`git commit -m 'Add some amazing feature'`)
6. Push to the branch (`git push origin feature/amazing-feature`)
7. Open a Pull Request

Please see [CONTRIBUTING.md](./CONTRIBUTING.md) for detailed guidelines.

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🔗 Links

- [Notion API Documentation](https://developers.notion.com/)
- [Package on pub.dev](https://pub.dev/packages/notion_dart_kit)
- [API Reference (dartdoc)](https://pub.dev/documentation/notion_dart_kit/latest/)
- [Issue Tracker](https://github.com/Haruki1090/notion-dart-kit/issues)
- [Source Code](https://github.com/Haruki1090/notion-dart-kit)
- [Changelog](./CHANGELOG.md)

## 👤 Author

**Haruki Inoue**

- GitHub: [@Haruki1090](https://github.com/Haruki1090)

## 🙏 Acknowledgments

- Built with [Freezed](https://pub.dev/packages/freezed) for immutable models
- HTTP client powered by [Dio](https://pub.dev/packages/dio)
- Inspired by the official Notion JavaScript SDK

---

Made with ❤️ for the Dart and Flutter community
