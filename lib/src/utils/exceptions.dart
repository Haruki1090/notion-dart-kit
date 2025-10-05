/// Base exception for all Notion API errors.
class NotionException implements Exception {
  /// Creates a new [NotionException].
  NotionException(this.message, {this.statusCode});

  /// The error message.
  final String message;

  /// The HTTP status code, if available.
  final int? statusCode;

  @override
  String toString() => 'NotionException: $message';
}

/// Exception thrown when the API rate limit is exceeded.
class RateLimitException extends NotionException {
  RateLimitException(super.message, {super.statusCode});

  @override
  String toString() => 'RateLimitException: $message';
}

/// Exception thrown when authentication fails.
class AuthenticationException extends NotionException {
  AuthenticationException(super.message, {super.statusCode});

  @override
  String toString() => 'AuthenticationException: $message';
}

/// Exception thrown when a requested resource is not found.
class NotFoundException extends NotionException {
  NotFoundException(super.message, {super.statusCode});

  @override
  String toString() => 'NotFoundException: $message';
}

/// Exception thrown when the request is invalid.
class ValidationException extends NotionException {
  ValidationException(super.message, {super.statusCode});

  @override
  String toString() => 'ValidationException: $message';
}
