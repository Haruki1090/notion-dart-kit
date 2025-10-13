import 'package:notion_dart_kit/notion_dart_kit.dart';
import '../models/task.dart';

/// Service for interacting with Notion API to manage tasks.
class NotionService {
  final NotionClient _client;
  final String _databaseId;

  NotionService({
    required String token,
    required String databaseId,
  })  : _client = NotionClient(token: token),
        _databaseId = databaseId;

  /// Fetches all tasks from the Notion database.
  Future<List<Task>> fetchTasks() async {
    try {
      final result = await _client.databases.query(_databaseId);
      return result.results.map(_pageToTask).toList();
    } on NotionException catch (e) {
      throw Exception('Failed to fetch tasks: ${e.message}');
    }
  }

  /// Creates a new task in the Notion database.
  Future<Task> createTask({
    required String title,
    String? description,
    DateTime? dueDate,
  }) async {
    try {
      final properties = <String, dynamic>{
        'Name': PropertyValue.title([
          RichText.text(text: TextContent(content: title)),
        ]).toJson(),
        'Status': PropertyValue.checkbox(false).toJson(),
      };

      if (description != null) {
        properties['Description'] = PropertyValue.richText([
          RichText.text(text: TextContent(content: description)),
        ]).toJson();
      }

      if (dueDate != null) {
        properties['Due Date'] = PropertyValue.date(start: dueDate).toJson();
      }

      final page = await _client.pages.create(
        parent: Parent.database(databaseId: _databaseId),
        properties: properties,
      );

      return _pageToTask(page);
    } on NotionException catch (e) {
      throw Exception('Failed to create task: ${e.message}');
    }
  }

  /// Updates a task's completion status.
  Future<Task> updateTaskStatus({
    required String taskId,
    required bool isCompleted,
  }) async {
    try {
      final page = await _client.pages.update(
        taskId,
        properties: {
          'Status': PropertyValue.checkbox(isCompleted).toJson(),
        },
      );

      return _pageToTask(page);
    } on NotionException catch (e) {
      throw Exception('Failed to update task: ${e.message}');
    }
  }

  /// Deletes a task (archives it in Notion).
  Future<void> deleteTask(String taskId) async {
    try {
      await _client.pages.archive(taskId);
    } on NotionException catch (e) {
      throw Exception('Failed to delete task: ${e.message}');
    }
  }

  /// Converts a Notion Page to a Task model.
  Task _pageToTask(Page page) {
    final properties = page.properties;

    // Extract title
    String title = 'Untitled';
    final titleProp = properties['Name'];
    if (titleProp != null) {
      titleProp.when(
        title: (richTextList) {
          if (richTextList.isNotEmpty) {
            title = richTextList.first.plainText;
          }
        },
        orElse: () {},
      );
    }

    // Extract completion status
    bool isCompleted = false;
    final statusProp = properties['Status'];
    if (statusProp != null) {
      statusProp.when(
        checkbox: (value) => isCompleted = value,
        orElse: () {},
      );
    }

    // Extract due date
    DateTime? dueDate;
    final dueDateProp = properties['Due Date'];
    if (dueDateProp != null) {
      dueDateProp.when(
        date: (dateRange) {
          dueDate = dateRange?.start;
        },
        orElse: () {},
      );
    }

    // Extract description
    String? description;
    final descProp = properties['Description'];
    if (descProp != null) {
      descProp.when(
        richText: (richTextList) {
          if (richTextList.isNotEmpty) {
            description = richTextList.map((rt) => rt.plainText).join();
          }
        },
        orElse: () {},
      );
    }

    return Task(
      id: page.id,
      title: title,
      isCompleted: isCompleted,
      dueDate: dueDate,
      description: description,
    );
  }

  /// Closes the Notion client and releases resources.
  void dispose() {
    _client.close();
  }
}
