import 'package:freezed_annotation/freezed_annotation.dart';

part 'sort.freezed.dart';

/// Sort型
///
/// Notion APIのデータベースクエリで使用するソート条件を表現する型安全なDSL。
/// プロパティソートとタイムスタンプソートをサポート。
@Freezed(toJson: false)
sealed class Sort with _$Sort {
  const Sort._();

  /// プロパティでソート
  const factory Sort.property({
    required String name,
    required SortDirection direction,
  }) = PropertySort;

  /// タイムスタンプでソート
  const factory Sort.timestamp({
    required TimestampType type,
    required SortDirection direction,
  }) = TimestampSort;

  /// JSONに変換
  Map<String, dynamic> toJson() => when(
        property: (name, direction) => {
          'property': name,
          'direction': direction.value,
        },
        timestamp: (type, direction) => {
          'timestamp': type.value,
          'direction': direction.value,
        },
      );
}

/// ソート方向
enum SortDirection {
  ascending('ascending'),
  descending('descending');

  const SortDirection(this.value);
  final String value;
}

/// タイムスタンプの種類
enum TimestampType {
  createdTime('created_time'),
  lastEditedTime('last_edited_time');

  const TimestampType(this.value);
  final String value;
}

/// Sortビルダー
class SortBuilder {
  /// プロパティで昇順ソート
  static Sort ascending(String propertyName) => Sort.property(
        name: propertyName,
        direction: SortDirection.ascending,
      );

  /// プロパティで降順ソート
  static Sort descending(String propertyName) => Sort.property(
        name: propertyName,
        direction: SortDirection.descending,
      );

  /// 作成日時で昇順ソート
  static Sort createdTimeAscending() => const Sort.timestamp(
        type: TimestampType.createdTime,
        direction: SortDirection.ascending,
      );

  /// 作成日時で降順ソート
  static Sort createdTimeDescending() => const Sort.timestamp(
        type: TimestampType.createdTime,
        direction: SortDirection.descending,
      );

  /// 最終編集日時で昇順ソート
  static Sort lastEditedTimeAscending() => const Sort.timestamp(
        type: TimestampType.lastEditedTime,
        direction: SortDirection.ascending,
      );

  /// 最終編集日時で降順ソート
  static Sort lastEditedTimeDescending() => const Sort.timestamp(
        type: TimestampType.lastEditedTime,
        direction: SortDirection.descending,
      );
}

/// String拡張（ソート用）
extension SortStringExtension on String {
  /// 昇順ソート
  Sort ascending() => SortBuilder.ascending(this);

  /// 降順ソート
  Sort descending() => SortBuilder.descending(this);
}
