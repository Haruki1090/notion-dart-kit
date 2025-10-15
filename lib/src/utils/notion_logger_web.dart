/// Web用のロガー実装
///
/// Webプラットフォームでは`dart:io`が使用できないため、
/// コンソール出力のみを行うシンプルなロガーを提供します。
library;

/// Web用のログレベル（元のloggerパッケージのLevelと互換性を保つ）
enum Level {
  debug('DEBUG', 500),
  info('INFO', 800),
  warning('WARNING', 900),
  error('ERROR', 1000);

  const Level(this.levelName, this.value);

  final String levelName;
  final int value;

  @override
  String toString() => levelName;
}

/// Web用のログフィルター
// ignore: one_member_abstracts
abstract class LogFilter {
  bool shouldLog(LogEvent event);
}

/// Web用のログイベント
class LogEvent {
  LogEvent(this.level, this.message, [this.error, this.stackTrace]);

  final Level level;
  final String message;
  final dynamic error;
  final StackTrace? stackTrace;
}

/// Web用のログプリンター
// ignore: one_member_abstracts
abstract class LogPrinter {
  void log(LogEvent event);
}

/// Web用のロガー
class Logger {
  Logger({required this.filter, required this.printer, required this.level});

  final LogFilter filter;
  final LogPrinter printer;
  final Level level;

  void d(String message, {dynamic error, StackTrace? stackTrace}) {
    final event = LogEvent(Level.debug, message, error, stackTrace);
    if (filter.shouldLog(event)) {
      printer.log(event);
    }
  }

  void i(String message, {dynamic error, StackTrace? stackTrace}) {
    final event = LogEvent(Level.info, message, error, stackTrace);
    if (filter.shouldLog(event)) {
      printer.log(event);
    }
  }

  void w(String message, {dynamic error, StackTrace? stackTrace}) {
    final event = LogEvent(Level.warning, message, error, stackTrace);
    if (filter.shouldLog(event)) {
      printer.log(event);
    }
  }

  void e(String message, {dynamic error, StackTrace? stackTrace}) {
    final event = LogEvent(Level.error, message, error, stackTrace);
    if (filter.shouldLog(event)) {
      printer.log(event);
    }
  }
}

/// Web用のプロダクションフィルター
class ProductionFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) => true;
}

/// Web用のプリティプリンター
class PrettyPrinter extends LogPrinter {
  PrettyPrinter({
    this.methodCount = 0,
    this.errorMethodCount = 5,
    this.lineLength = 80,
  });

  final int methodCount;
  final int errorMethodCount;
  final int lineLength;

  @override
  void log(LogEvent event) {
    final timestamp = DateTime.now().toIso8601String();
    final levelStr = event.level.levelName;

    // Webではconsole.logを使用
    print('[$timestamp] $levelStr: ${event.message}');

    if (event.error != null) {
      print('[$timestamp] $levelStr: Error: ${event.error}');
    }

    if (event.stackTrace != null) {
      print('[$timestamp] $levelStr: StackTrace: ${event.stackTrace}');
    }
  }
}
