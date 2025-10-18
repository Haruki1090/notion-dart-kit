# 第6章: Properties（プロパティ）の扱い

> **この章の目標**: Notionの21種類のプロパティタイプを理解し、読み書きできるようにする

前章でデータベースの基本を学びました。この章では、Notionの各プロパティタイプの詳細な使い方を学んでいきます。

---

## 📋 この章で学ぶこと

| カテゴリ | プロパティタイプ |
|:---|:---|
| **テキスト系** | title, rich_text |
| **数値系** | number, checkbox |
| **選択系** | select, multi_select, status |
| **日付時刻系** | date, created_time, last_edited_time |
| **ユーザー系** | people, created_by, last_edited_by |
| **リンク系** | url, email, phone_number |
| **ファイル系** | files |
| **計算系** | formula, rollup |
| **リレーション系** | relation |
| **ID系** | unique_id |

---

## 📝 テキスト系プロパティ

### Title（タイトル）

すべてのページに必須のプロパティです。

**読み取り**:

```dart
String? getTitleFromPage(Page page) {
  // Titleプロパティを探す
  final titleEntry = page.properties.entries.firstWhere(
    (entry) => entry.value is PropertyValueTitle,
    orElse: () => MapEntry('', PropertyValue.title([])),
  );

  return titleEntry.value.map(
    title: (title) {
      if (title.title.isEmpty) return null;
      return title.title.map((rt) => rt.plainText).join('');
    },
    orElse: () => null,
  );
}
```

**書き込み**:

```dart
// ページ作成時
'Name': PropertyValue.title([
  RichText.text(text: 'My Page Title'),
]).toJson(),

// 複数のRichTextを組み合わせ
'Name': PropertyValue.title([
  RichText.text(text: 'Bold', bold: true),
  RichText.text(text: ' and '),
  RichText.text(text: 'Italic', italic: true),
]).toJson(),
```

### Rich Text（リッチテキスト）

複数行のテキストや装飾付きテキストを扱います。

**読み取り**:

```dart
String? getRichTextFromPage(Page page, String propertyName) {
  final property = page.properties[propertyName];
  if (property == null) return null;

  return property.map(
    richText: (richText) {
      if (richText.richText.isEmpty) return null;
      return richText.richText.map((rt) => rt.plainText).join('');
    },
    orElse: () => null,
  );
}
```

**書き込み**:

```dart
'Description': PropertyValue.richText([
  RichText.text(text: 'This is a '),
  RichText.text(text: 'bold', bold: true),
  RichText.text(text: ' description'),
]).toJson(),
```

---

## 🔢 数値系プロパティ

### Number（数値）

整数または小数を扱います。

**読み取り**:

```dart
num? getNumberFromPage(Page page, String propertyName) {
  final property = page.properties[propertyName];
  if (property == null) return null;

  return property.map(
    number: (number) => number.number,
    orElse: () => null,
  );
}
```

**書き込み**:

```dart
'Priority': PropertyValue.number(5).toJson(),
'Score': PropertyValue.number(95.5).toJson(),

// nullを設定（値をクリア）
'Priority': PropertyValue.number(null).toJson(),
```

### Checkbox（チェックボックス）

真偽値を扱います。

**読み取り**:

```dart
bool getCheckboxFromPage(Page page, String propertyName) {
  final property = page.properties[propertyName];
  if (property == null) return false;

  return property.map(
    checkbox: (checkbox) => checkbox.checkbox,
    orElse: () => false,
  );
}
```

**書き込み**:

```dart
'Done': PropertyValue.checkbox(true).toJson(),
'IsActive': PropertyValue.checkbox(false).toJson(),
```

---

## 🎨 選択系プロパティ

### Select（単一選択）

事前に定義されたオプションから1つを選択します。

**読み取り**:

```dart
String? getSelectFromPage(Page page, String propertyName) {
  final property = page.properties[propertyName];
  if (property == null) return null;

  return property.map(
    select: (select) => select.select?.name,
    orElse: () => null,
  );
}
```

**書き込み**:

```dart
'Status': PropertyValue.select('In Progress').toJson(),

// nullを設定（選択解除）
'Status': PropertyValue.select(null).toJson(),
```

**スキーマ定義**（データベース作成時）:

