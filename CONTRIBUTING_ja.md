# notion-dart-kit への貢献

notion-dart-kitへの貢献に興味を持っていただきありがとうございます！このドキュメントは、貢献のためのガイドラインと手順を提供します。

[English version](./CONTRIBUTING.md)

## 🌟 貢献の方法

このプロジェクトに貢献する方法はたくさんあります：

- 🐛 **バグレポート** - 詳細なバグレポートを提出する
- ✨ **機能提案** - 新機能や改善を提案する
- 📝 **ドキュメント改善** - 誤字の修正、例の追加、説明の明確化
- 🔧 **コード提出** - バグ修正や新機能の実装
- 🧪 **テスト作成** - テストカバレッジの改善
- 💬 **他の人を助ける** - issueやディスカッションでの質問への回答

## 🚀 はじめに

### 前提条件

- Dart SDK 3.0.0以上
- Git
- GitHubアカウント

### 開発環境のセットアップ

1. **リポジトリをフォーク**

   リポジトリページの右上にある「Fork」ボタンをクリックします。

2. **フォークをクローン**

   ```bash
   git clone https://github.com/YOUR_USERNAME/notion-dart-kit.git
   cd notion-dart-kit
   ```

3. **upstreamリモートを追加**

   ```bash
   git remote add upstream https://github.com/Haruki1090/notion-dart-kit.git
   ```

4. **依存関係をインストール**

   ```bash
   dart pub get
   ```

5. **コード生成を実行**

   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

6. **テストを実行**

   ```bash
   dart test
   ```

## 📋 開発ワークフロー

### 1. ブランチを作成

作業用の新しいブランチを作成します：

```bash
git checkout -b feature/your-feature-name
# または
git checkout -b fix/your-bug-fix
```

ブランチ命名規則：
- `feature/` - 新機能
- `fix/` - バグ修正
- `docs/` - ドキュメント変更
- `refactor/` - コードのリファクタリング
- `test/` - テストの追加または変更
- `chore/` - メンテナンスタスク

### 2. 変更を加える

- クリーンで読みやすいコードを書く
- 既存のコードスタイルに従う
- 新機能にはテストを追加する
- 必要に応じてドキュメントを更新する
- コミットを集中させ、アトミックに保つ

### 3. コード生成

モデルを変更したり新しく追加した場合は、コードを再生成します：

```bash
dart run build_runner build --delete-conflicting-outputs
```

### 4. テストを実行

すべてのテストが通ることを確認します：

```bash
# すべてのテストを実行
dart test

# 特定のテストファイルを実行
dart test test/pages_service_test.dart

# カバレッジ付きで実行
dart pub global activate coverage
dart pub global run coverage:test_with_coverage
```

### 5. コード品質をチェック

```bash
# コードをフォーマット
dart format .

# コードを解析
dart analyze

# パッケージをチェック
dart pub publish --dry-run
```

### 6. 変更をコミット

明確で説明的なコミットメッセージを書きます：

```bash
git add .
git commit -m "Add feature: 変更の簡単な説明"
```

良いコミットメッセージの例：
- `Add support for Comments API`
- `Fix rate limiting retry logic`
- `Update README with query examples`
- `Refactor database service for better type safety`

### 7. プッシュしてプルリクエストを作成

```bash
git push origin your-branch-name
```

次にGitHubでプルリクエストを作成し、以下を含めます：
- 明確なタイトル
- 変更の詳細な説明
- 関連するissueへの参照（該当する場合）
- スクリーンショット（該当する場合）

## 🎨 コードスタイルガイドライン

### 一般原則

