# 第4章: Pages（ページ）の操作

> **この章の目標**: NotionページのCRUD操作（作成・読み取り・更新・削除）をマスターする

前章で基本的な使い方を学びました。この章では、Pagesサービスを使って、Notionページの操作方法を詳しく学んでいきます。

---

## 📋 この章で学ぶこと

| トピック | 内容 | APIメソッド |
|:---|:---|:---|
| **ページの取得** | 既存ページの情報を読み取る | `retrieve()` |
| **ページの作成** | 新しいページを作成する | `create()` |
| **ページの更新** | プロパティやコンテンツを更新する | `update()` |
| **ページのアーカイブ** | ページをゴミ箱に移動する | `update()` |
| **ページの復元** | アーカイブしたページを復元する | `update()` |

---

## 📖 Step 1: ページの取得

### 1.1 基本的な取得

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

Future<void> retrievePage(String pageId) async {
  final client = NotionClient(token: 'your_token');

  try {
    // ページを取得
    final page = await client.pages.retrieve(pageId);

    // 基本情報を表示
    print('Page ID: ${page.id}');
    print('Created: ${page.createdTime}');
    print('Last Edited: ${page.lastEditedTime}');
    print('Archived: ${page.archived}');
  } finally {
    client.close();
  }
}
```

**補足**:
- `pageId`: 32文字の16進数文字列（ハイフンなし）
- `page.id`: ページのユニークID
- `page.archived`: `true`の場合、ページはゴミ箱にあります

### 1.2 ページのプロパティを取得

```dart
Future<void> getPageProperties(String pageId) async {
  final client = NotionClient(token: 'your_token');

  try {
    final page = await client.pages.retrieve(pageId);

    // プロパティを表示
    page.properties.forEach((key, value) {
      print('Property: $key');

      // プロパティの型によって処理を分岐
      value.map(
        title: (title) => print('  Type: Title'),
        richText: (richText) => print('  Type: Rich Text'),
        number: (number) => print('  Type: Number'),
        select: (select) => print('  Type: Select'),
        multiSelect: (multiSelect) => print('  Type: Multi-Select'),
        date: (date) => print('  Type: Date'),
        checkbox: (checkbox) => print('  Type: Checkbox'),
        url: (url) => print('  Type: URL'),
        email: (email) => print('  Type: Email'),
        phoneNumber: (phone) => print('  Type: Phone Number'),
        people: (people) => print('  Type: People'),
        files: (files) => print('  Type: Files'),
        status: (status) => print('  Type: Status'),
        relation: (relation) => print('  Type: Relation'),
        rollup: (rollup) => print('  Type: Rollup'),
        formula: (formula) => print('  Type: Formula'),
        createdTime: (createdTime) => print('  Type: Created Time'),
        createdBy: (createdBy) => print('  Type: Created By'),
        lastEditedTime: (lastEditedTime) => print('  Type: Last Edited Time'),
        lastEditedBy: (lastEditedBy) => print('  Type: Last Edited By'),
        uniqueId: (uniqueId) => print('  Type: Unique ID'),
      );
    });
  } finally {
    client.close();
  }
}
```

**補足**:
- `properties`: ページのすべてのプロパティを含むマップ
- `value.map()`: Freezedユニオン型のパターンマッチング
- 各プロパティタイプに対して異なる処理ができます

### 1.3 特定のプロパティの値を取得

```dart
String? getTitleFromPage(Page page) {
  // Titleプロパティを探す
  final titleProperty = page.properties.entries
      .firstWhere(
        (entry) => entry.value is PropertyValueTitle,
        orElse: () => MapEntry('', PropertyValue.title([])),
      )
      .value;

  return titleProperty.map(
    title: (title) {
      // RichTextのリストからテキストを抽出
      if (title.title.isEmpty) return null;
      return title.title
          .map((richText) => richText.plainText)
          .join('');
    },
    orElse: () => null,
  );
}