```dart
'Status': PropertySchema.select(
  select: SelectPropertySchema(
    options: [
      SelectOption(name: 'Not Started', color: 'gray'),
      SelectOption(name: 'In Progress', color: 'blue'),
      SelectOption(name: 'Done', color: 'green'),
    ],
  ),
).toJson(),
```

### Multi-Select（複数選択）

複数のオプションを選択できます。

**読み取り**:

```dart
List<String> getMultiSelectFromPage(Page page, String propertyName) {
  final property = page.properties[propertyName];
  if (property == null) return [];

  return property.map(
    multiSelect: (multiSelect) =>
        multiSelect.multiSelect.map((option) => option.name).toList(),
    orElse: () => [],
  );
}
```

**書き込み**:

```dart
'Tags': PropertyValue.multiSelect(['Bug', 'High Priority']).toJson(),

// 空のリスト（選択解除）
'Tags': PropertyValue.multiSelect([]).toJson(),
```

**スキーマ定義**:

```dart
'Tags': PropertySchema.multiSelect(
  multiSelect: MultiSelectPropertySchema(
    options: [
      SelectOption(name: 'Bug', color: 'red'),
      SelectOption(name: 'Feature', color: 'blue'),
      SelectOption(name: 'Improvement', color: 'green'),
    ],
  ),
).toJson(),
```

### Status（ステータス）

ワークフローの状態を表します（Selectに似ていますが、グループ化が可能）。

**読み取り**:

```dart
String? getStatusFromPage(Page page, String propertyName) {
  final property = page.properties[propertyName];
  if (property == null) return null;

  return property.map(
    status: (status) => status.status?.name,
    orElse: () => null,
  );
}
```

**書き込み**:

```dart
'Status': PropertyValue.status('In Progress').toJson(),
```

---

## 📅 日付時刻系プロパティ

### Date（日付）

日付または日時を扱います。

**読み取り**:

```dart
(DateTime?, DateTime?) getDateFromPage(Page page, String propertyName) {
  final property = page.properties[propertyName];
  if (property == null) return (null, null);

  return property.map(
    date: (date) {
      if (date.date == null) return (null, null);
      return (date.date!.start, date.date!.end);
    },
    orElse: () => (null, null),
  );
}
```

**書き込み**:

```dart
// 日付のみ
'Due Date': PropertyValue.date(
  start: DateTime(2025, 12, 31),
).toJson(),

// 日時
'Due Date': PropertyValue.date(
  start: DateTime(2025, 12, 31, 17, 0),
).toJson(),

// 期間（開始日と終了日）
'Period': PropertyValue.date(
  start: DateTime(2025, 1, 1),
  end: DateTime(2025, 12, 31),
).toJson(),

// タイムゾーン指定
'Meeting': PropertyValue.date(
  start: DateTime(2025, 1, 15, 10, 0),
  timeZone: 'Asia/Tokyo',
).toJson(),

// nullを設定（日付をクリア）
'Due Date': PropertyValue.date(start: null).toJson(),
```

### Created Time / Last Edited Time

自動的に設定される読み取り専用プロパティです。

**読み取り**:

```dart
DateTime? getCreatedTime(Page page) {
  return page.createdTime;
}

DateTime? getLastEditedTime(Page page) {
  return page.lastEditedTime;
}
```

**スキーマ定義**:

```dart
'Created': PropertySchema.createdTime(
  createdTime: CreatedTimePropertySchema(),
).toJson(),

'Last Edited': PropertySchema.lastEditedTime(
  lastEditedTime: LastEditedTimePropertySchema(),
).toJson(),
```

---

## 👥 ユーザー系プロパティ

### People（ユーザー）

1人以上のユーザーを選択できます。

**読み取り**:

```dart
List<String> getPeopleFromPage(Page page, String propertyName) {
  final property = page.properties[propertyName];
  if (property == null) return [];

  return property.map(
    people: (people) => people.people.map((user) => user.id).toList(),
    orElse: () => [],
  );
}
```

**書き込み**:

```dart
// ユーザーIDのリスト
'Assignee': PropertyValue.people([
  'user-id-1',
  'user-id-2',
]).toJson(),

// 空のリスト（選択解除）
'Assignee': PropertyValue.people([]).toJson(),
```

**スキーマ定義**:

