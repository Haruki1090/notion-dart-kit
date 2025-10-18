# 第15章: Todoアプリ Part 5 - 状態管理との統合

> **この章の目標**: Riverpodを使って状態管理を実装する

---

## 🔧 Providerの設定

```dart
// lib/providers/notion_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/notion_service.dart';

final notionServiceProvider = Provider<NotionService>((ref) {
  final service = NotionService(
    token: 'your_token',
    databaseId: 'your_database_id',
  );

  ref.onDispose(() => service.dispose());

  return service;
});

final todosProvider = FutureProvider<List<Page>>((ref) async {
  final service = ref.watch(notionServiceProvider);
  return await service.getIncompleteTodos();
});
```

---

## 📱 UIでの使用

```dart
class TodoListScreen extends ConsumerWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todosAsync = ref.watch(todosProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('My Todos')),
      body: todosAsync.when(
        data: (todos) => ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            final todo = todos[index];
            return ListTile(
              title: Text(todo.id),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
```

---

[📖 目次に戻る](./index.md) | [⬅️ 前の章](./14_todo_app_part4.md) | [➡️ 次の章](./16_best_practices.md)
