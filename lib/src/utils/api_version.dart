/// API version management utilities for Notion API.
///
/// Provides constants and utilities for managing different API versions
/// and their compatibility.
class ApiVersion {
  /// The latest stable API version.
  static const String latest = '2022-06-28';
  
  /// Previous stable API versions.
  static const String v2022_02_22 = '2022-02-22';
  static const String v2021_08_16 = '2021-08-16';
  static const String v2021_05_13 = '2021-05-13';
  
  /// All supported API versions in chronological order (newest first).
  static const List<String> supportedVersions = [
    latest,
    v2022_02_22,
    v2021_08_16,
    v2021_05_13,
  ];
  
  /// Validates if the given API version is supported.
  ///
  /// Returns `true` if the version is in the supported versions list.
  static bool isSupported(String version) {
    return supportedVersions.contains(version);
  }
  
  /// Gets the default API version.
  ///
  /// This is the latest stable version that the library is tested against.
  static String get defaultVersion => latest;
  
  /// Compares two API versions.
  ///
  /// Returns:
  /// - Negative value if [version1] is older than [version2]
  /// - Zero if they are the same
  /// - Positive value if [version1] is newer than [version2]
  ///
  /// Throws [ArgumentError] if either version is not supported.
  static int compare(String version1, String version2) {
    if (!isSupported(version1)) {
      throw ArgumentError('Unsupported API version: $version1');
    }
    if (!isSupported(version2)) {
      throw ArgumentError('Unsupported API version: $version2');
    }
    
    final index1 = supportedVersions.indexOf(version1);
    final index2 = supportedVersions.indexOf(version2);
    
    // Since supportedVersions is ordered newest first,
    // smaller index means newer version
    return index2.compareTo(index1);
  }
  
  /// Checks if [version1] is newer than [version2].
  static bool isNewer(String version1, String version2) {
    return compare(version1, version2) > 0;
  }
  
  /// Checks if [version1] is older than [version2].
  static bool isOlder(String version1, String version2) {
    return compare(version1, version2) < 0;
  }
  
  /// Gets version-specific feature availability information.
  ///
  /// Returns a map of feature names to their availability status.
  static Map<String, bool> getFeatureAvailability(String version) {
    if (!isSupported(version)) {
      throw ArgumentError('Unsupported API version: $version');
    }
    
    final features = <String, bool>{};
    
    // Features introduced in different versions
    switch (version) {
      case latest:
        features.addAll({
          'page_properties_endpoint': true,
          'multi_source_databases': true,
          'file_block_names': true,
          'is_locked_property': true,
          'in_trash_property': true,
          'rich_text_properties': true,
          'formula_properties': true,
          'relation_properties': true,
          'rollup_properties': true,
        });
        break;
      case v2022_02_22:
        features.addAll({
          'page_properties_endpoint': false,
          'multi_source_databases': false,
          'file_block_names': false,
          'is_locked_property': false,
          'in_trash_property': false,
          'rich_text_properties': true,
          'formula_properties': true,
          'relation_properties': true,
          'rollup_properties': true,
        });
        break;
      case v2021_08_16:
        features.addAll({
          'page_properties_endpoint': false,
          'multi_source_databases': false,
          'file_block_names': false,
          'is_locked_property': false,
          'in_trash_property': false,
          'rich_text_properties': true,
          'formula_properties': true,
          'relation_properties': true,
          'rollup_properties': false,
        });
        break;
      case v2021_05_13:
        features.addAll({
          'page_properties_endpoint': false,
          'multi_source_databases': false,
          'file_block_names': false,
          'is_locked_property': false,
          'in_trash_property': false,
          'rich_text_properties': true,
          'formula_properties': false,
          'relation_properties': false,
          'rollup_properties': false,
        });
        break;
    }
    
    return features;
  }
}
