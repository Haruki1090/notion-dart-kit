# 第5章: Databases（データベース）の操作

> **この章の目標**: Notionデータベースの取得・クエリ・作成方法をマスターする

前章でページの操作を学びました。この章では、Notionの強力な機能であるデータベースの操作方法を学んでいきます。

---

## 📋 この章で学ぶこと

| トピック | 内容 | APIメソッド |
|:---|:---|:---|
| **データベースの取得** | データベース構造の取得 | `retrieve()` |
| **データベースのクエリ** | フィルタ・ソートを使ったデータ取得 | `query()` |
| **データベースの作成** | 新しいデータベースの作成 | `create()` |
| **データベースの更新** | スキーマの変更 | `update()` |

---

## 📖 Step 1: データベースの取得

### 1.1 基本的な取得

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

Future<void> retrieveDatabase(String databaseId) async {
  final client = NotionClient(token: 'your_token');

  try {
    // データベースを取得
    final database = await client.databases.retrieve(databaseId);

    // 基本情報を表示
    print('Database ID: ${database.id}');
    print('Title: ${database.title.map((t) => t.plainText).join()}');
    print('Created: ${database.createdTime}');
    print('Last Edited: ${database.lastEditedTime}');

    // プロパティスキーマを表示
    print('\nProperties:');
    database.properties.forEach((name, schema) {
      print('  $name: ${schema.type}');
    });
  } finally {
    client.close();
  }
}
```

**補足**:
- `database.properties`: データベースのスキーマ（列の定義）
- `schema.type`: プロパティの型（title, select, number など）

### 1.2 プロパティスキーマの詳細取得

```dart
void printDatabaseSchema(Database database) {
  database.properties.forEach((name, schema) {
    print('Property: $name');

    schema.map(
      title: (title) => print('  Type: Title'),
      richText: (richText) => print('  Type: Rich Text'),
      number: (number) {
        print('  Type: Number');
        print('  Format: ${number.number.format}');
      },
      select: (select) {
        print('  Type: Select');
        print('  Options:');
        select.select.options.forEach((option) {
          print('    - ${option.name} (${option.color})');
        });
      },
      multiSelect: (multiSelect) {
        print('  Type: Multi-Select');
        print('  Options:');
        multiSelect.multiSelect.options.forEach((option) {
          print('    - ${option.name} (${option.color})');
        });
      },
      date: (date) => print('  Type: Date'),
      people: (people) => print('  Type: People'),
      checkbox: (checkbox) => print('  Type: Checkbox'),
      url: (url) => print('  Type: URL'),
      email: (email) => print('  Type: Email'),
      phoneNumber: (phone) => print('  Type: Phone Number'),
      formula: (formula) {
        print('  Type: Formula');
        print('  Expression: ${formula.formula.expression}');
      },
      relation: (relation) {
        print('  Type: Relation');
        print('  Database: ${relation.relation.databaseId}');
      },
      rollup: (rollup) {
        print('  Type: Rollup');
        print('  Function: ${rollup.rollup.function}');
      },
      status: (status) {
        print('  Type: Status');
        print('  Options:');
        status.status.options.forEach((option) {
          print('    - ${option.name} (${option.color})');
        });
      },
      createdTime: (createdTime) => print('  Type: Created Time'),
      createdBy: (createdBy) => print('  Type: Created By'),
      lastEditedTime: (lastEditedTime) => print('  Type: Last Edited Time'),
      lastEditedBy: (lastEditedBy) => print('  Type: Last Edited By'),
      files: (files) => print('  Type: Files'),
      uniqueId: (uniqueId) => print('  Type: Unique ID'),
    );
  });
}
```

---

## 🔍 Step 2: データベースのクエリ

### 2.1 すべてのページを取得

```dart
Future<void> queryAllPages(String databaseId) async {
  final client = NotionClient(token: 'your_token');

  try {
    // すべてのページを取得（フィルタなし）
    final result = await client.databases.query(databaseId);

    print('Total pages: ${result.results.length}');
    print('Has more: ${result.hasMore}');
    print('Next cursor: ${result.nextCursor}');

    // 各ページを表示
    for (final page in result.results) {
      print('Page: ${page.id}');
    }
  } finally {
    client.close();
  }
}
```

**補足**:
- `result.results`: ページのリスト（最大100件）
- `result.hasMore`: さらにページがある場合は`true`
- `result.nextCursor`: 次のページ取得用のカーソル

### 2.2 フィルタを使ったクエリ

```dart
Future<void> queryWithFilter(String databaseId) async {
  final client = NotionClient(token: 'your_token');

  try {
    // "Status"が"In Progress"のページを取得
    final result = await client.databases.query(
      databaseId,
      filter: {
        'property': 'Status',
        'select': {'equals': 'In Progress'},
      },
    );

    print('Found ${result.results.length} pages');
  } finally {
    client.close();
  }
}
```

### 2.3 型安全なFilter DSLを使う（推奨）

```dart
import 'package:notion_dart_kit/notion_dart_kit.dart';