```dart
'Assignee': PropertySchema.people(
  people: PeoplePropertySchema(),
).toJson(),
```

---

## 🔗 リンク系プロパティ

### URL

URLを扱います。

**読み取り・書き込み**:

```dart
// 読み取り
String? getUrlFromPage(Page page, String propertyName) {
  final property = page.properties[propertyName];
  if (property == null) return null;

  return property.map(
    url: (url) => url.url,
    orElse: () => null,
  );
}

// 書き込み
'Website': PropertyValue.url('https://example.com').toJson(),
'Website': PropertyValue.url(null).toJson(), // クリア
```

### Email

メールアドレスを扱います。

**読み取り・書き込み**:

```dart
// 読み取り
String? getEmailFromPage(Page page, String propertyName) {
  final property = page.properties[propertyName];
  if (property == null) return null;

  return property.map(
    email: (email) => email.email,
    orElse: () => null,
  );
}

// 書き込み
'Contact': PropertyValue.email('user@example.com').toJson(),
'Contact': PropertyValue.email(null).toJson(), // クリア
```

### Phone Number

電話番号を扱います。

**読み取り・書き込み**:

```dart
// 読み取り
String? getPhoneFromPage(Page page, String propertyName) {
  final property = page.properties[propertyName];
  if (property == null) return null;

  return property.map(
    phoneNumber: (phone) => phone.phoneNumber,
    orElse: () => null,
  );
}

// 書き込み
'Phone': PropertyValue.phoneNumber('+81-90-1234-5678').toJson(),
'Phone': PropertyValue.phoneNumber(null).toJson(), // クリア
```

---

## 📎 ファイル系プロパティ

### Files

ファイルやメディアへのリンクを扱います。

**読み取り**:

```dart
List<String> getFilesFromPage(Page page, String propertyName) {
  final property = page.properties[propertyName];
  if (property == null) return [];

  return property.map(
    files: (files) => files.files.map((file) {
      return file.map(
        file: (f) => f.file.url,
        external: (e) => e.external.url,
      );
    }).toList(),
    orElse: () => [],
  );
}
```

**書き込み**:

```dart
// 外部URLを設定
'Attachments': PropertyValue.files([
  NotionFile.external(url: 'https://example.com/file.pdf'),
]).toJson(),
```

---

## 🧮 計算系プロパティ

### Formula

数式による計算結果（読み取り専用）。

**読み取り**:

```dart
dynamic getFormulaFromPage(Page page, String propertyName) {
  final property = page.properties[propertyName];
  if (property == null) return null;

  return property.map(
    formula: (formula) {
      return formula.formula.map(
        string: (s) => s.string,
        number: (n) => n.number,
        boolean: (b) => b.boolean,
        date: (d) => d.date,
      );
    },
    orElse: () => null,
  );
}
```

**スキーマ定義**:

```dart
'Total': PropertySchema.formula(
  formula: FormulaPropertySchema(
    expression: 'prop("Price") * prop("Quantity")',
  ),
).toJson(),
```

### Rollup

関連ページからの集計（読み取り専用）。

**スキーマ定義**:

```dart
'Total Tasks': PropertySchema.rollup(
  rollup: RollupPropertySchema(
    relationPropertyName: 'Related Tasks',
    rollupPropertyName: 'Status',
    function: 'count',
  ),
).toJson(),
```

---

## 🔗 リレーション系プロパティ

### Relation

他のデータベースのページへのリンク。

**読み取り**:

```dart
List<String> getRelationFromPage(Page page, String propertyName) {
  final property = page.properties[propertyName];
  if (property == null) return [];

  return property.map(
    relation: (relation) =>
        relation.relation.map((r) => r.id).toList(),
    orElse: () => [],
  );
}
```

**書き込み**:

```dart
'Related Pages': PropertyValue.relation([
  'page-id-1',
  'page-id-2',
]).toJson(),
```

---

## 🆔 ID系プロパティ

### Unique ID

自動生成されるユニークID（読み取り専用）。

**スキーマ定義**:

```dart
'ID': PropertySchema.uniqueId(
  uniqueId: UniqueIdPropertySchema(prefix: 'TASK'),
).toJson(),
```

---

## 🎯 実践例: プロパティ値の取得ヘルパー

