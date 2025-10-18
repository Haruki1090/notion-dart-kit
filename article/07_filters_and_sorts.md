# 第7章: Filters & Sorts（フィルタとソート）

> **この章の目標**: 型安全なFilter DSLとSort DSLを使って、効率的にデータをクエリする

前章でプロパティの扱い方を学びました。この章では、データベースクエリを強力にするFilterとSortの使い方を学んでいきます。

---

## 📋 この章で学ぶこと

| トピック | 内容 |
|:---|:---|
| **Filter DSL** | 型安全なフィルタの構築 |
| **論理演算子** | AND/OR を使った複合条件 |
| **プロパティ別フィルタ** | 各プロパティタイプに応じたフィルタ |
| **Sort DSL** | 型安全なソートの構築 |
| **複数ソート** | 複数の条件でソート |

---

## 🔍 Filter DSLの基本

### なぜFilter DSLを使うのか？

**❌ 生のJSON（推奨されない）**:

```dart
final filter = {
  'and': [
    {
      'property': 'Status',
      'select': {'equals': 'In Progress'}
    },
    {
      'property': 'Priority',
      'number': {'greater_than': 3}
    }
  ]
};
```

**✅ Filter DSL（推奨）**:

```dart
final filter = Filter.and([
  Filter.property('Status').select.equals('In Progress'),
  Filter.property('Priority').number.greaterThan(3),
]);
```

**Filter DSLの利点**:
- 🎯 型安全 - タイポやエラーをコンパイル時に検出
- 💡 IDE補完 - プロパティやメソッドが補完される
- 📖 読みやすい - 直感的なメソッド名
- 🔧 リファクタリングしやすい

---

## 🎯 基本的なフィルタ

### テキスト系フィルタ

```dart
// Titleに"Meeting"を含む
Filter.property('Title').title.contains('Meeting')

// Rich Textが"TODO"で始まる
Filter.property('Description').richText.startsWith('TODO')

// Rich Textが"Done"で終わる
Filter.property('Notes').richText.endsWith('Done')

// Rich Textが空
Filter.property('Notes').richText.isEmpty()

// Rich Textが空でない
Filter.property('Notes').richText.isNotEmpty()
```

### 数値系フィルタ

```dart
// Priorityが5と等しい
Filter.property('Priority').number.equals(5)

// Priorityが5と等しくない
Filter.property('Priority').number.doesNotEqual(5)

// Priorityが5より大きい
Filter.property('Priority').number.greaterThan(5)

// Priorityが5以上
Filter.property('Priority').number.greaterThanOrEqualTo(5)

// Priorityが5より小さい
Filter.property('Priority').number.lessThan(5)

// Priorityが5以下
Filter.property('Priority').number.lessThanOrEqualTo(5)

// Priorityが空
Filter.property('Priority').number.isEmpty()

// Priorityが空でない
Filter.property('Priority').number.isNotEmpty()
```

### Checkbox（チェックボックス）フィルタ

```dart
// チェックされている
Filter.property('Done').checkbox.equals(true)

// チェックされていない
Filter.property('Done').checkbox.equals(false)
```

### Select/Multi-Select フィルタ

```dart
// Statusが"In Progress"
Filter.property('Status').select.equals('In Progress')

// Statusが"In Progress"でない
Filter.property('Status').select.doesNotEqual('In Progress')

// Statusが空
Filter.property('Status').select.isEmpty()

// Statusが空でない
Filter.property('Status').select.isNotEmpty()

// Tagsに"Bug"を含む
Filter.property('Tags').multiSelect.contains('Bug')

// Tagsに"Bug"を含まない
Filter.property('Tags').multiSelect.doesNotContain('Bug')
```

### Date（日付）フィルタ

```dart
// Due Dateが特定の日付
Filter.property('Due Date').date.equals(DateTime(2025, 12, 31))

// Due Dateが特定の日付より前
Filter.property('Due Date').date.before(DateTime(2025, 12, 31))

// Due Dateが特定の日付より後
Filter.property('Due Date').date.after(DateTime(2025, 1, 1))

// Due Dateが特定の日付以前
Filter.property('Due Date').date.onOrBefore(DateTime(2025, 12, 31))

// Due Dateが特定の日付以降
Filter.property('Due Date').date.onOrAfter(DateTime(2025, 1, 1))

// 今日
Filter.property('Due Date').date.equals({})

// 今週
Filter.property('Due Date').date.thisWeek({})

// 来週
Filter.property('Due Date').date.nextWeek({})

// 今月
Filter.property('Due Date').date.thisMonth({})

// 今年
Filter.property('Due Date').date.thisYear({})

// 過去（today以前）
Filter.property('Due Date').date.pastWeek({})

// 未来（today以降）
Filter.property('Due Date').date.nextYear({})

// 空
Filter.property('Due Date').date.isEmpty()

// 空でない
Filter.property('Due Date').date.isNotEmpty()
```

### People（ユーザー）フィルタ

```dart
// 特定のユーザーが含まれる
Filter.property('Assignee').people.contains('user-id-123')

// 特定のユーザーが含まれない
Filter.property('Assignee').people.doesNotContain('user-id-123')

// 空
Filter.property('Assignee').people.isEmpty()

// 空でない
Filter.property('Assignee').people.isNotEmpty()
```

