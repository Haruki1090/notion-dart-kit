## Unreleased

### 追加
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

# 変更履歴

このプロジェクトのすべての重要な変更は、このファイルに記録されます。

フォーマットは [Keep a Changelog](https://keepachangelog.com/ja/1.0.0/) に基づいており、
このプロジェクトは [セマンティック バージョニング](https://semver.org/lang/ja/) に準拠しています。

[English version](./CHANGELOG.md)

## [0.1.0] - 2025-01-XX

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
