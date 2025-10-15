// 条件付きインポート: WebプラットフォームではWeb用のロガーを使用
import 'package:logger/logger.dart'
    if (dart.library.html) 'notion_logger_web.dart';

/// Singleton logger for Notion API operations.
///
/// Provides colored console output with different log levels.
/// Can be configured to be silent in production builds.
class NotionLogger {
  NotionLogger._internal();

  static final NotionLogger _instance = NotionLogger._internal();

  /// Get the singleton instance.
  static NotionLogger get instance => _instance;

  Logger? _logger;
  bool _isDebugMode = false;

  /// Initialize the logger with configuration.
  ///
  /// [isDebugMode] - Enable logging output (default: false)
  /// [level] - Minimum log level to display (default: Level.debug)
  void initialize({bool isDebugMode = false, Level level = Level.debug}) {
    _isDebugMode = isDebugMode;

    _logger = Logger(
      filter: _isDebugMode ? ProductionFilter() : _NoLogFilter(),
      printer: PrettyPrinter(
        methodCount: 0,
        errorMethodCount: 5,
        lineLength: 80,
      ),
      level: level,
    );
  }

  /// Log a debug message.
  void debug(String message, [dynamic error, StackTrace? stackTrace]) {
    if (_isDebugMode && _logger != null) {
      _logger!.d(message, error: error, stackTrace: stackTrace);
    }
  }

  /// Log an info message.
  void info(String message, [dynamic error, StackTrace? stackTrace]) {
    if (_isDebugMode && _logger != null) {
      _logger!.i(message, error: error, stackTrace: stackTrace);
    }
  }

  /// Log a warning message.
  void warning(String message, [dynamic error, StackTrace? stackTrace]) {
    if (_isDebugMode && _logger != null) {
      _logger!.w(message, error: error, stackTrace: stackTrace);
    }
  }

  /// Log an error message.
  void error(String message, [dynamic error, StackTrace? stackTrace]) {
    if (_isDebugMode && _logger != null) {
      _logger!.e(message, error: error, stackTrace: stackTrace);
    }
  }

  /// Log HTTP request details.
  void logRequest({
    required String method,
    required String url,
    Map<String, dynamic>? headers,
    dynamic data,
  }) {
    if (!_isDebugMode || _logger == null) {
      return;
    }

    final sanitizedHeaders = _sanitizeHeaders(headers);
    final buffer = StringBuffer();
    buffer.writeln('🚀 HTTP Request');
    buffer.writeln('Method: $method');
    buffer.writeln('URL: $url');
    if (sanitizedHeaders != null && sanitizedHeaders.isNotEmpty) {
      buffer.writeln('Headers: $sanitizedHeaders');
    }
    if (data != null) {
      buffer.writeln('Body: $data');
    }

    _logger!.d(buffer.toString());
  }

  /// Log HTTP response details.
  void logResponse({
    required String method,
    required String url,
    required int statusCode,
    dynamic data,
    int? durationMs,
    String? notionRequestId,
  }) {
    if (!_isDebugMode || _logger == null) {
      return;
    }

    final buffer = StringBuffer();
    buffer.writeln('✅ HTTP Response');
    buffer.writeln('Method: $method');
    buffer.writeln('URL: $url');
    buffer.writeln('Status: $statusCode');
    if (durationMs != null) {
      buffer.writeln('Duration: ${durationMs}ms');
    }
    if (notionRequestId != null) {
      buffer.writeln('Notion-Request-Id: $notionRequestId');
    }
    if (data != null) {
      buffer.writeln('Body: $data');
    }

    _logger!.d(buffer.toString());
  }

  /// Log HTTP error details.
  void logError({
    required String method,
    required String url,
    required int? statusCode,
    required String error,
    dynamic data,
  }) {
    if (!_isDebugMode || _logger == null) {
      return;
    }

    final buffer = StringBuffer();
    buffer.writeln('❌ HTTP Error');
    buffer.writeln('Method: $method');
    buffer.writeln('URL: $url');
    if (statusCode != null) {
      buffer.writeln('Status: $statusCode');
    }
    buffer.writeln('Error: $error');
    if (data != null) {
      buffer.writeln('Response: $data');
    }

    _logger!.e(buffer.toString());
  }

  /// Sanitize headers to hide sensitive information.
  Map<String, dynamic>? _sanitizeHeaders(Map<String, dynamic>? headers) {
    if (headers == null) {
      return null;
    }

    return headers.map((key, value) {
      if (key.toLowerCase() == 'authorization') {
        return MapEntry(key, 'Bearer ***');
      }
      return MapEntry(key, value);
    });
  }
}

/// Filter that blocks all log output.
class _NoLogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) => false;
}
