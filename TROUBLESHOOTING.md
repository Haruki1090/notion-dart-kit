# Troubleshooting Guide

This guide covers common issues and their solutions when developing with notion-dart-kit.

## CI/CD Errors

### ❌ Dart Format Errors
**Error**: `dart format --set-exit-if-changed` fails in CI
```
Changed lib/src/some_file.dart
Formatted N files (M changed) in X.XX seconds.
Process completed with exit code 1.
```

**Solution**:
```bash
# Format all files
dart format .

# Commit the formatted files
git add -A
git commit -m "fix: apply dart format"
git push
```

### ❌ Analyzer Errors with `--fatal-infos`
**Error**: CI runs `dart analyze --fatal-infos` and treats info-level warnings as errors
```
info - lib/src/some_file.dart:42:10 - Some info message
8 issues found.
Process completed with exit code 1.
```

**Solution**:
1. **Fix the code** if it's a genuine issue
2. **Add to `analysis_options.yaml`** if it's acceptable:
```yaml
analyzer:
  errors:
    # Add the rule name here to ignore it
    some_rule_name: ignore
```

**Common rules to ignore**:
```yaml
analyzer:
  errors:
    # Allow throwing generic types (for Result<T,E> pattern)
    only_throw_errors: ignore
    # Allow positional bool parameters (for Query DSL)
    avoid_positional_boolean_parameters: ignore
    # Allow static-only classes (for utility classes)
    avoid_classes_with_only_static_members: ignore
```

### ❌ Code Generation Errors
**Error**: Missing `.g.dart` or `.freezed.dart` files
```
Error: Could not find .../*.g.dart
```

**Solution**:
```bash
# Clean and rebuild
dart run build_runner clean
dart run build_runner build --delete-conflicting-outputs

# For watch mode during development
dart run build_runner watch --delete-conflicting-outputs
```

## Development Errors

### ❌ Freezed Union Type Issues
**Error**: Method conflicts in Freezed union types
```
The return type of the method 'Result.map' doesn't match the return type of the overridden method
```

**Solution**: Rename your method to avoid conflicts with Freezed's generated methods (`map`, `when`, `maybeWhen`, etc.)
```dart
// ❌ Bad - conflicts with Freezed's map()
Result<U, E> map<U>(U Function(T) mapper) => ...

// ✅ Good - renamed to avoid conflict
Result<U, E> mapValue<U>(U Function(T) mapper) => ...
```

### ❌ Generic Type Throwing Error
**Error**: Can't throw a value of generic type
```
Can't throw a value of 'E' since it is neither dynamic nor non-nullable
```

**Solution**: Cast to Object when throwing
```dart
// ❌ Bad
T getOrThrow() => when(
  success: (value) => value,
  failure: (error) => throw error,  // Error!
);

// ✅ Good
T getOrThrow() => when(
  success: (value) => value,
  failure: (error) => throw error as Object,
);
```

### ❌ Late Initialization Error
**Error**: Field has already been initialized (for singleton patterns)
```
LateInitializationError: Field '_logger' has already been initialized.
```

**Solution**: Use nullable field instead of `late final`
```dart
// ❌ Bad - can only initialize once
late final Logger _logger;

// ✅ Good - can reinitialize
Logger? _logger;

void initialize() {
  _logger = Logger(...);  // Can set multiple times
}
```

### ❌ Control Body on New Line
**Error**: Statement should be on a separate line
```
info - lib/src/some_file.dart:42:10 - Statement should be on a separate line.
Try moving the statement to a new line. - always_put_control_body_on_new_line
```

**Solution**: Add newline after control statement
```dart
// ❌ Bad
if (condition) return;

// ✅ Good
if (condition) {
  return;
}
```

## Testing Errors

### ❌ Test Isolation Issues
**Error**: Tests fail due to shared state (e.g., singleton logger)
```
LateInitializationError in subsequent test runs
```

**Solution**: Reset state in `setUp()`
```dart
setUp(() {
  // Reset singleton or shared state before each test
  NotionLogger.instance.initialize(isDebugMode: false);
});
```

### ❌ Async Test Timeouts
**Error**: Test hangs or times out
```
Test timed out after 30 seconds
```

**Solution**:
1. Add explicit timeout to test
2. Ensure all async operations complete
```dart
test('my async test', () async {
  // ...
}, timeout: Timeout(Duration(seconds: 60)));
```

## Linting Best Practices

1. **Always run before committing**:
```bash
dart format .
dart analyze
dart test
```

2. **Use `dart fix --apply`** to auto-fix many issues:
```bash
dart fix --apply
```

3. **Check CI logs** for specific error details:
```bash
gh run view <run-id> --log-failed
```

## Code Generation Workflow

1. **After modifying Freezed models**:
```bash
dart run build_runner build --delete-conflicting-outputs
```

2. **Watch mode for active development**:
```bash
dart run build_runner watch --delete-conflicting-outputs
```

3. **Clean build if issues persist**:
```bash
dart run build_runner clean
dart run build_runner build --delete-conflicting-outputs
```

## Quick Fix Commands

```bash
# Fix all common issues at once
dart format . && dart fix --apply && dart test

# View recent CI failures
gh run list --limit 5

# View specific CI run logs
gh run view <run-id> --log-failed

# Clean everything and rebuild
dart pub get && dart run build_runner clean && dart run build_runner build --delete-conflicting-outputs
```
