# 第8章: Blocks（ブロック）の操作

> **この章の目標**: ページのコンテンツ（ブロック）を取得・追加・更新・削除する

前章でフィルタとソートを学びました。この章では、Notionページの実際のコンテンツであるブロックの操作方法を学んでいきます。

---

## 📋 この章で学ぶこと

| トピック | 内容 | APIメソッド |
|:---|:---|:---|
| **ブロックの取得** | 単一ブロックの情報取得 | `retrieve()` |
| **子ブロックの取得** | ページやブロックの子要素を取得 | `retrieveChildren()` |
| **ブロックの追加** | 新しいブロックを追加 | `appendChildren()` |
| **ブロックの更新** | 既存ブロックの内容を更新 | `update()` |
| **ブロックの削除** | ブロックを削除 | `delete()` |

---

## 📦 ブロックの種類

Notion Dart Kitは31種類のブロックタイプをサポートしています：

| カテゴリ | ブロックタイプ |
|:---|:---|
| **基本テキスト** | paragraph, heading_1, heading_2, heading_3 |
| **リスト** | bulleted_list_item, numbered_list_item, to_do |
| **コンテナ** | toggle, callout, quote |
| **コード** | code |
| **メディア** | image, video, file, pdf, bookmark, embed |
| **データベース** | child_database, child_page |
| **その他** | divider, table_of_contents, breadcrumb, column_list, table |

---

## 📖 Step 1: ブロックの取得

### 1.1 単一ブロックの取得

```dart
Future<void> retrieveBlock(String blockId) async {
  final client = NotionClient(token: 'your_token');

  try {
    final block = await client.blocks.retrieve(blockId);

    print('Block ID: ${block.id}');
    print('Type: ${block.type}');
    print('Has children: ${block.hasChildren}');
  } finally {
    client.close();
  }
}
```

### 1.2 ページのすべてのブロックを取得

```dart
Future<List<Block>> getPageBlocks(String pageId) async {
  final client = NotionClient(token: 'your_token');

  try {
    final result = await client.blocks.retrieveChildren(pageId);
    return result.results;
  } finally {
    client.close();
  }
}
```

### 1.3 ブロックの型を判定

```dart
void printBlockInfo(Block block) {
  block.map(
    paragraph: (p) => print('Paragraph: ${p.paragraph.richText.map((rt) => rt.plainText).join()}'),
    heading1: (h1) => print('Heading 1: ${h1.heading1.richText.map((rt) => rt.plainText).join()}'),
    heading2: (h2) => print('Heading 2: ${h2.heading2.richText.map((rt) => rt.plainText).join()}'),
    heading3: (h3) => print('Heading 3: ${h3.heading3.richText.map((rt) => rt.plainText).join()}'),
    bulletedListItem: (li) => print('Bullet: ${li.bulletedListItem.richText.map((rt) => rt.plainText).join()}'),
    numberedListItem: (li) => print('Number: ${li.numberedListItem.richText.map((rt) => rt.plainText).join()}'),
    toDo: (td) => print('ToDo [${td.toDo.checked ? 'x' : ' '}]: ${td.toDo.richText.map((rt) => rt.plainText).join()}'),
    code: (c) => print('Code (${c.code.language}): ${c.code.richText.map((rt) => rt.plainText).join()}'),
    divider: (_) => print('---'),
    orElse: () => print('Other block type'),
  );
}
```

---

## ➕ Step 2: ブロックの追加

### 2.1 Paragraph（段落）を追加

```dart
Future<void> addParagraph(String pageId) async {
  final client = NotionClient(token: 'your_token');

  try {
    await client.blocks.appendChildren(
      blockId: pageId,
      children: [
        Block.paragraph(
          paragraph: ParagraphBlock(
            richText: [
              RichText.text(text: 'This is a paragraph.'),
            ],
          ),
        ).toJson(),
      ],
    );

    print('✅ Paragraph added');
  } finally {
    client.close();
  }
}
```

