## Implementation options for Notion integration – code comparison

This document compares `notion-dart-kit` with a plain HTTP client (e.g., Dio) using side-by-side code. Pick the approach that best fits your use case.

### Targets
- notion-dart-kit (this library)
- Plain HTTP (Dio or similar)

---

### 1) Query a database with filters and sorts

notion-dart-kit

```dart
final client = NotionClient(token: 'YOUR_TOKEN');

final filter = Filter.and([
  Filter.property('Status').select.equals('In Progress'),
  Filter.property('Priority').number.greaterThan(3),
]);

final res = await client.databases.query(
  databaseId: 'db_id',
  filter: filter.toJson(),
  sorts: [Sort.createdTime.descending().toJson()],
);

for (final page in res.results) {
  print(page.id);
}
```

Plain HTTP (Dio)

```dart
final dio = Dio(BaseOptions(
  baseUrl: 'https://api.notion.com/v1',
  headers: {
    'Authorization': 'Bearer YOUR_TOKEN',
    'Notion-Version': '2022-06-28',
    'Content-Type': 'application/json',
  },
));

final body = {
  'filter': {
    'and': [
      {'property': 'Status', 'select': {'equals': 'In Progress'}},
      {'property': 'Priority', 'number': {'greater_than': 3}},
    ],
  },
  'sorts': [
    {'timestamp': 'created_time', 'direction': 'descending'},
  ],
};

final res = await dio.post('/databases/db_id/query', data: jsonEncode(body));
final results = res.data['results'] as List;
for (final page in results) {
  print(page['id']);
}
```

Key point: DSL avoids hand-writing JSON, provides type-safety and IDE completion.

---

### 2) Create a page (various property types)

notion-dart-kit

```dart
await client.pages.create(
  parent: Parent.database(databaseId: 'db_id').toJson(),
  properties: {
    'Title': PropertyValue.title([RichText.text(text: 'Task A')]).toJson(),
    'Priority': PropertyValue.number(5).toJson(),
    'Status': PropertyValue.select('In Progress').toJson(),
    'Due': PropertyValue.date(
      start: DateTime.now().add(const Duration(days: 3)),
    ).toJson(),
  },
);
```

Plain HTTP (Dio)

```dart
await dio.post('/pages', data: jsonEncode({
  'parent': {'database_id': 'db_id'},
  'properties': {
    'Title': {'title': [{'text': {'content': 'Task A'}}]},
    'Priority': {'number': 5},
    'Status': {'select': {'name': 'In Progress'}},
    'Due': {'date': {'start': DateTime.now().toUtc().toIso8601String()}},
  },
}));
```

Key point: You don’t need to craft Notion’s nested JSON by hand each time.

---

### 3) Rate limiting, retry, and exceptions

notion-dart-kit (built-in retries + exception hierarchy)

```dart
try {
  final page = await client.pages.retrieve('page_id');
} on RateLimitException catch (_) {
  // Exponential backoff handled internally. Optionally surface a UI hint.
} on NotionException catch (e) {
  // Handle 400/401/404/5xx precisely
}
```

Plain HTTP (simplified retry example)

```dart
Future<Response<T>> retry<T>(Future<Response<T>> Function() f) async {
  var attempts = 0;
  var delayMs = 500;
  while (true) {
    try {
      final r = await f();
      if (r.statusCode == 429) {
        final ra = int.tryParse(r.headers['retry-after']?.first ?? '') ?? 0;
        await Future.delayed(Duration(seconds: ra > 0 ? ra : (delayMs ~/ 1000)));
        delayMs = (delayMs * 2).clamp(500, 16000);
        attempts++;
        continue;
      }
      return r;
    } on DioException catch (e) {
      final transient = e.response?.statusCode == 429 ||
          e.type == DioExceptionType.connectionError;
      if (transient && attempts < 5) {
        await Future.delayed(Duration(milliseconds: delayMs));
        delayMs = (delayMs * 2).clamp(500, 16000);
        attempts++;
        continue;
      }
      rethrow;
    }
  }
}

// Usage
final response = await retry(() => dio.get('/pages/page_id'));
```

Key point: The library ships with rate-limit handling, retries and rich exceptions by default.

---

### 4) Summary table

| Aspect | notion-dart-kit | Plain HTTP |
|---|---|---|
| API coverage | Pages/DB/Blocks/Search/Users/Data Sources | Depends on your code |
| Type-safety/models | Freezed unions + `json_serializable` | Hand-rolled (error-prone) |
| Query DSL | Type-safe (no raw JSON) | All JSON by hand |
| Rate limiting/retry | Built-in (token bucket + backoff + Retry-After) | DIY |
| Exceptions/Result | Exception hierarchy + `Result<T,E>` | DIY |
| Logging | Sanitized detailed logs | DIY |
| Cost | Moderate learning, major long-term benefit | Low initial, higher maintenance |

---

### 5) When to choose which
- Production, long-term maintenance, team workflows: choose notion-dart-kit
- One-off scripts, quick PoC: plain HTTP can be fine (but handle 429/errors yourself)


