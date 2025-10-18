# 第3章: 基本的な使い方

> **この章の目標**: NotionClientの初期化方法、基本的なAPI呼び出し、エラーハンドリングを理解する

前章で環境構築が完了しました。この章では、Notion Dart Kitの基本的な使い方を学んでいきます。

---

## 📋 この章で学ぶこと

| トピック | 内容 | 重要度 |
|:---|:---|:---:|
| **NotionClientの初期化** | クライアントの作成と設定 | ⭐⭐⭐ |
| **最初のAPI呼び出し** | ページの取得 | ⭐⭐⭐ |
| **エラーハンドリング** | 例外の種類と対処方法 | ⭐⭐⭐ |
| **デバッグログ** | ログを有効にしてデバッグする | ⭐⭐ |
| **クライアントのクローズ** | リソースの適切な解放 | ⭐⭐ |

---

## 🎯 Step 1: NotionClientの初期化

### 1.1 基本的な初期化

最もシンプルな初期化方法：

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

void main() async {
  // NotionClientを作成
  final client = NotionClient(token: 'secret_your_token_here');

  // ... API呼び出し ...

  // 使い終わったらクローズ
  client.close();
}
```

**補足**:
- `token`: Step 2で取得したAPIトークンを指定します
- `client.close()`: 使い終わったら必ず呼び出してください（HTTPコネクションをクローズします）

### 1.2 環境変数から読み込む（推奨）

実際のアプリケーションでは、環境変数からトークンを読み込むことを推奨します：

```dart
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';

Future<void> main() async {
  // .envファイルを読み込み
  await dotenv.load();

  // 環境変数からトークンを取得
  final token = dotenv.env['NOTION_API_TOKEN']!;

  // NotionClientを作成
  final client = NotionClient(token: token);

  // ... API呼び出し ...

  client.close();
}
```

**前提条件**:
1. `pubspec.yaml`に`flutter_dotenv`を追加
2. `.env`ファイルに`NOTION_API_TOKEN=secret_...`を記述
3. `.gitignore`に`.env`を追加

### 1.3 Flutterアプリでの初期化パターン

Flutterアプリでは、サービスクラスにラップするのが一般的です：

```dart
// lib/services/notion_service.dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

class NotionService {
  late final NotionClient _client;

  NotionService(String token) {
    _client = NotionClient(token: token);
  }

  // NotionClientを外部に公開
  NotionClient get client => _client;

  // クリーンアップ
  void dispose() {
    _client.close();
  }
}
```

使用例：

```dart
// アプリ起動時に初期化
final notionService = NotionService('secret_your_token');

// 使用
final page = await notionService.client.pages.retrieve(pageId);

// アプリ終了時にクリーンアップ
notionService.dispose();
```

---

## 📄 Step 2: 最初のAPI呼び出し

### 2.1 ページを取得する

最もシンプルなAPI呼び出しは、ページの取得です：

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

Future<void> getPage() async {
  final client = NotionClient(token: 'your_token');

  try {
    // ページを取得
    final page = await client.pages.retrieve('your_page_id');

    // ページ情報を表示
    print('Page ID: ${page.id}');
    print('Created at: ${page.createdTime}');
    print('Last edited: ${page.lastEditedTime}');

    // ページのプロパティを表示
    page.properties.forEach((key, value) {
      print('Property: $key = $value');
    });
  } finally {
    client.close();
  }
}
```

**補足**:
- `client.pages.retrieve()`: 指定したIDのページを取得します
- `page.id`: ページのID
- `page.properties`: ページのプロパティ（タイトル、ステータスなど）
- `finally`ブロック: エラーが発生してもクライアントを確実にクローズします

### 2.2 実行結果の例

```dart
Page ID: 1234567890abcdef1234567890abcdef
Created at: 2025-01-15T10:30:00.000Z
Last edited: 2025-01-15T14:20:00.000Z
Property: Title = Instance of 'PropertyValue'
Property: Status = Instance of 'PropertyValue'
```

---

## 🚨 Step 3: エラーハンドリング

Notion API呼び出しは、さまざまなエラーが発生する可能性があります。適切なエラーハンドリングを行いましょう。

### 3.1 例外の種類

Notion Dart Kitは、以下の例外を提供しています：

| 例外クラス | HTTPステータス | 説明 |
|:---|:---:|:---|
| `AuthenticationException` | 401 | トークンが無効または期限切れ |
| `NotFoundException` | 404 | ページやデータベースが見つからない |
| `ValidationException` | 400 | リクエストが不正（パラメータエラー） |
| `RateLimitException` | 429 | レート制限に達した |
| `NotionException` | その他 | その他のNotion API エラー |

### 3.2 基本的なエラーハンドリング

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

