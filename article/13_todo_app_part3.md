# 第13章: Todoアプリ Part 3 - データ取得機能

> **この章の目標**: TodoデータをNotionから取得して表示する

---

## 🔧 NotionServiceの実装

```dart
// lib/services/notion_service.dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

class NotionService {
  final NotionClient _client;
  final String databaseId;

  NotionService({required String token, required this.databaseId})
      : _client = NotionClient(token: token);

  // Todoを全件取得
  Future<List<Page>> getTodos() async {
    final result = await _client.databases.query(databaseId);
    return result.results;
  }

  // 未完了のTodoを取得
  Future<List<Page>> getIncompleteTodos() async {
    final filter = Filter.property('Done').checkbox.equals(false);
    final sorts = [Sort.property('Priority').descending()];

    final result = await _client.databases.query(
      databaseId,
      filter: filter.toJson(),
      sorts: sorts.map((s) => s.toJson()).toList(),
    );

    return result.results;
  }

  // 完了済みのTodoを取得
  Future<List<Page>> getCompletedTodos() async {
    final filter = Filter.property('Done').checkbox.equals(true);

    final result = await _client.databases.query(
      databaseId,
      filter: filter.toJson(),
    );

    return result.results;
  }

  void dispose() {
    _client.close();
  }
}
```

---

## 📱 UI実装

```dart
// lib/screens/todo_list_screen.dart
import 'package:flutter/material.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';
import '../services/notion_service.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  late NotionService _notionService;
  List<Page> _todos = [];
  bool _isLoading = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _notionService = NotionService(
      token: 'your_token',
      databaseId: 'your_database_id',
    );
    _loadTodos();
  }

  @override
  void dispose() {
    _notionService.dispose();
    super.dispose();
  }

  Future<void> _loadTodos() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final todos = await _notionService.getIncompleteTodos();
      setState(() {
        _todos = todos;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Todos')),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add todo
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_error != null) {
      return Center(child: Text('Error: $_error'));
    }

    if (_todos.isEmpty) {
      return const Center(child: Text('No todos'));
    }

    return ListView.builder(
      itemCount: _todos.length,
      itemBuilder: (context, index) {
        final todo = _todos[index];
        return ListTile(
          title: Text(todo.id),
          subtitle: Text('Created: ${todo.createdTime}'),
        );
      },
    );
  }
}
```

---

[📖 目次に戻る](./index.md) | [⬅️ 前の章](./12_todo_app_part2.md) | [➡️ 次の章](./14_todo_app_part4.md)
