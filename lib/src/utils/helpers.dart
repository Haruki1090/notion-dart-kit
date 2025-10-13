/// Convenience helpers for common Notion operations.
///
/// This module provides utility functions that simplify common tasks when
/// working with pages, properties, and blocks.
library;

import '../models/page.dart';
import '../models/property_value.dart';
import '../models/rich_text.dart';

/// Extension on [LegacyPropertyValue] to convert to typed [PropertyValue].
extension LegacyPropertyValueExt on LegacyPropertyValue {
  /// Converts this legacy property value to a typed PropertyValue.
  ///
  /// Transforms the Notion API format (with 'type' field) to the internal
  /// format (with 'runtimeType' field) expected by Freezed.
  PropertyValue toPropertyValue() {
    final transformedData = Map<String, dynamic>.from(data);

    // Map Notion API 'type' to Freezed 'runtimeType' with camelCase
    final notionType = data['type'] as String?;
    if (notionType != null) {
      transformedData['runtimeType'] = _mapNotionTypeToRuntimeType(notionType);
    }

    // Also map snake_case fields to camelCase for certain properties
    if (notionType == 'rich_text') {
      transformedData['richText'] = data['rich_text'];
    } else if (notionType == 'multi_select') {
      transformedData['multiSelect'] = data['multi_select'];
    } else if (notionType == 'phone_number') {
      transformedData['phoneNumber'] = data['phone_number'];
    } else if (notionType == 'created_time') {
      transformedData['createdTime'] = data['created_time'];
    } else if (notionType == 'created_by') {
      transformedData['createdBy'] = data['created_by'];
    } else if (notionType == 'last_edited_time') {
      transformedData['lastEditedTime'] = data['last_edited_time'];
    } else if (notionType == 'last_edited_by') {
      transformedData['lastEditedBy'] = data['last_edited_by'];
    } else if (notionType == 'unique_id') {
      transformedData['uniqueId'] = data['unique_id'];
    }

    return PropertyValue.fromJson(transformedData);
  }

  /// Maps Notion API type names (snake_case) to Freezed runtimeType (camelCase)
  static String _mapNotionTypeToRuntimeType(String notionType) {
    switch (notionType) {
      case 'rich_text':
        return 'richText';
      case 'multi_select':
        return 'multiSelect';
      case 'phone_number':
        return 'phoneNumber';
      case 'created_time':
        return 'createdTime';
      case 'created_by':
        return 'createdBy';
      case 'last_edited_time':
        return 'lastEditedTime';
      case 'last_edited_by':
        return 'lastEditedBy';
      case 'unique_id':
        return 'uniqueId';
      default:
        return notionType; // title, number, select, status, date, people, etc.
    }
  }
}

/// Helper functions for extracting data from pages.
class PageHelper {
  PageHelper._();

  /// Extracts the title from a page's properties.
  ///
  /// Looks for the first property of type `title` and returns its plain text.
  /// Returns `defaultValue` if no title property is found.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final title = PageHelper.extractTitle(page);
  /// print('Page title: $title');
  /// ```
  static String extractTitle(Page page, {String defaultValue = 'Untitled'}) {
    for (final prop in page.properties.values) {
      final propertyValue = prop.toPropertyValue();
      final title = propertyValue.maybeWhen(
        title: (id, richText) => richText.map((rt) => rt.plainText).join(),
        orElse: () => null,
      );
      if (title != null) {
        return title;
      }
    }
    return defaultValue;
  }

  /// Extracts a specific property value by name.
  ///
  /// Returns `null` if the property doesn't exist.
  /// Convert to [PropertyValue] using `.toPropertyValue()` extension.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final status = PageHelper.getProperty(page, 'Status');
  /// final statusValue = status?.toPropertyValue();
  /// ```
  static LegacyPropertyValue? getProperty(Page page, String propertyName) =>
      page.properties[propertyName];

  /// Gets all property names from a page.
  ///
  /// Useful for discovering the schema of a page.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final properties = PageHelper.getPropertyNames(page);
  /// print('Available properties: ${properties.join(", ")}');
  /// ```
  static List<String> getPropertyNames(Page page) =>
      page.properties.keys.toList();

  /// Checks if a page is in the trash.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// if (PageHelper.isInTrash(page)) {
  ///   print('Page is in trash');
  /// }
  /// ```
  static bool isInTrash(Page page) => page.inTrash;

  /// Checks if a page is archived.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// if (PageHelper.isArchived(page)) {
  ///   print('Page is archived');
  /// }
  /// ```
  static bool isArchived(Page page) => page.archived;

