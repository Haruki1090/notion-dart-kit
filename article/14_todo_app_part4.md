# 第14章: Todoアプリ Part 4 - CRUD機能の実装

> **この章の目標**: Todo の作成・更新・削除機能を実装する

---

## ➕ Todoの作成

```dart
// NotionServiceにメソッドを追加
Future<Page> createTodo({
  required String name,
  required int priority,
  DateTime? dueDate,
}) async {
  return await _client.pages.create(
    parent: Parent.database(databaseId: databaseId).toJson(),
    properties: {
      'Name': PropertyValue.title([
        RichText.text(text: name),
      ]).toJson(),
      'Status': PropertyValue.select('Not Started').toJson(),
      'Priority': PropertyValue.number(priority).toJson(),
      if (dueDate != null)
        'Due Date': PropertyValue.date(start: dueDate).toJson(),
      'Done': PropertyValue.checkbox(false).toJson(),
    },
  );
}
```

---

## 🔄 Todoの更新

```dart
Future<Page> updateTodo({
  required String pageId,
  String? name,
  String? status,
  int? priority,
  bool? done,
}) async {
  final properties = <String, Map<String, dynamic>>{};

  if (name != null) {
    properties['Name'] = PropertyValue.title([
      RichText.text(text: name),
    ]).toJson();
  }
  if (status != null) {
    properties['Status'] = PropertyValue.select(status).toJson();
  }
  if (priority != null) {
    properties['Priority'] = PropertyValue.number(priority).toJson();
  }
  if (done != null) {
    properties['Done'] = PropertyValue.checkbox(done).toJson();
  }

  return await _client.pages.update(pageId, properties: properties);
}

// 完了/未完了の切り替え
Future<Page> toggleTodo(String pageId, bool currentState) async {
  return await updateTodo(pageId: pageId, done: !currentState);
}
```

---

## 🗑️ Todoの削除

```dart
Future<Page> deleteTodo(String pageId) async {
  return await _client.pages.update(pageId, archived: true);
}
```

---

[📖 目次に戻る](./index.md) | [⬅️ 前の章](./13_todo_app_part3.md) | [➡️ 次の章](./15_todo_app_part5.md)
