# notion-dart-kit

[![pub package](https://img.shields.io/pub/v/notion_dart_kit.svg)](https://pub.dev/packages/notion_dart_kit)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Notion API用の包括的で型安全なDartツールキット。完全なエンドポイントカバレッジ、組み込みのレート制限、リトライロジック、DartとFlutterアプリケーション向けの直感的なAPIを提供します。

[English README is here](./README.md)

## ✨ 特徴

- **🎯 型安全**: Freezedを使用した不変データクラスによる強い型付け
- **🔄 自動リトライ**: レート制限処理のための指数バックオフ（ジッター付き）を内蔵
- **⚡ レート制限対応**: 設定可能なリトライロジックによる自動429エラーハンドリング
- **📦 完全なAPIカバレッジ**: Pages、Databases、Blocks、Users、Searchをサポート
- **🛡️ エラーハンドリング**: 異なるAPIエラータイプ用のカスタム例外クラス
- **📱 Flutter対応**: Flutterアプリケーションとシームレスに連携
- **🎨 クリーンなAPI**: 簡単に統合できる直感的なサービスベースのアーキテクチャ
- **🔧 カスタマイズ可能**: タイムアウトとリトライ設定が可能なHTTPクライアント

## 📦 インストール

`pubspec.yaml`ファイルに以下を追加してください：

```yaml
dependencies:
  notion_dart_kit: ^0.1.0
```

その後、以下を実行：

```bash
dart pub get
```

Flutterの場合：

```bash
flutter pub get
```

## 🚀 クイックスタート

### 1. 統合トークンの取得

[Notion Integrations](https://www.notion.so/my-integrations)から統合を作成し、トークンを取得してください。

### 2. クライアントの初期化

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

void main() async {
  // 統合トークンでクライアントを初期化
  final client = NotionClient(
    token: 'YOUR_INTEGRATION_TOKEN',
  );

  // Botユーザー情報を取得
  final botUser = await client.users.me();
  print('Bot User: ${botUser.name}');

  // 使用後はクライアントを閉じることを忘れずに
  client.close();
}
```

## 📚 使用例

### ページの操作

```dart
// 新しいページを作成
final page = await client.pages.create(
  parent: Parent.database('database_id'),
  properties: {
    'Name': {
      'title': [
        {'text': {'content': 'New Page'}}
      ]
    }
  },
);

// ページを取得
final retrievedPage = await client.pages.retrieve('page_id');

// ページプロパティを更新
final updatedPage = await client.pages.update(
  'page_id',
  properties: {
    'Status': {
      'select': {'name': 'In Progress'}
    }
  },
);

// ページをアーカイブ
await client.pages.archive('page_id');

// ゴミ箱から復元
await client.pages.restore('page_id');
```

### データベースの操作

```dart
// データベースを作成
final database = await client.databases.create(
  parent: Parent.page('parent_page_id'),
  title: [
    RichText.text(content: 'My Database')
  ],
  properties: {
    'Name': {
      'title': {}
    },
    'Status': {
      'select': {
        'options': [
          {'name': 'To Do', 'color': 'red'},
          {'name': 'In Progress', 'color': 'yellow'},
          {'name': 'Done', 'color': 'green'},
        ]
      }
    }
  },
);

// データベースを取得
final db = await client.databases.retrieve('database_id');

// データベースをクエリ
final results = await client.databases.query(
  'database_id',
  filter: {
    'property': 'Status',
    'select': {
      'equals': 'In Progress'
    }
  },
  sorts: [
    {
      'property': 'Name',
      'direction': 'ascending'
    }
  ],
  pageSize: 50,
);

// 結果を反復処理
for (final page in results.results) {
  print('Page: ${page.id}');
}

// ページネーション処理
if (results.hasMore) {
  final nextPage = await client.databases.query(
    'database_id',
    startCursor: results.nextCursor,
  );
}

// データベースを更新
await client.databases.update(
  'database_id',
  title: [RichText.text(content: 'Updated Database Name')],
  description: [RichText.text(content: 'New description')],
);
```

### ブロックの操作

```dart
// ブロックを取得
final block = await client.blocks.retrieve('block_id');

// ブロックの子要素を取得
final children = await client.blocks.retrieveChildren('block_id');

// 新しいブロックを追加
await client.blocks.appendChildren('block_id', [
  {
    'object': 'block',
    'type': 'paragraph',
    'paragraph': {
      'rich_text': [
        {
          'type': 'text',
          'text': {'content': 'これは新しい段落です'}
        }
      ]
    }
  },
  {
    'object': 'block',
    'type': 'heading_2',
    'heading_2': {
      'rich_text': [
        {
          'type': 'text',
          'text': {'content': '新しいセクション'}
        }
      ]
    }
  }
]);

// ブロックを更新
await client.blocks.update('block_id', {
  'paragraph': {
    'rich_text': [
      {
        'type': 'text',
        'text': {'content': '更新されたコンテンツ'}
      }
    ]
  }
});

// ブロックを削除（アーカイブ）
await client.blocks.delete('block_id');
```

### ユーザーの操作

```dart
// Botユーザー（自分）を取得
final me = await client.users.me();
print('Bot: ${me.name}');

// 特定のユーザーを取得
final user = await client.users.retrieve('user_id');

// すべてのユーザーをリスト表示
final users = await client.users.list(pageSize: 100);
for (final user in users.results) {
  print('User: ${user.name}');
}
```

### 検索

```dart
// ページとデータベースを検索
final results = await client.search.search(
  query: 'project',
  filter: SearchFilter.page,
  sortDirection: 'descending',
  pageSize: 10,
);

// 検索結果を処理
for (final result in results.results) {
  result.when(
    page: (page) => print('ページが見つかりました: ${page.id}'),
    database: (database) => print('データベースが見つかりました: ${database.id}'),
  );
}

// データベースのみを検索
final databases = await client.search.search(
  filter: SearchFilter.dataSource,
);

// すべてのページ/データベースを取得（クエリなし）
final all = await client.search.search();
```

## 🔧 高度な設定

### カスタムHTTPクライアント設定

```dart
final client = NotionClient(
  token: 'YOUR_INTEGRATION_TOKEN',
);

// HTTPクライアントは以下をサポートしています：
// - 429（レート制限）エラー時の自動リトライ
// - ジッター付き指数バックオフ
// - 設定可能なタイムアウト（デフォルト30秒）
// - カスタムリトライ回数（デフォルト3回）
```

### エラーハンドリング

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

try {
  final page = await client.pages.retrieve('invalid_id');
} on NotFoundException catch (e) {
  print('ページが見つかりません: ${e.message}');
} on AuthenticationException catch (e) {
  print('認証失敗: ${e.message}');
} on RateLimitException catch (e) {
  print('レート制限: ${e.message}');
} on ValidationException catch (e) {
  print('無効なリクエスト: ${e.message}');
} on NotionException catch (e) {
  print('Notion APIエラー: ${e.message} (${e.statusCode})');
}
```

## 📖 APIリファレンス

### サービス

| サービス | 説明 | ステータス |
|---------|------|-----------|
| `client.users` | ユーザー操作（me、retrieve、list） | ✅ 実装済み |
| `client.pages` | ページ操作（create、retrieve、update、archive） | ✅ 実装済み |
| `client.databases` | データベース操作（create、retrieve、update、query） | ✅ 実装済み |
| `client.blocks` | ブロック操作（retrieve、update、append、delete） | ✅ 実装済み |
| `client.search` | ページとデータベース全体の検索 | ✅ 実装済み |

### 計画中の機能

| 機能 | ステータス |
|------|-----------|
| Query Builder（フィルター/ソート用DSL） | 🚧 計画中 |
| Comments API | 🚧 計画中 |
| Data Sources API | 🚧 計画中 |
| File Upload API | 🚧 計画中 |
| Webhooks サポート | 🚧 計画中 |
| Page Property Items API | 🚧 計画中 |

## 🏗️ アーキテクチャ

```
notion-dart-kit/
├── lib/
│   ├── notion_dart_kit.dart          # メインエクスポートファイル
│   └── src/
│       ├── client/
│       │   ├── http_client.dart       # リトライロジック付きHTTPクライアント
│       │   └── notion_client.dart     # メインAPIクライアント
│       ├── models/
│       │   ├── user.dart              # ユーザーモデル
│       │   ├── page.dart              # ページモデル
│       │   ├── database.dart          # データベースモデル
│       │   ├── block.dart             # ブロックモデル
│       │   ├── rich_text.dart         # リッチテキストモデル
│       │   ├── file.dart              # ファイル/アイコンモデル
│       │   ├── parent.dart            # 親オブジェクトモデル
│       │   ├── property_value.dart    # プロパティ値モデル
│       │   └── pagination.dart        # ページネーションモデル
│       ├── services/
│       │   ├── users_service.dart     # ユーザーAPIエンドポイント
│       │   ├── pages_service.dart     # ページAPIエンドポイント
│       │   ├── databases_service.dart # データベースAPIエンドポイント
│       │   ├── blocks_service.dart    # ブロックAPIエンドポイント
│       │   └── search_service.dart    # 検索APIエンドポイント
│       └── utils/
│           └── exceptions.dart        # カスタム例外クラス
```

## 🧪 テスト

テストを実行：

```bash
dart test
```

統合テストを実行（有効なNotionトークンが必要）：

```bash
export NOTION_TOKEN=your_token_here
dart test test/integration/
```

## 🤝 コントリビューション

コントリビューションを歓迎します！プルリクエストをお気軽に提出してください。大きな変更の場合は、まずissueを開いて変更内容について議論してください。

1. リポジトリをフォーク
2. フィーチャーブランチを作成（`git checkout -b feature/amazing-feature`）
3. 変更をコミット（`git commit -m 'Add some amazing feature'`）
4. ブランチにプッシュ（`git push origin feature/amazing-feature`）
5. プルリクエストを開く

## 📝 ライセンス

このプロジェクトはMITライセンスの下でライセンスされています。詳細は[LICENSE](LICENSE)ファイルをご覧ください。

## 🔗 リンク

- [Notion API ドキュメント](https://developers.notion.com/)
- [pub.devのパッケージ](https://pub.dev/packages/notion_dart_kit)
- [Issue Tracker](https://github.com/Haruki1090/notion-dart-kit/issues)
- [ソースコード](https://github.com/Haruki1090/notion-dart-kit)
- [コントリビューションガイド](./CONTRIBUTING_ja.md) | [English](./CONTRIBUTING.md)
- [変更履歴](./CHANGELOG_ja.md) | [English](./CHANGELOG.md)

## 👤 作者

**Haruki Inoue**

- GitHub: [@Haruki1090](https://github.com/Haruki1090)

## 🙏 謝辞

- [Freezed](https://pub.dev/packages/freezed)を使用した不変モデル
- [Dio](https://pub.dev/packages/dio)を使用したHTTPクライアント
- 公式Notion JavaScript SDKからインスパイア

---

Dart と Flutter コミュニティのために ❤️ を込めて作成