  /// Gets the last edited time of a page.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final lastEdited = PageHelper.getLastEditedTime(page);
  /// print('Last edited: $lastEdited');
  /// ```
  static DateTime getLastEditedTime(Page page) => page.lastEditedTime;

  /// Gets the created time of a page.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final created = PageHelper.getCreatedTime(page);
  /// print('Created: $created');
  /// ```
  static DateTime getCreatedTime(Page page) => page.createdTime;
}

/// Helper functions for extracting typed values from properties.
class PropertyHelper {
  PropertyHelper._();

  /// Extracts a title value from a property.
  ///
  /// Returns the plain text of all rich text elements joined together.
  /// Returns `defaultValue` if the property is not a title or is null.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final title = PropertyHelper.extractTitle(page.properties['Title']);
  /// ```
  static String extractTitle(
    PropertyValue? property, {
    String defaultValue = '',
  }) =>
      property?.maybeWhen(
        title: (id, richText) => richText.map((rt) => rt.plainText).join(),
        orElse: () => null,
      ) ??
      defaultValue;

  /// Extracts rich text from a property.
  ///
  /// Returns the plain text of all rich text elements joined together.
  /// Returns `defaultValue` if the property is not rich text or is null.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final desc = PropertyHelper.extractRichText(page.properties['Description']);
  /// ```
  static String extractRichText(
    PropertyValue? property, {
    String defaultValue = '',
  }) =>
      property?.maybeWhen(
        richText: (id, richText) => richText.map((rt) => rt.plainText).join(),
        orElse: () => null,
      ) ??
      defaultValue;

  /// Extracts a number value from a property.
  ///
  /// Returns `null` if the property is not a number or is null.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final priority = PropertyHelper.extractNumber(page.properties['Priority']);
  /// ```
  static num? extractNumber(PropertyValue? property) => property?.maybeWhen(
        number: (id, value) => value,
        orElse: () => null,
      );

  /// Extracts a select value from a property.
  ///
  /// Returns the name of the selected option, or `null` if not set.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final status = PropertyHelper.extractSelect(page.properties['Status']);
  /// ```
  static String? extractSelect(PropertyValue? property) => property?.maybeWhen(
        select: (id, option) => option?.name,
        orElse: () => null,
      );

  /// Extracts multi-select values from a property.
  ///
  /// Returns a list of selected option names.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final tags = PropertyHelper.extractMultiSelect(page.properties['Tags']);
  /// print('Tags: ${tags.join(", ")}');
  /// ```
  static List<String> extractMultiSelect(PropertyValue? property) =>
      property?.maybeWhen(
        multiSelect: (id, options) => options.map((opt) => opt.name).toList(),
        orElse: () => null,
      ) ??
      [];

  /// Extracts a status value from a property.
  ///
  /// Returns the name of the status, or `null` if not set.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final status = PropertyHelper.extractStatus(page.properties['Status']);
  /// ```
  static String? extractStatus(PropertyValue? property) => property?.maybeWhen(
        status: (id, status) => status?.name,
        orElse: () => null,
      );

  /// Extracts a checkbox value from a property.
  ///
  /// Returns `false` if the property is not a checkbox or is null.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final completed = PropertyHelper.extractCheckbox(page.properties['Completed']);
  /// ```
  static bool extractCheckbox(PropertyValue? property) =>
      property?.maybeWhen(
        checkbox: (id, checked) => checked,
        orElse: () => null,
      ) ??
      false;

  /// Extracts a date from a property.
  ///
  /// Returns the start date parsed as DateTime, or `null` if the property is
  /// not a date or is null.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final prop = page.properties['Due Date']?.toPropertyValue();
  /// final dueDate = PropertyHelper.extractDate(prop);
  /// ```
  static DateTime? extractDate(PropertyValue? property) {
    final dateStr = property?.maybeWhen<String?>(
      date: (id, date) => date?.start,
      orElse: () => null,
    );

    return dateStr != null ? DateTime.parse(dateStr) : null;
  }

  /// Extracts a date range from a property.
  ///
  /// Returns a tuple of (start, end) dates parsed as DateTime, or `null` if
  /// not a date property.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final prop = page.properties['Period']?.toPropertyValue();
  /// final dateRange = PropertyHelper.extractDateRange(prop);
  /// if (dateRange != null) {
  ///   print('From ${dateRange.$1} to ${dateRange.$2}');
  /// }
  /// ```
  static (DateTime start, DateTime? end)? extractDateRange(
    PropertyValue? property,
  ) =>
      property?.maybeWhen<(DateTime, DateTime?)?>(
        date: (id, date) {
          if (date == null) {
            return null;
          }
          final start = DateTime.parse(date.start);
          final end = date.end != null ? DateTime.parse(date.end!) : null;
          return (start, end);
        },
        orElse: () => null,
      );

