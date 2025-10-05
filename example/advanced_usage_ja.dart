import 'package:notion_dart_kit/notion_dart_kit.dart';

/// notion_dart_kit の高度な使用例（日本語版）
///
/// この例では、より複雑なシナリオとベストプラクティスを示します。
/// 実行する前に、統合トークンを環境変数として設定してください：
/// export NOTION_TOKEN=your_token_here
void main() async {
  print('=== notion_dart_kit 高度な使用例 ===\n');

  // セキュリティのため、環境変数からトークンを取得（推奨）
  final token = const String.fromEnvironment(
    'NOTION_TOKEN',
    defaultValue: 'YOUR_INTEGRATION_TOKEN',
  );

  if (token == 'YOUR_INTEGRATION_TOKEN') {
    print('⚠️  NOTION_TOKEN環境変数を設定してください');
    print('   export NOTION_TOKEN=your_token_here\n');
    return;
  }

  final client = NotionClient(token: token);

  try {
    await _demoErrorHandling(client);
    await _demoPagination(client);
    await _demoComplexQueries(client);
    await _demoBlockOperations(client);
    await _demoBatchOperations(client);
    await _demoSearchFeatures(client);

    print('\n${'=' * 60}');
    print('✅ すべての高度な例が正常に完了しました！');
    print('=' * 60);
  } catch (e) {
    print('\n❌ 予期しないエラー: $e');
  } finally {
    client.close();
    print('\n🔒 クライアントを閉じました。');
  }
}

// ============================================================================
// 1. 高度なエラーハンドリング
// ============================================================================

Future<void> _demoErrorHandling(NotionClient client) async {
  print('📌 1. 高度なエラーハンドリング\n');

  // 例1a: 特定の例外の処理
  print('   例1a: 適切なエラーハンドリング');
  try {
    await client.pages.retrieve('invalid-page-id-12345');
  } on NotFoundException catch (e) {
    print('   ℹ️  予想通り: ページが見つかりません (${e.statusCode})');
  } on AuthenticationException catch (e) {
    print('   ❌ 認証失敗: ${e.message}');
    // 再認証するか、ユーザーに通知
  } on RateLimitException catch (e) {
    print('   ⏳ レート制限: ${e.message}');
    // クライアントは自動的にリトライしますが、ここで処理することもできます
  } on ValidationException catch (e) {
    print('   ⚠️  無効なリクエスト: ${e.message}');
    // リクエストパラメータを修正
  } on NotionException catch (e) {
    print('   ❌ Notion APIエラー: ${e.message} (${e.statusCode})');
    // その他のエラーを処理
  }

  // 例1b: バリデーションを使った防御的プログラミング
  print('\n   例1b: 入力バリデーション');
  final pageId = 'test-page-id';

  if (_isValidNotionId(pageId)) {
    try {
      await client.pages.retrieve(pageId);
    } on NotFoundException {
      print('   ℹ️  ページが存在しないか、アクセスできません');
    }
  } else {
    print('   ⚠️  無効なページIDフォーマット');
  }

  print('   ✅ エラーハンドリングのデモ完了\n');
}

// ============================================================================
// 2. ページネーション処理
// ============================================================================

Future<void> _demoPagination(NotionClient client) async {
  print('📌 2. ページネーションパターン\n');

  print('   ページネーションですべての検索結果を取得中...');

  final allResults = <SearchResult>[];
  String? cursor;
  var pageCount = 0;

  do {
    try {
      final response = await client.search.search(
        startCursor: cursor,
        pageSize: 10, // デモ用に小さいページサイズ
      );

      allResults.addAll(response.results);
      cursor = response.nextCursor;
      pageCount++;

      print('   📄 ページ $pageCount を取得: ${response.results.length} 件');

      // デモのため数ページで終了
      if (pageCount >= 3) {
        print('   ℹ️  デモのため $pageCount ページで停止します');
        break;
      }

      if (!response.hasMore) {
        break;
      }
    } on NotionException catch (e) {
      print('   ❌ ページネーション中のエラー: ${e.message}');
      break;
    }
  } while (cursor != null);

  print('   ✅ 収集したアイテムの合計: ${allResults.length}\n');
}

// ============================================================================
// 3. 複雑なデータベースクエリ
// ============================================================================

