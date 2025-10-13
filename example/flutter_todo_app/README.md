# Flutter Todo App with Notion

A Flutter sample application demonstrating how to use `notion_dart_kit` to build a task management app connected to Notion.

## Features

- ✅ View tasks from a Notion database
- ✅ Create new tasks
- ✅ Update task completion status
- ✅ Delete tasks
- ✅ View task details (description, due date)
- ✅ Pull-to-refresh to sync with Notion

## Prerequisites

Before running this app, you need:

1. **Notion Account** - [Sign up for free](https://www.notion.so/)
2. **Notion Integration** - Create an integration at [notion.so/my-integrations](https://www.notion.so/my-integrations)
3. **Notion Database** - Create a database with the following properties:
   - `Name` (Title)
   - `Status` (Checkbox)
   - `Description` (Text) - Optional
   - `Due Date` (Date) - Optional

## Setup Instructions

### 1. Share your database with the integration

1. Open your Notion database
2. Click the `...` menu in the top right
3. Click `Add connections`
4. Select your integration

### 2. Get your Database ID

Your database ID is in the URL:
```
https://notion.so/your_database_id?v=...
                 ^^^^^^^^^^^^^^^^^^
```

### 3. Configure Environment Variables

1. Copy `.env.example` to `.env`:
   ```bash
   cp .env.example .env
   ```

2. Edit `.env` and add your credentials:
   ```env
   NOTION_TOKEN=secret_your_integration_token
   NOTION_DATABASE_ID=your_database_id
   ```

### 4. Install Dependencies

```bash
flutter pub get
```

### 5. Run the App

```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart                   # App entry point
├── models/
│   └── task.dart              # Task data model
├── services/
│   └── notion_service.dart    # Notion API integration
├── screens/
│   └── home_screen.dart       # Main task list screen
└── widgets/
    └── task_card.dart         # Task display widget
```

## Key Concepts

### Notion Service

The `NotionService` class wraps `notion_dart_kit` and provides high-level methods for task management:

```dart
final service = NotionService(
  token: 'your_token',
  databaseId: 'your_database_id',
);

// Fetch all tasks
final tasks = await service.fetchTasks();

// Create a new task
await service.createTask(
  title: 'My Task',
  description: 'Task description',
  dueDate: DateTime.now(),
);

// Update task status
await service.updateTaskStatus(
  taskId: 'task_id',
  isCompleted: true,
);

// Delete a task
await service.deleteTask('task_id');
```

### State Management

This app uses [Riverpod](https://riverpod.dev/) for state management:

```dart
// Provider for fetching tasks
final tasksProvider = FutureProvider<List<Task>>((ref) async {
  final service = ref.watch(notionServiceProvider);
  return service.fetchTasks();
});

// Refresh tasks after updates
ref.invalidate(tasksProvider);
```

## Screenshots

*(Add screenshots of your app here)*

## Dependencies

- [notion_dart_kit](https://pub.dev/packages/notion_dart_kit) - Notion API client
- [flutter_riverpod](https://pub.dev/packages/flutter_riverpod) - State management
- [flutter_dotenv](https://pub.dev/packages/flutter_dotenv) - Environment variables
- [intl](https://pub.dev/packages/intl) - Date formatting

## Learn More

- [notion_dart_kit Documentation](../../README.md)
- [Notion API Documentation](https://developers.notion.com/)
- [Flutter Documentation](https://docs.flutter.dev/)

## License

This example is provided as-is for educational purposes.
