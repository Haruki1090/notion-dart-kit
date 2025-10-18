# 第17章: トラブルシューティング

> **この章の目標**: よくある問題と解決方法を知る

---

## 🐛 よくあるエラーと解決方法

### 401 Unauthorized

**原因**:
- APIトークンが無効
- 統合がページに接続されていない

**解決方法**:
1. APIトークンを確認
2. Notionページで「Add connections」から統合を接続

---

### 404 Not Found

**原因**:
- ページIDが間違っている
- ページが削除されている
- 統合にアクセス権がない

**解決方法**:
1. ページIDを確認（32文字の16進数）
2. ページが存在するか確認
3. 統合がページに接続されているか確認

---

### 429 Rate Limited

**原因**:
- リクエストが多すぎる（3リクエスト/秒）

**解決方法**:
- Notion Dart Kitは自動的にリトライします
- 短時間に大量のリクエストを送らないよう注意

---

### 500 Internal Server Error

**原因**:
- Notion API側の一時的な問題

**解決方法**:
- 少し待ってから再試行
- [Notion Status Page](https://status.notion.so/)で障害情報を確認

---

## 🔧 デバッグのヒント

### ログを有効にする

```dart
NotionLogger.instance.initialize(isDebugMode: true);
```

### エラー情報を詳しく見る

```dart
try {
  final page = await client.pages.retrieve(pageId);
} on NotionException catch (e) {
  print('Status Code: ${e.statusCode}');
  print('Message: ${e.message}');
  print('Stack Trace: ${e.stackTrace}');
}
```

---

## 📚 さらに学ぶには

- [Notion API公式ドキュメント](https://developers.notion.com/)
- [notion-dart-kit GitHub](https://github.com/your-org/notion-dart-kit)
- [pub.dev](https://pub.dev/packages/notion_dart_kit)

---

## 🎉 おめでとうございます！

このガイドを完走しました！これで、Notion Dart Kitを使ってFlutterアプリを開発する準備が整いました。

---

[📖 目次に戻る](./index.md) | [⬅️ 前の章](./16_best_practices.md)