Future<void> getPageWithErrorHandling() async {
  final client = NotionClient(token: 'your_token');

  try {
    final page = await client.pages.retrieve('your_page_id');
    print('✅ Successfully retrieved page: ${page.id}');
  } on AuthenticationException catch (e) {
    // 401: 認証エラー
    print('❌ Authentication failed: ${e.message}');
    print('   → Check your API token');
  } on NotFoundException catch (e) {
    // 404: ページが見つからない
    print('❌ Page not found: ${e.message}');
    print('   → Check the page ID or ensure the integration has access');
  } on ValidationException catch (e) {
    // 400: リクエストが不正
    print('❌ Invalid request: ${e.message}');
    print('   → Check your parameters');
  } on RateLimitException catch (e) {
    // 429: レート制限
    print('❌ Rate limit exceeded: ${e.message}');
    print('   → Please wait and try again');
  } on NotionException catch (e) {
    // その他のNotionエラー
    print('❌ Notion error (${e.statusCode}): ${e.message}');
  } catch (e) {
    // 予期しないエラー
    print('❌ Unexpected error: $e');
  } finally {
    client.close();
  }
}
```

**補足**:
- 例外は**具体的なものから順に**キャッチします（`AuthenticationException` → `NotionException`の順）
- `NotionException`は基底クラスなので、最後にキャッチします
- `finally`ブロックで確実にクライアントをクローズします

### 3.3 Flutterウィジェットでのエラーハンドリング

実際のFlutterアプリでは、以下のようにステート管理と組み合わせます：

```dart
import 'package:flutter/material.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';

class PageViewerWidget extends StatefulWidget {
  final String pageId;

  const PageViewerWidget({super.key, required this.pageId});

  @override
  State<PageViewerWidget> createState() => _PageViewerWidgetState();
}

class _PageViewerWidgetState extends State<PageViewerWidget> {
  Page? _page;
  String? _errorMessage;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadPage();
  }

  Future<void> _loadPage() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    final client = NotionClient(token: 'your_token');

    try {
      final page = await client.pages.retrieve(widget.pageId);
      setState(() {
        _page = page;
        _isLoading = false;
      });
    } on AuthenticationException catch (e) {
      setState(() {
        _errorMessage = '認証エラー: ${e.message}';
        _isLoading = false;
      });
    } on NotFoundException catch (e) {
      setState(() {
        _errorMessage = 'ページが見つかりません: ${e.message}';
        _isLoading = false;
      });
    } on NotionException catch (e) {
      setState(() {
        _errorMessage = 'エラーが発生しました: ${e.message}';
        _isLoading = false;
      });
    } finally {
      client.close();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_errorMessage != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 16),
            Text(_errorMessage!, textAlign: TextAlign.center),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _loadPage,
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (_page == null) {
      return const Center(child: Text('No data'));
    }

    return Center(
      child: Text('Page ID: ${_page!.id}'),
    );
  }
}
```

**補足**:
- `_isLoading`: ローディング状態を管理
- `_errorMessage`: エラーメッセージを保持
- `_page`: 取得したページデータを保持
- エラー時は`Retry`ボタンで再試行可能

---

## 🔍 Step 4: デバッグログの有効化

開発中は、ログを有効にすると便利です。

### 4.1 ログを有効にする

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

void main() {
  // ログを有効化
  NotionLogger.instance.initialize(isDebugMode: true);

  // ... 以降の処理 ...
}
```

### 4.2 ログ出力の例

ログを有効にすると、以下のような情報が出力されます：

```
[Notion] Request: GET https://api.notion.com/v1/pages/abc123...
[Notion] Headers: {Authorization: Bearer secret_***, Notion-Version: 2022-06-28}
[Notion] Response: 200 OK (423ms)
[Notion] Body: {"object":"page","id":"abc123...",...}
```

**補足**:
- APIリクエスト/レスポンスの詳細が確認できます
- `Authorization`ヘッダーは自動的にマスクされます（セキュリティのため）
- レスポンス時間も表示されます

### 4.3 本番環境ではログを無効化

本番環境では、必ずログを無効にしてください：

```dart
void main() {
  // 本番環境ではfalse
  NotionLogger.instance.initialize(isDebugMode: false);

  // ... 以降の処理 ...
}
```

---

## 🧹 Step 5: クライアントのクローズ

### 5.1 なぜクローズが必要か？

`NotionClient`は内部でHTTPクライアント（Dio）を使用しています。使い終わったら、以下の理由でクローズする必要があります：

| 理由 | 詳細 |
|:---|:---|
| **リソースの解放** | HTTPコネクションやソケットを解放 |
| **メモリリーク防止** | 未クローズのクライアントがメモリに残る |
| **パフォーマンス** | アイドル状態のコネクションを削減 |

### 5.2 適切なクローズ方法

#### パターン1: finally ブロック

```dart
Future<void> doSomething() async {
  final client = NotionClient(token: 'your_token');

  try {
    // API呼び出し
    final page = await client.pages.retrieve('page_id');
    // ...
  } finally {
    // エラーが発生してもクローズされる
    client.close();
  }
}
```

#### パターン2: シングルトンパターン

アプリ全体で1つのインスタンスを共有する場合：