### 2.2 Heading（見出し）を追加

```dart
await client.blocks.appendChildren(
  blockId: pageId,
  children: [
    // Heading 1
    Block.heading1(
      heading1: HeadingBlock(
        richText: [RichText.text(text: 'Main Title')],
      ),
    ).toJson(),

    // Heading 2
    Block.heading2(
      heading2: HeadingBlock(
        richText: [RichText.text(text: 'Subtitle')],
      ),
    ).toJson(),

    // Heading 3
    Block.heading3(
      heading3: HeadingBlock(
        richText: [RichText.text(text: 'Small Heading')],
      ),
    ).toJson(),
  ],
);
```

### 2.3 リストを追加

```dart
// Bulleted List
await client.blocks.appendChildren(
  blockId: pageId,
  children: [
    Block.bulletedListItem(
      bulletedListItem: ListItemBlock(
        richText: [RichText.text(text: 'First item')],
      ),
    ).toJson(),
    Block.bulletedListItem(
      bulletedListItem: ListItemBlock(
        richText: [RichText.text(text: 'Second item')],
      ),
    ).toJson(),
  ],
);

// Numbered List
await client.blocks.appendChildren(
  blockId: pageId,
  children: [
    Block.numberedListItem(
      numberedListItem: ListItemBlock(
        richText: [RichText.text(text: 'Step 1')],
      ),
    ).toJson(),
    Block.numberedListItem(
      numberedListItem: ListItemBlock(
        richText: [RichText.text(text: 'Step 2')],
      ),
    ).toJson(),
  ],
);
```

### 2.4 To-Do リストを追加

```dart
await client.blocks.appendChildren(
  blockId: pageId,
  children: [
    Block.toDo(
      toDo: ToDoBlock(
        richText: [RichText.text(text: 'Task 1')],
        checked: false,
      ),
    ).toJson(),
    Block.toDo(
      toDo: ToDoBlock(
        richText: [RichText.text(text: 'Task 2')],
        checked: true, // チェック済み
      ),
    ).toJson(),
  ],
);
```

### 2.5 Code（コード）ブロックを追加

```dart
await client.blocks.appendChildren(
  blockId: pageId,
  children: [
    Block.code(
      code: CodeBlock(
        richText: [
          RichText.text(text: 'void main() {\n  print("Hello, World!");\n}'),
        ],
        language: 'dart',
      ),
    ).toJson(),
  ],
);
```

### 2.6 Callout（吹き出し）を追加

```dart
await client.blocks.appendChildren(
  blockId: pageId,
  children: [
    Block.callout(
      callout: CalloutBlock(
        richText: [RichText.text(text: 'This is an important note!')],
        icon: NotionFile.emoji(emoji: '💡'),
      ),
    ).toJson(),
  ],
);
```

### 2.7 Quote（引用）を追加

```dart
await client.blocks.appendChildren(
  blockId: pageId,
  children: [
    Block.quote(
      quote: QuoteBlock(
        richText: [RichText.text(text: 'This is a quote.')],
      ),
    ).toJson(),
  ],
);
```

### 2.8 Divider（区切り線）を追加

```dart
await client.blocks.appendChildren(
  blockId: pageId,
  children: [
    Block.divider(divider: DividerBlock()).toJson(),
  ],
);
```

---

## 🔄 Step 3: ブロックの更新

### 3.1 Paragraphを更新

```dart
Future<void> updateParagraph(String blockId) async {
  final client = NotionClient(token: 'your_token');

  try {
    await client.blocks.update(
      blockId,
      block: Block.paragraph(
        paragraph: ParagraphBlock(
          richText: [RichText.text(text: 'Updated paragraph text')],
        ),
      ).toJson(),
    );

    print('✅ Block updated');
  } finally {
    client.close();
  }
}
```

### 3.2 To-Doをチェック