Future<void> _demoComplexQueries(NotionClient client) async {
  print('📌 3. 複雑なデータベースクエリ\n');

  print('   注意: これらには有効なdatabase_idが必要です\n');

  // 参考用のフィルター構造の例
  print('   例3a: 複合フィルター（AND）');
  print('   ```dart');
  print('   final results = await client.databases.query(');
  print("     'database_id',");
  print('     filter: {');
  print("       'and': [");
  print('         {');
  print("           'property': 'ステータス',");
  print("           'select': {'equals': '進行中'}");
  print('         },');
  print('         {');
  print("           'property': '優先度',");
  print("           'select': {'equals': '高'}");
  print('         },');
  print('       ]');
  print('     },');
  print('   );');
  print('   ```\n');

  print('   例3b: 複合フィルター（OR）とソート');
  print('   ```dart');
  print('   final results = await client.databases.query(');
  print("     'database_id',");
  print('     filter: {');
  print("       'or': [");
  print("         {'property': 'ステータス', 'select': {'equals': '完了'}},");
  print("         {'property': 'ステータス', 'select': {'equals': 'アーカイブ'}},");
  print('       ]');
  print('     },');
  print('     sorts: [');
  print("       {'property': '作成日', 'direction': 'descending'},");
  print("       {'property': '名前', 'direction': 'ascending'},");
  print('     ],');
  print('   );');
  print('   ```\n');

  print('   例3c: 日付範囲フィルター');
  print('   ```dart');
  print('   final results = await client.databases.query(');
  print("     'database_id',");
  print('     filter: {');
  print("       'property': '期限',");
  print("       'date': {");
  print("         'on_or_after': '2025-01-01',");
  print("         'before': '2025-12-31',");
  print('       }');
  print('     },');
  print('   );');
  print('   ```\n');

  print('   ✅ クエリパターンのデモ完了\n');
}

// ============================================================================
// 4. 高度なブロック操作
// ============================================================================

Future<void> _demoBlockOperations(NotionClient client) async {
  print('📌 4. 高度なブロック操作\n');

  print('   例4a: ネストされたブロックの作成');
  print('   ```dart');
  print('   // ネストされたコンテンツを持つページを作成');
  print('   final page = await client.pages.create(');
  print("     parent: Parent.database('database_id'),");
  print('     properties: {');
  print("       '名前': {'title': [{'text': {'content': '新しいページ'}}]}");
  print('     },');
  print('     children: [');
  print('       {');
  print("         'object': 'block',");
  print("         'type': 'heading_1',");
  print("         'heading_1': {");
  print("           'rich_text': [{'text': {'content': 'メインタイトル'}}]");
  print('         }');
  print('       },');
  print('       {');
  print("         'object': 'block',");
  print("         'type': 'paragraph',");
  print("         'paragraph': {");
  print("           'rich_text': [");
  print('             {');
  print("               'text': {'content': 'これは '},");
  print("               'annotations': {'bold': false}");
  print('             },');
  print('             {');
  print("               'text': {'content': '太字'},");
  print("               'annotations': {'bold': true}");
  print('             },');
  print('             {');
  print("               'text': {'content': ' で、これは '},");
  print('             },');
  print('             {');
  print("               'text': {'content': '斜体'},");
  print("               'annotations': {'italic': true}");
  print('             },');
  print('           ]');
  print('         }');
  print('       },');
  print('       {');
  print("         'object': 'block',");
  print("         'type': 'bulleted_list_item',");
  print("         'bulleted_list_item': {");
  print("           'rich_text': [{'text': {'content': '項目1'}}],");
  print("           'children': [");
  print('             {');
  print("               'object': 'block',");
  print("               'type': 'bulleted_list_item',");
  print("               'bulleted_list_item': {");
  print("                 'rich_text': [{'text': {'content': 'ネストされた項目'}}]");
  print('               }');
  print('             }');
  print('           ]');
  print('         }');
  print('       },');
  print('     ],');
  print('   );');
  print('   ```\n');

  print('   例4b: すべてのブロックを再帰的に取得');
  print('   ```dart');
  print('   Future<List<Block>> すべてのブロックを取得(');
  print('     NotionClient client,');
  print('     String blockId,');
  print('   ) async {');
  print('     final allBlocks = <Block>[];');
  print('     final children = await client.blocks.retrieveChildren(blockId);');
  print('     ');
  print('     for (final block in children.results) {');
  print('       allBlocks.add(block);');
  print('       ');
  print('       // ネストされたブロックを再帰的に取得');
  print('       if (block.hasChildren) {');
  print('         final nested = await すべてのブロックを取得(client, block.id);');
  print('         allBlocks.addAll(nested);');
  print('       }');
  print('     }');
  print('     ');
  print('     return allBlocks;');
  print('   }');
  print('   ```\n');

  print('   ✅ ブロック操作パターンのデモ完了\n');
}

