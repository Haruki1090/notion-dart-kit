import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

void main() {
  group('Result Type Tests', () {
    group('Basic Operations', () {
      test('Success creates success result', () {
        const result = Result<int, String>.success(42);

        expect(result.isSuccess, true);
        expect(result.isFailure, false);
        expect(result.getOrNull(), 42);
        expect(result.errorOrNull(), null);
      });

      test('Failure creates failure result', () {
        const result = Result<int, String>.failure('Error occurred');

        expect(result.isSuccess, false);
        expect(result.isFailure, true);
        expect(result.getOrNull(), null);
        expect(result.errorOrNull(), 'Error occurred');
      });

      test('when pattern matching works', () {
        const success = Result<int, String>.success(42);
        const failure = Result<int, String>.failure('Error');

        final successValue = success.when(
          success: (value) => 'Value: $value',
          failure: (error) => 'Error: $error',
        );

        final failureValue = failure.when(
          success: (value) => 'Value: $value',
          failure: (error) => 'Error: $error',
        );

        expect(successValue, 'Value: 42');
        expect(failureValue, 'Error: Error');
      });
    });

    group('Transformation Methods', () {
      test('mapValue transforms success value', () {
        const result = Result<int, String>.success(42);
        final mapped = result.mapValue((value) => value * 2);

        expect(mapped.getOrNull(), 84);
      });

      test('mapValue preserves failure', () {
        const result = Result<int, String>.failure('Error');
        final mapped = result.mapValue((value) => value * 2);

        expect(mapped.errorOrNull(), 'Error');
      });

      test('mapError transforms error value', () {
        const result = Result<int, String>.failure('Error');
        final mapped = result.mapError((error) => 'Mapped: $error');

        expect(mapped.errorOrNull(), 'Mapped: Error');
      });

      test('mapError preserves success', () {
        const result = Result<int, String>.success(42);
        final mapped = result.mapError((error) => 'Mapped: $error');

        expect(mapped.getOrNull(), 42);
      });

      test('flatMap chains success operations', () {
        const result = Result<int, String>.success(42);
        final chained = result.flatMap(
          (value) => Result<String, String>.success('Value: $value'),
        );

        expect(chained.getOrNull(), 'Value: 42');
      });

      test('flatMap short-circuits on failure', () {
        const result = Result<int, String>.failure('Error');
        final chained = result.flatMap(
          (value) => Result<String, String>.success('Value: $value'),
        );

        expect(chained.errorOrNull(), 'Error');
      });
    });

    group('Value Extraction', () {
      test('fold applies correct function', () {
        const success = Result<int, String>.success(42);
        const failure = Result<int, String>.failure('Error');

        final successFolded = success.fold(
          onSuccess: (value) => value * 2,
          onFailure: (error) => 0,
        );

        final failureFolded = failure.fold(
          onSuccess: (value) => value * 2,
          onFailure: (error) => 0,
        );

        expect(successFolded, 84);
        expect(failureFolded, 0);
      });

      test('getOrThrow returns value on success', () {
        const result = Result<int, String>.success(42);
        expect(result.getOrThrow(), 42);
      });

      test('getOrThrow throws on failure', () {
        const result = Result<int, String>.failure('Error');
        expect(() => result.getOrThrow(), throwsA('Error'));
      });

      test('getOrElse returns value on success', () {
        const result = Result<int, String>.success(42);
        expect(result.getOrElse(0), 42);
      });

      test('getOrElse returns default on failure', () {
        const result = Result<int, String>.failure('Error');
        expect(result.getOrElse(0), 0);
      });

      test('getOrElseGet computes value from error', () {
        const result = Result<int, String>.failure('Error');
        final value = result.getOrElseGet((error) => error.length);

        expect(value, 5);
      });
    });

    group('Real-world Usage', () {
      test('handles NotionException type', () {
        const success = Result<String, NotionException>.success('data');
        final failure = Result<String, NotionException>.failure(
          NotionException('API Error', statusCode: 400),
        );

        expect(success.isSuccess, true);
        expect(failure.isFailure, true);
        expect(failure.errorOrNull()?.message, 'API Error');
      });

      test('chains multiple operations', () {
        final result = const Result<int, String>.success(10)
            .mapValue((value) => value * 2)
            .flatMap((value) => Result.success(value + 5))
            .mapValue((value) => 'Final: $value');

        expect(result.getOrNull(), 'Final: 25');
      });

      test('error propagates through chain', () {
        final result = const Result<int, String>.success(10)
            .mapValue((value) => value * 2)
            .flatMap(
              (value) =>
                  value > 15 ? const Result.failure('Too large') : Result.success(value),
            )
            .mapValue((value) => 'Final: $value');

        expect(result.errorOrNull(), 'Too large');
      });
    });

    group('Future Extensions', () {
      test('mapAsync transforms future success', () async {
        final futureResult = Future.value(const Result<int, String>.success(42));
        final mapped = await futureResult.mapAsync((value) => value * 2);

        expect(mapped.getOrNull(), 84);
      });

      test('flatMapAsync chains async operations', () async {
        final futureResult = Future.value(const Result<int, String>.success(42));
        final chained = await futureResult.flatMapAsync(
          (value) async => Result<String, String>.success('Value: $value'),
        );

        expect(chained.getOrNull(), 'Value: 42');
      });

      test('getOrThrowAsync returns value on success', () async {
        final futureResult = Future.value(const Result<int, String>.success(42));
        final value = await futureResult.getOrThrowAsync();

        expect(value, 42);
      });

      test('getOrThrowAsync throws on failure', () async {
        final futureResult = Future.value(const Result<int, String>.failure('Error'));

        expect(
          () async => futureResult.getOrThrowAsync(),
          throwsA('Error'),
        );
      });
    });
  });
}