### Files フィルタ

```dart
// ファイルが添付されている
Filter.property('Attachments').files.isNotEmpty()

// ファイルが添付されていない
Filter.property('Attachments').files.isEmpty()
```

### Relation フィルタ

```dart
// 特定のページにリンクしている
Filter.property('Related Tasks').relation.contains('page-id-123')

// 特定のページにリンクしていない
Filter.property('Related Tasks').relation.doesNotContain('page-id-123')

// 空
Filter.property('Related Tasks').relation.isEmpty()

// 空でない
Filter.property('Related Tasks').relation.isNotEmpty()
```

---

## 🔗 論理演算子

### AND条件

すべての条件を満たすページを取得します。

```dart
// StatusがIn Progress かつ Priorityが5以上
final filter = Filter.and([
  Filter.property('Status').select.equals('In Progress'),
  Filter.property('Priority').number.greaterThanOrEqualTo(5),
]);

final result = await client.databases.query(
  databaseId,
  filter: filter.toJson(),
);
```

### OR条件

いずれかの条件を満たすページを取得します。

```dart
// StatusがDone または Archived
final filter = Filter.or([
  Filter.property('Status').select.equals('Done'),
  Filter.property('Status').select.equals('Archived'),
]);

final result = await client.databases.query(
  databaseId,
  filter: filter.toJson(),
);
```

### 複雑な論理式

ANDとORを組み合わせて、複雑な条件を構築できます。

```dart
// (StatusがIn Progress かつ Priorityが5以上) 
// または (StatusがBlocked)
final filter = Filter.or([
  Filter.and([
    Filter.property('Status').select.equals('In Progress'),
    Filter.property('Priority').number.greaterThanOrEqualTo(5),
  ]),
  Filter.property('Status').select.equals('Blocked'),
]);
```

### ネストした条件

```dart
// 高優先度の未完了タスク または ブロック中のタスク
final filter = Filter.or([
  Filter.and([
    Filter.property('Done').checkbox.equals(false),
    Filter.property('Priority').number.greaterThan(7),
  ]),
  Filter.and([
    Filter.property('Status').select.equals('Blocked'),
    Filter.property('Assignee').people.isNotEmpty(),
  ]),
]);
```

---

## 📊 Sort DSLの基本

### プロパティでソート

```dart
// Priorityの降順（高い順）
Sort.property('Priority').descending()

// Priorityの昇順（低い順）
Sort.property('Priority').ascending()
```

### タイムスタンプでソート

```dart
// 作成日時の昇順（古い順）
Sort.createdTime.ascending()

// 作成日時の降順（新しい順）
Sort.createdTime.descending()

// 更新日時の昇順
Sort.lastEditedTime.ascending()

// 更新日時の降順
Sort.lastEditedTime.descending()
```

### 複数のソート条件

ソートは配列で複数指定でき、最初の条件が優先されます。

```dart
final sorts = [
  // 1. Priorityの降順
  Sort.property('Priority').descending(),
  // 2. 同じPriorityなら作成日時の昇順
  Sort.createdTime.ascending(),
];

final result = await client.databases.query(
  databaseId,
  sorts: sorts.map((s) => s.toJson()).toList(),
);
```

---

## 🎯 実践例

### 例1: 今週のタスク一覧

```dart
Future<List<Page>> getThisWeekTasks(String databaseId) async {
  final client = NotionClient(token: 'your_token');

  try {
    final filter = Filter.and([
      // 未完了
      Filter.property('Done').checkbox.equals(false),
      // Due Dateが今週
      Filter.property('Due Date').date.thisWeek({}),
    ]);

    final sorts = [
      // Priorityの降順
      Sort.property('Priority').descending(),
    ];

    final result = await client.databases.query(
      databaseId,
      filter: filter.toJson(),
      sorts: sorts.map((s) => s.toJson()).toList(),
    );

    return result.results;
  } finally {
    client.close();
  }
}
```

### 例2: 期限切れの高優先度タスク

```dart
Future<List<Page>> getOverdueHighPriorityTasks(String databaseId) async {
  final client = NotionClient(token: 'your_token');

  try {
    final filter = Filter.and([
      // 未完了
      Filter.property('Done').checkbox.equals(false),
      // 期限が過去
      Filter.property('Due Date').date.before(DateTime.now()),
      // 優先度が7以上
      Filter.property('Priority').number.greaterThanOrEqualTo(7),
    ]);

    final sorts = [
      // 期限の昇順（古い順）
      Sort.property('Due Date').ascending(),
    ];

    final result = await client.databases.query(
      databaseId,
      filter: filter.toJson(),
      sorts: sorts.map((s) => s.toJson()).toList(),
    );

    return result.results;
  } finally {
    client.close();
  }
}
```

### 例3: 特定ユーザーの未完了タスク