  /// Extracts a URL from a property.
  ///
  /// Returns `null` if the property is not a URL or is null.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final url = PropertyHelper.extractUrl(page.properties['Link']);
  /// ```
  static String? extractUrl(PropertyValue? property) => property?.maybeWhen(
        url: (id, url) => url,
        orElse: () => null,
      );

  /// Extracts an email from a property.
  ///
  /// Returns `null` if the property is not an email or is null.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final email = PropertyHelper.extractEmail(page.properties['Contact']);
  /// ```
  static String? extractEmail(PropertyValue? property) => property?.maybeWhen(
        email: (id, email) => email,
        orElse: () => null,
      );

  /// Extracts a phone number from a property.
  ///
  /// Returns `null` if the property is not a phone number or is null.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final phone = PropertyHelper.extractPhoneNumber(page.properties['Phone']);
  /// ```
  static String? extractPhoneNumber(PropertyValue? property) =>
      property?.maybeWhen(
        phoneNumber: (id, phone) => phone,
        orElse: () => null,
      );

  /// Extracts people (user names) from a property.
  ///
  /// Returns a list of user names.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final assignees = PropertyHelper.extractPeople(page.properties['Assignees']);
  /// print('Assigned to: ${assignees.join(", ")}');
  /// ```
  static List<String?> extractPeople(PropertyValue? property) =>
      property?.maybeWhen(
        people: (id, users) => users.map((user) => user.name).toList(),
        orElse: () => null,
      ) ??
      [];

  /// Extracts relation page IDs from a property.
  ///
  /// Returns a list of related page IDs.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final relatedIds = PropertyHelper.extractRelation(page.properties['Related']);
  /// ```
  static List<String> extractRelation(PropertyValue? property) =>
      property?.maybeWhen(
        relation: (id, pages) => pages.map((page) => page.id).toList(),
        orElse: () => null,
      ) ??
      [];

  /// Checks if a property is empty.
  ///
  /// Returns `true` if the property is null or contains no value.
  ///
  /// Example:
  /// ```dart
  /// final page = await client.pages.retrieve('page_id');
  /// final hasAssignees = !PropertyHelper.isEmpty(page.properties['Assignees']);
  /// ```
  static bool isEmpty(PropertyValue? property) {
    if (property == null) {
      return true;
    }

    return property.when(
      title: (id, richText) => richText.isEmpty,
      richText: (id, richText) => richText.isEmpty,
      number: (id, value) => value == null,
      select: (id, option) => option == null,
      multiSelect: (id, options) => options.isEmpty,
      status: (id, status) => status == null,
      date: (id, date) => date == null,
      people: (id, users) => users.isEmpty,
      files: (id, files) => files.isEmpty,
      checkbox: (id, checked) => false, // checkbox always has a value
      url: (id, url) => url == null,
      email: (id, email) => email == null,
      phoneNumber: (id, phone) => phone == null,
      formula: (id, formula) => false, // formula always has a value
      relation: (id, pages) => pages.isEmpty,
      rollup: (id, rollup) => false, // rollup always has a value
      createdTime: (id, time) => false,
      createdBy: (id, user) => false,
      lastEditedTime: (id, time) => false,
      lastEditedBy: (id, user) => false,
      uniqueId: (id, uniqueId) => false,
      verification: (id, verification) => false,
    );
  }
}

/// Helper functions for working with rich text.
class RichTextHelper {
  RichTextHelper._();

  /// Extracts plain text from a list of rich text elements.
  ///
  /// Example:
  /// ```dart
  /// final richText = [...];
  /// final plainText = RichTextHelper.toPlainText(richText);
  /// ```
  static String toPlainText(List<RichText> richText) =>
      richText.map((rt) => rt.plainText).join();

  /// Extracts plain text and applies a separator between elements.
  ///
  /// Example:
  /// ```dart
  /// final richText = [...];
  /// final text = RichTextHelper.toPlainTextWithSeparator(richText, ' | ');
  /// ```
  static String toPlainTextWithSeparator(
    List<RichText> richText,
    String separator,
  ) =>
      richText.map((rt) => rt.plainText).join(separator);

  /// Checks if a rich text array is empty or contains only whitespace.
  ///
  /// Example:
  /// ```dart
  /// final richText = [...];
  /// if (RichTextHelper.isEmpty(richText)) {
  ///   print('No content');
  /// }
  /// ```
  static bool isEmpty(List<RichText> richText) =>
      richText.isEmpty || richText.every((rt) => rt.plainText.trim().isEmpty);

