/// Represents a File Upload object in Notion
class FileUpload {
  const FileUpload({
    required this.id,
    required this.object,
    required this.createdTime,
    required this.lastEditedTime,
    required this.archived,
    required this.status,
    required this.filename,
    required this.contentType,
    required this.contentLength,
    this.expiryTime,
    this.uploadUrl,
    this.completeUrl,
    this.fileImportResult,
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
        completeUrl: json['complete_url'] as String?,
        fileImportResult: json['file_import_result'] as Map<String, dynamic>?,
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

  /// URL to complete a multi-part file upload. Only present for multi-part
  /// uploads.
  final String? completeUrl;

  /// Details on the success or failure of importing a file from an external
  /// URL. Only present for `external_url` uploads with a `failed` or
  /// `uploaded` status.
  final Map<String, dynamic>? fileImportResult;

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
        if (completeUrl != null) 'complete_url': completeUrl,
        if (fileImportResult != null) 'file_import_result': fileImportResult,
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
