import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('ApiVersion', () {
    test('should have correct latest version', () {
      expect(ApiVersion.latest, equals('2022-06-28'));
      expect(ApiVersion.defaultVersion, equals(ApiVersion.latest));
    });

    test('should validate supported versions', () {
      expect(ApiVersion.isSupported('2022-06-28'), isTrue);
      expect(ApiVersion.isSupported('2022-02-22'), isTrue);
      expect(ApiVersion.isSupported('2021-08-16'), isTrue);
      expect(ApiVersion.isSupported('2021-05-13'), isTrue);
      expect(ApiVersion.isSupported('2020-01-01'), isFalse);
      expect(ApiVersion.isSupported('invalid'), isFalse);
    });

    test('should compare versions correctly', () {
      expect(ApiVersion.compare('2022-06-28', '2022-02-22'), greaterThan(0));
      expect(ApiVersion.compare('2022-02-22', '2022-06-28'), lessThan(0));
      expect(ApiVersion.compare('2022-06-28', '2022-06-28'), equals(0));
    });

    test('should check version relationships', () {
      expect(ApiVersion.isNewer('2022-06-28', '2022-02-22'), isTrue);
      expect(ApiVersion.isNewer('2022-02-22', '2022-06-28'), isFalse);
      expect(ApiVersion.isOlder('2022-02-22', '2022-06-28'), isTrue);
      expect(ApiVersion.isOlder('2022-06-28', '2022-02-22'), isFalse);
    });

    test('should throw on unsupported version comparison', () {
      expect(
        () => ApiVersion.compare('invalid', '2022-06-28'),
        throwsA(isA<ArgumentError>()),
      );
      expect(
        () => ApiVersion.compare('2022-06-28', 'invalid'),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('should return feature availability for latest version', () {
      final features = ApiVersion.getFeatureAvailability(ApiVersion.latest);
      expect(features['page_properties_endpoint'], isTrue);
      expect(features['multi_source_databases'], isTrue);
      expect(features['rich_text_properties'], isTrue);
    });

    test('should return feature availability for older versions', () {
      final features = ApiVersion.getFeatureAvailability('2021-05-13');
      expect(features['page_properties_endpoint'], isFalse);
      expect(features['multi_source_databases'], isFalse);
      expect(features['rich_text_properties'], isTrue);
      expect(features['formula_properties'], isFalse);
    });

    test('should throw on unsupported version for feature availability', () {
      expect(
        () => ApiVersion.getFeatureAvailability('invalid'),
        throwsA(isA<ArgumentError>()),
      );
    });
  });

  group('NotionClient API Version Management', () {
    test('should use default API version when none specified', () {
      final client = NotionClient(token: 'test_token');
      expect(client.apiVersion, equals(ApiVersion.defaultVersion));
      expect(client.isLatestVersion, isTrue);
    });

    test('should use specified API version', () {
      final client = NotionClient(
        token: 'test_token',
        apiVersion: '2022-02-22',
      );
      expect(client.apiVersion, equals('2022-02-22'));
      expect(client.isLatestVersion, isFalse);
    });

    test('should throw on unsupported API version', () {
      expect(
        () => NotionClient(token: 'test_token', apiVersion: 'invalid'),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('should check feature availability', () {
      final latestClient = NotionClient(token: 'test_token');
      expect(
        latestClient.isFeatureAvailable('page_properties_endpoint'),
        isTrue,
      );

      final olderClient = NotionClient(
        token: 'test_token',
        apiVersion: '2021-05-13',
      );
      expect(
        olderClient.isFeatureAvailable('page_properties_endpoint'),
        isFalse,
      );
    });

    test('should check minimum version support', () {
      final client = NotionClient(
        token: 'test_token',
        apiVersion: '2022-06-28',
      );
      expect(client.supportsMinimumVersion('2022-02-22'), isTrue);
      expect(client.supportsMinimumVersion('2023-01-01'), isFalse);
    });

    test('should provide available features', () {
      final client = NotionClient(token: 'test_token');
      final features = client.availableFeatures;
      expect(features, isA<Map<String, bool>>());
      expect(features.isNotEmpty, isTrue);
    });
  });
}
