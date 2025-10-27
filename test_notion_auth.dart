import 'package:notion_dart_kit/notion_dart_kit.dart';

void main() async {
  // デバッグログを有効化
  NotionLogger.instance.initialize(isDebugMode: true);

  // APIトークンとページID
  const apiToken = 'ntn_your_token_here';
  const pageId = 'your_page_id_here';

  print('=== Notion API Test ===');
  print('Token prefix: ${apiToken.substring(0, 4)}...');
  print('Page ID: $pageId');
  print('');

  try {
    final client = NotionClient(token: apiToken);

    print('Attempting to retrieve page...');
    final page = await client.pages.retrieve(pageId);

    print('✅ Success!');
    print('Page ID: ${page.id}');
    print('Created: ${page.createdTime}');
    print('Last edited: ${page.lastEditedTime}');

    client.close();
  } on AuthenticationException catch (e) {
    print('❌ Authentication Error:');
    print('  Message: ${e.message}');
    print('  Status Code: ${e.statusCode}');
    print('');
    print('考えられる原因:');
    print('  1. トークンに余分な空白文字が含まれている');
    print('  2. 統合がこのページに接続されていない');
    print('  3. トークンが無効化されている');
  } on NotFoundException catch (e) {
    print('❌ Not Found Error:');
    print('  Message: ${e.message}');
    print('  Status Code: ${e.statusCode}');
    print('');
    print('考えられる原因:');
    print('  1. ページIDが間違っている');
    print('  2. ページが削除されている');
  } catch (e) {
    print('❌ Unexpected Error:');
    print('  $e');
  }
}