Future<void> queryWithFilterDSL(String databaseId) async {
  final client = NotionClient(token: 'your_token');

  try {
    // Filter DSLを使用
    final filter = Filter.property('Status').select.equals('In Progress');

    final result = await client.databases.query(
      databaseId,
      filter: filter.toJson(),
    );

    print('Found ${result.results.length} pages');
  } finally {
    client.close();
  }
}
```

**補足**:
- Filter DSLは型安全で、IDEの補完も効きます
- 詳しくは[第7章](./07_filters_and_sorts.md)で説明します

### 2.4 複数条件のフィルタ（AND/OR）

```dart
Future<void> queryWithComplexFilter(String databaseId) async {
  final client = NotionClient(token: 'your_token');

  try {
    // "Status"が"In Progress" かつ "Priority"が5以上
    final filter = Filter.and([
      Filter.property('Status').select.equals('In Progress'),
      Filter.property('Priority').number.greaterThanOrEqualTo(5),
    ]);

    final result = await client.databases.query(
      databaseId,
      filter: filter.toJson(),
    );

    print('Found ${result.results.length} high-priority in-progress pages');
  } finally {
    client.close();
  }
}
```

### 2.5 ソートを使ったクエリ

```dart
Future<void> queryWithSort(String databaseId) async {
  final client = NotionClient(token: 'your_token');

  try {
    // Priorityの降順でソート
    final result = await client.databases.query(
      databaseId,
      sorts: [
        Sort.property('Priority').descending().toJson(),
        Sort.createdTime.ascending().toJson(),
      ],
    );

    print('Pages sorted by priority (high to low):');
    for (final page in result.results) {
      print('  - ${page.id}');
    }
  } finally {
    client.close();
  }
}
```

**補足**:
- `sorts`: 複数のソート条件を指定できます
- 最初のソート条件が優先されます
- 詳しくは[第7章](./07_filters_and_sorts.md)で説明します

### 2.6 ページサイズとカーソル

```dart
Future<void> queryWithPagination(String databaseId) async {
  final client = NotionClient(token: 'your_token');

  try {
    // 最初の10件を取得
    final result = await client.databases.query(
      databaseId,
      pageSize: 10,
    );

    print('First 10 pages: ${result.results.length}');

    // 次の10件を取得
    if (result.hasMore && result.nextCursor != null) {
      final nextResult = await client.databases.query(
        databaseId,
        pageSize: 10,
        startCursor: result.nextCursor,
      );

      print('Next 10 pages: ${nextResult.results.length}');
    }
  } finally {
    client.close();
  }
}
```

**補足**:
- `pageSize`: 取得する件数（最大100）
- `startCursor`: 前回のクエリの`nextCursor`を指定
- ページネーションの詳細は[第10章](./10_pagination.md)で説明します

---

## ✏️ Step 3: データベースの作成

### 3.1 基本的なデータベース作成

```dart
Future<Database> createSimpleDatabase(String parentPageId) async {
  final client = NotionClient(token: 'your_token');

  try {
    final database = await client.databases.create(
      // 親ページを指定
      parent: Parent.page(pageId: parentPageId).toJson(),

      // タイトル
      title: [
        RichText.text(text: 'My Tasks'),
      ],

      // プロパティスキーマ
      properties: {
        // タイトルプロパティ（必須）
        'Name': PropertySchema.title(title: TitlePropertySchema()).toJson(),

        // ステータス（Select）
        'Status': PropertySchema.select(
          select: SelectPropertySchema(
            options: [
              SelectOption(name: 'Not Started', color: 'gray'),
              SelectOption(name: 'In Progress', color: 'blue'),
              SelectOption(name: 'Done', color: 'green'),
            ],
          ),
        ).toJson(),

        // 優先度（Number）
        'Priority': PropertySchema.number(
          number: NumberPropertySchema(format: 'number'),
        ).toJson(),

        // 期限（Date）
        'Due Date': PropertySchema.date(
          date: DatePropertySchema(),
        ).toJson(),

        // 完了フラグ（Checkbox）
        'Done': PropertySchema.checkbox(
          checkbox: CheckboxPropertySchema(),
        ).toJson(),
      },
    );

    print('✅ Created database: ${database.id}');
    return database;
  } finally {
    client.close();
  }
}
```

**補足**:
- `parent`: データベースの親（ページのみ可能）
- `properties`: プロパティスキーマのマップ
- タイトルプロパティ（`title`型）は必須です

### 3.2 複雑なデータベース作成

```dart
Future<Database> createAdvancedDatabase(String parentPageId) async {
  final client = NotionClient(token: 'your_token');

  try {
    final database = await client.databases.create(
      parent: Parent.page(pageId: parentPageId).toJson(),
      title: [RichText.text(text: 'Project Tracker')],

      properties: {
        'Name': PropertySchema.title(title: TitlePropertySchema()).toJson(),

        // マルチセレクト
        'Tags': PropertySchema.multiSelect(
          multiSelect: MultiSelectPropertySchema(
            options: [
              SelectOption(name: 'Bug', color: 'red'),
              SelectOption(name: 'Feature', color: 'blue'),
              SelectOption(name: 'Improvement', color: 'green'),
            ],
          ),
        ).toJson(),

        // People（担当者）
        'Assignee': PropertySchema.people(
          people: PeoplePropertySchema(),
        ).toJson(),

        // URL
        'Reference': PropertySchema.url(
          url: UrlPropertySchema(),
        ).toJson(),

        // Email
        'Contact': PropertySchema.email(
          email: EmailPropertySchema(),
        ).toJson(),

        // Files
        'Attachments': PropertySchema.files(
          files: FilesPropertySchema(),
        ).toJson(),
      },

      // アイコンを設定
      icon: NotionFile.emoji(emoji: '📊').toJson(),

      // カバー画像を設定
      cover: NotionFile.external(
        url: 'https://via.placeholder.com/1500x600',
      ).toJson(),
    );

    print('✅ Created advanced database: ${database.id}');
    return database;
  } finally {
    client.close();
  }
}
```

---

## 🔄 Step 4: データベースの更新

### 4.1 タイトルを更新

```dart
Future<Database> updateDatabaseTitle(String databaseId) async {
  final client = NotionClient(token: 'your_token');

  try {
    final database = await client.databases.update(
      databaseId,
      title: [
        RichText.text(text: 'Updated Database Title'),
      ],
    );

    print('✅ Updated database title');
    return database;
  } finally {
    client.close();
  }
}
```

### 4.2 プロパティを追加

```dart
Future<Database> addPropertyToDatabase(String databaseId) async {
  final client = NotionClient(token: 'your_token');

  try {
    final database = await client.databases.update(
      databaseId,
      properties: {
        // 新しいプロパティを追加
        'Estimated Hours': PropertySchema.number(
          number: NumberPropertySchema(format: 'number'),
        ).toJson(),
      },
    );

    print('✅ Added new property');
    return database;
  } finally {
    client.close();
  }
}
```

### 4.3 Select オプションを更新

```dart
Future<Database> updateSelectOptions(String databaseId) async {
  final client = NotionClient(token: 'your_token');

  try {
    final database = await client.databases.update(
      databaseId,
      properties: {
        'Status': PropertySchema.select(
          select: SelectPropertySchema(
            options: [
              SelectOption(name: 'Not Started', color: 'gray'),
              SelectOption(name: 'In Progress', color: 'blue'),
              SelectOption(name: 'Done', color: 'green'),
              SelectOption(name: 'Blocked', color: 'red'), // 新しいオプション
            ],
          ),
        ).toJson(),
      },
    );

    print('✅ Updated select options');
    return database;
  } finally {
    client.close();
  }
}
```

---

## 🎯 実践例: データベースビューアウィジェット

```dart
import 'package:flutter/material.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';