  /// Gets the total length of all plain text.
  ///
  /// Example:
  /// ```dart
  /// final richText = [...];
  /// final length = RichTextHelper.length(richText);
  /// print('Total length: $length characters');
  /// ```
  static int length(List<RichText> richText) =>
      richText.fold(0, (sum, rt) => sum + rt.plainText.length);
}

/// Helper functions for batch operations on pages.
class BatchHelper {
  BatchHelper._();

  /// Extracts titles from multiple pages.
  ///
  /// Example:
  /// ```dart
  /// final pages = [...];
  /// final titles = BatchHelper.extractTitles(pages);
  /// print('Page titles: ${titles.join(", ")}');
  /// ```
  static List<String> extractTitles(
    List<Page> pages, {
    String defaultValue = 'Untitled',
  }) =>
      pages
          .map(
            (page) => PageHelper.extractTitle(page, defaultValue: defaultValue),
          )
          .toList();

  /// Filters pages by a property value.
  ///
  /// Example:
  /// ```dart
  /// final pages = [...];
  /// final inProgress = BatchHelper.filterByProperty(
  ///   pages,
  ///   'Status',
  ///   (prop) => PropertyHelper.extractSelect(prop) == 'In Progress',
  /// );
  /// ```
  static List<Page> filterByProperty(
    List<Page> pages,
    String propertyName,
    bool Function(PropertyValue?) predicate,
  ) =>
      pages
          .where(
            (page) =>
                predicate(page.properties[propertyName]?.toPropertyValue()),
          )
          .toList();

  /// Groups pages by a property value.
  ///
  /// Example:
  /// ```dart
  /// final pages = [...];
  /// final byStatus = BatchHelper.groupByProperty(
  ///   pages,
  ///   'Status',
  ///   (prop) => PropertyHelper.extractSelect(prop) ?? 'None',
  /// );
  /// ```
  static Map<String, List<Page>> groupByProperty(
    List<Page> pages,
    String propertyName,
    String Function(PropertyValue?) extractor,
  ) {
    final groups = <String, List<Page>>{};

    for (final page in pages) {
      final key = extractor(page.properties[propertyName]?.toPropertyValue());
      groups.putIfAbsent(key, () => []).add(page);
    }

    return groups;
  }

  /// Sorts pages by a property value.
  ///
  /// Example:
  /// ```dart
  /// final pages = [...];
  /// final sorted = BatchHelper.sortByProperty(
  ///   pages,
  ///   'Priority',
  ///   (prop) => PropertyHelper.extractNumber(prop) ?? 0,
  /// );
  /// ```
  static List<Page> sortByProperty<T extends Comparable>(
    List<Page> pages,
    String propertyName,
    T Function(PropertyValue?) extractor, {
    bool descending = false,
  }) {
    final sorted = List<Page>.from(pages);
    sorted.sort((a, b) {
      final aValue = extractor(a.properties[propertyName]?.toPropertyValue());
      final bValue = extractor(b.properties[propertyName]?.toPropertyValue());

      final comparison = aValue.compareTo(bValue);
      return descending ? -comparison : comparison;
    });

    return sorted;
  }

  /// Counts pages by a property value.
  ///
  /// Example:
  /// ```dart
  /// final pages = [...];
  /// final counts = BatchHelper.countByProperty(
  ///   pages,
  ///   'Status',
  ///   (prop) => PropertyHelper.extractSelect(prop) ?? 'None',
  /// );
  /// print('In Progress: ${counts['In Progress']}');
  /// ```
  static Map<String, int> countByProperty(
    List<Page> pages,
    String propertyName,
    String Function(PropertyValue?) extractor,
  ) {
    final counts = <String, int>{};

    for (final page in pages) {
      final key = extractor(page.properties[propertyName]?.toPropertyValue());
      counts[key] = (counts[key] ?? 0) + 1;
    }

    return counts;
  }

  /// Filters pages by archived status.
  ///
  /// Example:
  /// ```dart
  /// final pages = [...];
  /// final active = BatchHelper.filterArchived(pages, includeArchived: false);
  /// ```
  static List<Page> filterArchived(
    List<Page> pages, {
    required bool includeArchived,
  }) {
    if (includeArchived) {
      return pages;
    }
    return pages.where((page) => !PageHelper.isArchived(page)).toList();
  }

  /// Filters pages by trash status.
  ///
  /// Example:
  /// ```dart
  /// final pages = [...];
  /// final active = BatchHelper.filterTrashed(pages, includeTrashed: false);
  /// ```
  static List<Page> filterTrashed(
    List<Page> pages, {
    required bool includeTrashed,
  }) {
    if (includeTrashed) {
      return pages;
    }
    return pages.where((page) => !PageHelper.isInTrash(page)).toList();
  }
}