```dart
class PropertyHelper {
  // Titleを取得
  static String? getTitle(Page page) {
    final titleEntry = page.properties.entries.firstWhere(
      (e) => e.value is PropertyValueTitle,
      orElse: () => MapEntry('', PropertyValue.title([])),
    );

    return titleEntry.value.maybeMap(
      title: (title) => title.title.isEmpty
          ? null
          : title.title.map((rt) => rt.plainText).join(''),
      orElse: () => null,
    );
  }

  // 任意のプロパティの文字列表現を取得
  static String getPropertyDisplay(Page page, String propertyName) {
    final property = page.properties[propertyName];
    if (property == null) return '';

    return property.map(
      title: (t) => t.title.map((rt) => rt.plainText).join(''),
      richText: (rt) => rt.richText.map((r) => r.plainText).join(''),
      number: (n) => n.number?.toString() ?? '',
      select: (s) => s.select?.name ?? '',
      multiSelect: (ms) => ms.multiSelect.map((o) => o.name).join(', '),
      date: (d) => d.date?.start.toString() ?? '',
      checkbox: (c) => c.checkbox ? '✓' : '✗',
      url: (u) => u.url ?? '',
      email: (e) => e.email ?? '',
      phoneNumber: (p) => p.phoneNumber ?? '',
      people: (p) => '${p.people.length} people',
      files: (f) => '${f.files.length} files',
      status: (s) => s.status?.name ?? '',
      relation: (r) => '${r.relation.length} relations',
      rollup: (r) => 'Rollup',
      formula: (f) => 'Formula',
      createdTime: (ct) => ct.createdTime.toString(),
      createdBy: (cb) => 'Created by ${cb.createdBy.id}',
      lastEditedTime: (let) => let.lastEditedTime.toString(),
      lastEditedBy: (leb) => 'Edited by ${leb.lastEditedBy.id}',
      uniqueId: (uid) => 'ID: ${uid.uniqueId.number}',
    );
  }
}
```

**使用例**:

```dart
final title = PropertyHelper.getTitle(page);
final status = PropertyHelper.getPropertyDisplay(page, 'Status');
final priority = PropertyHelper.getPropertyDisplay(page, 'Priority');
```

---

## 📊 プロパティ一覧表

| プロパティ | 読み取り | 書き込み | 自動生成 | 備考 |
|:---|:---:|:---:|:---:|:---|
| title | ✅ | ✅ | - | 必須 |
| rich_text | ✅ | ✅ | - | |
| number | ✅ | ✅ | - | |
| select | ✅ | ✅ | - | |
| multi_select | ✅ | ✅ | - | |
| status | ✅ | ✅ | - | |
| date | ✅ | ✅ | - | |
| people | ✅ | ✅ | - | |
| checkbox | ✅ | ✅ | - | |
| url | ✅ | ✅ | - | |
| email | ✅ | ✅ | - | |
| phone_number | ✅ | ✅ | - | |
| files | ✅ | ✅ | - | |
| formula | ✅ | ❌ | ✅ | 数式で計算 |
| relation | ✅ | ✅ | - | |
| rollup | ✅ | ❌ | ✅ | 集計値 |
| created_time | ✅ | ❌ | ✅ | |
| created_by | ✅ | ❌ | ✅ | |
| last_edited_time | ✅ | ❌ | ✅ | |
| last_edited_by | ✅ | ❌ | ✅ | |
| unique_id | ✅ | ❌ | ✅ | |

---

## ✅ チェックリスト

- [ ] Titleプロパティを読み書きできる
- [ ] 数値プロパティを扱える
- [ ] Select/Multi-Selectプロパティを扱える
- [ ] 日付プロパティを扱える
- [ ] Peopleプロパティを扱える
- [ ] URL/Email/Phone Numberプロパティを扱える
- [ ] Filesプロパティを扱える
- [ ] Formula/Rollupプロパティを読み取れる
- [ ] Relationプロパティを扱える

---

## 📚 次のステップ

プロパティの扱い方をマスターしました！次の章では、Filter DSLとSort DSLの使い方を学びます。

**👉 [第7章: Filters & Sorts（フィルタとソート）](./07_filters_and_sorts.md)に進む**

---

[📖 目次に戻る](./index.md) | [⬅️ 前の章](./05_databases.md) | [➡️ 次の章](./07_filters_and_sorts.md)
