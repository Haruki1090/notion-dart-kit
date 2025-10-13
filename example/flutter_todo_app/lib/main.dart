import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'screens/home_screen.dart';
import 'services/notion_service.dart';

void main() async {
  // Load environment variables
  await dotenv.load(fileName: '.env');

  // Get Notion credentials from environment
  final token = dotenv.env['NOTION_TOKEN'];
  final databaseId = dotenv.env['NOTION_DATABASE_ID'];

  if (token == null || databaseId == null) {
    throw Exception(
      'NOTION_TOKEN and NOTION_DATABASE_ID must be set in .env file',
    );
  }

  // Create Notion service instance
  final notionService = NotionService(
    token: token,
    databaseId: databaseId,
  );

  runApp(
    ProviderScope(
      overrides: [
        notionServiceProvider.overrideWithValue(notionService),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notion Tasks',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
