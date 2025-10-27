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
- **🧵 Retry Queue**: Automatically re-enqueues failed requests with priority scheduling and honors `Retry-After`
- **📦 Full API Coverage**: Support for Pages, Databases, Data Sources, Blocks, Users, Search, Comments, and File Uploads
- **🛡️ Error Handling**: Custom exception classes for different API error types
- **📱 Flutter Ready**: Works seamlessly with Flutter applications
- **🌐 Web Support**: Full support for web platforms with conditional imports
- **🎨 Clean API**: Intuitive, service-based architecture for easy integration
- **🔧 Configurable**: Customizable HTTP client with timeout and retry settings

## 📦 Installation

### Using Dart

```bash
dart pub add notion_dart_kit
```

### Using Flutter

```bash
flutter pub add notion_dart_kit
```

### Manual Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  notion_dart_kit: ^0.2.4
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
| Comments | `create`, `list`, `retrieve` | Create and fetch comments for pages/blocks; supports attachments and display name overrides. |
| File Uploads | `create`, `sendBytes`, `sendFile`, `complete`, `retrieve`, `list` | Supports single-part, multi-part, and external URL uploads. |
| Templates | `listTemplates`, `retrieveTemplate` | **NEW in v0.2.2**: List and retrieve templates from data sources; create pages from templates. |

## 🛡️ Resilience & Error Handling

- **Smart Exceptions** – HTTP failures are mapped into `AuthenticationException`, `NotFoundException`, `RateLimitException`, and friends so you can handle them precisely in your app logic.
- **Backoff Without Boilerplate** – All service calls automatically flow through the shared rate limiter, so you get jittered retries and token-bucket throttling for free.
- **Explicit Closure** – Calling `client.close()` disposes of underlying network resources when you are done, keeping long-lived CLI tools and servers tidy.

## 🧪 Explore via Examples

The [`example/`](./example) directory doubles as living documentation. Start with [`main.dart`](./example/main.dart) for a quick overview, or [`basic_usage.dart`](./example/basic_usage.dart) for comprehensive examples showing service orchestration, pagination loops, and typed pattern matching end-to-end.

### Quick Start Example

Run the main example to get started:

```bash
dart run example/main.dart
```

Make sure to replace `YOUR_INTEGRATION_TOKEN` with your actual Notion integration token.

## 📚 Usage Examples

For complete, runnable examples, see the [example](./example) directory:

- [main.dart](./example/main.dart) - Quick start example with core features
- [basic_usage.dart](./example/basic_usage.dart) - Getting started with all APIs
- [property_builder_example.dart](./example/property_builder_example.dart) - Creating properties with PropertyBuilder (NEW!)
- [rich_text_builder_example.dart](./example/rich_text_builder_example.dart) - Creating rich text with RichTextBuilder (NEW!)
- [block_builder_example.dart](./example/block_builder_example.dart) - Creating blocks with BlockBuilder (NEW!)
- [query_dsl_example.dart](./example/query_dsl_example.dart) - Advanced filtering and sorting
- [properties_and_blocks_example.dart](./example/properties_and_blocks_example.dart) - Working with properties and blocks
- [pagination_example.dart](./example/pagination_example.dart) - Handling large datasets

### 🔍 Comparison guide (with code)

We prepared a concise comparison between this library and a plain HTTP approach (Dio, etc.), including side-by-side code samples.

- English: [doc/comparison.md](./doc/comparison.md)
- 日本語: [doc/comparison_ja.md](./doc/comparison_ja.md)

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

// NEW in v0.2.0: Retrieve specific page property
final propertyData = await client.pages.retrieveProperty(
  'page_id',
  'property_id',
  pageSize: 50,
);

// NEW in v0.2.0: Lock/unlock a page
await client.pages.update(
  'page_id',
  isLocked: true, // Lock the page
);

// NEW in v0.2.0: Move to trash/restore
await client.pages.update(
  'page_id',
  inTrash: true, // Move to trash
);

// NEW in v0.2.2: Create page from template
final pageFromTemplate = await client.pages.create(
  parent: Parent.database('database_id'),
  properties: {
    'Name': {
      'title': [
        {'text': {'content': 'Page from Template'}}
      ]
    }
  },
  templateId: 'template_id', // Specify template to use
);
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
  isLocked: false, // NEW in v0.2.0: Unlock database
  inTrash: false,  // NEW in v0.2.0: Restore from trash
);

// NEW in v0.2.0: Multi-source Database Support
// Check if database has multiple data sources
final isMultiSource = await client.databases.isMultiSourceDatabase('database_id');

