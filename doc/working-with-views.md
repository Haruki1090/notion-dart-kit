# Views API (verified endpoint reference)

The official Notion developer docs for Views are not mirrored in this `doc/`
folder. This note records the endpoint shapes that `ViewsService`
(`lib/src/services/views_service.dart`) implements, verified against the
official JavaScript SDK
[`makenotion/notion-sdk-js`](https://github.com/makenotion/notion-sdk-js)
v5.12.0 (which targets API version `2026-03-11`),
`src/api-endpoints/views.ts`.

| Operation | Method | Path | Notes |
| --- | --- | --- | --- |
| List views | `GET` | `/v1/views` | Query params: `database_id` **or** `data_source_id` (exactly one), `start_cursor`, `page_size` |
| Retrieve view | `GET` | `/v1/views/{view_id}` | |
| Create view | `POST` | `/v1/views` | Body includes `data_source_id`, `name`, `type`, and one of `database_id` / `view_id` / `create_database` |
| Update view | `PATCH` | `/v1/views/{view_id}` | |
| Delete view | `DELETE` | `/v1/views/{view_id}` | |
| Create view query | `POST` | `/v1/views/{view_id}/queries` | Returns a cached query result page |
| Get view query results | `GET` | `/v1/views/{view_id}/queries/{query_id}` | Supports `start_cursor`, `page_size` |
| Delete view query | `DELETE` | `/v1/views/{view_id}/queries/{query_id}` | |

Notes:

- The official SDK does **not** define `duplicate` or `properties` endpoints
  for views (some third-party summaries incorrectly list them).
- View queries are a create/paginate/delete lifecycle (cached queries), not a
  single synchronous `POST /views/{id}/query`.

`test/views_service_test.dart` pins these method + path shapes to guard against
regressions.
