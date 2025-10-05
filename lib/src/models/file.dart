import 'package:freezed_annotation/freezed_annotation.dart';

part 'file.freezed.dart';
part 'file.g.dart';

/// Represents a file in Notion (either external URL or uploaded file)
@Freezed(toJson: false, fromJson: false)
class NotionFile with _$NotionFile {
  const NotionFile._();

  /// External file hosted outside Notion
  const factory NotionFile.external({
    required String url,
  }) = ExternalFile;

  /// File uploaded to Notion
  const factory NotionFile.uploaded({
    required String url,
    required DateTime expiryTime,
  }) = UploadedFile;

  factory NotionFile.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String;

    switch (type) {
      case 'external':
        final external = json['external'] as Map<String, dynamic>;
        return NotionFile.external(
          url: external['url'] as String,
        );
      case 'file':
        final file = json['file'] as Map<String, dynamic>;
        return NotionFile.uploaded(
          url: file['url'] as String,
          expiryTime: DateTime.parse(file['expiry_time'] as String),
        );
      default:
        throw ArgumentError('Unknown file type: $type');
    }
  }

  Map<String, dynamic> toJson() => map(
        external: (file) => {
          'type': 'external',
          'external': {'url': file.url},
        },
        uploaded: (file) => {
          'type': 'file',
          'file': {
            'url': file.url,
            'expiry_time': file.expiryTime.toIso8601String(),
          },
        },
      );
}

/// Represents an emoji icon
@freezed
class EmojiIcon with _$EmojiIcon {
  const factory EmojiIcon({
    required String emoji,
  }) = _EmojiIcon;

  factory EmojiIcon.fromJson(Map<String, dynamic> json) =>
      _$EmojiIconFromJson(json);
}

/// Represents a page icon (either emoji or file)
@Freezed(toJson: false, fromJson: false)
class PageIcon with _$PageIcon {
  const PageIcon._();

  const factory PageIcon.emoji({
    required String emoji,
  }) = EmojiPageIcon;

  const factory PageIcon.file({
    required NotionFile file,
  }) = FilePageIcon;

  factory PageIcon.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String;

    switch (type) {
      case 'emoji':
        return PageIcon.emoji(emoji: json['emoji'] as String);
      case 'external':
      case 'file':
        return PageIcon.file(file: NotionFile.fromJson(json));
      default:
        throw ArgumentError('Unknown icon type: $type');
    }
  }

  Map<String, dynamic> toJson() => map(
        emoji: (icon) => {
          'type': 'emoji',
          'emoji': icon.emoji,
        },
        file: (icon) => icon.file.toJson(),
      );
}
