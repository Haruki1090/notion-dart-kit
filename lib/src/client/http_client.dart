import 'dart:math';
import 'package:dio/dio.dart';
import '../utils/exceptions.dart';

/// HTTP client wrapper for Notion API requests.
///
/// Handles authentication, error handling, API versioning, rate limiting, and retries.
class NotionHttpClient {
  /// Creates a new [NotionHttpClient] with the given [token].
  ///
  /// Optionally accepts a custom [Dio] instance for testing.
  /// [maxRetries] - Maximum number of retry attempts (default: 3)
  /// [initialRetryDelay] - Initial delay in milliseconds for exponential backoff (default: 1000)
  NotionHttpClient({
    required this.token,
    Dio? dio,
    this.maxRetries = 3,
    this.initialRetryDelay = 1000,
  }) : _dio = dio ?? Dio() {
    _configureDio();
  }
  static const String _baseUrl = 'https://api.notion.com/v1';
  static const String _notionVersion = '2022-06-28';

  final Dio _dio;
  final String token;

  /// Maximum number of retry attempts for rate-limited requests
  final int maxRetries;

  /// Initial delay for exponential backoff (in milliseconds)
  final int initialRetryDelay;

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

    // Add retry interceptor first (before error handler)
    _dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: _onRequest,
        onError: _onErrorWithRetry,
      ),
    );

    // Add error handler interceptor
    _dio.interceptors.add(
      InterceptorsWrapper(
        onError: _handleError,
      ),
    );
  }

  /// Request interceptor for logging/debugging
  void _onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    // Future: Add request logging here if needed
    handler.next(options);
  }

  /// Error interceptor with retry logic for rate limiting
  Future<void> _onErrorWithRetry(
    DioException error,
    ErrorInterceptorHandler handler,
  ) async {
    final statusCode = error.response?.statusCode;

    // Only retry on 429 (rate limit) or network errors
    if (statusCode == 429 ||
        error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout) {
      final attempt = error.requestOptions.extra['retryAttempt'] as int? ?? 0;

      if (attempt < maxRetries) {
        // Calculate delay with exponential backoff
        final delay = _calculateRetryDelay(attempt);

        // Wait before retrying
        await Future.delayed(Duration(milliseconds: delay));

        // Increment retry attempt
        error.requestOptions.extra['retryAttempt'] = attempt + 1;

        try {
          // Retry the request
          final response = await _dio.fetch(error.requestOptions);
          handler.resolve(response);
          return;
        } catch (e) {
          // If retry fails, let it fall through to error handler
        }
      }
    }

    // Pass to error handler
    handler.next(error);
  }

  /// Calculate retry delay using exponential backoff with jitter
  int _calculateRetryDelay(int attempt) {
    // Exponential backoff: delay = initialDelay * (2 ^ attempt)
    final exponentialDelay = initialRetryDelay * pow(2, attempt).toInt();

    // Add jitter (random 0-25% of delay) to prevent thundering herd
    final jitter = Random().nextInt((exponentialDelay * 0.25).toInt());

    return exponentialDelay + jitter;
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
        throw e.error! as NotionException;
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
        throw e.error! as NotionException;
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
        throw e.error! as NotionException;
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
        throw e.error! as NotionException;
      }
      rethrow;
    }
  }

  /// Closes the HTTP client and releases resources.
  void close() {
    _dio.close();
  }
}
