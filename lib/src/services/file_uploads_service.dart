import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

import '../client/http_client.dart';
import '../models/file_upload.dart';
import '../models/pagination.dart';
import '../utils/exceptions.dart';

/// Service for interacting with Notion File Uploads API
class FileUploadsService {
  FileUploadsService(this._httpClient);
  final NotionHttpClient _httpClient;

  /// Create a file upload session
  ///
  /// - When [mode] is `multi_part`, [filename] and [numberOfParts] are required.
  /// - When [mode] is `external_url`, [filename] and [externalUrl] are required.
  /// - When [mode] is `single_part`, [filename] is optional.
  Future<FileUpload> create({
    required FileUploadMode mode,
    String? filename,
    String? contentType,
    int? numberOfParts,
    String? externalUrl,
  }) async {
    // Local validation mirroring API contract
    switch (mode) {
      case FileUploadMode.multiPart:
        if (filename == null || filename.isEmpty) {
          throw ValidationException(
            'filename is required when mode=multi_part',
            statusCode: 400,
          );
        }
        if (numberOfParts == null ||
            numberOfParts < 1 ||
            numberOfParts > 1000) {
          throw ValidationException(
            'number_of_parts must be between 1 and 1000 when mode=multi_part',
            statusCode: 400,
          );
        }
        break;
      case FileUploadMode.externalUrl:
        if (filename == null || filename.isEmpty) {
          throw ValidationException(
            'filename is required when mode=external_url',
            statusCode: 400,
          );
        }
        if (externalUrl == null || externalUrl.isEmpty) {
          throw ValidationException(
            'external_url is required when mode=external_url',
            statusCode: 400,
          );
        }
        break;
      case FileUploadMode.singlePart:
        // no extra required fields
        break;
    }

    final body = <String, dynamic>{
      'mode': mode.apiValue,
      if (filename != null) 'filename': filename,
      if (contentType != null) 'content_type': contentType,
      if (numberOfParts != null) 'number_of_parts': numberOfParts,
      if (externalUrl != null) 'external_url': externalUrl,
    };

    final response = await _httpClient.post('/file_uploads', data: body);
    return FileUpload.fromJson(response);
  }

  /// Send file contents (multipart/form-data) from a byte buffer
  ///
  /// Optionally provide [partNumber] when using `mode=multi_part`.
  Future<FileUpload> sendBytes(
    String fileUploadId,
    List<int> bytes, {
    required String filename,
    String? contentType,
    int? partNumber,
  }) async {
    final form = FormData();
    final mf = MultipartFile.fromBytes(
      bytes,
      filename: filename,
      contentType: contentType == null ? null : MediaType.parse(contentType),
    );
    form.files.add(MapEntry('file', mf));
    if (partNumber != null) {
      form.fields.add(MapEntry('part_number', partNumber.toString()));
    }
    final response = await _httpClient.postMultipart(
      '/file_uploads/$fileUploadId/send',
      formData: form,
    );
    return FileUpload.fromJson(response);
  }

  /// Send file contents (multipart/form-data) from a file path
  Future<FileUpload> sendFile(
    String fileUploadId,
    String filePath, {
    String? filename,
    String? contentType,
    int? partNumber,
  }) async {
    final fileName = filename ?? filePath.split(Platform.pathSeparator).last;
    final mf = await MultipartFile.fromFile(
      filePath,
      filename: fileName,
      contentType: contentType == null ? null : MediaType.parse(contentType),
    );
    final form = FormData.fromMap({
      'file': mf,
      if (partNumber != null) 'part_number': partNumber.toString(),
    });
    final response = await _httpClient.postMultipart(
      '/file_uploads/$fileUploadId/send',
      formData: form,
    );
    return FileUpload.fromJson(response);
  }

  /// Complete a multi-part upload after all parts have been uploaded
  Future<FileUpload> complete(String fileUploadId) async {
    final response = await _httpClient.post(
      '/file_uploads/$fileUploadId/complete',
    );
    return FileUpload.fromJson(response);
  }

  /// Retrieve a single file upload
  Future<FileUpload> retrieve(String fileUploadId) async {
    final response = await _httpClient.get('/file_uploads/$fileUploadId');
    return FileUpload.fromJson(response);
  }

  /// List file uploads for the current integration
  Future<PaginatedList<FileUpload>> list({
    FileUploadStatus? status,
    String? startCursor,
    int? pageSize,
  }) async {
    final query = <String, dynamic>{};
    if (status != null) {
      query['status'] = status.name;
    }
    if (startCursor != null) {
      query['start_cursor'] = startCursor;
    }
    if (pageSize != null) {
      query['page_size'] = pageSize;
    }

    final response = await _httpClient.get(
      '/file_uploads',
      queryParameters: query.isEmpty ? null : query,
    );
    return PaginatedList.fromJson(response, FileUpload.fromJson);
  }
}

/// Upload mode
enum FileUploadMode { singlePart, multiPart, externalUrl }

extension on FileUploadMode {
  String get apiValue => switch (this) {
    FileUploadMode.singlePart => 'single_part',
    FileUploadMode.multiPart => 'multi_part',
    FileUploadMode.externalUrl => 'external_url',
  };
}
