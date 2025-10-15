import 'package:notion_dart_kit/notion_dart_kit.dart';

/// notion_dart_kit の基本的な使用例（日本語版）
///
/// この例では、ライブラリの主要機能の使い方を示します。
/// 実行する前に、'YOUR_INTEGRATION_TOKEN'を実際のトークンに置き換えてください。
/// トークンの取得: https://www.notion.so/my-integrations
void main() async {
  print('=== notion_dart_kit 基本的な使用例 ===\n');

  // 統合トークンでクライアントを初期化
  final client = NotionClient(token: 'YOUR_INTEGRATION_TOKEN');

  try {
    // ========================================
    // 1. Users API
    // ========================================
    print('📱 1. Botユーザー情報を取得中...');
    final botUser = await client.users.me();
    print('✅ Botユーザー: ${botUser.name}');
    botUser.when(
      person: (id, person, name, avatarUrl) {
        print('   タイプ: Person');
        print('   メールアドレス: ${person.email ?? "N/A"}');
      },
      bot: (id, bot, name, avatarUrl) {
        print('   タイプ: Bot');
        print('   ワークスペース: ${bot.workspaceName ?? "N/A"}');
      },
    );
    print('   ID: ${botUser.id}\n');

    // ========================================
    // 2. Search API
    // ========================================
    print('🔍 2. ページとデータベースを検索中...');
    final searchResults = await client.search.search(pageSize: 5);
    print('✅ ${searchResults.results.length}件のアイテムが見つかりました');
    for (final result in searchResults.results) {
      result.when(
        page: (page) => print('   📄 ページ: ${page.id}'),
        database: (database) => print('   📊 データベース: ${database.id}'),
      );
    }
    print('');

    // ========================================
    // 3. Pages API - 例（page_idが必要）
    // ========================================
    print('📄 3. ページの操作...');
    print('   ページAPIを使用するには、有効なpage_idが必要です:');
    print('   ```dart');
    print("   final page = await client.pages.retrieve('page_id');");
    print(r"   print('ページタイトル: ${page.properties}');");
    print('');
    print('   // 新しいページを作成');
    print('   final newPage = await client.pages.create(');
    print("     parent: Parent.database('database_id'),");
    print('     properties: {');
    print("       'Name': {");
    print("         'title': [");
    print("           {'text': {'content': '新しいページ'}}");
    print('         ]');
    print('       }');
    print('     },');
    print('   );');
    print('');
    print('   // ページプロパティを更新');
    print("   await client.pages.update('page_id',");
    print('     properties: {');
    print("       'Status': {'select': {'name': '完了'}}");
    print('     },');
    print('   );');
    print('');
    print('   // ページをアーカイブ');
    print("   await client.pages.archive('page_id');");
    print('   ```\n');

    // ========================================
    // 4. Databases API - 例（database_idが必要）
    // ========================================
    print('📊 4. データベースの操作...');
    print('   データベースをクエリするには、有効なdatabase_idが必要です:');
    print('   ```dart');
    print('   // フィルターとソートを使用してデータベースをクエリ');
    print("   final results = await client.databases.query('database_id',");
    print('     filter: {');
    print("       'property': 'ステータス',");
    print("       'select': {'equals': '進行中'}");
    print('     },');
    print('     sorts: [');
    print("       {'property': '名前', 'direction': 'ascending'}");
    print('     ],');
    print('     pageSize: 50,');
    print('   );');
    print('');
    print('   // 結果を処理');
    print('   for (final page in results.results) {');
    print(r"     print('ページ: ${page.id}');");
    print('   }');
    print('');
    print('   // ページネーションを処理');
    print('   if (results.hasMore) {');
    print("     final nextPage = await client.databases.query('database_id',");
    print('       startCursor: results.nextCursor,');
    print('     );');
    print('   }');
    print('   ```\n');

    // ========================================
    // 5. Blocks API - 例（block_idが必要）
    // ========================================
    print('📦 5. ブロックの操作...');
    print('   ブロックを操作するには、有効なblock_idが必要です:');
    print('   ```dart');
    print('   // ブロックの子要素を取得');
    print(
      "   final children = await client.blocks.retrieveChildren('block_id');",
    );
    print(r"   print('子ブロックが${children.results.length}件見つかりました');");
    print('');
    print('   // 新しいブロックを追加');
    print("   await client.blocks.appendChildren('block_id', [");
    print('     {');
    print("       'object': 'block',");
    print("       'type': 'paragraph',");
    print("       'paragraph': {");
    print("         'rich_text': [");
    print("           {'type': 'text', 'text': {'content': '新しい段落'}}");
    print('         ]');
    print('       }');
    print('     },');
    print('   ]);');
    print('   ```\n');

    // ========================================
    // 6. エラーハンドリングの例
    // ========================================
    print('⚠️  6. エラーハンドリング...');
    print('   ライブラリは特定の例外タイプを提供します:');
    print('   ```dart');
    print('   try {');
    print("     final page = await client.pages.retrieve('invalid_id');");
    print('   } on NotFoundException catch (e) {');
    print(r"     print('ページが見つかりません: ${e.message}');");
    print('   } on AuthenticationException catch (e) {');
    print(r"     print('認証失敗: ${e.message}');");
    print('   } on RateLimitException catch (e) {');
    print(r"     print('レート制限: ${e.message}');");
    print('   } on ValidationException catch (e) {');
    print(r"     print('無効なリクエスト: ${e.message}');");
    print('   } on NotionException catch (e) {');
    print(r"     print('Notion APIエラー: ${e.message}');");
    print('   }');
    print('   ```\n');

    // ========================================
    // まとめ
    // ========================================
    print('=' * 50);
    print('✅ サンプルが正常に完了しました！');
    print('=' * 50);
    print('');
    print('📚 次のステップ:');
    print('   1. YOUR_INTEGRATION_TOKENを実際のトークンに置き換える');
    print('   2. Notionワークスペースからpage/database IDを取得する');
    print('   3. 実際のIDでコメントアウトされた例を試してみる');
    print('   4. より詳細な例はREADMEを確認してください');
    print('');
    print('🔗 便利なリンク:');
    print('   - 統合を作成: https://www.notion.so/my-integrations');
    print('   - APIドキュメント: https://developers.notion.com/');
    print('   - パッケージドキュメント: https://pub.dev/packages/notion_dart_kit');
  } catch (e) {
    print('❌ エラーが発生しました: $e');
    print('');
    print('💡 ヒント:');
    print('   - YOUR_INTEGRATION_TOKENを置き換えたか確認してください');
    print('   - トークンに必要な権限があるか確認してください');
    print('   - 統合がワークスペースに接続されているか確認してください');
  } finally {
    // 使用後は必ずクライアントを閉じる
    client.close();
    print('\n🔒 クライアントを閉じました。');
  }
}
