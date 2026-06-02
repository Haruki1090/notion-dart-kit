/// Base exception for all Notion API errors.
class NotionException implements Exception {
  /// Creates a new [NotionException].
  ///
  /// [code] is the machine-readable Notion error code (e.g. `validation_error`,
  /// `object_not_found`) extracted from the response body.
  /// [requestId] is the value of the `x-notion-request-id` response header,
  /// useful when reporting issues to Notion support.
  NotionException(
    this.message, {
    this.statusCode,
    this.code,
    this.requestId,
  });

  /// The error message.
  final String message;

  /// The HTTP status code, if available.
  final int? statusCode;

  /// The machine-readable Notion error code, if available.
  ///
  /// See https://developers.notion.com/reference/status-codes for the full
  /// list (e.g. `validation_error`, `restricted_resource`, `conflict_error`).
  final String? code;

  /// The Notion request id (`x-notion-request-id` header), if available.
  final String? requestId;

  /// A detail suffix including code, status, and request id when present.
  String get details {
    final parts = <String>[];
    if (code != null) {
      parts.add('code: $code');
    }
    if (statusCode != null) {
      parts.add('status: $statusCode');
    }
    if (requestId != null) {
      parts.add('request_id: $requestId');
    }
    return parts.isEmpty ? '' : ' (${parts.join(', ')})';
  }

  @override
  String toString() => 'NotionException: $message$details';
}

/// Exception thrown when the API rate limit is exceeded (HTTP 429).
class RateLimitException extends NotionException {
  RateLimitException(
    super.message, {
    super.statusCode,
    super.code,
    super.requestId,
  });

  @override
  String toString() => 'RateLimitException: $message$details';
}

/// Exception thrown when authentication fails (HTTP 401).
class AuthenticationException extends NotionException {
  AuthenticationException(
    super.message, {
    super.statusCode,
    super.code,
    super.requestId,
  });

  @override
  String toString() => 'AuthenticationException: $message$details';
}

/// Exception thrown when the bearer token lacks permission (HTTP 403).
class RestrictedResourceException extends NotionException {
  RestrictedResourceException(
    super.message, {
    super.statusCode,
    super.code,
    super.requestId,
  });

  @override
  String toString() => 'RestrictedResourceException: $message$details';
}

/// Exception thrown when a requested resource is not found (HTTP 404).
class NotFoundException extends NotionException {
  NotFoundException(
    super.message, {
    super.statusCode,
    super.code,
    super.requestId,
  });

  @override
  String toString() => 'NotFoundException: $message$details';
}

/// Exception thrown when the request is invalid (HTTP 400).
class ValidationException extends NotionException {
  ValidationException(
    super.message, {
    super.statusCode,
    super.code,
    super.requestId,
  });

  @override
  String toString() => 'ValidationException: $message$details';
}

/// Exception thrown when the transaction conflicts with the current state
/// (HTTP 409, `conflict_error`).
class ConflictException extends NotionException {
  ConflictException(
    super.message, {
    super.statusCode,
    super.code,
    super.requestId,
  });

  @override
  String toString() => 'ConflictException: $message$details';
}

/// Exception thrown when Notion encounters a server-side error
/// (HTTP 500/502/503/504).
class ServerException extends NotionException {
  ServerException(
    super.message, {
    super.statusCode,
    super.code,
    super.requestId,
  });

  @override
  String toString() => 'ServerException: $message$details';
}

/// Exception thrown when a template is not found.
class TemplateNotFoundException extends NotionException {
  TemplateNotFoundException(
    super.message, {
    super.statusCode,
    super.code,
    super.requestId,
  });

  @override
  String toString() => 'TemplateNotFoundException: $message$details';
}

/// Exception thrown when a template is invalid or cannot be used.
class InvalidTemplateException extends NotionException {
  InvalidTemplateException(
    super.message, {
    super.statusCode,
    super.code,
    super.requestId,
  });

  @override
  String toString() => 'InvalidTemplateException: $message$details';
}
