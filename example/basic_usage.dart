import 'package:notion_dart_kit/notion_dart_kit.dart';

void main() async {
  print('=== notion_dart_kit Basic Usage Example ===');

  // Initialize the client with your integration token
  // Get your token from: https://www.notion.so/my-integrations
  final client = NotionClient(
    token: 'YOUR_INTEGRATION_TOKEN_HERE',
  );

  print('✅ NotionClient initialized successfully!');
  print('Token: ${client.token.substring(0, 10)}...');

  // TODO: Add example API calls once services are implemented
  print('\n🚧 API services are under development...');
}