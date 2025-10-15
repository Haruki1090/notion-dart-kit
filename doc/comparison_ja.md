## Notion 連携の実装手段・コード比較

このドキュメントでは、notion-dart-kit と「素のHTTP（Dio など）」の実装差を、具体的なコード例で比較します。用途に応じた選定の参考にしてください。

### 対象
- notion-dart-kit（本ライブラリ）
- 素のHTTP（Dio などのHTTPクライアントを直接利用）

---

### 1) データベースをフィルタ＋ソートしてクエリ

notion-dart-kit

```dart
final client = NotionClient(token: 'YOUR_TOKEN');

final filter = Filter.and([
  Filter.property('Status').select.equals('In Progress'),
  Filter.property('Priority').number.greaterThan(3),
]);

final res = await client.databases.query(
  databaseId: 'db_id',
  filter: filter.toJson(),
  sorts: [Sort.createdTime.descending().toJson()],
);

for (final page in res.results) {
  print(page.id);
}
```

素のHTTP（Dio）

```dart
final dio = Dio(BaseOptions(
  baseUrl: 'https://api.notion.com/v1',
  headers: {
    'Authorization': 'Bearer YOUR_TOKEN',
    'Notion-Version': '2022-06-28',
    'Content-Type': 'application/json',
  },
));

final body = {
  'filter': {
    'and': [
      {'property': 'Status', 'select': {'equals': 'In Progress'}},
      {'property': 'Priority', 'number': {'greater_than': 3}},
    ],
  },
  'sorts': [
    {'timestamp': 'created_time', 'direction': 'descending'},
  ],
};

final res = await dio.post('/databases/db_id/query', data: jsonEncode(body));
final results = res.data['results'] as List;
for (final page in results) {
  print(page['id']);
}
```

要点: DSL により JSON を直接書かずに済み、型安全・補完が効きます。

---

### 2) ページ作成（各種プロパティ）

notion-dart-kit

```dart
await client.pages.create(
  parent: Parent.database(databaseId: 'db_id').toJson(),
  properties: {
    'Title': PropertyValue.title([RichText.text(text: 'Task A')]).toJson(),
    'Priority': PropertyValue.number(5).toJson(),
    'Status': PropertyValue.select('In Progress').toJson(),
    'Due': PropertyValue.date(
      start: DateTime.now().add(const Duration(days: 3)),
    ).toJson(),
  },
);
```

素のHTTP（Dio）

```dart
await dio.post('/pages', data: jsonEncode({
  'parent': {'database_id': 'db_id'},
  'properties': {
    'Title': {'title': [{'text': {'content': 'Task A'}}]},
    'Priority': {'number': 5},
    'Status': {'select': {'name': 'In Progress'}},
    'Due': {'date': {'start': DateTime.now().toUtc().toIso8601String()}},
  },
}));
```

要点: プロパティの JSON 形状を毎回手で組む必要がなく、型崩れを防げます。

---

### 3) レート制限・リトライと例外処理

notion-dart-kit（内蔵リトライ＋例外階層）

```dart
try {
  final page = await client.pages.retrieve('page_id');
} on RateLimitException catch (_) {
  // 内部で指数バックオフ済み。UI 通知など最小限の対応でOK。
} on NotionException catch (e) {
  // 400/401/404/5xx などを分類して処理可能
}
```

素のHTTP（簡易リトライ例）

```dart
Future<Response<T>> retry<T>(Future<Response<T>> Function() f) async {
  var attempts = 0;
  var delayMs = 500;
  while (true) {
    try {
      final r = await f();
      if (r.statusCode == 429) {
        final ra = int.tryParse(r.headers['retry-after']?.first ?? '') ?? 0;
        await Future.delayed(Duration(seconds: ra > 0 ? ra : (delayMs ~/ 1000)));
        delayMs = (delayMs * 2).clamp(500, 16000);
        attempts++;
        continue;
      }
      return r;
    } on DioException catch (e) {
      final transient = e.response?.statusCode == 429 ||
          e.type == DioExceptionType.connectionError;
      if (transient && attempts < 5) {
        await Future.delayed(Duration(milliseconds: delayMs));
        delayMs = (delayMs * 2).clamp(500, 16000);
        attempts++;
        continue;
      }
      rethrow;
    }
  }
}

// 使用例
final response = await retry(() => dio.get('/pages/page_id'));
```

要点: 本ライブラリはレート制限対策・再試行・例外分類が標準搭載。実装負荷を削減します。

---

### 4) 比較サマリー

| 観点 | notion-dart-kit | 素のHTTP |
|---|---|---|
| API カバレッジ | Pages/DB/Blocks/Search/Users/Data Sources を包括 | 実装次第 |
| 型安全/モデル | Freezed ユニオン + `json_serializable` | 自作（不一致が起こりやすい） |
| クエリ DSL | 型安全（JSON直書き不要） | すべて JSON 手書き |
| レート制限/リトライ | 内蔵（トークンバケット + Backoff + Retry-After） | 自前実装が必要 |
| 例外/Result | 例外階層 + `Result<T,E>` | 自前設計 |
| ロギング | サニタイズ済み詳細ログ | 自作 |
| 学習/運用コスト | 中（恩恵が大） | 初期低・運用高 |

---

### 5) 使い分けの指針
- 本番運用・長期保守・チーム開発: notion-dart-kit を推奨
- 単発スクリプト・短期 PoC: 素のHTTP も選択肢（ただしレート制限/エラー処理は自前）


