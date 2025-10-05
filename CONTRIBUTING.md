# Contributing to notion-dart-kit

Thank you for your interest in contributing to notion-dart-kit! This document provides guidelines and instructions for contributing.

## 🌟 Ways to Contribute

There are many ways to contribute to this project:

- 🐛 **Report bugs** - Submit detailed bug reports
- ✨ **Suggest features** - Propose new features or improvements
- 📝 **Improve documentation** - Fix typos, add examples, clarify explanations
- 🔧 **Submit code** - Fix bugs or implement new features
- 🧪 **Write tests** - Improve test coverage
- 💬 **Help others** - Answer questions in issues and discussions

## 🚀 Getting Started

### Prerequisites

- Dart SDK 3.0.0 or higher
- Git
- A GitHub account

### Setting Up Development Environment

1. **Fork the repository**

   Click the "Fork" button at the top right of the repository page.

2. **Clone your fork**

   ```bash
   git clone https://github.com/YOUR_USERNAME/notion-dart-kit.git
   cd notion-dart-kit
   ```

3. **Add upstream remote**

   ```bash
   git remote add upstream https://github.com/Haruki1090/notion-dart-kit.git
   ```

4. **Install dependencies**

   ```bash
   dart pub get
   ```

5. **Run code generation**

   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

6. **Run tests**

   ```bash
   dart test
   ```

## 📋 Development Workflow

### 1. Create a Branch

Create a new branch for your work:

```bash
git checkout -b feature/your-feature-name
# or
git checkout -b fix/your-bug-fix
```

Branch naming conventions:
- `feature/` - New features
- `fix/` - Bug fixes
- `docs/` - Documentation changes
- `refactor/` - Code refactoring
- `test/` - Test additions or modifications
- `chore/` - Maintenance tasks

### 2. Make Your Changes

- Write clean, readable code
- Follow the existing code style
- Add tests for new functionality
- Update documentation as needed
- Keep commits focused and atomic

### 3. Code Generation

If you modify models or add new ones, regenerate code:

```bash
dart run build_runner build --delete-conflicting-outputs
```

### 4. Run Tests

Ensure all tests pass:

```bash
# Run all tests
dart test

# Run specific test file
dart test test/pages_service_test.dart

# Run with coverage
dart pub global activate coverage
dart pub global run coverage:test_with_coverage
```

### 5. Check Code Quality

```bash
# Format code
dart format .

# Analyze code
dart analyze

# Check pub package
dart pub publish --dry-run
```

### 6. Commit Your Changes

Write clear, descriptive commit messages:

```bash
git add .
git commit -m "Add feature: brief description of the change"
```

Good commit message examples:
- `Add support for Comments API`
- `Fix rate limiting retry logic`
- `Update README with query examples`
- `Refactor database service for better type safety`

### 7. Push and Create Pull Request

```bash
git push origin your-branch-name
```

Then create a pull request on GitHub with:
- A clear title
- Detailed description of changes
- Reference to related issues (if any)
- Screenshots (if applicable)

## 🎨 Code Style Guidelines

### General Principles

