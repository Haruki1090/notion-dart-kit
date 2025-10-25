import 'package:freezed_annotation/freezed_annotation.dart';

import 'property_value.dart';

part 'property_item.freezed.dart';

/// Represents a Notion page property item
///
/// A property_item object describes the identifier, type, and value of a page property.
/// It's returned from the Retrieve a page property item API.
@freezed
class PropertyItem with _$PropertyItem {
  const factory PropertyItem({
    /// Underlying identifier for the property
    required String id,

    /// The type of the property
    required String type,

    /// The property value (varies by type)
    required PropertyValue value,

    /// Always "property_item"
    @Default('property_item') String object,

    /// URL for next page of results (for paginated properties)
    String? nextUrl,
  }) = _PropertyItem;

  factory PropertyItem.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String;
    final id = json['id'] as String;

    // Create a PropertyValue from the type-specific data
    final valueData = Map<String, dynamic>.from(json);
    valueData['id'] = id;
    valueData['runtimeType'] =
        type; // Add runtimeType for PropertyValue.fromJson

    final value = PropertyValue.fromJson(valueData);

    return PropertyItem(
      id: id,
      type: type,
      value: value,
      object: json['object'] as String? ?? 'property_item',
      nextUrl: json['next_url'] as String?,
    );
  }
}

/// Represents a paginated list of property items
@freezed
class PropertyItemList with _$PropertyItemList {
  const factory PropertyItemList({
    /// List of property item objects
    required List<PropertyItem> results,

    /// Property item object that describes the property
    required PropertyItem propertyItem,

    /// Always "list"
    @Default('list') String object,

    /// Always "property_item"
    @Default('property_item') String type,

    /// URL for next page of results
    String? nextUrl,

    /// Whether there are more results
    @Default(false) bool hasMore,

    /// Cursor for pagination
    String? nextCursor,
  }) = _PropertyItemList;

  factory PropertyItemList.fromJson(Map<String, dynamic> json) {
    final results =
        (json['results'] as List<dynamic>?)
            ?.map((e) => PropertyItem.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [];

    final propertyItemData = json['property_item'] as Map<String, dynamic>;
    final propertyItem = PropertyItem.fromJson(propertyItemData);

    return PropertyItemList(
      results: results,
      propertyItem: propertyItem,
      object: json['object'] as String? ?? 'list',
      type: json['type'] as String? ?? 'property_item',
      nextUrl: json['next_url'] as String?,
      hasMore: json['has_more'] as bool? ?? false,
      nextCursor: json['next_cursor'] as String?,
    );
  }
}
