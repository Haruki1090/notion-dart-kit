/// Convenience helpers for common Notion operations.
///
/// This module provides utility functions that simplify common tasks when
/// working with pages, properties, and blocks.
library;

import '../models/page.dart';
import '../models/rich_text.dart';

/// Extension on Map<String, dynamic> to convert to typed PropertyValue.
///
/// Note: This extension provides a placeholder for the toPropertyValue method.
/// The actual implementation should be moved to a separate utility file to avoid
/// circular dependencies with PropertyValue.
extension PropertyMapExt on Map<String, dynamic> {
  /// Converts this property map to a typed PropertyValue.
  ///
  /// This is a placeholder method. The actual implementation should be
  /// moved to avoid circular dependencies.
  dynamic toPropertyValue() {
    // Return the raw map for now to avoid circular dependency
    // TODO: Move this to a separate utility file
    return this;
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
      final propMap = prop as Map<String, dynamic>;
      if (propMap['type'] == 'title' && propMap['title'] != null) {
        final titleList = propMap['title'] as List;
        if (titleList.isNotEmpty) {
          // Extract plain text from rich text elements
          final plainText = titleList.map((rt) {
            if (rt is Map<String, dynamic> && rt['plain_text'] != null) {
              return rt['plain_text'] as String;
            }
            return '';
          }).join();
          if (plainText.isNotEmpty) {
            return plainText;
          }
        }
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
  static Map<String, dynamic>? getProperty(Page page, String propertyName) =>
      page.properties[propertyName] as Map<String, dynamic>?;

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
///
/// Note: These methods work with raw property maps to avoid circular dependencies.
class PropertyHelper {
  PropertyHelper._();

  /// Extracts a title value from a property map.
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
    Map<String, dynamic>? property, {
    String defaultValue = '',
  }) {
    if (property == null || property['type'] != 'title') {
      return defaultValue;
    }

    final titleList = property['title'] as List?;
    if (titleList == null || titleList.isEmpty) {
      return defaultValue;
    }

    return titleList.map((rt) {
      if (rt is Map<String, dynamic> && rt['plain_text'] != null) {
        return rt['plain_text'] as String;
      }
      return '';
    }).join();
  }

  // Note: Additional PropertyHelper methods have been removed to avoid circular dependencies.
  // These methods can be re-implemented in a separate utility file that imports PropertyValue.
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
    bool Function(dynamic) predicate,
  ) =>
      pages.where((page) => predicate(page.properties[propertyName])).toList();

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
    String Function(dynamic) extractor,
  ) {
    final groups = <String, List<Page>>{};

    for (final page in pages) {
      final key = extractor(page.properties[propertyName]);
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
    T Function(dynamic) extractor, {
    bool descending = false,
  }) {
    final sorted = List<Page>.from(pages);
    sorted.sort((a, b) {
      final aValue = extractor(a.properties[propertyName]);
      final bValue = extractor(b.properties[propertyName]);

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
    String Function(dynamic) extractor,
  ) {
    final counts = <String, int>{};

    for (final page in pages) {
      final key = extractor(page.properties[propertyName]);
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