// Get primary data source
final primaryDataSource = await client.databases.getPrimaryDataSource('database_id');

// List all data sources
final dataSources = await client.databases.listDataSources(
  databaseId: 'database_id',
  pageSize: 25,
);

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

### Working with Blocks

Use the **BlockBuilder API** (NEW!) for creating blocks with a clean, fluent interface:

```dart
// Retrieve a block
final block = await client.blocks.retrieve('block_id');

// Get block children
final children = await client.blocks.retrieveChildren('block_id');

// Append new blocks with BlockBuilder (NEW!)
await client.blocks.appendChildren('block_id', [
  // Text blocks
  BlockBuilder.paragraph('This is a simple paragraph.').toJson(),
  BlockBuilder.heading1('Chapter 1').toJson(),
  BlockBuilder.heading2('Section 1.1').color('blue').toJson(),

  // Lists
  BlockBuilder.bulletedListItem('First item').toJson(),
  BlockBuilder.bulletedListItem('Second item').toJson(),
  BlockBuilder.numberedListItem('Step 1').toJson(),
  BlockBuilder.numberedListItem('Step 2').toJson(),

  // To-do items
  BlockBuilder.toDo('Task to complete').toJson(),
  BlockBuilder.toDo('Completed task').checked().toJson(),

  // Callout
  BlockBuilder.callout('Important note!')
    .icon('⚠️')
    .color('yellow_background')
    .toJson(),

  // Code block
  BlockBuilder.code(
    'print("Hello, World!")',
    language: 'python',
  ).caption('Python example').toJson(),

  // Layout
  BlockBuilder.divider().toJson(),
  BlockBuilder.quote('A wise quote').color('gray').toJson(),
]);

// Blocks with formatted text (combines BlockBuilder + RichTextBuilder)
await client.blocks.appendChildren('block_id', [
  BlockBuilder.paragraph()
    .addText('This text is ')
    .addRichText(RichTextBuilder.text('bold').bold().toJson())
    .addText(' and ')
    .addRichText(RichTextBuilder.text('colored').color('red').toJson())
    .toJson(),
]);

// Nested blocks with children
await client.blocks.appendChildren('block_id', [
  BlockBuilder.toggle('Click to expand')
    .children([
      BlockBuilder.paragraph('Hidden content').toJson(),
      BlockBuilder.bulletedListItem('Nested item 1').toJson(),
      BlockBuilder.bulletedListItem('Nested item 2').toJson(),
    ])
    .toJson(),
]);

// Update a block
await client.blocks.update('block_id', {
  'paragraph': {
    'rich_text': [
      RichTextBuilder.text('Updated content').toJson(),
    ]
  }
});

// Delete (archive) a block
await client.blocks.delete('block_id');
```

**BlockBuilder Benefits:**

- ✅ Dramatically reduced nesting
- ✅ Fluent API with method chaining
- ✅ Support for 31+ block types
- ✅ Type-safe block construction
- ✅ Integrates with RichTextBuilder for formatting
- ✅ Nested blocks with `.children()`

**Supported Block Types:** paragraph, heading1-3, quote, callout, bulletedListItem, numberedListItem, toDo, toggle, code, divider, tableOfContents, breadcrumb, image, video, file, pdf, bookmark, embed, equation, table, and more.

See [block_builder_example.dart](./example/block_builder_example.dart) for comprehensive examples.

#### Recursively load nested blocks

Fetch all descendant blocks under a page or block with depth limit, caching, and parallel fetching:

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

final client = NotionClient(token: 'YOUR_TOKEN');

// Load all descendants up to 10 levels deep
final allBlocks = await recursivelyLoadBlocks(
  client,
  'block_or_page_id',
  maxDepth: 10,       // 0 = direct children only, null = unlimited
  concurrency: 4,     // parallel fetches per level
);

// Reuse cache across calls (avoids repeated network requests)
final cache = BlockChildrenCache();
final first = await recursivelyLoadBlocks(client, 'root', cache: cache);
final second = await recursivelyLoadBlocks(client, 'root', cache: cache);
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

### Working with Templates (NEW in v0.2.2)

The Template API allows you to list templates from data sources and create pages using those templates:

