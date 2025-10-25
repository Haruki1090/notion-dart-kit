import 'package:dio/dio.dart';

import '../utils/api_version.dart';
import '../utils/exceptions.dart';
import '../utils/notion_logger.dart';
import 'rate_limiter.dart';
import 'retry_queue.dart';

/// HTTP client wrapper for Notion API requests.
///
/// Handles authentication, error handling, API versioning, rate limiting, and retries.
class NotionHttpClient {
  /// Creates a new [NotionHttpClient] with the given [token].
  ///
  /// Optionally accepts a custom [Dio] instance for testing.
  /// [rateLimiter] - Optional custom rate limiter instance
  /// [apiVersion] - API version to use (defaults to latest stable version)
  NotionHttpClient({
    required this.token,
    String? apiVersion,
    Dio? dio,
    RateLimiter? rateLimiter,
    RetryQueue? retryQueue,
  }) : _dio = dio ?? Dio(),
       _rateLimiter = rateLimiter ?? RateLimiter(),
       _retryQueue = retryQueue ?? RetryQueue(),
       apiVersion = apiVersion ?? ApiVersion.defaultVersion {
    // Validate API version
    if (!ApiVersion.isSupported(this.apiVersion)) {
      throw ArgumentError(
        'Unsupported API version: ${this.apiVersion}. '
        'Supported versions: ${ApiVersion.supportedVersions.join(', ')}',
      );
    }

    _configureDio();
    _retryQueue.start();
  }

  static const String _baseUrl = 'https://api.notion.com/v1';

  final Dio _dio;
  final String token;
  final String apiVersion;
  final RateLimiter _rateLimiter;
  final RetryQueue _retryQueue;

  void _configureDio() {
    _dio.options = BaseOptions(
      baseUrl: _baseUrl,
      headers: {
        'Authorization': 'Bearer $token',
        'Notion-Version': apiVersion,
        'Content-Type': 'application/json',
      },
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    );

    // Add logging interceptor
    _dio.interceptors.add(_LoggingInterceptor());

    // Add error handler interceptor
    _dio.interceptors.add(InterceptorsWrapper(onError: _handleError));
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
  }) async => _rateLimiter.execute(
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
      _maybeEnqueueRetry(
        method: 'GET',
        path: path,
        executor: () => _executeGet(path, queryParameters: queryParameters),
        error: e,
      );
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
  }) async => _rateLimiter.execute(
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
      final response = await _dio.post<Map<String, dynamic>>(path, data: data);
      return response.data!;
    } on DioException catch (e) {
      _maybeEnqueueRetry(
        method: 'POST',
        path: path,
        executor: () => _executePost(path, data: data),
        error: e,
      );
      if (e.error is NotionException) {
        throw e.error! as NotionException;
      }
      rethrow;
    }
  }

  /// Makes a multipart/form-data POST request (used for file uploads).
  Future<Map<String, dynamic>> postMultipart(
    String path, {
    required FormData formData,
  }) async => _rateLimiter.execute(
    () => _executePostMultipart(path, formData: formData),
    isRateLimitError: (error) =>
        error is DioException && error.response?.statusCode == 429,
    getRetryAfter: _extractRetryAfter,
  );

  /// Internal multipart POST execution.
  Future<Map<String, dynamic>> _executePostMultipart(
    String path, {
    required FormData formData,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        path,
        data: formData,
        options: Options(
          headers: {
            // Let Dio set the proper multipart boundary automatically
            'Content-Type': 'multipart/form-data',
          },
        ),
      );
      return response.data!;
    } on DioException catch (e) {
      _maybeEnqueueRetry(
        method: 'POST',
        path: path,
        executor: () => _executePostMultipart(path, formData: formData),
        error: e,
      );
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
  }) async => _rateLimiter.execute(
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
      final response = await _dio.patch<Map<String, dynamic>>(path, data: data);
      return response.data!;
    } on DioException catch (e) {
      _maybeEnqueueRetry(
        method: 'PATCH',
        path: path,
        executor: () => _executePatch(path, data: data),
        error: e,
      );
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
      _maybeEnqueueRetry(
        method: 'DELETE',
        path: path,
        executor: () => _executeDelete(path),
        error: e,
      );
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
    _retryQueue.close();
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
      url: '${response.requestOptions.baseUrl}${response.requestOptions.path}',
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

extension NotionHttpClientRetry on NotionHttpClient {
  RetryQueue get retryQueue => _retryQueue;

  void _maybeEnqueueRetry({
    required String method,
    required String path,
    required Future<Map<String, dynamic>> Function() executor,
    required DioException error,
  }) {
    final status = error.response?.statusCode;
    final retryable = _isRetryable(error, statusCode: status);
    if (!retryable) {
      return;
    }

    final id = '$method:$path:${DateTime.now().microsecondsSinceEpoch}';
    _retryQueue.enqueue(
      id: id,
      executor: () => executor(),
      isRetryable: (err) => _isRetryable(
        err,
        statusCode: (err is DioException)
            ? err.response?.statusCode
            : (err is NotionException ? err.statusCode : null),
      ),
      getRetryAfter: (err) =>
          err is DioException ? _extractRetryAfter(err) : null,
      priority: _priorityForMethod(method),
    );
  }

  bool _isRetryable(Object error, {int? statusCode}) {
    if (error is DioException) {
      // Network and timeout errors
      switch (error.type) {
        case DioExceptionType.connectionError:
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          return true;
        default:
          break;
      }
      final code = error.response?.statusCode;
      if (code != null && _isTransientStatus(code)) {
        return true;
      }
    }
    if (error is RateLimitException) {
      return true;
    }
    if (error is NotionException) {
      final code = error.statusCode;
      if (code != null && _isTransientStatus(code)) {
        return true;
      }
    }
    return false;
  }

  bool _isTransientStatus(int code) =>
      code == 429 || code == 500 || code == 502 || code == 503 || code == 504;

  RetryPriority _priorityForMethod(String method) {
    switch (method) {
      case 'GET':
        return RetryPriority.low;
      case 'POST':
      case 'PATCH':
      case 'DELETE':
        return RetryPriority.normal;
      default:
        return RetryPriority.normal;
    }
  }

  /// Gets the current API version being used.
  String get currentApiVersion => apiVersion;

  /// Checks if a specific feature is available in the current API version.
  bool isFeatureAvailable(String featureName) {
    final features = ApiVersion.getFeatureAvailability(apiVersion);
    return features[featureName] ?? false;
  }

  /// Gets all available features for the current API version.
  Map<String, bool> get availableFeatures =>
      ApiVersion.getFeatureAvailability(apiVersion);

  /// Checks if the current API version is the latest.
  bool get isLatestVersion => apiVersion == ApiVersion.latest;

  /// Checks if the current API version supports a minimum required version.
  bool supportsMinimumVersion(String minimumVersion) {
    // If the minimum version is not supported, we can't compare
    if (!ApiVersion.isSupported(minimumVersion)) {
      return false;
    }
    return ApiVersion.compare(apiVersion, minimumVersion) >= 0;
  }
}
