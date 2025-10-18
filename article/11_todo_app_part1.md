# 第11章: Todoアプリ Part 1 - プロジェクトセットアップ

> **この章の目標**: Todoアプリの設計とプロジェクト構成を決める

---

## 🎯 作成するアプリの概要

NotionをバックエンドとしたシンプルなTodoアプリを作成します。

**主な機能**:
- ✅ Todo一覧の表示
- ✅ Todoの追加
- ✅ Todoの更新（完了/未完了の切り替え）
- ✅ Todoの削除
- ✅ 優先度でソート
- ✅ ステータスでフィルタ

---

## 📁 プロジェクト構成

```
lib/
├── main.dart
├── models/
│   └── todo_model.dart
├── services/
│   └── notion_service.dart
├── screens/
│   ├── todo_list_screen.dart
│   └── todo_detail_screen.dart
└── widgets/
    ├── todo_item.dart
    └── todo_form.dart
```

---

## 🛠️ 必要なパッケージ

```yaml
dependencies:
  flutter:
    sdk: flutter
  notion_dart_kit: ^0.1.2
  flutter_riverpod: ^2.4.0
  flutter_dotenv: ^5.1.0
```

---

[📖 目次に戻る](./index.md) | [⬅️ 前の章](./10_pagination.md) | [➡️ 次の章](./12_todo_app_part2.md)
