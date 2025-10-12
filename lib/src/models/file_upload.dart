/// Represents a File Upload object in Notion
class FileUpload {
  const FileUpload({
    required this.id,
    required this.object,
    required this.createdTime,
    required this.lastEditedTime,
    required this.archived, required this.status, required this.filename, required this.contentType, required this.contentLength, this.expiryTime,
    this.uploadUrl,
  });

  factory FileUpload.fromJson(Map<String, dynamic> json) => FileUpload(
        id: json['id'] as String,
        object: json['object'] as String,
        createdTime: DateTime.parse(json['created_time'] as String),
        lastEditedTime: DateTime.parse(json['last_edited_time'] as String),
        expiryTime: (json['expiry_time'] as String?) == null
            ? null
            : DateTime.parse(json['expiry_time'] as String),
        uploadUrl: json['upload_url'] as String?,
        archived: json['archived'] as bool,
        status: _parseStatus(json['status'] as String?),
        filename: json['filename'] as String,
        contentType: json['content_type'] as String,
        contentLength: (json['content_length'] as num).toInt(),
      );

  final String id;
  final String object;
  final DateTime createdTime;
  final DateTime lastEditedTime;
  final DateTime? expiryTime;
  final String? uploadUrl;
  final bool archived;
  final FileUploadStatus status;
  final String filename;
  final String contentType;
  final int contentLength;

  Map<String, dynamic> toJson() => {
        'id': id,
        'object': object,
        'created_time': createdTime.toIso8601String(),
        'last_edited_time': lastEditedTime.toIso8601String(),
        if (expiryTime != null) 'expiry_time': expiryTime!.toIso8601String(),
        'upload_url': uploadUrl,
        'archived': archived,
        'status': status.name,
        'filename': filename,
        'content_type': contentType,
        'content_length': contentLength,
      };
}

/// Status of a File Upload
enum FileUploadStatus { pending, uploaded, expired, failed }

FileUploadStatus _parseStatus(String? s) {
  switch (s) {
    case 'pending':
      return FileUploadStatus.pending;
    case 'uploaded':
      return FileUploadStatus.uploaded;
    case 'expired':
      return FileUploadStatus.expired;
    case 'failed':
    default:
      return FileUploadStatus.failed;
  }
}