```dart
class NotionService {
  static final NotionService _instance = NotionService._internal();
  late final NotionClient client;

  factory NotionService() => _instance;

  NotionService._internal() {
    client = NotionClient(token: 'your_token');
  }

  void dispose() {
    client.close();
  }
}

// アプリ起動時
final notionService = NotionService();

// アプリ全体で使用
await notionService.client.pages.retrieve('page_id');

// アプリ終了時
notionService.dispose();
```

#### パターン3: Riverpodでの管理（推奨）

状態管理ライブラリを使う場合：

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';

// NotionClientのProvider
final notionClientProvider = Provider<NotionClient>((ref) {
  final client = NotionClient(token: 'your_token');

  // Providerが破棄されたときにクローズ
  ref.onDispose(() {
    client.close();
  });

  return client;
});

// 使用例
class MyWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(notionClientProvider);

    // clientを使用...
    return Container();
  }
}
```

**補足**:
- `ref.onDispose()`: Providerが破棄されたときに自動的にクローズされます
- アプリ全体で1つのインスタンスを共有できます

---

## 📊 Step 6: 複数のサービスを使う

`NotionClient`は、複数のサービスを提供しています：

### 6.1 利用可能なサービス

| サービス | 用途 | 主なメソッド |
|:---|:---|:---|
| `client.pages` | ページ操作 | `retrieve()`, `create()`, `update()` |
| `client.databases` | データベース操作 | `retrieve()`, `query()`, `create()` |
| `client.blocks` | ブロック操作 | `retrieve()`, `appendChildren()` |
| `client.search` | 検索 | `search()` |
| `client.users` | ユーザー情報 | `retrieve()`, `list()`, `me()` |

### 6.2 複数のサービスを使う例

```dart
Future<void> multipleServices() async {
  final client = NotionClient(token: 'your_token');

  try {
    // ページを取得
    final page = await client.pages.retrieve('page_id');
    print('Page: ${page.id}');

    // データベースをクエリ
    final dbResult = await client.databases.query('database_id');
    print('Found ${dbResult.results.length} pages');

    // ワークスペースを検索
    final searchResult = await client.search.search(query: 'meeting');
    print('Search results: ${searchResult.results.length}');

    // 現在のユーザー情報を取得
    final me = await client.users.me();
    print('Current user: ${me.id}');
  } finally {
    client.close();
  }
}
```

**補足**:
- 1つの`NotionClient`インスタンスで、すべてのサービスにアクセスできます
- 複数のサービスを使っても、クローズは1回だけ呼び出せばOKです

---

## 🎯 実践演習

### 演習1: ページ情報を取得して表示する

以下の要件を満たすFlutterウィジェットを作成してください：

**要件**:
1. ページIDを受け取る
2. ページ情報を取得して表示する
3. ローディング中はインジケータを表示する
4. エラーが発生したらメッセージを表示する
5. リトライボタンを実装する

<details>
<summary>💡 解答例</summary>

```dart
import 'package:flutter/material.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';

class PageInfoWidget extends StatefulWidget {
  final String pageId;
  final String apiToken;

  const PageInfoWidget({
    super.key,
    required this.pageId,
    required this.apiToken,
  });

  @override
  State<PageInfoWidget> createState() => _PageInfoWidgetState();
}

class _PageInfoWidgetState extends State<PageInfoWidget> {
  Page? _page;
  String? _error;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _fetchPage();
  }

  Future<void> _fetchPage() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    final client = NotionClient(token: widget.apiToken);

    try {
      final page = await client.pages.retrieve(widget.pageId);
      setState(() {
        _page = page;
        _isLoading = false;
      });
    } on NotionException catch (e) {
      setState(() {
        _error = e.message;
        _isLoading = false;
      });
    } finally {
      client.close();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error, size: 48, color: Colors.red),
            SizedBox(height: 16),
            Text('Error: $_error'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _fetchPage,
              child: Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (_page == null) {
      return Center(child: Text('No data'));
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Page ID: ${_page!.id}'),
          SizedBox(height: 8),
          Text('Created: ${_page!.createdTime}'),
          SizedBox(height: 8),
          Text('Last Edited: ${_page!.lastEditedTime}'),
        ],
      ),
    );
  }
}
```
</details>

---

## ✅ チェックリスト

この章で学んだことを確認しましょう：

- [ ] `NotionClient`を初期化できる
- [ ] 環境変数からAPIトークンを読み込める
- [ ] ページを取得するAPI呼び出しができる
- [ ] 適切なエラーハンドリングができる
- [ ] デバッグログを有効化/無効化できる
- [ ] クライアントを適切にクローズできる
- [ ] 複数のサービスを使い分けられる

---

## 📚 次のステップ

基本的な使い方を理解できましたか？次の章では、Pagesサービスの詳細な操作方法を学んでいきます。

**👉 [第4章: Pages（ページ）の操作](./04_pages.md)に進む**

---

**💡 ヒント**: この章で学んだエラーハンドリングとクライアント管理のパターンは、今後すべての章で使用します。しっかり理解しておきましょう。

[📖 目次に戻る](./index.md) | [⬅️ 前の章](./02_setup.md) | [➡️ 次の章](./04_pages.md)
