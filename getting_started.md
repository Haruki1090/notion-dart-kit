# Getting Started with notion-dart-kit

This guide will walk you through everything you need to start using **notion-dart-kit** in your Dart or Flutter projects.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Setup](#setup)
- [Basic Usage](#basic-usage)
- [Working with Pages](#working-with-pages)
- [Working with Databases](#working-with-databases)
- [Working with Blocks](#working-with-blocks)
- [Query DSL](#query-dsl)
- [Error Handling](#error-handling)
- [Best Practices](#best-practices)
- [Next Steps](#next-steps)

## Prerequisites

Before you begin, make sure you have:

1. **Dart SDK 3.0.0 or later** installed
2. **A Notion account** with admin access to a workspace
3. **A Notion integration** with an API token

### Creating a Notion Integration

1. Go to [https://www.notion.so/my-integrations](https://www.notion.so/my-integrations)
2. Click **"+ New integration"**
3. Give it a name (e.g., "My Dart App")
4. Select the workspace you want to use
5. Click **"Submit"**
6. Copy the **"Internal Integration Token"** (starts with `secret_`)

### Granting Access to Your Integration

Your integration needs explicit access to pages and databases:

1. Open the page or database you want to access
2. Click the **"..."** menu in the top right
3. Scroll down to **"Connections"**
4. Click **"Add connections"**
5. Select your integration from the list

**Important**: The integration can only access pages and databases you explicitly share with it.

## Installation

Add `notion-dart-kit` to your `pubspec.yaml`:

```yaml
dependencies:
  notion_dart_kit: ^0.1.0
```

Then run:

```bash
dart pub get
# or
flutter pub get
```

## Setup

### Creating a Client

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

void main() async {
  // Initialize the client with your integration token
  final client = NotionClient(
    token: 'secret_YOUR_INTEGRATION_TOKEN',
  );

  // Optional: Enable debug logging
  NotionLogger.instance.initialize(isDebugMode: true);

  try {
    // Your code here
  } finally {
    // Always close the client when done
    client.close();
  }
}
```

### Environment Variables (Recommended)

For security, store your token in environment variables:

**.env file:**
```
NOTION_API_KEY=secret_YOUR_INTEGRATION_TOKEN
```

**Code:**
```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:dotenv/dotenv.dart';

void main() async {
  final env = DotEnv()..load();

  final client = NotionClient(
    token: env['NOTION_API_KEY']!,
  );

  // Your code here
}
```

## Basic Usage

### Getting User Information

```dart
// Get information about the bot user (your integration)
final botUser = await client.users.me();
print('Bot User: ${botUser.name}');
print('Bot ID: ${botUser.id}');

// Check user type
botUser.when(
  person: (id, person, name, avatarUrl) {
    print('Type: Person');
    print('Email: ${person.email}');
  },
  bot: (id, bot, name, avatarUrl) {
    print('Type: Bot');
    print('Workspace: ${bot.workspaceName}');
  },
);
```

### Retrieving a User

```dart
final user = await client.users.retrieve('user_id');
print('User: ${user.name}');
```

### Listing All Users

```dart
final usersResponse = await client.users.list(pageSize: 50);
print('Found ${usersResponse.results.length} users');

for (final user in usersResponse.results) {
  print('- ${user.name} (${user.id})');
}
```

### Searching for Content

```dart
// Search all accessible pages and databases
final searchResults = await client.search.search(
  query: 'project',
  pageSize: 10,
);

print('Found ${searchResults.results.length} results');

for (final result in searchResults.results) {
  result.when(
    page: (page) => print('📄 Page: ${page.id}'),
    database: (database) => print('📊 Database: ${database.id}'),
  );
}
```

## Working with Pages

### Retrieving a Page

```dart
final page = await client.pages.retrieve('page_id');

print('Page ID: ${page.id}');
print('Created: ${page.createdTime}');
print('Last edited: ${page.lastEditedTime}');
print('Archived: ${page.archived}');
print('URL: ${page.url}');

// Access properties
final properties = page.properties;
print('Properties: ${properties.keys}');
```

### Creating a Page

#### Simple Page in Database

```dart
final newPage = await client.pages.create(
  parent: Parent.database(databaseId: 'database_id').toJson(),
  properties: {
    'Name': PropertyValue.title([
      RichText.text(text: 'My First Page'),
    ]).toJson(),
    'Status': PropertyValue.select('In Progress').toJson(),
    'Priority': PropertyValue.number(5).toJson(),
  },
);

print('Created page: ${newPage.id}');
```

#### Page as Child of Another Page

```dart
final childPage = await client.pages.create(
  parent: Parent.page(pageId: 'parent_page_id').toJson(),
  properties: {
    'title': PropertyValue.title([
      RichText.text(text: 'Child Page'),
    ]).toJson(),
  },
);
```

#### Page with Content Blocks

```dart
final pageWithContent = await client.pages.create(
  parent: Parent.database(databaseId: 'database_id').toJson(),
  properties: {
    'Name': PropertyValue.title([
      RichText.text(text: 'Page with Content'),
    ]).toJson(),
  },
  children: [
    {
      'object': 'block',
      'type': 'heading_1',
      'heading_1': {
        'rich_text': [
          {'type': 'text', 'text': {'content': 'Introduction'}}
        ],
      },
    },
    {
      'object': 'block',
      'type': 'paragraph',
      'paragraph': {
        'rich_text': [
          {'type': 'text', 'text': {'content': 'This is the first paragraph.'}}
        ],
      },
    },
  ],
);
```

### Updating a Page

```dart
// Update properties
await client.pages.update(
  'page_id',
  properties: {
    'Status': PropertyValue.select('Done').toJson(),
    'Completed': PropertyValue.checkbox(true).toJson(),
  },
);

// Update icon and cover
await client.pages.update(
  'page_id',
  icon: FileObject.emoji('🎉').toJson(),
  cover: FileObject.external(url: 'https://example.com/image.jpg').toJson(),
);
```

### Archiving and Restoring Pages

```dart
// Archive a page
await client.pages.archive('page_id');

// Restore an archived page
await client.pages.restore('page_id');
```

## Working with Databases

### Retrieving a Database

```dart
final database = await client.databases.retrieve('database_id');

print('Database ID: ${database.id}');
print('Title: ${database.title.first.plainText}');
print('Is inline: ${database.isInline}');

// View database schema
for (final entry in database.properties.entries) {
  print('Property: ${entry.key} (${entry.value.type})');
}
```

### Querying a Database

```dart
// Simple query
final results = await client.databases.query('database_id');

print('Found ${results.results.length} pages');

for (final page in results.results) {
  print('Page: ${page.id}');
}
```

### Query with Filter

```dart
final results = await client.databases.query(
  'database_id',
  filter: {
    'property': 'Status',
    'select': {'equals': 'In Progress'},
  },
);
```

### Query with Sorts

```dart
final results = await client.databases.query(
  'database_id',
  sorts: [
    {'property': 'Priority', 'direction': 'descending'},
    {'property': 'Created', 'direction': 'ascending'},
  ],
);
```

### Query with Pagination

```dart
final allPages = <Page>[];
String? cursor;

do {
  final response = await client.databases.query(
    'database_id',
    startCursor: cursor,
    pageSize: 100, // Maximum allowed
  );

  allPages.addAll(response.results);
  cursor = response.nextCursor;

  print('Fetched ${allPages.length} pages so far...');
} while (cursor != null);

print('Total: ${allPages.length} pages');
```

### Creating a Database

```dart
final newDatabase = await client.databases.create(
  parent: Parent.page(pageId: 'parent_page_id').toJson(),
  title: [
    RichText.text(text: 'My Tasks').toJson(),
  ],
  properties: {
    'Name': PropertySchema.title().toJson(),
    'Status': PropertySchema.select(
      options: [
        SelectOption(name: 'Todo'),
        SelectOption(name: 'In Progress'),
        SelectOption(name: 'Done'),
      ],
    ).toJson(),
    'Priority': PropertySchema.number().toJson(),
    'Due Date': PropertySchema.date().toJson(),
  },
);

print('Created database: ${newDatabase.id}');
```

### Updating a Database

```dart
// Update title
await client.databases.update(
  'database_id',
  title: [
    RichText.text(text: 'Updated Title').toJson(),
  ],
);

// Add a new property
await client.databases.update(
  'database_id',
  properties: {
    'Assignee': PropertySchema.people().toJson(),
  },
);
```

## Working with Blocks

### Retrieving a Block

```dart
final block = await client.blocks.retrieve('block_id');

block.when(
  paragraph: (id, createdTime, lastEditedTime, createdBy, lastEditedBy,
      hasChildren, archived, inTrash, paragraph) {
    print('Paragraph: ${paragraph.richText.first.plainText}');
  },
  heading1: (id, createdTime, lastEditedTime, createdBy, lastEditedBy,
      hasChildren, archived, inTrash, heading) {
    print('Heading 1: ${heading.richText.first.plainText}');
  },
  // ... handle other block types
  unsupported: (id, createdTime, lastEditedTime, createdBy, lastEditedBy,
      hasChildren, archived, inTrash, type) {
    print('Unsupported block type: $type');
  },
);
```

### Retrieving Child Blocks

```dart
final childrenResponse = await client.blocks.retrieveChildren('block_id');

print('Found ${childrenResponse.results.length} child blocks');

for (final block in childrenResponse.results) {
  block.when(
    paragraph: (_, _, _, _, _, _, _, _, paragraph) {
      print('- ${paragraph.richText.first.plainText}');
    },
    // ... handle other types
    unsupported: (_, _, _, _, _, _, _, _, type) {
      print('- [Unsupported: $type]');
    },
  );
}
```

### Appending Blocks

```dart
await client.blocks.appendChildren(
  'parent_block_id',
  [
    {
      'object': 'block',
      'type': 'heading_2',
      'heading_2': {
        'rich_text': [
          {'type': 'text', 'text': {'content': 'New Section'}}
        ],
      },
    },
    {
      'object': 'block',
      'type': 'paragraph',
      'paragraph': {
        'rich_text': [
          {'type': 'text', 'text': {'content': 'Some content here.'}}
        ],
      },
    },
    {
      'object': 'block',
      'type': 'to_do',
      'to_do': {
        'rich_text': [
          {'type': 'text', 'text': {'content': 'Complete this task'}}
        ],
        'checked': false,
      },
    },
  ],
);
```

### Updating a Block

```dart
await client.blocks.update(
  'block_id',
  {
    'paragraph': {
      'rich_text': [
        {'type': 'text', 'text': {'content': 'Updated paragraph content'}}
      ],
    },
  },
);
```

### Deleting a Block

```dart
await client.blocks.delete('block_id');
```

## Query DSL

The library provides a type-safe DSL for building complex filters and sorts.

### Filter Examples

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

// Text filter
final textFilter = Filter.property('Name').text.contains('Project');

// Number filter
final numberFilter = Filter.property('Priority').number.greaterThan(3);

// Date filter
final dateFilter = Filter.property('Due Date').date.thisWeek(const {});

// Checkbox filter
final checkboxFilter = Filter.property('Completed').checkbox.equals(false);

// Select filter
final selectFilter = Filter.property('Status').select.equals('In Progress');

// Multi-select filter
final multiSelectFilter = Filter.property('Tags').multiSelect.contains('urgent');
```

### Combining Filters

```dart
// AND condition
final andFilter = Filter.and([
  Filter.property('Status').select.equals('In Progress'),
  Filter.property('Priority').number.greaterThanOrEqualTo(3),
  Filter.property('Completed').checkbox.equals(false),
]);

// OR condition
final orFilter = Filter.or([
  Filter.property('Status').select.equals('Todo'),
  Filter.property('Status').select.equals('In Progress'),
]);

// Complex nested filters
final complexFilter = Filter.and([
  Filter.or([
    Filter.property('Priority').number.greaterThan(4),
    Filter.property('Tags').multiSelect.contains('urgent'),
  ]),
  Filter.property('Completed').checkbox.equals(false),
]);
```

### Using Filters in Queries

```dart
final filter = Filter.and([
  Filter.property('Status').select.equals('Active'),
  Filter.property('Priority').number.greaterThan(3),
]);

final results = await client.databases.query(
  'database_id',
  filter: filter.toJson(),
);
```

### Sort Examples

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

// Sort by property
final sortByPriority = Sort.property('Priority').descending();
final sortByName = Sort.property('Name').ascending();

// Sort by timestamp
final sortByCreated = Sort.createdTime.ascending();
final sortByEdited = Sort.lastEditedTime.descending();

// Multiple sorts
final results = await client.databases.query(
  'database_id',
  sorts: [
    Sort.property('Priority').descending(),
    Sort.property('Due Date').ascending(),
  ].map((s) => s.toJson()).toList(),
);
```

## Error Handling

The library provides specific exception types for different error scenarios.

### Exception Hierarchy

```dart
NotionException (base class)
├── AuthenticationException (401)
├── NotFoundException (404)
├── ValidationException (400)
├── RateLimitException (429)
└── (other HTTP errors)
```

### Handling Exceptions

```dart
try {
  final page = await client.pages.retrieve('page_id');
  print('Page retrieved: ${page.id}');
} on NotFoundException catch (e) {
  print('Page not found: ${e.message}');
  print('Status code: ${e.statusCode}');
} on AuthenticationException catch (e) {
  print('Authentication failed: ${e.message}');
  print('Check your integration token.');
} on ValidationException catch (e) {
  print('Invalid request: ${e.message}');
  print('Check your request parameters.');
} on RateLimitException catch (e) {
  print('Rate limited: ${e.message}');
  print('The library will automatically retry with backoff.');
} on NotionException catch (e) {
  print('Notion API error: ${e.message}');
  print('Status code: ${e.statusCode}');
} catch (e) {
  print('Unexpected error: $e');
}
```

### Result Type Pattern

For functional error handling, you can use the `Result` type:

```dart
Result<Page, NotionException> getPage(String pageId) async {
  try {
    final page = await client.pages.retrieve(pageId);
    return Result.success(page);
  } on NotionException catch (e) {
    return Result.failure(e);
  }
}

// Usage
final result = await getPage('page_id');

result.when(
  success: (page) {
    print('Success: ${page.id}');
  },
  failure: (error) {
    print('Error: ${error.message}');
  },
);

// Or use transformation methods
final pageTitle = result
    .mapValue((page) => page.properties)
    .flatMap((props) => extractTitle(props))
    .getOrElse('Untitled');
```

## Best Practices

### 1. Always Close the Client

```dart
void main() async {
  final client = NotionClient(token: 'your_token');

  try {
    // Your code here
  } finally {
    client.close(); // Always close to free resources
  }
}
```

### 2. Use Environment Variables for Tokens

Never hardcode your integration token in your source code:

```dart
// ❌ Bad
final client = NotionClient(token: 'secret_abc123...');

// ✅ Good
final client = NotionClient(token: Platform.environment['NOTION_API_KEY']!);
```

### 3. Handle Pagination for Large Datasets

```dart
// ❌ Bad - only gets first page
final results = await client.databases.query('database_id');

// ✅ Good - fetches all pages
final allPages = <Page>[];
String? cursor;

do {
  final response = await client.databases.query(
    'database_id',
    startCursor: cursor,
    pageSize: 100,
  );
  allPages.addAll(response.results);
  cursor = response.nextCursor;
} while (cursor != null);
```

### 4. Use Type-Safe Query DSL

```dart
// ❌ Harder to maintain
final filter = {
  'and': [
    {'property': 'Status', 'select': {'equals': 'Active'}},
    {'property': 'Priority', 'number': {'greater_than': 3}},
  ],
};

// ✅ Type-safe and refactor-friendly
final filter = Filter.and([
  Filter.property('Status').select.equals('Active'),
  Filter.property('Priority').number.greaterThan(3),
]);
```

### 5. Enable Debug Logging During Development

```dart
// Enable debug logging to see HTTP requests/responses
NotionLogger.instance.initialize(isDebugMode: true);
```

### 6. Respect Rate Limits

The library has built-in rate limiting (3 requests/second by default) and automatic retry with exponential backoff. However, for optimal performance:

- Batch operations when possible
- Use pagination efficiently
- Cache results when appropriate
- Filter on the server side, not client side

### 7. Handle Archived and Trashed Items

```dart
final page = await client.pages.retrieve('page_id');

if (page.archived) {
  print('This page is archived');
}

if (page.inTrash) {
  print('This page is in trash');
}

// Restore if needed
if (page.archived && !page.inTrash) {
  await client.pages.restore(page.id);
}
```

### 8. Use Pattern Matching for Union Types

```dart
// Blocks, Users, RichText, etc. use union types
block.when(
  paragraph: (_, _, _, _, _, _, _, _, paragraph) {
    // Handle paragraph
  },
  heading1: (_, _, _, _, _, _, _, _, heading) {
    // Handle heading 1
  },
  // ... other cases
  unsupported: (_, _, _, _, _, _, _, _, type) {
    // Handle unsupported types gracefully
  },
);
```

## Next Steps

Now that you've learned the basics, explore more advanced topics:

1. **[Example Files](./example/)** - See complete working examples
   - `basic_usage.dart` - Overview of all features
   - `query_dsl_example.dart` - Advanced filtering and sorting
   - `properties_and_blocks_example.dart` - Working with rich content
   - `pagination_example.dart` - Efficient data fetching

2. **[API Reference](./README.md#api-reference)** - Detailed API documentation

3. **[CLAUDE.md](./CLAUDE.md)** - Architecture and development guide

4. **[Official Notion API Docs](https://developers.notion.com/)** - Complete Notion API reference

5. **Advanced Features**
   - Data Sources API (database views)
   - Custom property types (relation, rollup, formula)
   - Rich text with mentions and equations
   - Nested blocks and hierarchical content
   - Error recovery and retry strategies

## Common Issues

### "Unauthorized" Error

- Check that your integration token is correct
- Ensure the integration has been added to the page/database (see [Granting Access](#granting-access-to-your-integration))

### "Object not found" Error

- Verify the page/database/block ID is correct
- Check that the integration has access to the resource
- Ensure the resource hasn't been deleted

### Rate Limit Errors

- The library automatically handles rate limits with retries
- If you're still hitting limits, reduce request frequency
- Consider caching results

### Properties Not Appearing

- Make sure you're using the exact property name (case-sensitive)
- Check that the property type matches your expectations
- Some properties are read-only (e.g., `created_time`, `last_edited_time`)

## Getting Help

- **GitHub Issues**: [https://github.com/Haruki1090/notion-dart-kit/issues](https://github.com/Haruki1090/notion-dart-kit/issues)
- **Notion API Docs**: [https://developers.notion.com/](https://developers.notion.com/)
- **Package Documentation**: [https://pub.dev/packages/notion_dart_kit](https://pub.dev/packages/notion_dart_kit)

---

**Happy coding!** 🚀