// 使用例
Future<void> example() async {
  final client = NotionClient(token: 'your_token');

  try {
    final page = await client.pages.retrieve('page_id');
    final title = getTitleFromPage(page);
    print('Page Title: ${title ?? "Untitled"}');
  } finally {
    client.close();
  }
}
```

**補足**:
- Titleプロパティは`RichText`のリストです
- `plainText`プロパティでプレーンテキストを取得できます

---

## ✏️ Step 2: ページの作成

### 2.1 データベース内にページを作成

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

Future<Page> createPageInDatabase(String databaseId) async {
  final client = NotionClient(token: 'your_token');

  try {
    final page = await client.pages.create(
      // 親（データベース）を指定
      parent: Parent.database(databaseId: databaseId).toJson(),

      // プロパティを設定
      properties: {
        // タイトルプロパティ（必須）
        'Name': PropertyValue.title([
          RichText.text(text: 'My New Page'),
        ]).toJson(),

        // ステータスプロパティ
        'Status': PropertyValue.select('In Progress').toJson(),

        // 優先度（数値）
        'Priority': PropertyValue.number(5).toJson(),

        // 完了チェックボックス
        'Done': PropertyValue.checkbox(false).toJson(),

        // 期限（日付）
        'Due Date': PropertyValue.date(
          start: DateTime.now().add(Duration(days: 7)),
        ).toJson(),
      },
    );

    print('✅ Created page: ${page.id}');
    return page;
  } finally {
    client.close();
  }
}
```

**補足**:
- `parent`: ページの親（データベースまたは別のページ）を指定します
- `properties`: データベースのスキーマに合わせたプロパティを設定します
- 各プロパティは`.toJson()`でJSON形式に変換する必要があります

### 2.2 別のページの子ページとして作成

```dart
Future<Page> createChildPage(String parentPageId) async {
  final client = NotionClient(token: 'your_token');

  try {
    final page = await client.pages.create(
      // 親ページを指定
      parent: Parent.page(pageId: parentPageId).toJson(),

      // プロパティ（ページの場合はタイトルのみ）
      properties: {
        'title': PropertyValue.title([
          RichText.text(text: 'Child Page'),
        ]).toJson(),
      },
    );

    print('✅ Created child page: ${page.id}');
    return page;
  } finally {
    client.close();
  }
}
```

**補足**:
- データベース内のページと異なり、通常のページの子ページはタイトルのみ設定できます
- その他のプロパティはデータベース固有のものです

### 2.3 アイコンとカバー画像を設定

```dart
Future<Page> createPageWithIconAndCover(String databaseId) async {
  final client = NotionClient(token: 'your_token');

  try {
    final page = await client.pages.create(
      parent: Parent.database(databaseId: databaseId).toJson(),
      properties: {
        'Name': PropertyValue.title([
          RichText.text(text: 'Styled Page'),
        ]).toJson(),
      },

      // アイコンを設定（絵文字）
      icon: NotionFile.emoji(emoji: '📝').toJson(),

      // カバー画像を設定（外部URL）
      cover: NotionFile.external(
        url: 'https://via.placeholder.com/1500x600',
      ).toJson(),
    );

    print('✅ Created page with icon and cover: ${page.id}');
    return page;
  } finally {
    client.close();
  }
}
```

**補足**:
- `icon`: 絵文字または画像URL
- `cover`: カバー画像のURL（外部URLまたはNotion内部の画像）

---

## 🔄 Step 3: ページの更新

### 3.1 プロパティを更新

```dart
Future<Page> updatePageProperties(String pageId) async {
  final client = NotionClient(token: 'your_token');

  try {
    final page = await client.pages.update(
      pageId,
      properties: {
        // ステータスを更新
        'Status': PropertyValue.select('Done').toJson(),

        // チェックボックスをON
        'Done': PropertyValue.checkbox(true).toJson(),

        // 優先度を変更
        'Priority': PropertyValue.number(10).toJson(),
      },
    );

    print('✅ Updated page: ${page.id}');
    return page;
  } finally {
    client.close();
  }
}
```

**補足**:
- `update()`では、指定したプロパティのみが更新されます
- 指定しなかったプロパティは変更されません

### 3.2 タイトルを更新

```dart
Future<Page> updatePageTitle(String pageId, String newTitle) async {
  final client = NotionClient(token: 'your_token');

  try {
    final page = await client.pages.update(
      pageId,
      properties: {
        'Name': PropertyValue.title([
          RichText.text(text: newTitle),
        ]).toJson(),
      },
    );

    print('✅ Updated page title: $newTitle');
    return page;
  } finally {
    client.close();
  }
}
```

### 3.3 アイコンとカバーを更新

```dart
Future<Page> updatePageIconAndCover(String pageId) async {
  final client = NotionClient(token: 'your_token');

  try {
    final page = await client.pages.update(
      pageId,
      icon: NotionFile.emoji(emoji: '✅').toJson(),
      cover: NotionFile.external(
        url: 'https://via.placeholder.com/1500x600/00FF00',
      ).toJson(),
    );

    print('✅ Updated icon and cover');
    return page;
  } finally {
    client.close();
  }
}
```

---

## 🗑️ Step 4: ページのアーカイブと復元

### 4.1 ページをアーカイブ（削除）