- Follow the [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines
- Use meaningful variable and function names
- Keep functions small and focused
- Write self-documenting code
- Add comments for complex logic

### Specific Rules

1. **Use single quotes for strings**
   ```dart
   final message = 'Hello, world!';
   ```

2. **Use trailing commas for better formatting**
   ```dart
   final user = User(
     id: '123',
     name: 'John',
   );
   ```

3. **Use const constructors where possible**
   ```dart
   const SizedBox(height: 16);
   ```

4. **Prefer final for immutable variables**
   ```dart
   final client = NotionClient(token: token);
   ```

5. **Use named parameters for functions with multiple parameters**
   ```dart
   Future<Page> createPage({
     required Parent parent,
     required Map<String, dynamic> properties,
   }) async { ... }
   ```

6. **Add documentation comments for public APIs**
   ```dart
   /// Retrieves a page by its ID.
   ///
   /// [pageId] - The ID of the page to retrieve.
   ///
   /// Returns the Page object.
   /// Throws [NotionException] if the request fails.
   Future<Page> retrieve(String pageId) async { ... }
   ```

## 🧪 Testing Guidelines

### Test Structure

- Place unit tests in `test/unit/`
- Place integration tests in `test/integration/`
- Name test files with `_test.dart` suffix

### Writing Tests

```dart
import 'package:test/test.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';

void main() {
  group('PagesService', () {
    late NotionClient client;

    setUp(() {
      client = NotionClient(token: 'test_token');
    });

    tearDown(() {
      client.close();
    });

    test('retrieve should return a page', () async {
      // Arrange
      final pageId = 'test-page-id';

      // Act & Assert
      expect(
        () => client.pages.retrieve(pageId),
        throwsA(isA<NotionException>()),
      );
    });
  });
}
```

### Test Coverage

- Aim for >80% code coverage
- Test both success and error cases
- Test edge cases and boundary conditions
- Mock external dependencies

## 📖 Documentation Guidelines

### Code Documentation

- Add dartdoc comments for all public APIs
- Include parameter descriptions
- Document return values
- Mention exceptions that may be thrown
- Add usage examples when helpful

### README and Guides

- Keep examples practical and runnable
- Update README when adding new features
- Add code comments to explain complex examples
- Keep language clear and concise

## 🐛 Bug Reports

When reporting a bug, please include:

1. **Description** - Clear description of the issue
2. **Steps to Reproduce** - Minimal code to reproduce the issue
3. **Expected Behavior** - What you expected to happen
4. **Actual Behavior** - What actually happened
5. **Environment** - Dart version, OS, package version
6. **Stack Trace** - Full error message and stack trace

### Bug Report Template

```markdown
**Description**
A clear and concise description of the bug.

**To Reproduce**
Steps to reproduce the behavior:
1. Initialize client with '...'
2. Call method '...'
3. See error

**Expected behavior**
A clear description of what you expected to happen.

**Code Sample**
```dart
final client = NotionClient(token: 'xxx');
final page = await client.pages.retrieve('page_id');
```

**Environment**
- Dart version: [e.g., 3.2.0]
- Package version: [e.g., 0.1.0]
- OS: [e.g., macOS 14.0]

**Stack Trace**
```
Full error message and stack trace here
```
```

## ✨ Feature Requests

When requesting a feature, please include:

1. **Use Case** - Why is this feature needed?
2. **Proposed Solution** - How should it work?
3. **Alternatives** - What alternatives have you considered?
4. **Additional Context** - Any other relevant information

## 🔍 Pull Request Guidelines

### Before Submitting

- ✅ All tests pass
- ✅ Code is formatted (`dart format .`)
- ✅ No analyzer warnings (`dart analyze`)
- ✅ Documentation is updated
- ✅ CHANGELOG.md is updated (for notable changes)
- ✅ Commit messages are clear and descriptive

### PR Description Template

```markdown
## Description
Brief description of the changes.

## Related Issue
Fixes #123

## Type of Change
- [ ] Bug fix (non-breaking change that fixes an issue)
- [ ] New feature (non-breaking change that adds functionality)
- [ ] Breaking change (fix or feature that causes existing functionality to change)
- [ ] Documentation update

## Testing
Describe the tests you ran and how to reproduce them.

## Checklist
- [ ] My code follows the style guidelines
- [ ] I have performed a self-review
- [ ] I have commented my code, particularly in hard-to-understand areas
- [ ] I have updated the documentation
- [ ] My changes generate no new warnings
- [ ] I have added tests that prove my fix is effective or that my feature works
- [ ] New and existing unit tests pass locally
```

## 🏗️ Architecture Guidelines

### Project Structure

```
lib/
├── notion_dart_kit.dart        # Main export file
└── src/
    ├── client/                 # HTTP client and main client
    ├── models/                 # Data models
    ├── services/               # API service classes
    ├── query/                  # Query builders (future)
    └── utils/                  # Utilities and exceptions
```

### Adding a New Service

1. Create service file in `lib/src/services/`
2. Create corresponding model files if needed
3. Add service to `NotionClient` class
4. Export service in `lib/notion_dart_kit.dart`
5. Add tests in `test/`
6. Update documentation

### Adding a New Model

1. Create model file in `lib/src/models/`
2. Use Freezed for immutable classes
3. Add JSON serialization support
4. Run code generation
5. Export model in `lib/notion_dart_kit.dart`
6. Add tests
7. Update documentation

## 🤝 Code Review Process

1. **Automated checks** - CI must pass
2. **Maintainer review** - At least one maintainer approval required
3. **Community feedback** - Address review comments
4. **Final approval** - Maintainer merges the PR

## 📜 License

By contributing to notion-dart-kit, you agree that your contributions will be licensed under the MIT License.

## 💬 Getting Help

- **Issues** - For bug reports and feature requests
- **Discussions** - For questions and general discussion
- **Email** - For private inquiries

## 🙏 Thank You!

Thank you for contributing to notion-dart-kit! Your efforts help make this project better for everyone.

---

**Happy Coding! 🚀**
