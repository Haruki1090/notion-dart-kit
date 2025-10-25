# notion-dart-kit

[![pub package](https://img.shields.io/pub/v/notion_dart_kit.svg)](https://pub.dev/packages/notion_dart_kit)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![CI](https://github.com/Haruki1090/notion-dart-kit/actions/workflows/ci.yml/badge.svg)](https://github.com/Haruki1090/notion-dart-kit/actions)

Notion API のための包括的な型安全 Dart ツールキット。完全なエンドポイントカバレッジ、ビルトインのレート制限、リトライロジック、直感的な API を備えた Dart & Flutter アプリケーション向けライブラリです。

[English README is here](./README.md)

## ✨ 特徴

- **🎯 型安全**: Freezed による強力な型付きモデルとイミュータブルなデータクラス
- **🔄 自動リトライ**: ジッター付き指数バックオフによるレート制限の自動処理
- **⚡ レート制限**: 429 エラーの自動ハンドリングと設定可能なリトライロジック
- **🧵 リトライキュー**: 失敗したリクエストを優先度付きで自動再試行し、`Retry-After` を尊重
- **📦 完全な API カバレッジ**: Pages、Databases、Data Sources、Blocks、Users、Search、Comments、File Uploads の完全サポート
- **🛡️ エラーハンドリング**: 異なる API エラータイプ用のカスタム例外クラス
- **📱 Flutter 対応**: Flutter アプリケーションでシームレスに動作
- **🌐 Web サポート**: 条件付きインポートによる Web プラットフォームの完全サポート
- **🎨 クリーンな API**: 統合しやすい直感的なサービスベースアーキテクチャ
- **🔧 カスタマイズ可能**: タイムアウトとリトライ設定が可能な HTTP クライアント

## 📦 インストール

`pubspec.yaml` ファイルに以下を追加してください:

```yaml
dependencies:
  notion_dart_kit: ^0.1.1
```

次に以下を実行:

```bash
dart pub get
```

または Flutter の場合:

```bash
flutter pub get
```

## 🚀 クイックスタート

### 1. インテグレーショントークンの取得

[Notion Integrations](https://www.notion.so/my-integrations) からインテグレーションを作成し、トークンを取得してください。

### 2. クライアントの初期化

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

void main() async {
  // インテグレーショントークンでクライアントを初期化
  final client = NotionClient(
    token: 'YOUR_INTEGRATION_TOKEN',
  );

  // ボットユーザー情報を取得
  final botUser = await client.users.me();
  print('Bot User: ${botUser.name}');

  // 使用後はクライアントをクローズすることを忘れずに
  client.close();
}
```

## 🧭 アーキテクチャ概要

> _`notion_dart_kit` を支える主要コンポーネントの概要_

- **構成可能なクライアント** – `NotionClient` は pages、databases、data sources、blocks、search、users 用の専用サービスを統合し、各ドメインが集中的かつ型安全に保たれます。
- **薄い HTTP コア** – `NotionHttpClient` は `dio` を Notion API ヘッダー、ロギング、自動エラー変換とともにラップします。
- **回復力のあるリクエスト** – 専用の `RateLimiter` がバーストを抑制し、`Retry-After` を尊重し、指数バックオフでリトライすることで、429 エラーからインテグレーションを保護します。
- **表現力豊かなモデル** – Freezed 生成モデルはレスポンスをイミュータブルかつ完全に型付けされた状態に保ち、ブロック、ページ、データベース、データソース、ファイル、リッチテキストプリミティブの扱いを簡単にします。

### サービス一覧

| ドメイン | 主要メソッド | 備考 |
| --- | --- | --- |
| Pages | `create`, `retrieve`, `update`, `archive`, `restore` | オプションのアイコン、カバー、選択的プロパティ取得を備えた Pages REST エンドポイントをミラーします。 |
| Databases | `create`, `retrieve`, `update`, `query`, `archive`, `restore` | inline/locked フラグ、初期データソースプロビジョニング、サーバーサイドソート付きフィルタクエリを処理します。 |
| Data Sources | `create`, `retrieve`, `update`, `query` | リクエストごとのスキーマとプロパティフィルタリングを含む v3 Data Sources API をカプセル化します。 |
| Blocks | `retrieve`, `retrieveChildren`, `appendChildren`, `update`, `delete` | 子の走査とブロックコンテンツの安全な変更のためのページネーションヘルパーをサポートします。 |
| Search | `search` | エルゴノミックな判別共用体でページとデータベースのヒットを組み合わせます。 |
| Users | `me`, `retrieve`, `list` | ページネーション対応のユーザーリストとボットメタデータアクセスを提供します。 |
| Comments | `create`, `list`, `retrieve` | ページ/ブロック上のコメント作成・取得。添付や表示名の上書きも対応。 |
| File Uploads | `create`, `sendBytes`, `sendFile`, `complete`, `retrieve`, `list` | シングル/マルチパート/外部URLのアップロードに対応。 |
| Templates | `listTemplates`, `retrieveTemplate` | **v0.2.2の新機能**: データソースからテンプレートを一覧・取得し、テンプレートからページを作成。 |

## 🛡️ 回復力とエラーハンドリング

- **スマートな例外** – HTTP 失敗は `AuthenticationException`、`NotFoundException`、`RateLimitException` などにマッピングされるため、アプリケーションロジックで正確に処理できます。
- **ボイラープレートなしのバックオフ** – すべてのサービス呼び出しは自動的に共有レートリミッターを経由するため、ジッター付きリトライとトークンバケット抑制が無料で得られます。
- **明示的なクローズ** – 完了時に `client.close()` を呼び出すことで、基礎となるネットワークリソースを破棄し、長時間実行される CLI ツールやサーバーをきれいに保ちます。

## 🧪 サンプルで探索

[`example/`](./example) ディレクトリは生きたドキュメントとして機能します。サービスオーケストレーション、ページネーションループ、型付きパターンマッチングをエンドツーエンドで確認するには、[`basic_usage.dart`](./example/basic_usage.dart) から始めてください。

## 📚 使用例

完全な実行可能なサンプルについては、[example](./example) ディレクトリを参照してください:
- [basic_usage.dart](./example/basic_usage.dart) - すべての API の使い方
- [query_dsl_example.dart](./example/query_dsl_example.dart) - 高度なフィルタリングとソート
- [properties_and_blocks_example.dart](./example/properties_and_blocks_example.dart) - プロパティとブロックの操作
- [pagination_example.dart](./example/pagination_example.dart) - 大規模データセットの処理

### 🔍 比較ガイド（コードサンプル付き）

本ライブラリと素のHTTP実装（Dio等）の比較を、実際のコードで示したドキュメントを用意しています。用途に応じた選定の参考にしてください。

- 日本語: [doc/comparison_ja.md](./doc/comparison_ja.md)
- English: [doc/comparison.md](./doc/comparison.md)

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

// ページネーションを処理
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

// ブロックの子を取得
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

// ブロックを削除(アーカイブ)
await client.blocks.delete('block_id');
```

#### ネストしたブロックの再帰取得

ページまたはブロック配下の全ての子孫ブロックを、深さ制限・キャッシュ・並列取得で最適化して取得できます。

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

final client = NotionClient(token: 'YOUR_TOKEN');

// 最大10階層までの子孫ブロックを再帰的に取得
final allBlocks = await recursivelyLoadBlocks(
  client,
  'block_or_page_id',
  maxDepth: 10,      // 0 = 直下の子のみ, null = 無制限
  concurrency: 4,    // レベル毎の並列取得数
);

// キャッシュを使い回して重複リクエストを避ける
final cache = BlockChildrenCache();
final first = await recursivelyLoadBlocks(client, 'root', cache: cache);
final second = await recursivelyLoadBlocks(client, 'root', cache: cache);
```

### ユーザーの操作

```dart
// ボットユーザーを取得 (me)
final me = await client.users.me();
print('Bot: ${me.name}');

// 特定のユーザーを取得
final user = await client.users.retrieve('user_id');

// すべてのユーザーをリスト
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

// すべてのページ/データベースを取得(クエリなし)
final all = await client.search.search();
```

### コメントの操作

```dart
// コメントを作成（親ページに対して）
final comment = await client.comments.create(
  parent: Parent.page('page_id'),
  richText: [
    RichText.text(content: 'これはコメントです'),
  ],
);

// ブロック/ページの未解決コメントを一覧
final comments = await client.comments.list(blockId: 'block_or_page_id');
for (final c in comments.results) {
  print('Comment: ${c.id}');
}

// コメントをIDで取得
final retrieved = await client.comments.retrieve(comment.id);
```

### ファイルのアップロード

```dart
// 1) シングルパートの小さなファイルをアップロード
final created = await client.fileUploads.create(
  mode: FileUploadMode.singlePart,
  filename: 'hello.txt',
  contentType: 'text/plain',
);

final uploaded = await client.fileUploads.sendBytes(
  created.id,
  'Hello Notion'.codeUnits,
  filename: 'hello.txt',
  contentType: 'text/plain',
);
print('Upload status: ${uploaded.status}');

// 2) マルチパートの大きなファイル（例）
// final session = await client.fileUploads.create(
//   mode: FileUploadMode.multiPart,
//   filename: 'big.mov',
//   contentType: 'video/quicktime',
//   numberOfParts: 3,
// );
// await client.fileUploads.sendFile(session.id, '/path/part1', partNumber: 1);
// await client.fileUploads.sendFile(session.id, '/path/part2', partNumber: 2);
// await client.fileUploads.sendFile(session.id, '/path/part3', partNumber: 3);
// final done = await client.fileUploads.complete(session.id);
```

### テンプレートの操作 (v0.2.2の新機能)

Template APIを使用して、データソースからテンプレートを一覧・取得し、テンプレートを使用してページを作成できます:

```dart
// データソースからすべてのテンプレートを一覧
final templates = await client.templates.listTemplates('data_source_id');

for (final template in templates.results) {
  print('テンプレート: ${template.title}');
  print('説明: ${template.description}');
  print('作成日: ${template.createdTime}');
  print('URL: ${template.url}');
}

// 大きなテンプレートリストのページネーション処理
if (templates.hasMore) {
  final nextPage = await client.templates.listTemplates(
    'data_source_id',
    startCursor: templates.nextCursor,
    pageSize: 25,
  );
}

// 特定のテンプレートを取得
final template = await client.templates.retrieveTemplate(
  'data_source_id',
  'template_id',
);

print('テンプレート: ${template.title}');
print('作成者: ${template.createdBy.name}');
print('最終編集: ${template.lastEditedTime}');

// テンプレートからページを作成
final pageFromTemplate = await client.pages.create(
  parent: Parent.database('database_id'),
  properties: {
    'Name': {
      'title': [
        {'text': {'content': 'テンプレートから作成されたページ'}}
      ]
    },
    'Status': {
      'select': {'name': 'ドラフト'}
    }
  },
  templateId: template.id, // テンプレートを使用
);

print('作成されたページ: ${pageFromTemplate.id}');
```

**Template API機能:**

- ✅ ページネーション付きでデータソースからテンプレートを一覧
- ✅ 特定のテンプレートの詳細を取得
- ✅ テンプレートを使用してページを作成
- ✅ Templateモデルによる完全な型安全性
- ✅ テンプレート操作の適切なエラーハンドリング
- ✅ 既存のページ作成との後方互換性

**エラーハンドリング:**

```dart
try {
  final template = await client.templates.retrieveTemplate(
    'data_source_id',
    'nonexistent_template',
  );
} on TemplateNotFoundException catch (e) {
  print('テンプレートが見つかりません: ${e.message}');
} on InvalidTemplateException catch (e) {
  print('無効なテンプレート: ${e.message}');
} on NotionException catch (e) {
  print('API エラー: ${e.message}');
}
```

### クエリ DSL (型安全フィルターとソート)

ライブラリには型安全なフィルターとソートを構築するための強力なクエリ DSL が含まれています:

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

// シンプルなフィルター
final statusFilter = Filter.property('Status').select.equals('In Progress');
final priorityFilter = Filter.property('Priority').number.greaterThan(3);
final dateFilter = Filter.property('Due Date').date.thisWeek(const {});

// AND による複合フィルター
final andFilter = Filter.and([
  Filter.property('Status').select.equals('In Progress'),
  Filter.property('Priority').number.greaterThan(3),
]);

// OR による複合フィルター
final orFilter = Filter.or([
  Filter.property('Status').select.equals('Todo'),
  Filter.property('Status').select.equals('In Progress'),
]);

// ネストされたフィルター
final complexFilter = Filter.and([
  Filter.or([
    Filter.property('Status').select.equals('Todo'),
    Filter.property('Status').select.equals('In Progress'),
  ]),
  Filter.property('Priority').number.greaterThan(3),
]);

// ソート
final sorts = [
  Sort.property('Priority').descending(),
  Sort.createdTime.ascending(),
];

// クエリで使用
final results = await client.databases.query(
  databaseId,
  filter: complexFilter.toJson(),
  sorts: sorts.map((s) => s.toJson()).toList(),
);
```

**サポートされているフィルタータイプ:**
- Text: `contains`, `equals`, `startsWith`, `endsWith`, `isEmpty`, `isNotEmpty`
- Number: `equals`, `greaterThan`, `lessThan`, `greaterThanOrEqualTo`, `lessThanOrEqualTo`
- Checkbox: `equals`, `doesNotEqual`
- Select: `equals`, `doesNotEqual`, `isEmpty`, `isNotEmpty`
- Multi-select: `contains`, `doesNotContain`, `isEmpty`, `isNotEmpty`
- Date: `after`, `before`, `equals`, `onOrAfter`, `onOrBefore`, `pastWeek`, `pastMonth`, `thisWeek`, `nextWeek` など
- People: `contains`, `doesNotContain`, `isEmpty`, `isNotEmpty`
- Files: `isEmpty`, `isNotEmpty`
- その他多数...

包括的なサンプルは [query_dsl_example.dart](./example/query_dsl_example.dart) を参照してください。

### プロパティの操作

```dart
// 様々なプロパティタイプでページを作成
final properties = {
  'Title': PropertyValue.title([
    RichText.text(
      text: 'My Page',
      annotations: const Annotations(bold: true, color: 'blue'),
    ),
  ]).toJson(),

  'Status': PropertyValue.select('In Progress').toJson(),
  'Priority': PropertyValue.number(5).toJson(),
  'Tags': PropertyValue.multiSelect(['urgent', 'planning']).toJson(),
  'Due Date': PropertyValue.date(
    start: DateTime.now().add(const Duration(days: 7)),
  ).toJson(),
  'Completed': PropertyValue.checkbox(false).toJson(),
  'Assignees': PropertyValue.people(['user_id']).toJson(),
  'URL': PropertyValue.url('https://example.com').toJson(),
};

final page = await client.pages.create(
  parent: Parent.database(databaseId).toJson(),
  properties: properties,
);
```

**サポートされているプロパティタイプ:** Title, Rich Text, Number, Select, Multi-select, Date, People, Checkbox, URL, Email, Phone, Files, Relation, Rollup, Formula, Status, Created Time, Created By, Last Edited Time, Last Edited By, Unique ID

詳細は [properties_and_blocks_example.dart](./example/properties_and_blocks_example.dart) を参照してください。

### ページネーション

ビルトインのページネーションサポートで大規模データセットを効率的に処理:

```dart
// データベースからすべてのページを取得
final allPages = <Page>[];
String? cursor;

do {
  final response = await client.databases.query(
    databaseId,
    startCursor: cursor,
    pageSize: 100,
  );

  allPages.addAll(response.results);
  cursor = response.nextCursor;

  print('これまでに ${allPages.length} ページを取得...');
} while (cursor != null);

print('合計ページ数: ${allPages.length}');
```

高度なページネーションパターンについては [pagination_example.dart](./example/pagination_example.dart) を参照してください。

## 🔧 高度な設定

### カスタム HTTP クライアント設定

```dart
final client = NotionClient(
  token: 'YOUR_INTEGRATION_TOKEN',
);

// HTTP クライアントは以下をサポート:
// - 429 (レート制限) エラー時の自動リトライ
// - ジッター付き指数バックオフ
// - 設定可能なタイムアウト (デフォルト30秒)
// - カスタムリトライ回数 (デフォルト3回)
// - 失敗時の自動エンキューとバックグラウンド再試行 (RetryQueue)

// RetryQueue に直接アクセスして監視/停止も可能
final queue = client.retryQueue;
queue.start(); // 明示起動は不要（NotionHttpClient が自動で start 済み）
// queue.stop(); // アプリ終了時は client.close() が自動で停止
```

### リトライキューの挙動

- **対象**: 一時的な失敗 (429/5xx) やネットワーク系タイムアウト/接続エラー
- **優先度**: `GET` は低、`POST`/`PATCH`/`DELETE` は通常（内部デフォルト）
- **バックオフ**: 指数バックオフ。`Retry-After` ヘッダーがある場合はそれを優先
- **並行度**: デフォルト `1`（安全性重視）
- **最大リトライ回数**: デフォルト `5`

高度にカスタマイズしたい場合は `NotionClient` の生成をラップし、`NotionHttpClient` に `RetryQueue` を注入してください。

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
  print('Notion API エラー: ${e.message} (${e.statusCode})');
}
```

## 📖 API リファレンス

### サービス

| サービス | 説明 | ステータス |
|---------|-------------|--------|
| `client.users` | ユーザー操作 (me, retrieve, list) | ✅ 実装済み |
| `client.pages` | ページ操作 (create, retrieve, update, archive) | ✅ 実装済み |
| `client.databases` | データベース操作 (create, retrieve, update, query) | ✅ 実装済み |
| `client.dataSources` | Data Sources API (v3) | ✅ 実装済み |
| `client.blocks` | ブロック操作 (retrieve, update, append, delete) | ✅ 実装済み |
| `client.search` | ページとデータベースを横断検索 | ✅ 実装済み |

### コア機能

| 機能 | ステータス |
|---------|--------|
| クエリ DSL (型安全フィルター/ソート) | ✅ 実装済み |
| レート制限 & リトライロジック | ✅ 実装済み |
| Result 型パターン | ✅ 実装済み |
| 包括的なロギング | ✅ 実装済み |
| 21種類のプロパティタイプ | ✅ 実装済み |
| 31種類以上のブロックタイプ | ✅ 実装済み |

### v0.2.0の新機能

| 機能 | ステータス |
|---------|--------|
| ページプロパティ取得API | ✅ 実装済み |
| マルチソースデータベースサポート | ✅ 実装済み |
| 拡張プロパティサポート (is_locked, in_trash) | ✅ 実装済み |
| APIバージョン管理 | ✅ 実装済み |

### 予定機能

| 機能 | ステータス |
|---------|--------|
| Comments API | ✅ 実装済み ([#6](https://github.com/Haruki1090/notion-dart-kit/issues/6)) |
| File Upload API | ✅ 実装済み ([#7](https://github.com/Haruki1090/notion-dart-kit/issues/7)) |
| Webhooks サポート | 🚧 予定 |

> 🗂️ これらのロードマップ項目の進捗状況は公開 GitHub Issues キューで確認またはフォローできます。

## 🏗️ アーキテクチャ

```
notion-dart-kit/
├── lib/
│   ├── notion_dart_kit.dart          # メインエクスポートファイル
│   └── src/
│       ├── client/
│       │   ├── http_client.dart       # リトライロジック付き HTTP クライアント
│       │   ├── notion_client.dart     # メイン API クライアント
│       │   └── rate_limiter.dart      # レート制限実装
│       ├── models/
│       │   ├── user.dart              # ユーザーモデル
│       │   ├── page.dart              # ページモデル
│       │   ├── database.dart          # データベースモデル
│       │   ├── block.dart             # ブロックモデル (31種類以上)
│       │   ├── rich_text.dart         # リッチテキストモデル
│       │   ├── file.dart              # ファイル/アイコンモデル
│       │   ├── parent.dart            # 親オブジェクトモデル
│       │   ├── property_value.dart    # プロパティ値モデル (21種類)
│       │   ├── property_schema.dart   # プロパティスキーマモデル
│       │   └── pagination.dart        # ページネーションモデル
│       ├── services/
│       │   ├── users_service.dart     # User API エンドポイント
│       │   ├── pages_service.dart     # Page API エンドポイント
│       │   ├── databases_service.dart # Database API エンドポイント
│       │   ├── data_sources_service.dart # Data Sources API (v3)
│       │   ├── blocks_service.dart    # Block API エンドポイント
│       │   ├── search_service.dart    # Search API エンドポイント
│       │   ├── comments_service.dart  # Comments API エンドポイント
│       │   └── file_uploads_service.dart # File Uploads API エンドポイント
│       ├── query/
│       │   ├── filter.dart            # クエリフィルター DSL
│       │   ├── filter_builder.dart    # 型安全フィルタービルダー
│       │   └── sort.dart              # ソート DSL
│       └── utils/
│           ├── exceptions.dart        # カスタム例外クラス
│           ├── notion_logger.dart     # ロギングユーティリティ
│           └── result.dart            # Result 型パターン
```

## 🧪 テスト

テストを実行:

```bash
dart test
```

現在のテストカバレッジ: すべてのコア機能をカバーする **118 テストが合格**。

統合テストを実行 (有効な Notion トークンが必要):

```bash
export NOTION_TOKEN=your_token_here
dart test test/integration/
```

## 🤝 コントリビューション

コントリビューションを歓迎します! プルリクエストを自由に送信してください。大きな変更の場合は、まず Issue を開いて変更内容について議論してください。

1. リポジトリをフォーク
2. フィーチャーブランチを作成 (`git checkout -b feature/amazing-feature`)
3. テストを実行して合格を確認 (`dart test`)
4. コードをフォーマット (`dart format .`)
5. 変更をコミット (`git commit -m 'Add some amazing feature'`)
6. ブランチにプッシュ (`git push origin feature/amazing-feature`)
7. プルリクエストを開く

詳細なガイドラインについては [CONTRIBUTING.md](./CONTRIBUTING.md) を参照してください。

## 📝 ライセンス

このプロジェクトは MIT ライセンスの下でライセンスされています - 詳細は [LICENSE](LICENSE) ファイルを参照してください。

## 🔗 リンク

- [Notion API ドキュメント](https://developers.notion.com/)
- [pub.dev のパッケージ](https://pub.dev/packages/notion_dart_kit)
- [API リファレンス (dartdoc)](https://pub.dev/documentation/notion_dart_kit/latest/)
- [Issue トラッカー](https://github.com/Haruki1090/notion-dart-kit/issues)
- [ソースコード](https://github.com/Haruki1090/notion-dart-kit)
- [変更履歴](./CHANGELOG.md)

## 👤 作者

**Haruki Inoue**

- GitHub: [@Haruki1090](https://github.com/Haruki1090)

## 🙏 謝辞

- イミュータブルなモデルのために [Freezed](https://pub.dev/packages/freezed) で構築
- HTTP クライアントは [Dio](https://pub.dev/packages/dio) を使用
- 公式 Notion JavaScript SDK にインスパイアされました

---

Dart と Flutter コミュニティのために ❤️ を込めて作成