```dart
Future<Page> archivePage(String pageId) async {
  final client = NotionClient(token: 'your_token');

  try {
    // archivedをtrueに設定
    final page = await client.pages.update(
      pageId,
      archived: true,
    );

    print('✅ Page archived: ${page.id}');
    return page;
  } finally {
    client.close();
  }
}
```

**補足**:
- `archived: true`でページをゴミ箱に移動します
- 完全に削除されるわけではありません

### 4.2 ページを復元

```dart
Future<Page> restorePage(String pageId) async {
  final client = NotionClient(token: 'your_token');

  try {
    // archivedをfalseに設定
    final page = await client.pages.update(
      pageId,
      archived: false,
    );

    print('✅ Page restored: ${page.id}');
    return page;
  } finally {
    client.close();
  }
}
```

---

## 🎯 実践例: Flutterウィジェット

### 例1: ページエディタウィジェット

```dart
import 'package:flutter/material.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';

class PageEditorWidget extends StatefulWidget {
  final String pageId;
  final String apiToken;

  const PageEditorWidget({
    super.key,
    required this.pageId,
    required this.apiToken,
  });

  @override
  State<PageEditorWidget> createState() => _PageEditorWidgetState();
}

class _PageEditorWidgetState extends State<PageEditorWidget> {
  late TextEditingController _titleController;
  late TextEditingController _priorityController;
  bool _isLoading = false;
  String? _error;
  Page? _page;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _priorityController = TextEditingController();
    _loadPage();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _priorityController.dispose();
    super.dispose();
  }

  Future<void> _loadPage() async {
    setState(() => _isLoading = true);

    final client = NotionClient(token: widget.apiToken);

    try {
      final page = await client.pages.retrieve(widget.pageId);
      setState(() {
        _page = page;
        _isLoading = false;
      });

      // タイトルを取得してコントローラーに設定
      // （簡略化のため省略）
    } on NotionException catch (e) {
      setState(() {
        _error = e.message;
        _isLoading = false;
      });
    } finally {
      client.close();
    }
  }

  Future<void> _updatePage() async {
    if (_page == null) return;

    setState(() => _isLoading = true);

    final client = NotionClient(token: widget.apiToken);

    try {
      await client.pages.update(
        widget.pageId,
        properties: {
          'Name': PropertyValue.title([
            RichText.text(text: _titleController.text),
          ]).toJson(),
          'Priority': PropertyValue.number(
            int.tryParse(_priorityController.text) ?? 0,
          ).toJson(),
        },
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('✅ Updated successfully')),
      );

      await _loadPage();
    } on NotionException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('❌ Error: ${e.message}')),
      );
    } finally {
      client.close();
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    if (_error != null) {
      return Center(child: Text('Error: $_error'));
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(labelText: 'Title'),
          ),
          SizedBox(height: 16),
          TextField(
            controller: _priorityController,
            decoration: InputDecoration(labelText: 'Priority'),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: _isLoading ? null : _updatePage,
            child: Text('Update'),
          ),
        ],
      ),
    );
  }
}
```

---

## 📊 Parent（親）の種類

ページを作成する際、以下の種類の親を指定できます：

| Parentタイプ | 用途 | コード例 |
|:---|:---|:---|
| **Database** | データベース内にページを作成 | `Parent.database(databaseId: 'id')` |
| **Page** | 別のページの子ページとして作成 | `Parent.page(pageId: 'id')` |
| **Workspace** | ワークスペース直下に作成 | `Parent.workspace()` |

### 使い分けの例

```dart
// データベース内のページ（タスクなど）
Parent.database(databaseId: 'db_id').toJson()

// ドキュメントの子ページ（セクションなど）
Parent.page(pageId: 'page_id').toJson()

// ワークスペース直下のページ（トップレベルページ）
Parent.workspace().toJson()
```

---

## ✅ チェックリスト

- [ ] `retrieve()`でページ情報を取得できる
- [ ] ページのプロパティを読み取れる
- [ ] `create()`でデータベース内にページを作成できる
- [ ] `create()`で子ページを作成できる
- [ ] `update()`でプロパティを更新できる
- [ ] アイコンとカバー画像を設定/更新できる
- [ ] ページをアーカイブ・復元できる

---

## 📚 次のステップ

Pagesサービスの基本をマスターしました！次の章では、Databasesサービスを学びます。

**👉 [第5章: Databases（データベース）の操作](./05_databases.md)に進む**

---

[📖 目次に戻る](./index.md) | [⬅️ 前の章](./03_basic_usage.md) | [➡️ 次の章](./05_databases.md)
