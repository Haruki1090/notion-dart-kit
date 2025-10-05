/// A comprehensive, type-safe Dart toolkit for the Notion API.
///
/// To use this library, import it:
/// ```dart
/// import 'package:notion_dart_kit/notion_dart_kit.dart';
/// ```
library notion_dart_kit;

// Export main client
export 'src/client/notion_client.dart';
export 'src/models/block.dart';
export 'src/models/block_content.dart';
export 'src/models/database.dart';
export 'src/models/file.dart';
export 'src/models/page.dart';
export 'src/models/pagination.dart';
export 'src/models/parent.dart';
export 'src/models/property_value.dart';
export 'src/models/rich_text.dart';
// Export models
export 'src/models/user.dart';
export 'src/services/blocks_service.dart';
export 'src/services/databases_service.dart';
export 'src/services/pages_service.dart';
export 'src/services/search_service.dart';
// Export services
export 'src/services/users_service.dart';
// Export query builders
// export 'src/query/filter_builder.dart';
// export 'src/query/sort_builder.dart';

// Export exceptions
export 'src/utils/exceptions.dart';
