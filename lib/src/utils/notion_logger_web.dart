/// Web用のロガー実装
///
/// Webプラットフォームでは`dart:io`が使用できないため、
/// コンソール出力のみを行うシンプルなロガーを提供します。

/// Web用のログレベル（元のloggerパッケージのLevelと互換性を保つ）
class Level {
  static const Level debug = Level._('DEBUG', 500);
  static const Level info = Level._('INFO', 800);
  static const Level warning = Level._('WARNING', 900);
  static const Level error = Level._('ERROR', 1000);

  final String name;
  final int value;

  const Level._(this.name, this.value);

  @override
  String toString() => name;
}

/// Web用のログフィルター
abstract class LogFilter {
  bool shouldLog(LogEvent event);
}

/// Web用のログイベント
class LogEvent {
  final Level level;
  final String message;
  final dynamic error;
  final StackTrace? stackTrace;

  LogEvent(this.level, this.message, [this.error, this.stackTrace]);
}

/// Web用のログプリンター
abstract class LogPrinter {
  void log(LogEvent event);
}

/// Web用のロガー
class Logger {
  final LogFilter filter;
  final LogPrinter printer;
  final Level level;

  Logger({required this.filter, required this.printer, required this.level});

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

/// Web用のログなしフィルター
class _NoLogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) => false;
}

/// Web用のプリティプリンター
class PrettyPrinter extends LogPrinter {
  final int methodCount;
  final int errorMethodCount;
  final int lineLength;

  PrettyPrinter({
    this.methodCount = 0,
    this.errorMethodCount = 5,
    this.lineLength = 80,
  });

  @override
  void log(LogEvent event) {
    final timestamp = DateTime.now().toIso8601String();
    final levelStr = event.level.name;

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