class DatabaseViewerWidget extends StatefulWidget {
  final String databaseId;
  final String apiToken;

  const DatabaseViewerWidget({
    super.key,
    required this.databaseId,
    required this.apiToken,
  });

  @override
  State<DatabaseViewerWidget> createState() => _DatabaseViewerWidgetState();
}

class _DatabaseViewerWidgetState extends State<DatabaseViewerWidget> {
  List<Page> _pages = [];
  bool _isLoading = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadPages();
  }

  Future<void> _loadPages() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    final client = NotionClient(token: widget.apiToken);

    try {
      final result = await client.databases.query(widget.databaseId);
      setState(() {
        _pages = result.results;
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
      return Center(child: CircularProgressIndicator());
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
              onPressed: _loadPages,
              child: Text('Retry'),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: _pages.length,
      itemBuilder: (context, index) {
        final page = _pages[index];
        return ListTile(
          title: Text(page.id),
          subtitle: Text('Created: ${page.createdTime}'),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            // ページの詳細画面に遷移
          },
        );
      },
    );
  }
}
```

---

## 📊 プロパティスキーマの種類

Notion Dart Kitは21種類のプロパティタイプをサポートしています：

| プロパティタイプ | 用途 | コード例 |
|:---|:---|:---|
| **title** | タイトル（必須） | `PropertySchema.title()` |
| **rich_text** | リッチテキスト | `PropertySchema.richText()` |
| **number** | 数値 | `PropertySchema.number()` |
| **select** | 単一選択 | `PropertySchema.select()` |
| **multi_select** | 複数選択 | `PropertySchema.multiSelect()` |
| **date** | 日付 | `PropertySchema.date()` |
| **people** | ユーザー | `PropertySchema.people()` |
| **checkbox** | チェックボックス | `PropertySchema.checkbox()` |
| **url** | URL | `PropertySchema.url()` |
| **email** | メールアドレス | `PropertySchema.email()` |
| **phone_number** | 電話番号 | `PropertySchema.phoneNumber()` |
| **formula** | 数式 | `PropertySchema.formula()` |
| **relation** | リレーション | `PropertySchema.relation()` |
| **rollup** | ロールアップ | `PropertySchema.rollup()` |
| **status** | ステータス | `PropertySchema.status()` |
| **files** | ファイル | `PropertySchema.files()` |
| **created_time** | 作成日時 | `PropertySchema.createdTime()` |
| **created_by** | 作成者 | `PropertySchema.createdBy()` |
| **last_edited_time** | 更新日時 | `PropertySchema.lastEditedTime()` |
| **last_edited_by** | 更新者 | `PropertySchema.lastEditedBy()` |
| **unique_id** | ユニークID | `PropertySchema.uniqueId()` |

詳しくは[第6章: Properties（プロパティ）の扱い](./06_properties.md)で説明します。

---

## ✅ チェックリスト

- [ ] `retrieve()`でデータベース構造を取得できる
- [ ] プロパティスキーマを読み取れる
- [ ] `query()`でページを取得できる
- [ ] フィルタを使ったクエリができる
- [ ] ソートを使ったクエリができる
- [ ] `create()`でデータベースを作成できる
- [ ] `update()`でスキーマを更新できる

---

## 📚 次のステップ

Databasesサービスの基本をマスターしました！次の章では、プロパティの詳細な扱い方を学びます。

**👉 [第6章: Properties（プロパティ）の扱い](./06_properties.md)に進む**

---

[📖 目次に戻る](./index.md) | [⬅️ 前の章](./04_pages.md) | [➡️ 次の章](./06_properties.md)
