import 'package:dio/dio.dart';
import '../utils/exceptions.dart';
import '../utils/notion_logger.dart';
import 'rate_limiter.dart';

/// HTTP client wrapper for Notion API requests.
///
/// Handles authentication, error handling, API versioning, rate limiting, and retries.
class NotionHttpClient {
  /// Creates a new [NotionHttpClient] with the given [token].
  ///
  /// Optionally accepts a custom [Dio] instance for testing.
  /// [rateLimiter] - Optional custom rate limiter instance
  NotionHttpClient({
    required this.token,
    Dio? dio,
    RateLimiter? rateLimiter,
  })  : _dio = dio ?? Dio(),
        _rateLimiter = rateLimiter ?? RateLimiter() {
    _configureDio();
  }

  static const String _baseUrl = 'https://api.notion.com/v1';
  static const String _notionVersion = '2022-06-28';

  final Dio _dio;
  final String token;
  final RateLimiter _rateLimiter;

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

    // Add logging interceptor
    _dio.interceptors.add(_LoggingInterceptor());

    // Add error handler interceptor
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

  /// Makes a GET request to the given [path] with rate limiting.
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async =>
      _rateLimiter.execute(
        () => _executeGet(path, queryParameters: queryParameters),
        isRateLimitError: (error) =>
            error is DioException && error.response?.statusCode == 429,
        getRetryAfter: _extractRetryAfter,
      );

  /// Internal GET request execution.
  Future<Map<String, dynamic>> _executeGet(
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

  /// Makes a POST request to the given [path] with rate limiting.
  Future<Map<String, dynamic>> post(
    String path, {
    Map<String, dynamic>? data,
  }) async =>
      _rateLimiter.execute(
        () => _executePost(path, data: data),
        isRateLimitError: (error) =>
            error is DioException && error.response?.statusCode == 429,
        getRetryAfter: _extractRetryAfter,
      );

  /// Internal POST request execution.
  Future<Map<String, dynamic>> _executePost(
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

  /// Makes a PATCH request to the given [path] with rate limiting.
  Future<Map<String, dynamic>> patch(
    String path, {
    Map<String, dynamic>? data,
  }) async =>
      _rateLimiter.execute(
        () => _executePatch(path, data: data),
        isRateLimitError: (error) =>
            error is DioException && error.response?.statusCode == 429,
        getRetryAfter: _extractRetryAfter,
      );

  /// Internal PATCH request execution.
  Future<Map<String, dynamic>> _executePatch(
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

  /// Makes a DELETE request to the given [path] with rate limiting.
  Future<Map<String, dynamic>> delete(String path) async =>
      _rateLimiter.execute(
        () => _executeDelete(path),
        isRateLimitError: (error) =>
            error is DioException && error.response?.statusCode == 429,
        getRetryAfter: _extractRetryAfter,
      );

  /// Internal DELETE request execution.
  Future<Map<String, dynamic>> _executeDelete(String path) async {
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

  /// Extracts Retry-After duration from DioException.
  Duration? _extractRetryAfter(dynamic error) {
    if (error is! DioException) {
      return null;
    }

    final retryAfterHeader = error.response?.headers['retry-after']?.first;
    if (retryAfterHeader == null) {
      return null;
    }

    // Try to parse as seconds (integer)
    final seconds = int.tryParse(retryAfterHeader);
    if (seconds != null) {
      return Duration(seconds: seconds);
    }

    // Try to parse as HTTP date (not commonly used by Notion)
    return null;
  }

  /// Closes the HTTP client and releases resources.
  void close() {
    _dio.close();
  }
}

/// Dio interceptor for logging HTTP requests and responses.
class _LoggingInterceptor extends Interceptor {
  final _logger = NotionLogger.instance;
  final _stopwatch = Stopwatch();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _stopwatch.reset();
    _stopwatch.start();

    _logger.logRequest(
      method: options.method,
      url: '${options.baseUrl}${options.path}',
      headers: options.headers,
      data: options.data,
    );

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _stopwatch.stop();

    _logger.logResponse(
      method: response.requestOptions.method,
      url:
          '${response.requestOptions.baseUrl}${response.requestOptions.path}',
      statusCode: response.statusCode ?? 0,
      data: response.data,
      durationMs: _stopwatch.elapsedMilliseconds,
      notionRequestId: response.headers['x-notion-request-id']?.firstOrNull,
    );

    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _stopwatch.stop();

    _logger.logError(
      method: err.requestOptions.method,
      url: '${err.requestOptions.baseUrl}${err.requestOptions.path}',
      statusCode: err.response?.statusCode,
      error: err.message ?? 'Unknown error',
      data: err.response?.data,
    );

    super.onError(err, handler);
  }
}
