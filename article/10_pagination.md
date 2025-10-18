# 第10章: Pagination（ページネーション）

> **この章の目標**: カーソルベースのページネーションで大量データを効率的に取得する

---

## 📋 ページネーションの基本

NotionAPIは一度に最大100件までしか返しません。それ以上のデータを取得するには、ページネーションを使用します。

---

## 🔁 すべてのページを取得

```dart
Future<List<Page>> getAllPages(String databaseId) async {
  final client = NotionClient(token: 'your_token');
  final allPages = <Page>[];
  String? cursor;

  try {
    do {
      final result = await client.databases.query(
        databaseId,
        startCursor: cursor,
        pageSize: 100,
      );

      allPages.addAll(result.results);
      cursor = result.nextCursor;
    } while (cursor != null);

    return allPages;
  } finally {
    client.close();
  }
}
```

---

[📖 目次に戻る](./index.md) | [⬅️ 前の章](./09_search.md) | [➡️ 次の章](./11_todo_app_part1.md)