```dart
// List all templates from a data source
final templates = await client.templates.listTemplates('data_source_id');

for (final template in templates.results) {
  print('Template: ${template.title}');
  print('Description: ${template.description}');
  print('Created: ${template.createdTime}');
  print('URL: ${template.url}');
}

// Handle pagination for large template lists
if (templates.hasMore) {
  final nextPage = await client.templates.listTemplates(
    'data_source_id',
    startCursor: templates.nextCursor,
    pageSize: 25,
  );
}

// Retrieve a specific template
final template = await client.templates.retrieveTemplate(
  'data_source_id',
  'template_id',
);

print('Template: ${template.title}');
print('Created by: ${template.createdBy.name}');
print('Last edited: ${template.lastEditedTime}');

// Create a page from a template
final pageFromTemplate = await client.pages.create(
  parent: Parent.database('database_id'),
  properties: {
    'Name': {
      'title': [
        {'text': {'content': 'New Page from Template'}}
      ]
    },
    'Status': {
      'select': {'name': 'Draft'}
    }
  },
  templateId: template.id, // Use the template
);

print('Created page: ${pageFromTemplate.id}');
```

**Template API Features:**

- ✅ List templates from data sources with pagination
- ✅ Retrieve specific template details
- ✅ Create pages using templates
- ✅ Full type safety with Template model
- ✅ Proper error handling for template operations
- ✅ Backward compatibility with existing page creation

**Error Handling:**

```dart
try {
  final template = await client.templates.retrieveTemplate(
    'data_source_id',
    'nonexistent_template',
  );
} on TemplateNotFoundException catch (e) {
  print('Template not found: ${e.message}');
} on InvalidTemplateException catch (e) {
  print('Invalid template: ${e.message}');
} on NotionException catch (e) {
  print('API error: ${e.message}');
}
```

### Comments

```dart
// Create a comment on a page
final comment = await client.comments.create(
  parent: Parent.page(pageId: 'page_id'),
  richText: [
    RichText.text(
      text: TextContent(content: 'This is a comment'),
      annotations: const Annotations(),
      plainText: 'This is a comment',
    ),
  ],
);

// List unresolved comments for a page or block
final comments = await client.comments.list(blockId: 'block_or_page_id');
for (final c in comments.results) {
  print('Comment: ${c.id}');
}

// Retrieve a comment by ID
final retrieved = await client.comments.retrieve(comment.id);
```

### File Uploads

```dart
// Single-part small file upload
final session = await client.fileUploads.create(
  mode: FileUploadMode.singlePart,
  filename: 'hello.txt',
  contentType: 'text/plain',
);

final uploaded = await client.fileUploads.sendBytes(
  session.id,
  'Hello Notion'.codeUnits,
  filename: 'hello.txt',
  contentType: 'text/plain',
);
print('Upload status: ${uploaded.status}');

// Multi-part (example)
// final multi = await client.fileUploads.create(
//   mode: FileUploadMode.multiPart,
//   filename: 'big.mov',
//   contentType: 'video/quicktime',
//   numberOfParts: 3,
// );
// await client.fileUploads.sendFile(multi.id, '/path/part1', partNumber: 1);
// await client.fileUploads.sendFile(multi.id, '/path/part2', partNumber: 2);
// await client.fileUploads.sendFile(multi.id, '/path/part3', partNumber: 3);
// final done = await client.fileUploads.complete(multi.id);
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

// Simple filters using string extension
final statusFilter = 'Status'.property.select().equals('In Progress');
final priorityFilter = 'Priority'.property.number().greaterThan(3);
final dateFilter = 'Due Date'.property.date().pastWeek();

// Compound filters with AND
final andFilter = Filter.and([
  'Status'.property.select().equals('In Progress'),
  'Priority'.property.number().greaterThan(3),
]);

// Compound filters with OR
final orFilter = Filter.or([
  'Status'.property.select().equals('Todo'),
  'Status'.property.select().equals('In Progress'),
]);

// Nested filters
final complexFilter = Filter.and([
  Filter.or([
    'Status'.property.select().equals('Todo'),
    'Status'.property.select().equals('In Progress'),
  ]),
  'Priority'.property.number().greaterThan(3),
]);

// Sorting using string extension or SortBuilder
final sorts = [
  'Priority'.descending(),
  SortBuilder.createdTimeAscending(),
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

Use the **PropertyBuilder API** for creating properties with a clean, fluent interface instead of deeply nested Maps.

```dart
// Create a page with PropertyBuilder (NEW!)
final properties = {
  // Title property with formatting
  'Title': PropertyBuilder.title('My Page')
    .bold()
    .color('blue')
    .toJson(),

  // Simple properties
  'Status': PropertyBuilder.select('In Progress'),
  'Priority': PropertyBuilder.number(5),
  'Completed': PropertyBuilder.checkbox(false),
  'URL': PropertyBuilder.url('https://example.com'),
  'Email': PropertyBuilder.email('team@example.com'),
  'Phone': PropertyBuilder.phone('+1-234-567-8900'),

  // Collections
  'Tags': PropertyBuilder.multiSelect(['urgent', 'planning']),
  'Assignees': PropertyBuilder.people(['user_id_1', 'user_id_2']),
  'Related': PropertyBuilder.relation(['page_id']),

  // Date properties
  'Due Date': PropertyBuilder.date(
    start: DateTime.now().add(const Duration(days: 7)),
    end: DateTime.now().add(const Duration(days: 14)),
  ).toJson(),

  // Rich text with formatting
  'Description': PropertyBuilder.richText('Important note')
    .italic()
    .color('red')
    .toJson(),
};

