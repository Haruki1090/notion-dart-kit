# notion-dart-kit 入門ガイド

このガイドでは、Dart または Flutter プロジェクトで **notion-dart-kit** を使い始めるために必要なすべてを説明します。

## 目次

- [前提条件](#前提条件)
- [インストール](#インストール)
- [セットアップ](#セットアップ)
- [基本的な使い方](#基本的な使い方)
- [ページの操作](#ページの操作)
- [データベースの操作](#データベースの操作)
- [ブロックの操作](#ブロックの操作)
- [クエリ DSL](#クエリ-dsl)
- [エラーハンドリング](#エラーハンドリング)
- [ベストプラクティス](#ベストプラクティス)
- [次のステップ](#次のステップ)

## 前提条件

始める前に、以下を準備してください：

1. **Dart SDK 3.0.0 以降**がインストールされていること
2. **Notion アカウント**（ワークスペースへの管理者アクセス権が必要）
3. **Notion インテグレーション**と API トークン

### Notion インテグレーションの作成

1. [https://www.notion.so/my-integrations](https://www.notion.so/my-integrations) にアクセス
2. **「+ New integration」**をクリック
3. 名前を入力（例：「My Dart App」）
4. 使用するワークスペースを選択
5. **「Submit」**をクリック
6. **「Internal Integration Token」**をコピー（`secret_` で始まります）

### インテグレーションへのアクセス権の付与

インテグレーションには、ページやデータベースへの明示的なアクセス権が必要です：

1. アクセスしたいページまたはデータベースを開く
2. 右上の **「...」**メニューをクリック
3. **「Connections」**までスクロール
4. **「Add connections」**をクリック
5. リストからインテグレーションを選択

**重要**：インテグレーションは、明示的に共有したページとデータベースのみにアクセスできます。

## インストール

`pubspec.yaml` に `notion-dart-kit` を追加：

```yaml
dependencies:
  notion_dart_kit: ^0.1.0
```

次に実行：

```bash
dart pub get
# または
flutter pub get
```

## セットアップ

### クライアントの作成

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

void main() async {
  // インテグレーショントークンでクライアントを初期化
  final client = NotionClient(
    token: 'secret_YOUR_INTEGRATION_TOKEN',
  );

  // オプション：デバッグログを有効化
  NotionLogger.instance.initialize(isDebugMode: true);

  try {
    // ここにコードを記述
  } finally {
    // 終了時は必ずクライアントをクローズ
    client.close();
  }
}
```

### 環境変数の使用（推奨）

セキュリティのため、トークンは環境変数に保存することを推奨します：

**.env ファイル：**
```
NOTION_API_KEY=secret_YOUR_INTEGRATION_TOKEN
```

**コード：**
```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:dotenv/dotenv.dart';

void main() async {
  final env = DotEnv()..load();

  final client = NotionClient(
    token: env['NOTION_API_KEY']!,
  );

  // ここにコードを記述
}
```

## 基本的な使い方

### ユーザー情報の取得

```dart
// ボットユーザー（インテグレーション）の情報を取得
final botUser = await client.users.me();
print('Bot User: ${botUser.name}');
print('Bot ID: ${botUser.id}');

// ユーザータイプの確認
botUser.when(
  person: (id, person, name, avatarUrl) {
    print('Type: Person');
    print('Email: ${person.email}');
  },
  bot: (id, bot, name, avatarUrl) {
    print('Type: Bot');
    print('Workspace: ${bot.workspaceName}');
  },
);
```

### ユーザーの取得

```dart
final user = await client.users.retrieve('user_id');
print('User: ${user.name}');
```

### 全ユーザーの一覧取得

```dart
final usersResponse = await client.users.list(pageSize: 50);
print('Found ${usersResponse.results.length} users');

for (final user in usersResponse.results) {
  print('- ${user.name} (${user.id})');
}
```

### コンテンツの検索

```dart
// アクセス可能なすべてのページとデータベースを検索
final searchResults = await client.search.search(
  query: 'project',
  pageSize: 10,
);

print('Found ${searchResults.results.length} results');

for (final result in searchResults.results) {
  result.when(
    page: (page) => print('📄 Page: ${page.id}'),
    database: (database) => print('📊 Database: ${database.id}'),
  );
}
```

## ページの操作

### ページの取得

```dart
final page = await client.pages.retrieve('page_id');

print('Page ID: ${page.id}');
print('Created: ${page.createdTime}');
print('Last edited: ${page.lastEditedTime}');
print('Archived: ${page.archived}');
print('URL: ${page.url}');

// プロパティへのアクセス
final properties = page.properties;
print('Properties: ${properties.keys}');
```

### ページの作成

#### データベース内のシンプルなページ

```dart
final newPage = await client.pages.create(
  parent: Parent.database(databaseId: 'database_id').toJson(),
  properties: {
    'Name': PropertyValue.title([
      RichText.text(text: '最初のページ'),
    ]).toJson(),
    'Status': PropertyValue.select('In Progress').toJson(),
    'Priority': PropertyValue.number(5).toJson(),
  },
);

print('Created page: ${newPage.id}');
```

#### 別のページの子ページとして作成

```dart
final childPage = await client.pages.create(
  parent: Parent.page(pageId: 'parent_page_id').toJson(),
  properties: {
    'title': PropertyValue.title([
      RichText.text(text: '子ページ'),
    ]).toJson(),
  },
);
```

#### コンテンツブロック付きのページ

```dart
final pageWithContent = await client.pages.create(
  parent: Parent.database(databaseId: 'database_id').toJson(),
  properties: {
    'Name': PropertyValue.title([
      RichText.text(text: 'コンテンツ付きページ'),
    ]).toJson(),
  },
  children: [
    {
      'object': 'block',
      'type': 'heading_1',
      'heading_1': {
        'rich_text': [
          {'type': 'text', 'text': {'content': 'はじめに'}}
        ],
      },
    },
    {
      'object': 'block',
      'type': 'paragraph',
      'paragraph': {
        'rich_text': [
          {'type': 'text', 'text': {'content': 'これは最初の段落です。'}}
        ],
      },
    },
  ],
);
```

### ページの更新

```dart
// プロパティの更新
await client.pages.update(
  'page_id',
  properties: {
    'Status': PropertyValue.select('Done').toJson(),
    'Completed': PropertyValue.checkbox(true).toJson(),
  },
);

// アイコンとカバーの更新
await client.pages.update(
  'page_id',
  icon: FileObject.emoji('🎉').toJson(),
  cover: FileObject.external(url: 'https://example.com/image.jpg').toJson(),
);
```

### ページのアーカイブと復元

```dart
// ページをアーカイブ
await client.pages.archive('page_id');

// アーカイブされたページを復元
await client.pages.restore('page_id');
```

## データベースの操作

### データベースの取得

```dart
final database = await client.databases.retrieve('database_id');

print('Database ID: ${database.id}');
print('Title: ${database.title.first.plainText}');
print('Is inline: ${database.isInline}');

// データベーススキーマの表示
for (final entry in database.properties.entries) {
  print('Property: ${entry.key} (${entry.value.type})');
}
```

### データベースのクエリ

```dart
// シンプルなクエリ
final results = await client.databases.query('database_id');

print('Found ${results.results.length} pages');

for (final page in results.results) {
  print('Page: ${page.id}');
}
```

### フィルター付きクエリ

```dart
final results = await client.databases.query(
  'database_id',
  filter: {
    'property': 'Status',
    'select': {'equals': 'In Progress'},
  },
);
```

### ソート付きクエリ

```dart
final results = await client.databases.query(
  'database_id',
  sorts: [
    {'property': 'Priority', 'direction': 'descending'},
    {'property': 'Created', 'direction': 'ascending'},
  ],
);
```

### ページネーション付きクエリ

```dart
final allPages = <Page>[];
String? cursor;

do {
  final response = await client.databases.query(
    'database_id',
    startCursor: cursor,
    pageSize: 100, // 最大許容値
  );

  allPages.addAll(response.results);
  cursor = response.nextCursor;

  print('これまでに ${allPages.length} ページを取得...');
} while (cursor != null);

print('合計: ${allPages.length} ページ');
```

### データベースの作成

```dart
final newDatabase = await client.databases.create(
  parent: Parent.page(pageId: 'parent_page_id').toJson(),
  title: [
    RichText.text(text: 'マイタスク').toJson(),
  ],
  properties: {
    'Name': PropertySchema.title().toJson(),
    'Status': PropertySchema.select(
      options: [
        SelectOption(name: 'Todo'),
        SelectOption(name: 'In Progress'),
        SelectOption(name: 'Done'),
      ],
    ).toJson(),
    'Priority': PropertySchema.number().toJson(),
    'Due Date': PropertySchema.date().toJson(),
  },
);

print('Created database: ${newDatabase.id}');
```

### データベースの更新

```dart
// タイトルの更新
await client.databases.update(
  'database_id',
  title: [
    RichText.text(text: '更新されたタイトル').toJson(),
  ],
);

// 新しいプロパティの追加
await client.databases.update(
  'database_id',
  properties: {
    'Assignee': PropertySchema.people().toJson(),
  },
);
```

## ブロックの操作

### ブロックの取得

```dart
final block = await client.blocks.retrieve('block_id');

block.when(
  paragraph: (id, createdTime, lastEditedTime, createdBy, lastEditedBy,
      hasChildren, archived, inTrash, paragraph) {
    print('Paragraph: ${paragraph.richText.first.plainText}');
  },
  heading1: (id, createdTime, lastEditedTime, createdBy, lastEditedBy,
      hasChildren, archived, inTrash, heading) {
    print('Heading 1: ${heading.richText.first.plainText}');
  },
  // ... 他のブロックタイプを処理
  unsupported: (id, createdTime, lastEditedTime, createdBy, lastEditedBy,
      hasChildren, archived, inTrash, type) {
    print('Unsupported block type: $type');
  },
);
```

### 子ブロックの取得

```dart
final childrenResponse = await client.blocks.retrieveChildren('block_id');

print('Found ${childrenResponse.results.length} child blocks');

for (final block in childrenResponse.results) {
  block.when(
    paragraph: (_, _, _, _, _, _, _, _, paragraph) {
      print('- ${paragraph.richText.first.plainText}');
    },
    // ... 他のタイプを処理
    unsupported: (_, _, _, _, _, _, _, _, type) {
      print('- [Unsupported: $type]');
    },
  );
}
```

### ブロックの追加

```dart
await client.blocks.appendChildren(
  'parent_block_id',
  [
    {
      'object': 'block',
      'type': 'heading_2',
      'heading_2': {
        'rich_text': [
          {'type': 'text', 'text': {'content': '新しいセクション'}}
        ],
      },
    },
    {
      'object': 'block',
      'type': 'paragraph',
      'paragraph': {
        'rich_text': [
          {'type': 'text', 'text': {'content': 'ここにコンテンツ。'}}
        ],
      },
    },
    {
      'object': 'block',
      'type': 'to_do',
      'to_do': {
        'rich_text': [
          {'type': 'text', 'text': {'content': 'このタスクを完了する'}}
        ],
        'checked': false,
      },
    },
  ],
);
```

### ブロックの更新

```dart
await client.blocks.update(
  'block_id',
  {
    'paragraph': {
      'rich_text': [
        {'type': 'text', 'text': {'content': '更新された段落の内容'}}
      ],
    },
  },
);
```

### ブロックの削除

```dart
await client.blocks.delete('block_id');
```

## クエリ DSL

ライブラリは、複雑なフィルターとソートを構築するための型安全な DSL を提供します。

### フィルターの例

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

// テキストフィルター
final textFilter = Filter.property('Name').text.contains('Project');

// 数値フィルター
final numberFilter = Filter.property('Priority').number.greaterThan(3);

// 日付フィルター
final dateFilter = Filter.property('Due Date').date.thisWeek(const {});

// チェックボックスフィルター
final checkboxFilter = Filter.property('Completed').checkbox.equals(false);

// セレクトフィルター
final selectFilter = Filter.property('Status').select.equals('In Progress');

// マルチセレクトフィルター
final multiSelectFilter = Filter.property('Tags').multiSelect.contains('urgent');
```

### フィルターの組み合わせ

```dart
// AND 条件
final andFilter = Filter.and([
  Filter.property('Status').select.equals('In Progress'),
  Filter.property('Priority').number.greaterThanOrEqualTo(3),
  Filter.property('Completed').checkbox.equals(false),
]);

// OR 条件
final orFilter = Filter.or([
  Filter.property('Status').select.equals('Todo'),
  Filter.property('Status').select.equals('In Progress'),
]);

// 複雑なネストされたフィルター
final complexFilter = Filter.and([
  Filter.or([
    Filter.property('Priority').number.greaterThan(4),
    Filter.property('Tags').multiSelect.contains('urgent'),
  ]),
  Filter.property('Completed').checkbox.equals(false),
]);
```

### クエリでのフィルターの使用

```dart
final filter = Filter.and([
  Filter.property('Status').select.equals('Active'),
  Filter.property('Priority').number.greaterThan(3),
]);

final results = await client.databases.query(
  'database_id',
  filter: filter.toJson(),
);
```

### ソートの例

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

// プロパティでソート
final sortByPriority = Sort.property('Priority').descending();
final sortByName = Sort.property('Name').ascending();

// タイムスタンプでソート
final sortByCreated = Sort.createdTime.ascending();
final sortByEdited = Sort.lastEditedTime.descending();

// 複数のソート
final results = await client.databases.query(
  'database_id',
  sorts: [
    Sort.property('Priority').descending(),
    Sort.property('Due Date').ascending(),
  ].map((s) => s.toJson()).toList(),
);
```

## エラーハンドリング

ライブラリは、異なるエラーシナリオに対応する特定の例外タイプを提供します。

### 例外の階層

```dart
NotionException（基底クラス）
├── AuthenticationException（401）
├── NotFoundException（404）
├── ValidationException（400）
├── RateLimitException（429）
└──（その他の HTTP エラー）
```

### 例外の処理

```dart
try {
  final page = await client.pages.retrieve('page_id');
  print('Page retrieved: ${page.id}');
} on NotFoundException catch (e) {
  print('ページが見つかりません: ${e.message}');
  print('ステータスコード: ${e.statusCode}');
} on AuthenticationException catch (e) {
  print('認証に失敗しました: ${e.message}');
  print('インテグレーショントークンを確認してください。');
} on ValidationException catch (e) {
  print('無効なリクエスト: ${e.message}');
  print('リクエストパラメータを確認してください。');
} on RateLimitException catch (e) {
  print('レート制限: ${e.message}');
  print('ライブラリは自動的にバックオフを使用して再試行します。');
} on NotionException catch (e) {
  print('Notion API エラー: ${e.message}');
  print('ステータスコード: ${e.statusCode}');
} catch (e) {
  print('予期しないエラー: $e');
}
```

### Result 型パターン

関数型エラーハンドリングには、`Result` 型を使用できます：

```dart
Result<Page, NotionException> getPage(String pageId) async {
  try {
    final page = await client.pages.retrieve(pageId);
    return Result.success(page);
  } on NotionException catch (e) {
    return Result.failure(e);
  }
}

// 使用例
final result = await getPage('page_id');

result.when(
  success: (page) {
    print('成功: ${page.id}');
  },
  failure: (error) {
    print('エラー: ${error.message}');
  },
);

// または変換メソッドを使用
final pageTitle = result
    .mapValue((page) => page.properties)
    .flatMap((props) => extractTitle(props))
    .getOrElse('無題');
```

## ベストプラクティス

### 1. 必ずクライアントをクローズする

```dart
void main() async {
  final client = NotionClient(token: 'your_token');

  try {
    // ここにコードを記述
  } finally {
    client.close(); // リソースを解放するために必ずクローズ
  }
}
```

### 2. トークンには環境変数を使用

ソースコードにインテグレーショントークンをハードコードしないでください：

```dart
// ❌ 悪い例
final client = NotionClient(token: 'secret_abc123...');

// ✅ 良い例
final client = NotionClient(token: Platform.environment['NOTION_API_KEY']!);
```

### 3. 大規模なデータセットにはページネーションを処理

```dart
// ❌ 悪い例 - 最初のページのみ取得
final results = await client.databases.query('database_id');

// ✅ 良い例 - すべてのページを取得
final allPages = <Page>[];
String? cursor;

do {
  final response = await client.databases.query(
    'database_id',
    startCursor: cursor,
    pageSize: 100,
  );
  allPages.addAll(response.results);
  cursor = response.nextCursor;
} while (cursor != null);
```

### 4. 型安全なクエリ DSL を使用

```dart
// ❌ メンテナンスが難しい
final filter = {
  'and': [
    {'property': 'Status', 'select': {'equals': 'Active'}},
    {'property': 'Priority', 'number': {'greater_than': 3}},
  ],
};

// ✅ 型安全でリファクタリングしやすい
final filter = Filter.and([
  Filter.property('Status').select.equals('Active'),
  Filter.property('Priority').number.greaterThan(3),
]);
```

### 5. 開発中はデバッグログを有効化

```dart
// HTTP リクエスト/レスポンスを確認するためデバッグログを有効化
NotionLogger.instance.initialize(isDebugMode: true);
```

### 6. レート制限を尊重

ライブラリには組み込みのレート制限（デフォルトで 3 リクエスト/秒）と指数バックオフによる自動再試行、さらに一時的失敗に対するバックグラウンドのリトライキューが含まれます。ただし、最適なパフォーマンスのためには：

- 可能な限り操作をバッチ処理
- ページネーションを効率的に使用
- 必要に応じて結果をキャッシュ
- クライアント側ではなくサーバー側でフィルタリング

### 7. リトライキューの監視（任意）

```dart
final queue = client.retryQueue; // 自動で start 済み
// 必要に応じて停止
// queue.stop();
```

### 8. アーカイブおよびゴミ箱アイテムの処理

```dart
final page = await client.pages.retrieve('page_id');

if (page.archived) {
  print('このページはアーカイブされています');
}

if (page.inTrash) {
  print('このページはゴミ箱にあります');
}

// 必要に応じて復元
if (page.archived && !page.inTrash) {
  await client.pages.restore(page.id);
}
```

### 8. ユニオン型にはパターンマッチングを使用

```dart
// Block、User、RichText などはユニオン型を使用
block.when(
  paragraph: (_, _, _, _, _, _, _, _, paragraph) {
    // 段落を処理
  },
  heading1: (_, _, _, _, _, _, _, _, heading) {
    // 見出し 1 を処理
  },
  // ... 他のケース
  unsupported: (_, _, _, _, _, _, _, _, type) {
    // サポートされていないタイプを適切に処理
  },
);
```

## 次のステップ

基本を学んだら、より高度なトピックを探索してください：

1. **[サンプルファイル](./example/)** - 完全な動作例を参照
   - `basic_usage.dart` - すべての機能の概要
   - `query_dsl_example.dart` - 高度なフィルタリングとソート
   - `properties_and_blocks_example.dart` - リッチコンテンツの操作
   - `pagination_example.dart` - 効率的なデータ取得

2. **[API リファレンス](./README_ja.md#api-リファレンス)** - 詳細な API ドキュメント

3. **[CLAUDE.md](./CLAUDE.md)** - アーキテクチャと開発ガイド

4. **[公式 Notion API ドキュメント](https://developers.notion.com/)** - 完全な Notion API リファレンス

5. **高度な機能**
   - Data Sources API（データベースビュー）
   - カスタムプロパティタイプ（relation、rollup、formula）
   - メンションと数式を含むリッチテキスト
   - ネストされたブロックと階層的コンテンツ
   - エラー回復と再試行戦略

## よくある問題

### 「Unauthorized」エラー

- インテグレーショントークンが正しいか確認
- インテグレーションがページ/データベースに追加されているか確認（[アクセス権の付与](#インテグレーションへのアクセス権の付与)を参照）

### 「Object not found」エラー

- ページ/データベース/ブロック ID が正しいか確認
- インテグレーションがリソースへのアクセス権を持っているか確認
- リソースが削除されていないか確認

### レート制限エラー

- ライブラリは自動的にレート制限を再試行で処理
- それでも制限に達する場合は、リクエスト頻度を減らす
- 結果のキャッシュを検討

### プロパティが表示されない

- 正確なプロパティ名を使用しているか確認（大文字小文字を区別）
- プロパティタイプが期待通りか確認
- 一部のプロパティは読み取り専用（例：`created_time`、`last_edited_time`）

## サポート

- **GitHub Issues**: [https://github.com/Haruki1090/notion-dart-kit/issues](https://github.com/Haruki1090/notion-dart-kit/issues)
- **Notion API ドキュメント**: [https://developers.notion.com/](https://developers.notion.com/)
- **パッケージドキュメント**: [https://pub.dev/packages/notion_dart_kit](https://pub.dev/packages/notion_dart_kit)

---

**Happy coding!** 🚀