- [Effective Dart](https://dart.dev/guides/language/effective-dart)のガイドラインに従う
- 意味のある変数名と関数名を使用する
- 関数は小さく、集中させる
- 自己文書化コードを書く
- 複雑なロジックにはコメントを追加する

### 具体的なルール

1. **文字列にはシングルクォートを使用**
   ```dart
   final message = 'Hello, world!';
   ```

2. **より良いフォーマットのために末尾のカンマを使用**
   ```dart
   final user = User(
     id: '123',
     name: 'John',
   );
   ```

3. **可能な限りconstコンストラクタを使用**
   ```dart
   const SizedBox(height: 16);
   ```

4. **不変変数にはfinalを優先**
   ```dart
   final client = NotionClient(token: token);
   ```

5. **複数のパラメータを持つ関数には名前付きパラメータを使用**
   ```dart
   Future<Page> createPage({
     required Parent parent,
     required Map<String, dynamic> properties,
   }) async { ... }
   ```

6. **公開APIにはドキュメントコメントを追加**
   ```dart
   /// ページIDでページを取得します。
   ///
   /// [pageId] - 取得するページのID。
   ///
   /// Pageオブジェクトを返します。
   /// リクエストが失敗した場合、[NotionException]をスローします。
   Future<Page> retrieve(String pageId) async { ... }
   ```

## 🧪 テストガイドライン

### テスト構造

- ユニットテストは`test/unit/`に配置
- 統合テストは`test/integration/`に配置
- テストファイルには`_test.dart`サフィックスを付ける

### テストの書き方

```dart
import 'package:test/test.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';

void main() {
  group('PagesService', () {
    late NotionClient client;

    setUp(() {
      client = NotionClient(token: 'test_token');
    });

    tearDown(() {
      client.close();
    });

    test('retrieve should return a page', () async {
      // Arrange
      final pageId = 'test-page-id';

      // Act & Assert
      expect(
        () => client.pages.retrieve(pageId),
        throwsA(isA<NotionException>()),
      );
    });
  });
}
```

### テストカバレッジ

- 80%以上のコードカバレッジを目指す
- 成功ケースとエラーケースの両方をテストする
- エッジケースと境界条件をテストする
- 外部依存関係はモック化する

## 📖 ドキュメントガイドライン

### コードドキュメント

- すべての公開APIにdartdocコメントを追加
- パラメータの説明を含める
- 戻り値を文書化する
- スローされる可能性のある例外に言及する
- 役立つ場合は使用例を追加する

### READMEとガイド

- 例は実用的で実行可能なものにする
- 新機能を追加したらREADMEを更新する
- 複雑な例にはコードコメントを追加する
- 言語を明確で簡潔に保つ

## 🐛 バグレポート

バグを報告する際は、以下を含めてください：

1. **説明** - 問題の明確な説明
2. **再現手順** - 問題を再現するための最小限のコード
3. **期待される動作** - 何が起こると期待していたか
4. **実際の動作** - 実際に何が起こったか
5. **環境** - Dartバージョン、OS、パッケージバージョン
6. **スタックトレース** - 完全なエラーメッセージとスタックトレース

### バグレポートテンプレート

```markdown
**説明**
バグの明確で簡潔な説明。

**再現方法**
動作を再現する手順：
1. '...'でクライアントを初期化
2. メソッド'...'を呼び出す
3. エラーを確認

**期待される動作**
何が起こると期待していたかの明確な説明。

**コードサンプル**
```dart
final client = NotionClient(token: 'xxx');
final page = await client.pages.retrieve('page_id');
```

**環境**
- Dartバージョン: [例: 3.2.0]
- パッケージバージョン: [例: 0.1.0]
- OS: [例: macOS 14.0]

**スタックトレース**
```
ここに完全なエラーメッセージとスタックトレース
```
```

## ✨ 機能リクエスト

機能をリクエストする際は、以下を含めてください：

1. **ユースケース** - なぜこの機能が必要なのか？
2. **提案する解決策** - どのように動作すべきか？
3. **代替案** - どのような代替案を検討したか？
4. **追加コンテキスト** - その他の関連情報

## 🔍 プルリクエストガイドライン

### 提出前に

- ✅ すべてのテストが通る
- ✅ コードがフォーマットされている（`dart format .`）
- ✅ アナライザの警告がない（`dart analyze`）
- ✅ ドキュメントが更新されている
- ✅ CHANGELOG.mdが更新されている（重要な変更の場合）
- ✅ コミットメッセージが明確で説明的

### PRの説明テンプレート

```markdown
## 説明
変更の簡単な説明。

## 関連Issue
Fixes #123

## 変更のタイプ
- [ ] バグ修正（既存機能を修正する破壊的でない変更）
- [ ] 新機能（機能を追加する破壊的でない変更）
- [ ] 破壊的変更（既存機能を変更する修正または機能）
- [ ] ドキュメント更新

## テスト
実行したテストとその再現方法を説明してください。

## チェックリスト
- [ ] コードがスタイルガイドラインに従っている
- [ ] セルフレビューを実行した
- [ ] 特に理解しにくい部分にコメントを追加した
- [ ] ドキュメントを更新した
- [ ] 変更によって新しい警告が発生しない
- [ ] 修正が有効であることを証明するテストを追加した、または機能が動作することを証明した
- [ ] 新しいおよび既存のユニットテストがローカルで通る
```

## 🏗️ アーキテクチャガイドライン

### プロジェクト構造

```
lib/
├── notion_dart_kit.dart        # メインエクスポートファイル
└── src/
    ├── client/                 # HTTPクライアントとメインクライアント
    ├── models/                 # データモデル
    ├── services/               # APIサービスクラス
    ├── query/                  # クエリビルダー（今後）
    └── utils/                  # ユーティリティと例外
```

### 新しいサービスの追加

1. `lib/src/services/`にサービスファイルを作成
2. 必要に応じて対応するモデルファイルを作成
3. `NotionClient`クラスにサービスを追加
4. `lib/notion_dart_kit.dart`でサービスをエクスポート
5. `test/`にテストを追加
6. ドキュメントを更新

### 新しいモデルの追加

1. `lib/src/models/`にモデルファイルを作成
2. 不変クラスにはFreezedを使用
3. JSONシリアライズサポートを追加
4. コード生成を実行
5. `lib/notion_dart_kit.dart`でモデルをエクスポート
6. テストを追加
7. ドキュメントを更新

## 🤝 コードレビュープロセス

1. **自動チェック** - CIが通る必要があります
2. **メンテナーレビュー** - 少なくとも1人のメンテナーの承認が必要
3. **コミュニティフィードバック** - レビューコメントに対応
4. **最終承認** - メンテナーがPRをマージ

## 📜 ライセンス

notion-dart-kitへの貢献により、あなたの貢献がMITライセンスの下でライセンスされることに同意したものとみなされます。

## 💬 ヘルプを得る

- **Issues** - バグレポートと機能リクエスト用
- **Discussions** - 質問と一般的なディスカッション用
- **Email** - プライベートな問い合わせ用

## 🙏 ありがとうございます！

notion-dart-kitへの貢献ありがとうございます！あなたの努力が、このプロジェクトを皆にとってより良いものにします。

---

**ハッピーコーディング！🚀**
