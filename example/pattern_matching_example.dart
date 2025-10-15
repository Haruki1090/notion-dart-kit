import 'package:notion_dart_kit/notion_dart_kit.dart';

/// Pattern Matching example for notion_dart_kit
///
/// This example demonstrates exhaustive pattern matching with Freezed union types.
/// notion_dart_kit uses Freezed union types for models like PropertyValue, User,
/// Parent, RichText, and Block, enabling type-safe pattern matching.
///
/// Benefits:
/// - Compile-time exhaustiveness checking
/// - Type-safe access to variant-specific data
/// - No runtime type casting needed
/// - IDE autocomplete for all cases
void main() async {
  print('=== Pattern Matching Example ===\n');

  final client = NotionClient(token: 'YOUR_INTEGRATION_TOKEN');

  const pageId = 'YOUR_PAGE_ID';

  try {
    // ========================================
    // 1. PropertyValue Pattern Matching
    // ========================================
    print('📝 1. PropertyValue Pattern Matching\n');

    print('PropertyValue supports 21 property types:\n');

    // Example: Reading various property types
    print('Example code:');
    print('```dart');
    print("final page = await client.pages.retrieve('page_id');");
    print('');
    print('// Pattern match on ANY property type');
    print("page.properties.forEach((name, prop) {");
    print('  final value = prop.when(');
    print('    // Text properties');
    print('    title: (id, richText) {');
    print('      return richText.map((rt) => rt.plainText).join();');
    print('    },');
    print('    richText: (id, richText) {');
    print('      return richText.map((rt) => rt.plainText).join();');
    print('    },');
    print('    // Selection properties');
    print('    select: (id, option) => option?.name ?? "None",');
    print('    multiSelect: (id, options) {');
    print('      return options.map((opt) => opt.name).join(", ");');
    print('    },');
    print('    status: (id, status) => status?.name ?? "No status",');
    print('    // Number and checkbox');
    print('    number: (id, value) => value?.toString() ?? "N/A",');
    print('    checkbox: (id, checked) => checked ? "✅" : "❌",');
    print('    // Date properties');
    print('    date: (id, date) {');
    print('      if (date == null) return "No date";');
    print('      final start = date.start;');
    print('      final end = date.end;');
    print('      return end != null ? "$start → $end" : start;');
    print('    },');
    print('    // People and relations');
    print('    people: (id, users) {');
    print('      return users.map((u) => u.name).join(", ");');
    print('    },');
    print('    relation: (id, pages) {');
    print('      return "${pages.length} related pages";');
    print('    },');
    print('    // URLs and contact info');
    print('    url: (id, url) => url ?? "No URL",');
    print('    email: (id, email) => email ?? "No email",');
    print('    phoneNumber: (id, phone) => phone ?? "No phone",');
    print('    // Advanced properties');
    print('    formula: (id, formula) => formula.toString(),');
    print('    rollup: (id, rollup) => rollup.toString(),');
    print('    // Metadata properties');
    print('    createdTime: (id, time) => time.toString(),');
    print('    createdBy: (id, user) => user.name,');
    print('    lastEditedTime: (id, time) => time.toString(),');
    print('    lastEditedBy: (id, user) => user.name,');
    print('    // Files');
    print('    files: (id, files) => "${files.length} files",');
    print('    // Unique ID');
    print('    uniqueId: (id, uniqueId) => uniqueId.toString(),');
    print('    // Verification');
    print('    verification: (id, verification) => verification.toString(),');
    print('  );');
    print('  print("$name: $value");');
    print('});');
    print('```\n');

    print('Key Benefits:');
    print('  ✅ Compile-time exhaustiveness checking');
    print('  ✅ No need for manual type casting');
    print('  ✅ IDE autocomplete for all cases');
    print('  ✅ Safe refactoring - compiler catches missing cases\n');

    // ========================================
    // 2. User Pattern Matching
    // ========================================
    print('👤 2. User Pattern Matching\n');

    print('User has two variants: person and bot\n');

    print('Example code:');
    print('```dart');
    print('final user = await client.users.me();');
    print('');
    print('// Pattern match on user type');
    print('final userInfo = user.when(');
    print('  person: (id, person, name, avatarUrl) {');
    print('    return "Person: $name (${person.email})";');
    print('  },');
    print('  bot: (id, bot, name, avatarUrl) {');
    print('    return "Bot: $name in ${bot.workspaceName}";');
    print('  },');
    print(');');
    print('print(userInfo);');
    print('');
    print('// Or use maybeWhen for partial matching');
    print('final email = user.maybeWhen(');
    print('  person: (id, person, name, avatarUrl) => person.email,');
    print('  orElse: () => null,');
    print(');');
    print('```\n');

    // ========================================
    // 3. Parent Pattern Matching
    // ========================================
    print('📂 3. Parent Pattern Matching\n');

    print(
      'Parent has 5 variants: database, page, workspace, block, dataSource\n',
    );

    print('Example code:');
    print('```dart');
    print("final page = await client.pages.retrieve('page_id');");
    print('');
    print('// Pattern match on parent type');
    print('final parentInfo = page.parent.when(');
    print('  database: (databaseId) => "In database: $databaseId",');
    print('  page: (pageId) => "Under page: $pageId",');
    print('  workspace: () => "Top-level workspace page",');
    print('  block: (blockId) => "Under block: $blockId",');
    print('  dataSource: (dataSourceId) => "In data source: $dataSourceId",');
    print(');');
    print('print(parentInfo);');
    print('');
    print('// Check if page is in a database');
    print('final isInDatabase = page.parent.maybeWhen(');
    print('  database: (_) => true,');
    print('  orElse: () => false,');
    print(');');
    print('```\n');

    // ========================================
    // 4. RichText Pattern Matching
    // ========================================
    print('✍️  4. RichText Pattern Matching\n');

    print('RichText has 3 variants: text, mention, equation\n');

    print('Example code:');
    print('```dart');
    print("final page = await client.pages.retrieve('page_id');");
    print('');
    print('// Extract title with pattern matching');
    print("final titleProp = page.properties['Title'];");
    print('final richTextArray = titleProp?.when(');
    print('  title: (id, richText) => richText,');
    print('  orElse: () => <RichText>[],');
    print(') ?? <RichText>[];');
    print('');
    print('// Process each RichText element');
    print('for (final rt in richTextArray) {');
    print('  rt.when(');
    print('    text: (text, annotations, plainText, href) {');
    print('      print("Text: $plainText");');
    print('      if (annotations.bold) print("  (bold)");');
    print('      if (annotations.italic) print("  (italic)");');
    print('      if (href != null) print("  Link: $href");');
    print('    },');
    print('    mention: (mention, annotations, plainText, href) {');
    print('      mention.when(');
    print('        user: (user) => print("@${user.name}"),');
    print('        page: (page) => print("Link to page ${page.id}"),');
    print('        database: (database) {');
    print('          return print("Link to database ${database.id}");');
    print('        },');
    print('        date: (date) => print("Date: ${date.start}"),');
    print('        linkPreview: (linkPreview) {');
    print('          return print("Link: ${linkPreview.url}");');
    print('        },');
    print('      );');
    print('    },');
    print('    equation: (equation, annotations, plainText, href) {');
    print('      print("Equation: ${equation.expression}");');
    print('    },');
    print('  );');
    print('}');
    print('```\n');

    // ========================================
    // 5. Block Pattern Matching
    // ========================================
    print('📦 5. Block Pattern Matching\n');

    print('Block has 31+ variants for different block types\n');

    print('Example code:');
    print('```dart');
    print("final blocks = await client.blocks.retrieveChildren('page_id');");
    print('');
    print('for (final block in blocks.results) {');
    print('  block.when(');
    print(
      '    paragraph: (id, parent, createdTime, createdBy, lastEditedTime,',
    );
    print('        lastEditedBy, hasChildren, archived, inTrash, paragraph) {');
    print('      final text = paragraph.richText');
    print('          .map((rt) => rt.plainText)');
    print('          .join();');
    print('      print("📝 Paragraph: $text");');
    print('    },');
    print('    heading1: (id, parent, createdTime, createdBy, lastEditedTime,');
    print('        lastEditedBy, hasChildren, archived, inTrash, heading) {');
    print('      final text = heading.richText');
    print('          .map((rt) => rt.plainText)');
    print('          .join();');
    print('      print("# $text");');
    print('    },');
    print('    bulletedListItem: (id, parent, createdTime, createdBy,');
    print('        lastEditedTime, lastEditedBy, hasChildren, archived,');
    print('        inTrash, item) {');
    print('      final text = item.richText.map((rt) => rt.plainText).join();');
    print('      print("• $text");');
    print('    },');
    print('    toDo: (id, parent, createdTime, createdBy, lastEditedTime,');
    print('        lastEditedBy, hasChildren, archived, inTrash, toDo) {');
    print('      final text = toDo.richText.map((rt) => rt.plainText).join();');
    print('      final checkbox = toDo.checked ? "✅" : "⬜";');
    print('      print("$checkbox $text");');
    print('    },');
    print('    // ... 27 more block types');
    print('    orElse: () {');
    print('      print("Other block type: ${block.runtimeType}");');
    print('    },');
    print('  );');
    print('}');
    print('```\n');

    // ========================================
    // 6. Combining Pattern Matching
    // ========================================
    print('🔗 6. Combining Pattern Matching\n');

    print('Real-world example: Extract page metadata\n');

    print('Example code:');
    print('```dart');
    print("final page = await client.pages.retrieve('page_id');");
    print('');
    print('// Extract comprehensive page info');
    print('class PageInfo {');
    print('  final String title;');
    print('  final String? status;');
    print('  final int? priority;');
    print('  final List<String> tags;');
    print('  final String? assignee;');
    print('  final DateTime? dueDate;');
    print('  final String parentType;');
    print('  ');
    print('  PageInfo({');
    print('    required this.title,');
    print('    this.status,');
    print('    this.priority,');
    print('    this.tags = const [],');
    print('    this.assignee,');
    print('    this.dueDate,');
    print('    required this.parentType,');
    print('  });');
    print('}');
    print('');
    print('PageInfo extractPageInfo(Page page) {');
    print('  // Extract title');
    print("  final title = page.properties['Title']?.when(");
    print('    title: (id, richText) {');
    print('      return richText.map((rt) => rt.plainText).join();');
    print('    },');
    print('    orElse: () => "Untitled",');
    print('  ) ?? "Untitled";');
    print('');
    print('  // Extract status');
    print("  final status = page.properties['Status']?.maybeWhen(");
    print('    select: (id, option) => option?.name,');
    print('    orElse: () => null,');
    print('  );');
    print('');
    print('  // Extract priority');
    print("  final priority = page.properties['Priority']?.maybeWhen(");
    print('    number: (id, value) => value?.toInt(),');
    print('    orElse: () => null,');
    print('  );');
    print('');
    print('  // Extract tags');
    print("  final tags = page.properties['Tags']?.maybeWhen(");
    print('    multiSelect: (id, options) {');
    print('      return options.map((opt) => opt.name).toList();');
    print('    },');
    print('    orElse: () => <String>[],');
    print('  ) ?? <String>[];');
    print('');
    print('  // Extract assignee (first person)');
    print("  final assignee = page.properties['Assignee']?.maybeWhen(");
    print(
      '    people: (id, users) => users.isNotEmpty ? users[0].name : null,',
    );
    print('    orElse: () => null,');
    print('  );');
    print('');
    print('  // Extract due date');
    print("  final dueDate = page.properties['Due Date']?.maybeWhen(");
    print('    date: (id, date) => date?.start,');
    print('    orElse: () => null,');
    print('  );');
    print('');
    print('  // Determine parent type');
    print('  final parentType = page.parent.when(');
    print('    database: (_) => "database",');
    print('    page: (_) => "page",');
    print('    workspace: () => "workspace",');
    print('    block: (_) => "block",');
    print('    dataSource: (_) => "dataSource",');
    print('  );');
    print('');
    print('  return PageInfo(');
    print('    title: title,');
    print('    status: status,');
    print('    priority: priority,');
    print('    tags: tags,');
    print('    assignee: assignee,');
    print('    dueDate: dueDate,');
    print('    parentType: parentType,');
    print('  );');
    print('}');
    print('');
    print('// Usage');
    print('final info = extractPageInfo(page);');
    print('print("Title: ${info.title}");');
    print('print("Status: ${info.status}");');
    print('print("Priority: ${info.priority}");');
    print('print("Tags: ${info.tags.join(", ")}");');
    print('print("Parent type: ${info.parentType}");');
    print('```\n');

    // ========================================
    // 7. Advanced: Custom Extractors
    // ========================================
    print('🎯 7. Advanced: Custom Property Extractors\n');

    print('Create reusable extraction functions:\n');

    print('```dart');
    print('// Generic property extractor');
    print('T? extractProperty<T>(');
    print('  Map<String, PropertyValue> properties,');
    print('  String name,');
    print('  T? Function(PropertyValue) extractor,');
    print(') {');
    print('  final prop = properties[name];');
    print('  if (prop == null) return null;');
    print('  return extractor(prop);');
    print('}');
    print('');
    print('// Specific extractors');
    print('String extractTitle(Map<String, PropertyValue> properties) {');
    print('  return extractProperty(properties, "Title", (prop) {');
    print('    return prop.when(');
    print('      title: (id, richText) {');
    print('        return richText.map((rt) => rt.plainText).join();');
    print('      },');
    print('      orElse: () => null,');
    print('    );');
    print('  }) ?? "Untitled";');
    print('}');
    print('');
    print('List<String> extractTags(Map<String, PropertyValue> properties) {');
    print('  return extractProperty(properties, "Tags", (prop) {');
    print('    return prop.maybeWhen(');
    print('      multiSelect: (id, options) {');
    print('        return options.map((opt) => opt.name).toList();');
    print('      },');
    print('      orElse: () => null,');
    print('    );');
    print('  }) ?? <String>[];');
    print('}');
    print('');
    print('// Usage');
    print('final title = extractTitle(page.properties);');
    print('final tags = extractTags(page.properties);');
    print('```\n');

    // ========================================
    // Summary
    // ========================================
    print('=' * 50);
    print('✅ Pattern matching examples completed!');
    print('=' * 50);
    print('\n📚 Key Features:');
    print('   ✓ Exhaustive pattern matching with .when()');
    print('   ✓ Partial matching with .maybeWhen()');
    print('   ✓ Type-safe access to variant data');
    print('   ✓ Compile-time exhaustiveness checking');
    print('   ✓ No manual type casting needed');
    print('\n💡 Pattern Matching Methods:');
    print('   • .when() - Handle all cases (exhaustive)');
    print('   • .maybeWhen() - Handle some cases + orElse');
    print('   • .map() - Similar to when, different syntax');
    print('   • .maybeMap() - Similar to maybeWhen, different syntax');
    print('\n💡 Models with Pattern Matching:');
    print('   • PropertyValue - 21 property types');
    print('   • User - person, bot');
    print('   • Parent - database, page, workspace, block, dataSource');
    print('   • RichText - text, mention, equation');
    print('   • Block - 31+ block types');
    print('\n💡 Next steps:');
    print('   1. Replace YOUR_INTEGRATION_TOKEN and PAGE_ID');
    print('   2. Try the pattern matching examples');
    print('   3. Create custom property extractors');
    print('   4. Explore other Freezed union types');
  } catch (e) {
    print('❌ Error: $e');
  } finally {
    client.close();
    print('\n🔒 Client closed.');
  }
}