final page = await client.pages.create(
  parent: {'type': 'database_id', 'database_id': databaseId},
  properties: properties,
);

// Reading properties from retrieved pages
final retrievedPage = await client.pages.retrieve(page.id);
final titleProperty = retrievedPage.properties['Title'];
titleProperty?.when(
  title: (id, richText) {
    final title = richText.map((rt) => rt.plainText).join();
    print('Page title: $title');
  },
  orElse: () => print('No title found'),
);
```

**Supported Property Types:** Title, Rich Text, Number, Select, Multi-select, Date, People, Checkbox, URL, Email, Phone, Files, Relation, Rollup, Formula, Status, Created Time, Created By, Last Edited Time, Last Edited By, and Unique ID.

**PropertyBuilder Benefits:**

- ✅ Less nesting, more readable
- ✅ Fluent API with method chaining
- ✅ Type-safe property construction
- ✅ IDE autocomplete support
- ✅ Reduced chance of errors

See [property_builder_example.dart](./example/property_builder_example.dart) for comprehensive examples.

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
// - Background re-enqueue and retry on transient failures (RetryQueue)

// Access RetryQueue directly to monitor/stop if needed
final queue = client.retryQueue;
queue.start(); // explicit start not necessary (auto-started by NotionHttpClient)
// queue.stop(); // client.close() stops it automatically
```

### Retry Queue Behavior

- **Targets**: Transient failures (429/5xx) and network timeouts/connection errors
- **Priority**: `GET` low, `POST`/`PATCH`/`DELETE` normal by default
- **Backoff**: Exponential backoff; `Retry-After` header takes precedence when present
- **Concurrency**: Default `1` (safety-first)
- **Max Retries**: Default `5`

For advanced customization, wrap `NotionClient` construction and inject a configured `RetryQueue` into `NotionHttpClient`.

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
| `client.comments` | Comments operations (create, list, retrieve) | ✅ Implemented |
| `client.fileUploads` | File Uploads API (create/send/complete/list) | ✅ Implemented |

### Core Features

| Feature | Status |
|---------|--------|
| Query DSL (Type-safe filters/sorts) | ✅ Implemented |
| Rate Limiting & Retry Logic | ✅ Implemented |
| Result Type Pattern | ✅ Implemented |
| Comprehensive Logging | ✅ Implemented |
| 21 Property Types | ✅ Implemented |
| 31+ Block Types | ✅ Implemented |

### New Features in v0.2.0

| Feature | Status |
|---------|--------|
| Page Property Retrieval API | ✅ Implemented |
| Multi-source Database Support | ✅ Implemented |
| Enhanced Property Support (is_locked, in_trash) | ✅ Implemented |
| API Version Management | ✅ Implemented |

### Planned Features

| Feature | Status |
|---------|--------|
| Comments API | ✅ Implemented ([#6](https://github.com/Haruki1090/notion-dart-kit/issues/6)) |
| File Upload API | ✅ Implemented ([#7](https://github.com/Haruki1090/notion-dart-kit/issues/7)) |
| Webhooks Support | 🚧 Planned |

> 🗂️ Progress for these roadmap items now lives in the public GitHub Issues queue so you can follow along or subscribe for updates.

## 🏗️ Architecture

```text
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
│       │   ├── search_service.dart    # Search API endpoints
│       │   ├── comments_service.dart  # Comments API endpoints
│       │   └── file_uploads_service.dart # File Uploads API endpoints
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
export NOTION_PARENT_PAGE_ID=your_parent_page_id

# Run full suite or just the database integration test
dart test
dart test test/database_test.dart
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

Haruki Inoue

- GitHub: [@Haruki1090](https://github.com/Haruki1090)

## 🙏 Acknowledgments

- Built with [Freezed](https://pub.dev/packages/freezed) for immutable models
- HTTP client powered by [Dio](https://pub.dev/packages/dio)
- Inspired by the official Notion JavaScript SDK

---

## Made with ❤️ for the Dart and Flutter community
