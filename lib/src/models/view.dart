/// A Notion database view.
///
/// View configuration is intentionally stored as raw JSON because Notion has a
/// large, fast-moving configuration schema per view type.
class View {
  const View({
    required this.object,
    required this.id,
    required this.name,
    required this.type,
    this.parent,
    this.dataSourceId,
    this.databaseId,
    this.dashboardViewId,
    this.filter,
    this.sorts,
    this.configuration,
    this.raw,
  });

  factory View.fromJson(Map<String, dynamic> json) => View(
        object: json['object'] as String? ?? 'view',
        id: json['id'] as String,
        name: json['name'] as String? ?? '',
        type: json['type'] as String,
        parent: json['parent'] as Map<String, dynamic>?,
        dataSourceId: json['data_source_id'] as String?,
        databaseId: json['database_id'] as String?,
        dashboardViewId: json['dashboard_view_id'] as String?,
        filter: json['filter'] as Map<String, dynamic>?,
        sorts: (json['sorts'] as List<dynamic>?)
            ?.map((e) => e as Map<String, dynamic>)
            .toList(),
        configuration: json['configuration'] as Map<String, dynamic>?,
        raw: Map<String, dynamic>.from(json),
      );

  final String object;
  final String id;
  final String name;
  final String type;
  final Map<String, dynamic>? parent;
  final String? dataSourceId;
  final String? databaseId;
  final String? dashboardViewId;
  final Map<String, dynamic>? filter;
  final List<Map<String, dynamic>>? sorts;
  final Map<String, dynamic>? configuration;
  final Map<String, dynamic>? raw;

  Map<String, dynamic> toJson() =>
      raw ??
      {
        'object': object,
        'id': id,
        'name': name,
        'type': type,
        if (parent != null) 'parent': parent,
        if (dataSourceId != null) 'data_source_id': dataSourceId,
        if (databaseId != null) 'database_id': databaseId,
        if (dashboardViewId != null) 'dashboard_view_id': dashboardViewId,
        if (filter != null) 'filter': filter,
        if (sorts != null) 'sorts': sorts,
        if (configuration != null) 'configuration': configuration,
      };
}

/// Response from creating a cached view query.
class ViewQuery {
  const ViewQuery({
    required this.object,
    required this.id,
    required this.results,
    required this.hasMore,
    this.nextCursor,
    this.requestStatus,
    this.raw,
  });

  factory ViewQuery.fromJson(Map<String, dynamic> json) => ViewQuery(
        object: json['object'] as String? ?? 'list',
        id: json['id'] as String? ?? json['query_id'] as String? ?? '',
        results: (json['results'] as List<dynamic>? ?? [])
            .map((e) => e as Map<String, dynamic>)
            .toList(),
        hasMore: json['has_more'] as bool? ?? false,
        nextCursor: json['next_cursor'] as String?,
        requestStatus: json['request_status'] as String?,
        raw: Map<String, dynamic>.from(json),
      );

  final String object;
  final String id;
  final List<Map<String, dynamic>> results;
  final bool hasMore;
  final String? nextCursor;
  final String? requestStatus;
  final Map<String, dynamic>? raw;

  Map<String, dynamic> toJson() =>
      raw ??
      {
        'object': object,
        'id': id,
        'results': results,
        'has_more': hasMore,
        if (nextCursor != null) 'next_cursor': nextCursor,
        if (requestStatus != null) 'request_status': requestStatus,
      };
}
