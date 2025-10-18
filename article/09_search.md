# 第9章: Search（検索）機能

> **この章の目標**: ワークスペース全体からページとデータベースを検索する

---

## 📋 この章で学ぶこと

| トピック | 内容 |
|:---|:---|
| **基本的な検索** | キーワード検索 |
| **オブジェクトタイプでフィルタ** | ページのみ/データベースのみ検索 |
| **ソート** | 検索結果のソート |

---

## 🔍 Step 1: 基本的な検索

```dart
Future<List<dynamic>> searchPages(String query) async {
  final client = NotionClient(token: 'your_token');

  try {
    final result = await client.search.search(query: query);
    return result.results;
  } finally {
    client.close();
  }
}
```

---

## 🎯 Step 2: フィルタとソート

```dart
// ページのみ検索
final result = await client.search.search(
  query: 'meeting',
  filter: {'property': 'object', 'value': 'page'},
);

// データベースのみ検索
final result = await client.search.search(
  query: 'tasks',
  filter: {'property': 'object', 'value': 'database'},
);

// ソート（更新日時の降順）
final result = await client.search.search(
  query: 'project',
  sort: {'direction': 'descending', 'timestamp': 'last_edited_time'},
);
```

---

[📖 目次に戻る](./index.md) | [⬅️ 前の章](./08_blocks.md) | [➡️ 次の章](./10_pagination.md)