```dart
await client.blocks.update(
  blockId,
  block: Block.toDo(
    toDo: ToDoBlock(
      richText: [RichText.text(text: 'Completed task')],
      checked: true,
    ),
  ).toJson(),
);
```

---

## 🗑️ Step 4: ブロックの削除

```dart
Future<void> deleteBlock(String blockId) async {
  final client = NotionClient(token: 'your_token');

  try {
    await client.blocks.delete(blockId);
    print('✅ Block deleted');
  } finally {
    client.close();
  }
}
```

---

## 🎯 実践例: ページエディタ

```dart
class NotionPageEditor {
  final String pageId;
  final String apiToken;

  NotionPageEditor({required this.pageId, required this.apiToken});

  // テキストを追加
  Future<void> addText(String text) async {
    final client = NotionClient(token: apiToken);

    try {
      await client.blocks.appendChildren(
        blockId: pageId,
        children: [
          Block.paragraph(
            paragraph: ParagraphBlock(
              richText: [RichText.text(text: text)],
            ),
          ).toJson(),
        ],
      );
    } finally {
      client.close();
    }
  }

  // 見出しを追加
  Future<void> addHeading(String text, int level) async {
    final client = NotionClient(token: apiToken);

    try {
      final block = switch (level) {
        1 => Block.heading1(heading1: HeadingBlock(richText: [RichText.text(text: text)])),
        2 => Block.heading2(heading2: HeadingBlock(richText: [RichText.text(text: text)])),
        3 => Block.heading3(heading3: HeadingBlock(richText: [RichText.text(text: text)])),
        _ => throw ArgumentError('Invalid heading level: $level'),
      };

      await client.blocks.appendChildren(
        blockId: pageId,
        children: [block.toJson()],
      );
    } finally {
      client.close();
    }
  }

  // To-Doを追加
  Future<void> addTodo(String text, {bool checked = false}) async {
    final client = NotionClient(token: apiToken);

    try {
      await client.blocks.appendChildren(
        blockId: pageId,
        children: [
          Block.toDo(
            toDo: ToDoBlock(
              richText: [RichText.text(text: text)],
              checked: checked,
            ),
          ).toJson(),
        ],
      );
    } finally {
      client.close();
    }
  }

  // コードブロックを追加
  Future<void> addCode(String code, String language) async {
    final client = NotionClient(token: apiToken);

    try {
      await client.blocks.appendChildren(
        blockId: pageId,
        children: [
          Block.code(
            code: CodeBlock(
              richText: [RichText.text(text: code)],
              language: language,
            ),
          ).toJson(),
        ],
      );
    } finally {
      client.close();
    }
  }

  // すべてのブロックを取得
  Future<List<Block>> getBlocks() async {
    final client = NotionClient(token: apiToken);

    try {
      final result = await client.blocks.retrieveChildren(pageId);
      return result.results;
    } finally {
      client.close();
    }
  }
}
```

**使用例**:

```dart
final editor = NotionPageEditor(
  pageId: 'your_page_id',
  apiToken: 'your_token',
);

await editor.addHeading('Task List', 1);
await editor.addTodo('Buy groceries', checked: false);
await editor.addTodo('Call dentist', checked: false);
await editor.addText('Remember to check the calendar!');
```

---

## ✅ チェックリスト

- [ ] `retrieve()`でブロックを取得できる
- [ ] `retrieveChildren()`で子ブロックを取得できる
- [ ] `appendChildren()`でブロックを追加できる
- [ ] 各種ブロックタイプ（paragraph, heading, list, to_do, code等）を追加できる
- [ ] `update()`でブロックを更新できる
- [ ] `delete()`でブロックを削除できる

---

## 📚 次のステップ

Blocksサービスの基本をマスターしました！次の章では、Search機能を学びます。

**👉 [第9章: Search（検索）機能](./09_search.md)に進む**

---

[📖 目次に戻る](./index.md) | [⬅️ 前の章](./07_filters_and_sorts.md) | [➡️ 次の章](./09_search.md)
