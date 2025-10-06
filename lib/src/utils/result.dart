import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

/// A type representing either success or failure.
///
/// This is a Rust-inspired Result type that provides type-safe error handling.
/// It can be either [Success] containing a value of type [T], or [Failure]
/// containing an error of type [E].
///
/// Example:
/// ```dart
/// Result<User, NotionException> result = await getUser();
/// result.when(
///   success: (user) => print('Got user: ${user.name}'),
///   failure: (error) => print('Error: $error'),
/// );
/// ```
@freezed
class Result<T, E> with _$Result<T, E> {
  const Result._();

  /// Success variant containing a value.
  const factory Result.success(T value) = Success<T, E>;

  /// Failure variant containing an error.
  const factory Result.failure(E error) = Failure<T, E>;

  /// Returns true if this is a [Success].
  bool get isSuccess => this is Success<T, E>;

  /// Returns true if this is a [Failure].
  bool get isFailure => this is Failure<T, E>;

  /// Maps the success value using the given function.
  ///
  /// If this is a [Failure], returns the failure unchanged.
  Result<U, E> mapValue<U>(U Function(T value) mapper) => when(
        success: (value) => Result.success(mapper(value)),
        failure: Result.failure,
      );

  /// Maps the error value using the given function.
  ///
  /// If this is a [Success], returns the success unchanged.
  Result<T, F> mapError<F>(F Function(E error) mapper) => when(
        success: Result.success,
        failure: (error) => Result.failure(mapper(error)),
      );

  /// Applies a function that returns a Result to the success value.
  ///
  /// This is useful for chaining operations that can fail.
  /// If this is a [Failure], returns the failure unchanged.
  Result<U, E> flatMap<U>(Result<U, E> Function(T value) mapper) => when(
        success: (value) => mapper(value),
        failure: Result.failure,
      );

  /// Folds the result into a single value.
  ///
  /// Applies [onSuccess] if this is a [Success], or [onFailure] if this is a [Failure].
  U fold<U>({
    required U Function(T value) onSuccess,
    required U Function(E error) onFailure,
  }) =>
      when(
        success: onSuccess,
        failure: onFailure,
      );

  /// Returns the success value or throws the error.
  ///
  /// Throws [E] if this is a [Failure].
  T getOrThrow() => when(
        success: (value) => value,
        failure: (error) => throw error as Object,
      );

  /// Returns the success value or the provided default.
  T getOrElse(T defaultValue) => when(
        success: (value) => value,
        failure: (_) => defaultValue,
      );

  /// Returns the success value or computes it from the error.
  T getOrElseGet(T Function(E error) onError) => when(
        success: (value) => value,
        failure: (error) => onError(error),
      );

  /// Returns the success value or null.
  T? getOrNull() => when(
        success: (value) => value,
        failure: (_) => null,
      );

  /// Returns the error or null.
  E? errorOrNull() => when(
        success: (_) => null,
        failure: (error) => error,
      );
}

/// Extension methods for Future<Result<T, E>>
extension ResultFutureExtension<T, E> on Future<Result<T, E>> {
  /// Maps the success value asynchronously.
  Future<Result<U, E>> mapAsync<U>(U Function(T value) mapper) async {
    final result = await this;
    return result.mapValue(mapper);
  }

  /// Applies a function that returns a Future<Result> to the success value.
  Future<Result<U, E>> flatMapAsync<U>(
    Future<Result<U, E>> Function(T value) mapper,
  ) async {
    final result = await this;
    return result.when(
      success: (value) => mapper(value),
      failure: Result.failure,
    );
  }

  /// Returns the success value or throws the error.
  Future<T> getOrThrowAsync() async {
    final result = await this;
    return result.getOrThrow();
  }
}