```dart
Future<List<Page>> getUserIncompleteTasks(
  String databaseId,
  String userId,
) async {
  final client = NotionClient(token: 'your_token');

  try {
    final filter = Filter.and([
      // 特定のユーザーが担当
      Filter.property('Assignee').people.contains(userId),
      // 未完了
      Filter.property('Done').checkbox.equals(false),
    ]);

    final sorts = [
      // 優先度の降順
      Sort.property('Priority').descending(),
      // 更新日時の降順
      Sort.lastEditedTime.descending(),
    ];

    final result = await client.databases.query(
      databaseId,
      filter: filter.toJson(),
      sorts: sorts.map((s) => s.toJson()).toList(),
    );

    return result.results;
  } finally {
    client.close();
  }
}
```

### 例4: タグで絞り込み

```dart
Future<List<Page>> getTasksByTags(
  String databaseId,
  List<String> tags,
) async {
  final client = NotionClient(token: 'your_token');

  try {
    // いずれかのタグを含む
    final filter = Filter.or(
      tags.map((tag) => Filter.property('Tags').multiSelect.contains(tag)).toList(),
    );

    final result = await client.databases.query(
      databaseId,
      filter: filter.toJson(),
    );

    return result.results;
  } finally {
    client.close();
  }
}
```

---

## 🧪 Flutterウィジェットでの使用例

```dart
import 'package:flutter/material.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';

class FilteredTaskListWidget extends StatefulWidget {
  final String databaseId;
  final String apiToken;

  const FilteredTaskListWidget({
    super.key,
    required this.databaseId,
    required this.apiToken,
  });

  @override
  State<FilteredTaskListWidget> createState() => _FilteredTaskListWidgetState();
}

class _FilteredTaskListWidgetState extends State<FilteredTaskListWidget> {
  List<Page> _pages = [];
  bool _isLoading = false;
  String? _error;
  String _selectedStatus = 'All';

  final List<String> _statuses = [
    'All',
    'Not Started',
    'In Progress',
    'Done',
  ];

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
      // フィルタを構築
      Map<String, dynamic>? filter;
      if (_selectedStatus != 'All') {
        filter = Filter.property('Status').select.equals(_selectedStatus).toJson();
      }

      // ソートを構築
      final sorts = [
        Sort.property('Priority').descending(),
        Sort.createdTime.descending(),
      ];

      final result = await client.databases.query(
        widget.databaseId,
        filter: filter,
        sorts: sorts.map((s) => s.toJson()).toList(),
      );

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
    return Column(
      children: [
        // ステータスフィルタ
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: DropdownButton<String>(
            value: _selectedStatus,
            isExpanded: true,
            items: _statuses.map((status) {
              return DropdownMenuItem(
                value: status,
                child: Text(status),
              );
            }).toList(),
            onChanged: (value) {
              if (value != null) {
                setState(() => _selectedStatus = value);
                _loadPages();
              }
            },
          ),
        ),

        // タスクリスト
        Expanded(
          child: _buildContent(),
        ),
      ],
    );
  }

  Widget _buildContent() {
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

    if (_pages.isEmpty) {
      return Center(child: Text('No tasks found'));
    }

    return ListView.builder(
      itemCount: _pages.length,
      itemBuilder: (context, index) {
        final page = _pages[index];
        return ListTile(
          title: Text(page.id),
          subtitle: Text('Created: ${page.createdTime}'),
        );
      },
    );
  }
}
```

---

## 📊 フィルタ一覧表

| プロパティタイプ | 利用可能なフィルタ |
|:---|:---|
| **Text (title, rich_text)** | equals, doesNotEqual, contains, doesNotContain, startsWith, endsWith, isEmpty, isNotEmpty |
| **Number** | equals, doesNotEqual, greaterThan, lessThan, greaterThanOrEqualTo, lessThanOrEqualTo, isEmpty, isNotEmpty |
| **Checkbox** | equals |
| **Select** | equals, doesNotEqual, isEmpty, isNotEmpty |
| **Multi-Select** | contains, doesNotContain, isEmpty, isNotEmpty |
| **Date** | equals, before, after, onOrBefore, onOrAfter, pastWeek, pastMonth, pastYear, nextWeek, nextMonth, nextYear, isEmpty, isNotEmpty |
| **People** | contains, doesNotContain, isEmpty, isNotEmpty |
| **Files** | isEmpty, isNotEmpty |
| **Relation** | contains, doesNotContain, isEmpty, isNotEmpty |
| **Formula** | （結果の型による） |
| **Status** | equals, doesNotEqual, isEmpty, isNotEmpty |

---

## ✅ チェックリスト

- [ ] Filter DSLを使ってフィルタを構築できる
- [ ] AND/OR条件を使える
- [ ] 各プロパティタイプのフィルタを使える
- [ ] Sort DSLを使ってソートを構築できる
- [ ] 複数のソート条件を組み合わせられる
- [ ] フィルタとソートを組み合わせて効率的にクエリできる

---

## 📚 次のステップ

Filter DSLとSort DSLをマスターしました！次の章では、Blocksサービスを学びます。

**👉 [第8章: Blocks（ブロック）の操作](./08_blocks.md)に進む**

---

[📖 目次に戻る](./index.md) | [⬅️ 前の章](./06_properties.md) | [➡️ 次の章](./08_blocks.md)
