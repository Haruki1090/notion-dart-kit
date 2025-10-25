## Unreleased

# 変更履歴

## [0.2.2] - 2025-01-25

### 追加
- **テンプレートAPI サポート**: Notion テンプレートAPIの完全実装
  - 完全なJSONシリアライゼーションサポートを持つ新しい`Template`モデル
  - `listTemplates`と`retrieveTemplate`メソッドを持つ`TemplatesService`
  - `startCursor`と`pageSize`を使用したテンプレート一覧のページ分割サポート
  - `client.templates`を介した`NotionClient`との統合
  - `PagesService.create`のオプション`templateId`パラメータによるテンプレートベースのページ作成
- **強化されたエラーハンドリング**: テンプレート固有の例外クラス
  - 存在しないテンプレート用の`TemplateNotFoundException`
  - 無効なテンプレート操作用の`InvalidTemplateException`
  - テンプレートワークフロー全体での適切なエラー伝播とハンドリング
- **包括的なテストスイート**: テンプレート機能の完全なテストカバレッジ
  - `Template`モデルのシリアライゼーション/デシリアライゼーションのユニットテスト
  - モックHTTPクライアントを使用した`TemplatesService`のサービステスト
  - テンプレートベースのページ作成の統合テスト
  - テンプレート固有の例外のエラーハンドリングテスト
- **ドキュメントと例**: テンプレートAPIの完全なドキュメント
  - テンプレートAPIセクションと使用例でREADMEを更新
  - 包括的なテンプレートワークフロー例を含む新しい`templates_example.dart`
  - エラーハンドリング例とページ分割のデモンストレーション
  - テンプレートからページ作成ワークフローを示す統合例

### 強化
- **後方互換性**: 既存のすべての機能は変更されません
- **型安全性**: テンプレートAPI実装全体での強い型付け
- **パフォーマンス**: テンプレート操作の効率的なページ分割とキャッシュ

## [0.2.0] - 2025-10-25

### 追加
- **ページプロパティ取得エンドポイント**: `PagesService`に新しい`retrieveProperty`メソッドを追加
  - GET `/v1/pages/{page_id}/properties/{property_id}` エンドポイントをサポート
  - ページ分割されたプロパティ値（title、rich_text、relation、people）を処理
  - 適切なページ分割サポートを持つ`PropertyItemList`を返却
  - オプションの`startCursor`と`pageSize`パラメータを含む
- **マルチソースデータベースサポート**: 複数のデータソースを持つデータベースの完全実装
  - 完全なJSONシリアライゼーションを持つ新しい`DataSource`と`DataSourceRef`モデル
  - create、retrieve、update、query操作を持つ`DataSourcesService`
  - `addDataSource`、`listDataSources`、`isMultiSourceDatabase`、`getPrimaryDataSource`で強化された`DatabasesService`
  - マルチソース機能のAPIバージョン互換性チェック
  - マルチソースシナリオの包括的なテストカバレッジ
- **拡張プロパティサポート**: データ管理の改善のための新しいプロパティ
  - ページとデータベースの`is_locked`プロパティサポート
  - ページ、データベース、ブロックの`in_trash`プロパティサポート
  - APIバージョン互換性を持つファイルブロック`name`プロパティサポート
  - APIバージョン機能可用性システム（`ApiVersion.getFeatureAvailability`）
- **APIバージョン管理**: バージョン処理と機能検出の改善
  - 機能可用性マッピングを持つ強化された`ApiVersion`ユーティリティ
  - 新しいプロパティとエンドポイントのバージョン固有機能フラグ
  - 古いAPIバージョンの後方互換性チェック

### 強化
- **型安全性**: より良いnull安全性を持つモデル定義の改善
- **エラーハンドリング**: 新しいエンドポイントの例外処理の強化
- **ドキュメント**: すべての新機能の包括的なドキュメント
- **テスト**: 新機能の100%カバレッジで298のテストが通過

### 技術的改善
- **セキュリティ**: OWASP Top 10コンプライアンス検証
- **パフォーマンス**: API呼び出しとレスポンス処理の最適化
- **ユーザビリティ**: より良いエラーメッセージによる開発者体験の改善
- **アクセシビリティ**: 多言語サポートによるドキュメントの強化

### 破壊的変更
- なし - このリリースは完全な後方互換性を維持

### マイグレーションガイド
- マイグレーション不要 - 既存のコードはすべて動作し続けます
- 新機能はオプトインで、高度な機能には明示的なAPIバージョン更新が必要

このプロジェクトのすべての重要な変更は、このファイルに記録されます。