// ============================================================================
// 5. エラー回復付きバッチ操作
// ============================================================================

Future<void> _demoBatchOperations(NotionClient client) async {
  print('📌 5. エラー回復付きバッチ操作\n');

  print('   例5a: エラーハンドリング付き一括ページ作成');
  print('   ```dart');
  print('   Future<List<Page>> 一括でページを作成(');
  print('     NotionClient client,');
  print('     String databaseId,');
  print('     List<Map<String, dynamic>> pagesData,');
  print('   ) async {');
  print('     final created = <Page>[];');
  print('     final errors = <String>[];');
  print('     ');
  print('     for (var i = 0; i < pagesData.length; i++) {');
  print('       try {');
  print('         final page = await client.pages.create(');
  print('           parent: Parent.database(databaseId),');
  print('           properties: pagesData[i],');
  print('         );');
  print('         created.add(page);');
  print('         print("ページ \${i + 1}/\${pagesData.length} を作成");');
  print('         ');
  print('         // レート制限を避けるため遅延を追加');
  print('         await Future.delayed(Duration(milliseconds: 300));');
  print('       } on NotionException catch (e) {');
  print('         errors.add("ページ \${i + 1}: \${e.message}");');
  print('         print("ページ \${i + 1} の作成に失敗: \${e.message}");');
  print('       }');
  print('     }');
  print('     ');
  print('     print("作成成功: \${created.length}件");');
  print('     print("失敗: \${errors.length}件");');
  print('     ');
  print('     return created;');
  print('   }');
  print('   ```\n');

  print('   ✅ バッチ操作パターンのデモ完了\n');
}

// ============================================================================
// 6. 高度な検索機能
// ============================================================================

Future<void> _demoSearchFeatures(NotionClient client) async {
  print('📌 6. 高度な検索機能\n');

  print('   例6a: タイプフィルタリング付き検索');
  try {
    // ページのみを検索
    final pages = await client.search.search(
      query: 'プロジェクト',
      filter: SearchFilter.page,
      pageSize: 5,
    );

    print('   "プロジェクト"に一致するページ: ${pages.results.length}件');

    // データベースのみを検索
    final databases = await client.search.search(
      query: 'プロジェクト',
      filter: SearchFilter.dataSource,
      pageSize: 5,
    );

    print('   "プロジェクト"に一致するデータベース: ${databases.results.length}件');
  } on NotionException catch (e) {
    print('   ℹ️  検索エラー（一致なしの場合は予想通り）: ${e.message}');
  }

  print('\n   例6b: 混在する検索結果の処理');
  print('   ```dart');
  print('   final results = await client.search.search(query: "todo");');
  print('   ');
  print('   final pages = <Page>[];');
  print('   final databases = <Database>[];');
  print('   ');
  print('   for (final result in results.results) {');
  print('     result.when(');
  print('       page: (page) {');
  print('         pages.add(page);');
  print('         print("ページ: \${page.id}");');
  print('       },');
  print('       database: (database) {');
  print('         databases.add(database);');
  print('         print("データベース: \${database.id}");');
  print('       },');
  print('     );');
  print('   }');
  print('   ```\n');

  print('   ✅ 検索機能のデモ完了\n');
}

// ============================================================================
// ヘルパー関数
// ============================================================================

/// 文字列が有効なNotion IDフォーマットかどうかを検証
bool _isValidNotionId(String id) {
  // Notion IDは通常32文字（ハイフンなしのUUID）
  // または36文字（ハイフン付きのUUID）
  final pattern = RegExp(
    r'^[a-f0-9]{8}-?[a-f0-9]{4}-?[a-f0-9]{4}-?[a-f0-9]{4}-?[a-f0-9]{12}$',
  );
  return pattern.hasMatch(id.toLowerCase());
}
