# 第16章: ベストプラクティス

> **この章の目標**: 本番環境での運用のコツを学ぶ

---

## 🔒 セキュリティ

### APIトークンの管理

```dart
// ❌ ハードコードは避ける
final token = 'secret_abc123...';

// ✅ 環境変数を使う
final token = dotenv.env['NOTION_API_TOKEN']!;

// ✅ セキュアストレージを使う
final token = await secureStorage.read(key: 'notion_token');
```

---

## ⚡ パフォーマンス

### キャッシュの活用

```dart
class CachedNotionService {
  final NotionClient _client;
  final Map<String, (DateTime, Page)> _pageCache = {};
  final Duration _cacheDuration = Duration(minutes: 5);

  Future<Page> getPage(String pageId) async {
    final cached = _pageCache[pageId];
    if (cached != null) {
      final (timestamp, page) = cached;
      if (DateTime.now().difference(timestamp) < _cacheDuration) {
        return page;
      }
    }

    final page = await _client.pages.retrieve(pageId);
    _pageCache[pageId] = (DateTime.now(), page);
    return page;
  }
}
```

---

## 🔄 エラーハンドリング

### リトライロジック

```dart
Future<T> retryOperation<T>(
  Future<T> Function() operation, {
  int maxAttempts = 3,
  Duration delay = const Duration(seconds: 1),
}) async {
  for (int i = 0; i < maxAttempts; i++) {
    try {
      return await operation();
    } catch (e) {
      if (i == maxAttempts - 1) rethrow;
      await Future.delayed(delay * (i + 1));
    }
  }
  throw Exception('Should not reach here');
}
```

---

[📖 目次に戻る](./index.md) | [⬅️ 前の章](./15_todo_app_part5.md) | [➡️ 次の章](./17_troubleshooting.md)
