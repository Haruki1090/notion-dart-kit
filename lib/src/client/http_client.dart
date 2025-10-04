import 'package:dio/dio.dart';
import '../utils/exceptions.dart';

/// HTTP client wrapper for Notion API requests.
///
/// Handles authentication, error handling, and API versioning.
class NotionHttpClient {
  static const String _baseUrl = 'https://api.notion.com/v1';
  static const String _notionVersion = '2022-06-28';

  final Dio _dio;
  final String token;

  /// Creates a new [NotionHttpClient] with the given [token].
  ///
  /// Optionally accepts a custom [Dio] instance for testing.
  NotionHttpClient({
    required this.token,
    Dio? dio,
  }) : _dio = dio ?? Dio() {
    _configureDio();
  }

  void _configureDio() {
    _dio.options = BaseOptions(
      baseUrl: _baseUrl,
      headers: {
        'Authorization': 'Bearer $token',
        'Notion-Version': _notionVersion,
        'Content-Type': 'application/json',
      },
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onError: _handleError,
      ),
    );
  }

  /// Handles HTTP errors and converts them to [NotionException]s.
  void _handleError(DioException error, ErrorInterceptorHandler handler) {
    final statusCode = error.response?.statusCode;
    final message = _extractErrorMessage(error);

    NotionException exception;

    switch (statusCode) {
      case 400:
        exception = ValidationException(
          message ?? 'Invalid request',
          statusCode: statusCode,
        );
        break;
      case 401:
        exception = AuthenticationException(
          message ?? 'Authentication failed',
          statusCode: statusCode,
        );
        break;
      case 404:
        exception = NotFoundException(
          message ?? 'Resource not found',
          statusCode: statusCode,
        );
        break;
      case 429:
        exception = RateLimitException(
          message ?? 'Rate limit exceeded',
          statusCode: statusCode,
        );
        break;
      default:
        exception = NotionException(
          message ?? 'An error occurred',
          statusCode: statusCode,
        );
    }

    handler.reject(
      DioException(
        requestOptions: error.requestOptions,
        error: exception,
        response: error.response,
        type: error.type,
      ),
    );
  }

  String? _extractErrorMessage(DioException error) {
    final response = error.response;
    if (response?.data is Map) {
      final data = response!.data as Map<String, dynamic>;
      return data['message'] as String?;
    }
    return error.message;
  }

  /// Makes a GET request to the given [path].
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        path,
        queryParameters: queryParameters,
      );
      return response.data!;
    } on DioException catch (e) {
      if (e.error is NotionException) {
        throw e.error as NotionException;
      }
      rethrow;
    }
  }

  /// Makes a POST request to the given [path].
  Future<Map<String, dynamic>> post(
    String path, {
    Map<String, dynamic>? data,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        path,
        data: data,
      );
      return response.data!;
    } on DioException catch (e) {
      if (e.error is NotionException) {
        throw e.error as NotionException;
      }
      rethrow;
    }
  }

  /// Makes a PATCH request to the given [path].
  Future<Map<String, dynamic>> patch(
    String path, {
    Map<String, dynamic>? data,
  }) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        path,
        data: data,
      );
      return response.data!;
    } on DioException catch (e) {
      if (e.error is NotionException) {
        throw e.error as NotionException;
      }
      rethrow;
    }
  }

  /// Makes a DELETE request to the given [path].
  Future<Map<String, dynamic>> delete(String path) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(path);
      return response.data!;
    } on DioException catch (e) {
      if (e.error is NotionException) {
        throw e.error as NotionException;
      }
      rethrow;
    }
  }

  /// Closes the HTTP client and releases resources.
  void close() {
    _dio.close();
  }
}
