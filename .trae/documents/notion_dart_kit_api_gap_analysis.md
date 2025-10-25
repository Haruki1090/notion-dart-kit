# Notion Dart Kit API差分分析レポート

## 1. 概要

本文書は、Notion Dart Kitの現在の実装状況と最新のNotion API（2025-09-03）との差分を分析し、実装漏れや古い実装を特定することを目的としています。

### 現在の状況
- **現在のAPIバージョン**: 2022-06-28
- **最新のAPIバージョン**: 2025-09-03
- **バージョン差**: 約3年間の機能追加・変更

## 2. 実装済み機能の確認

### 2.1 完全実装済みサービス
以下のサービスは基本機能が実装済みです：

| サービス | 実装状況 | 主要メソッド |
|---------|---------|-------------|
| Pages Service | ✅ 完全実装 | create, retrieve, update, archive, restore |
| Databases Service | ✅ 完全実装 | create, retrieve, update, archive, restore, query |
| Blocks Service | ✅ 完全実装 | retrieve, retrieveChildren, appendChildren, update, delete |
| Users Service | ✅ 完全実装 | me, retrieve, list |
| Comments Service | ✅ 完全実装 | create, list, retrieve |
| Search Service | ✅ 完全実装 | search |
| File Uploads Service | ✅ 完全実装 | create, sendBytes, sendFile, complete, retrieve, list |
| Data Sources Service | ✅ 完全実装 | create, retrieve, update, query |

### 2.2 部分実装済み機能
以下の機能は一部実装されていますが、最新APIの機能が不足しています：

| 機能 | 実装状況 | 詳細 |
|-----|---------|------|
| `in_trash` プロパティ | ✅ 実装済み | Page, Block, Databaseモデルで対応済み |
| `is_locked` パラメータ | ✅ 実装済み | Databaseサービスで対応済み |
| Template機能 | ✅ 実装済み | Template Block, Template Mentionが実装済み |
| Verification機能 | ✅ 実装済み | Verification Property Schemaが実装済み |
| Workspace関連 | ✅ 部分実装 | Parent, User, BotInfoでworkspace概念は実装済み |

## 3. 実装漏れ・未対応機能

### 3.1 重要度：高（Critical）

#### 3.1.1 Page Property取得エンドポイント
**エンドポイント**: `GET /v1/pages/{page_id}/properties/{property_id}`

**現在の状況**: 未実装  
**影響**: 大きなプロパティ値（25件以上の参照を持つRelation、Rollupなど）の取得ができない  
**実装必要性**: 高

```dart
// 実装が必要なメソッド例
class PagesService {
  Future<PropertyValue> retrieveProperty(
    String pageId, 
    String propertyId, {
    String? startCursor,
    int? pageSize,
  }) async {
    // 実装が必要
  }
}
```

#### 3.1.2 Multi-source Database対応
**現在の状況**: 未対応（2022-06-28 APIバージョンのため）  
**影響**: 2025年9月以降、複数データソースを持つデータベースで操作が失敗する可能性  
**実装必要性**: 高

**必要な変更**:
1. APIバージョンを2025-09-03に更新
2. `data_source_id`を使用したページ作成対応
3. Database取得時の`data_sources`配列処理
4. 検索結果での`data_source`オブジェクト処理

### 3.2 重要度：中（Medium）

#### 3.2.1 新しいAPI Token形式対応
**現在の状況**: `secret_`プレフィックスのみ対応  
**新形式**: `ntn_`プレフィックス  
**実装必要性**: 中（既存トークンは継続動作するが、新規トークンで必要）

#### 3.2.2 Template関連の新機能
**未実装機能**:
- `notion.dataSources.listTemplates` エンドポイント
- ページ作成時の`template`パラメータ
- `result_type`パラメータ（wiki用）

#### 3.2.3 Workspace ID対応
**現在の状況**: `workspace_name`のみ対応  
**新機能**: `workspace_id`フィールドの追加  
**実装必要性**: 中

