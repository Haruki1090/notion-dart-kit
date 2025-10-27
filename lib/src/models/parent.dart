import 'package:freezed_annotation/freezed_annotation.dart';

part 'parent.freezed.dart';

/// Parent object representing the location of a page, database, or block
@Freezed(toJson: false, fromJson: false)
class Parent with _$Parent {
  const Parent._();

  const factory Parent.database({required String databaseId}) = DatabaseParent;

  const factory Parent.dataSource({
    required String dataSourceId,
    String? databaseId,
  }) = DataSourceParent;

  const factory Parent.page({required String pageId}) = PageParent;

  const factory Parent.workspace() = WorkspaceParent;

  const factory Parent.block({required String blockId}) = BlockParent;

  factory Parent.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String;

    switch (type) {
      case 'database_id':
        return Parent.database(databaseId: json['database_id'] as String);
      case 'data_source_id':
        return Parent.dataSource(
          dataSourceId: json['data_source_id'] as String,
          databaseId: json['database_id'] as String?,
        );
      case 'page_id':
        return Parent.page(pageId: json['page_id'] as String);
      case 'workspace':
        return const Parent.workspace();
      case 'block_id':
        return Parent.block(blockId: json['block_id'] as String);
      default:
        throw ArgumentError('Unknown parent type: $type');
    }
  }

  Map<String, dynamic> toJson() => when(
        database: (databaseId) => {
          'type': 'database_id',
          'database_id': databaseId,
        },
        dataSource: (dataSourceId, databaseId) => {
          'type': 'data_source_id',
          'data_source_id': dataSourceId,
          if (databaseId != null) 'database_id': databaseId,
        },
        page: (pageId) => {'type': 'page_id', 'page_id': pageId},
        workspace: () => {'type': 'workspace', 'workspace': true},
        block: (blockId) => {'type': 'block_id', 'block_id': blockId},
      );
}