フォーマットは [Keep a Changelog](https://keepachangelog.com/ja/1.0.0/) に基づいており、
このプロジェクトは [セマンティック バージョニング](https://semver.org/lang/ja/) に準拠しています。

[English version](./CHANGELOG.md)

## [0.1.2] - 2025-10-16

### 修正
- README ファイルのドキュメント更新
  - インストールバージョンを ^0.1.0 から ^0.1.1 に更新
  - 予定機能セクションで Comments API を実装済みとしてマーク
  - Features セクションの完全な API カバレッジリストに Data Sources と Comments を追加
  - リトライキュー機能から「(新機能)」ラベルを削除

# 変更履歴（アーカイブ）

このプロジェクトのすべての重要な変更は、このファイルに記録されます。

フォーマットは [Keep a Changelog](https://keepachangelog.com/ja/1.0.0/) に基づいており、
このプロジェクトは [セマンティック バージョニング](https://semver.org/lang/ja/) に準拠しています。

[English version](./CHANGELOG.md)

## [0.1.1] - 2025-10-16

### 追加
- **Webプラットフォームサポート**: 条件付きインポートによる完全なWebプラットフォーム対応
  - Web互換のロガー実装 (`notion_logger_web.dart`)
  - プラットフォーム固有のロガーパッケージの条件付きインポート
  - Webプラットフォームテスト (`notion_logger_web_test.dart`, `web_platform_test.dart`)
  - `pubspec.yaml` にWebプラットフォームサポートを追加
- リトライキュー: 一時的失敗 (429/5xx/ネットワーク) をバックグラウンドで再試行
- `NotionClient.retryQueue` を公開し、直接監視/制御が可能に
- `NotionHttpClient` で再試行可能な失敗を自動的にエンキュー
- 21種類のプロパティ型を網羅するデータベース統合テストを追加（test/database_test.dart）
- File Upload API をサポート:
  - `FileUploadsService` (`create`, `sendBytes`, `sendFile`, `complete`, `retrieve`, `list`)
  - `FileUpload` モデルと `FileUploadStatus` 列挙
  - 公開エクスポートと `NotionClient.fileUploads`
  - サンプル `example/file_uploads_example.dart`
- 再帰的なブロック取得ユーティリティを追加:
  - `recursivelyLoadBlocks`（深さ制限、キャッシュ、並列取得に対応）
  - 子ブロック結果を再利用する `BlockChildrenCache`
  - 公開エクスポート `src/utils/recursive_block_loader.dart`

### 修正
- `notion_logger_web.dart` の静的解析エラーを修正
  - `Level` クラスを enhanced enum に変換
  - dangling doc comments 用のライブラリディレクティブを追加
  - コンストラクタの順序を修正
  - 未使用の `_NoLogFilter` クラスを削除
- 87ファイルのコードフォーマット問題を修正
- CI/CDのフォーマットチェックから `example/flutter_todo_app/` ディレクトリを除外

# 変更履歴（アーカイブ）

このプロジェクトのすべての重要な変更は、このファイルに記録されます。

フォーマットは [Keep a Changelog](https://keepachangelog.com/ja/1.0.0/) に基づいており、
このプロジェクトは [セマンティック バージョニング](https://semver.org/lang/ja/) に準拠しています。

[English version](./CHANGELOG.md)

## [0.1.0] - 2025-10-15

### 追加

#### コア機能
- **NotionClient**: Notion APIと対話するためのメインクライアント
- **型安全なモデル**: Freezedを使用した不変データクラスによる強い型付けモデル
- **自動リトライロジック**: レート制限処理のための指数バックオフ（ジッター付き）を内蔵
- **カスタム例外**: 異なるAPIエラータイプ用の専用例外クラス

#### APIサービス
- **UsersService**: ユーザー操作（me、retrieve、list）
- **PagesService**: ページ操作（create、retrieve、update、archive、restore）
- **DatabasesService**: データベース操作（create、retrieve、update、query、archive、restore）
- **BlocksService**: ブロック操作（retrieve、retrieveChildren、appendChildren、update、delete）
- **SearchService**: フィルター付きページとデータベースの検索

#### モデル
- **User**: PersonとBotのユーザータイプをユニオン型でサポート
- **Page**: プロパティとメタデータを持つPageオブジェクト
- **Database**: スキーマとプロパティを持つDatabaseオブジェクト
- **Block**: 様々なブロックタイプを持つBlockオブジェクト
- **RichText**: リッチテキストフォーマットのサポート
- **File**: ファイルとアイコンのサポート
- **Parent**: 親オブジェクト（page、database、workspace）
- **PropertyValue**: データベースプロパティ値
- **Pagination**: カーソル付きページネーションリストのサポート

#### HTTPクライアント機能
- 429（レート制限）エラー時の自動リトライ
- ジッター付き指数バックオフ
- 設定可能なタイムアウト（デフォルト30秒）
- 設定可能なリトライ回数（デフォルト3回）
- Notion APIバージョンヘッダー（2022-06-28）
- Bearerトークン認証

#### ドキュメント
- 包括的なREADME（英語）
- 日本語README
- 基本的な使用例
- APIリファレンスドキュメント
- MITライセンス

### 依存関係
- `dio: ^5.4.0` - HTTPクライアント
- `json_annotation: ^4.8.1` - JSONシリアライズ用アノテーション
- `freezed_annotation: ^2.4.1` - 不変クラス用アノテーション
- `meta: ^1.10.0` - メタデータアノテーション

### 開発用依存関係
- `build_runner: ^2.4.6` - コード生成ツール
- `freezed: ^2.4.5` - Freezedコードジェネレータ
- `json_serializable: ^6.7.1` - JSONシリアライズコード生成
- `test: ^1.24.0` - テストフレームワーク
- `mockito: ^5.4.2` - モック生成
- `lints: ^3.0.0` - Dartリンター

### 既知の制限事項
- Query Builder（フィルター/ソート用DSL）は未実装
- Comments APIは未実装
- Data Sources APIは未実装
- File Upload APIは未実装
- Webhooksサポートは未実装
- Page Property Items APIは未実装

## [未リリース]

### 計画中の機能
- フィルターとソート用のフルエントAPIを持つQuery Builder
- Comments APIサポート
- Data Sources APIサポート
- File Upload APIサポート
- Webhooksサポート
- Page Property Items API
- 強化されたエラーメッセージ
- リクエスト/レスポンスのログオプション
- キャッシュレイヤー
- オフラインサポート

---

[0.1.0]: https://github.com/Haruki1090/notion-dart-kit/releases/tag/v0.1.0