### 3.3 重要度：低（Low）

#### 3.3.1 Formulas 2.0対応
**現在の状況**: 古いFormula形式  
**影響**: Formula式の表現形式が変更されている  
**実装必要性**: 低（既存の実装で動作するが、新しい式では問題の可能性）

#### 3.3.2 Select/Multi-Select動的オプション作成
**現在の状況**: 未確認  
**新機能**: Create/Update Page時の新しいオプション自動作成  
**実装必要性**: 低

## 4. APIバージョン移行の影響

### 4.1 Breaking Changes
2025-09-03への移行時に発生する破壊的変更：

1. **Database操作の変更**
   - `database_id` → `data_source_id`への移行が必要
   - 複数データソースを持つデータベースでの操作失敗

2. **Search APIの変更**
   - フィルター値: `"database"` → `"data_source"`
   - レスポンス形式の変更

3. **Query Database APIの変更**
   - クエリパラメータ → ボディパラメータへの移行

### 4.2 非破壊的変更
既存の実装に影響しない追加機能：

1. 新しいプロパティの追加（`in_trash`, `is_locked`など）
2. 新しいエンドポイントの追加
3. 新しいパラメータの追加（オプション）

## 5. 実装優先順位と推奨アクション

### 5.1 Phase 1: 緊急対応（1-2週間）
1. **Page Property取得エンドポイントの実装**
   - 最も重要な機能漏れ
   - 既存ユーザーへの影響が大きい

2. **APIバージョン更新の準備**
   - 2025-09-03対応の調査・設計
   - 破壊的変更の影響範囲確認

### 5.2 Phase 2: 主要機能対応（2-4週間）
1. **Multi-source Database対応**
   - APIバージョン2025-09-03への移行
   - `data_source_id`対応の実装
   - 後方互換性の確保

2. **新しいAPI Token形式対応**
   - `ntn_`プレフィックスのサポート
   - トークン検証ロジックの更新

### 5.3 Phase 3: 追加機能対応（4-8週間）
1. **Template機能の拡張**
   - `listTemplates`エンドポイント
   - ページ作成時のtemplate指定

2. **Workspace ID対応**
   - BotInfoモデルの拡張
   - 新しいフィールドの追加

### 5.4 Phase 4: 最適化・改善（継続的）
1. **Formulas 2.0対応**
2. **Select/Multi-Select動的オプション対応**
3. **パフォーマンス最適化**

## 6. 技術的考慮事項

### 6.1 後方互換性
- 既存のAPIバージョン（2022-06-28）のサポート継続
- 段階的な移行パスの提供
- 設定による新旧APIの切り替え機能

### 6.2 エラーハンドリング
- 新しいエラーレスポンスの対応
- `additional_data`フィールドの活用
- より詳細なエラー情報の提供

### 6.3 テスト戦略
- 新旧APIバージョンでの並行テスト
- Multi-source databaseのテストケース追加
- 破壊的変更の検証テスト

## 7. リスク評価

### 7.1 高リスク
- **Multi-source database未対応**: 2025年9月以降の機能停止リスク
- **Page Property取得未実装**: 大きなデータセットでの機能制限

### 7.2 中リスク
- **新しいAPI Token形式未対応**: 新規ユーザーの利用開始困難
- **APIバージョン固定**: 新機能の利用不可

### 7.3 低リスク
- **Formula 2.0未対応**: 一部の新しい式での問題
- **Template機能不足**: 利便性の問題

## 8. 結論

Notion Dart Kitは基本的な機能は十分に実装されていますが、最新のAPI（2025-09-03）との間に重要な機能差があります。特に、Page Property取得エンドポイントの実装とMulti-source Database対応は緊急性が高く、早急な対応が必要です。

段階的な実装アプローチにより、既存ユーザーへの影響を最小限に抑えながら、最新のNotion API機能を活用できるライブラリへの進化が可能です。