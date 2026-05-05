# Notion API/MCP 最新差分調査メモ

調査日: 2026-05-05

対象:

- 公式ドキュメントインデックス: https://developers.notion.com/llms.txt
- Changelog: https://developers.notion.com/page/changelog.md
- 2026-03-11 upgrade guide: https://developers.notion.com/guides/get-started/upgrade-guide-2026-03-11.md
- Markdown content: https://developers.notion.com/guides/data-apis/working-with-markdown-content.md
- Views: https://developers.notion.com/guides/data-apis/working-with-views.md
- MCP supported tools: https://developers.notion.com/guides/mcp/mcp-supported-tools.md
- 参考: 公式MCP server README: https://github.com/makenotion/notion-mcp-server

## 結論

現状実装は `2025-09-03` の Data Sources 対応を一部取り込んでいるが、API version 管理は `2022-06-28` のままになっており、2026年の主要追加機能は未実装。優先度は「API version更新と破壊的変更対応」「Markdown content」「Views」「Comments更新系」「新ブロック/アイコン/絵文字」「Move page/Template拡張」の順が妥当。

「CLI」については、公式Developer docs内に独立した Notion CLI API は確認できなかった。一般公開されている公式の開発者向け実行面は Notion MCP と `@notionhq/notion-mcp-server` で、MCP tools が CLI/AI client から利用される位置づけ。Dart SDKとしてはCLI自体を実装対象にするより、MCP/agent向けに必要なREST APIカバレッジを先に埋めるのが合理的。

## 現状コードの主な差分

### P0: API version と 2026-03-11 破壊的変更

公式の最新API versionは `2026-03-11`。破壊的変更は `after` -> `position`、`archived` -> `in_trash`、`transcription` -> `meeting_notes`。

現状:

- `ApiVersion.latest` が `2022-06-28` のまま。`2025-09-03` / `2026-03-11` が未定義。
- `DataSourcesService.update` が `archived` を送信しているため、`2026-03-11` では不整合。
- `Block` モデルは `archived` を必須読取しており、`2026-03-11` レスポンスでは壊れる可能性が高い。
- `appendChildren` は位置指定APIを持たず、`position` に未対応。

実装方針:

- `ApiVersion` に `v2025_09_03`、`v2026_03_11` を追加し、default/latest を `2026-03-11` にするか、破壊的変更を考慮して default は段階的に決める。
- `archived` は後方互換フィールドとして nullable/optional に落とし、主フィールドを `inTrash` に寄せる。
- `DataSourcesService.update` は `inTrash` に変更し、必要なら deprecated `archived` alias を残す。
- `BlocksService.appendChildren` に `position` を追加する。
- `meeting_notes` blockを追加し、旧 `transcription` は後方互換で読む。

該当コード:

- `lib/src/utils/api_version.dart`
- `lib/src/models/block.dart`
- `lib/src/services/blocks_service.dart`
- `lib/src/services/data_sources_service.dart`

### P0: Markdown content API

公式では以下が追加済み。

- `POST /v1/pages` の `markdown` body parameter
- `GET /v1/pages/:page_id/markdown`
- `PATCH /v1/pages/:page_id/markdown`
- update command: `update_content` / `replace_content` 推奨、`insert_content` / `replace_content_range` は legacy
- `include_transcript` query parameter

現状:

- `PagesService.create` は `children` のみで `markdown` 未対応。
- `retrieveMarkdown` / `updateMarkdown` 相当のAPIがない。
- `PageMarkdown` response model がない。

実装方針:

- `PageMarkdown` modelを追加: `object`, `id`, `markdown`, `truncated`, `unknownBlockIds`。
- `PagesService.create` に `String? markdown` を追加し、`children` と同時指定を禁止。
- `PagesService.retrieveMarkdown(pageId, {includeTranscript})` を追加。
- `PagesService.updateMarkdown(pageId, MarkdownUpdateCommand command)` を追加。

該当コード:

- `lib/src/services/pages_service.dart`
- `lib/src/models/page.dart` または新規 `lib/src/models/page_markdown.dart`

### P1: Views API

公式では `/v1/views` API が追加済み。create/retrieve/update/delete/list/query の8エンドポイント、view typesは `table`, `board`, `calendar`, `timeline`, `gallery`, `list`, `form`, `chart`, `map`, `dashboard`。

現状:

- `ViewsService` / `View` model / `client.views` が存在しない。
- `llms.txt` とChangelog上ではMCP toolsにも `notion-create-view` / `notion-update-view` が追加済み。

実装方針:

- `lib/src/models/view.dart` と `lib/src/services/views_service.dart` を追加。
- 最初は raw configuration を許容する薄い型で create/list/retrieve/update/delete/query を実装し、型安全DSLは第2段階に分ける。
- view queryは create -> paginate -> delete のライフサイクルを持つため、`ViewQuery` / `ViewQueryResults` model を分ける。

### P1: Comments API更新

公式では 2026-04-17 に update/delete comment がGA、create/update comment は `markdown` body parameter対応。ただし comment markdown は inline formatting only。

現状:

- `CommentsService` は create/list/retrieve のみ。
- createは `richText` requiredで、`markdown` alternativeに未対応。
- update/deleteがない。

実装方針:

- `CommentsService.create` を `richText` または `markdown` の exactly one に変更。
- `update(commentId, {richText, markdown, attachments, displayName})` を追加。
- `delete(commentId)` を追加。

該当コード:

- `lib/src/services/comments_service.dart`
- `lib/src/models/comment.dart`

### P1: 新ブロック・アイコン・絵文字

公式追加:

- `heading_4`
- `tab`
- tab item paragraph の `icon`
- native Notion icon: `type: "icon"` with `name`, `color`
- `GET /v1/custom_emojis`
- `verification` property write support

現状:

- `Block` は `heading_1..3` までで `heading_4` / `tab` / `meeting_notes` がない。
- `PageIcon` / `Emoji` 周辺は要確認だが、native icon専用型と custom emojis service は未確認。
- `PropertyValue.verification` は read-only コメントで、write helper/型がない。

実装方針:

- `Block.heading4`、`Block.tab`、`Block.meetingNotes` を追加。
- `BlockContent` または block raw payloadで paragraph icon を保持。
- `Icon` modelを `emoji` / `external` / `file` / `custom_emoji` / `icon` に整理。
- `CustomEmojisService.list({name, startCursor, pageSize})` を追加。
- verification write用 builder/helper を追加。

### P1: Filters / pagination

公式追加:

- people filterで `"me"` を許容。
- date filterで `"today"`, `"tomorrow"`, `"yesterday"`, `"one_week_ago"`, `"one_week_from_now"`, `"one_month_ago"`, `"one_month_from_now"` を許容。
- select/status/multi_select の複数値条件対応。
- data source query / view query は最大10,000 results深度で `request_status` を返す。

現状:

- filter builderは `String` を受けるため相対dateや `"me"` は手書きなら通るが、専用ヘルパーがない。
- select/status/multi_select の配列条件ヘルパーがない。
- `PaginatedList` に `request_status` がない可能性が高い。

実装方針:

- `PeopleFilterBuilder.me()`、`DateFilterBuilder.today()` 等を追加。
- `select.equalsAny(List<String>)` 等のAPIを追加。
- `PaginatedList` に optional `requestStatus` を追加。

### P2: Move page / Template拡張

公式追加:

- `Move page` API
- create page の `position`
- create/update page の `template` object
- update page の `erase_content`
- template parameter 内の `timezone`

現状:

- `PagesService.create` は `templateId` という独自簡略パラメータのみ。
- `PagesService.update` に `template` / `erase_content` がない。
- `move` APIがない。

実装方針:

- `PageTemplateApply` modelを追加し、`templateId` だけでなく `template: {type, template_id, timezone}` に寄せる。
- `PagesService.move(pageId, parent)` を追加。
- `PagesService.create` に `position` を追加。
- `PagesService.update` に `template` / `eraseContent` を追加。

### P2: MCP / CLI観点

公式MCP supported toolsには `notion-search`, `notion-fetch`, `notion-create-pages`, `notion-update-page`, `notion-move-pages`, `notion-duplicate-page`, `notion-create-database`, `notion-update-data-source`, `notion-create-view`, `notion-update-view`, `notion-query-data-sources`, `notion-query-database-view`, comments/users/team系がある。

Dart SDK側の対応方針:

- MCP tool名を直接実装する必要はない。
- ただし agent/CLI利用でよく使う REST surface、特に markdown page content、views、move page、comments update/delete、custom emojis は優先度を上げる。
- 公式ローカルMCP serverは `@notionhq/notion-mcp-server` として公開されているが、Dart packageにCLIを含めるなら別package/別binaryとして設計した方がよい。

## 推奨実装順

1. API version基盤更新: `2025-09-03` / `2026-03-11` 追加、`archived` optional化、`in_trash` 主体化。
2. Blocks更新: `position`, `heading_4`, `tab`, `meeting_notes`, paragraph icon。
3. Markdown content API: create/retrieve/update markdownと model。
4. Comments更新: markdown body、update、delete。
5. Views API: thin raw model/serviceから開始。
6. Filters/Pagination: relative date、`me`、複数値、`request_status`。
7. Move page / template object / timezone / erase_content。
8. Custom emojis / native icon model整理。

## 実装時の注意

- `2026-03-11` に defaultを即変更すると既存テスト・既存利用者への破壊が大きい。まずは supported versionに追加し、明示指定で動く状態を作る方が安全。
- `Block` の `archived` 必須設計は最新APIでは危険。モデル生成済みファイルも更新が必要。
- Views configurationは巨大なので、初回は `Map<String, dynamic>` ベースにしてAPIカバレッジを優先する。
- Markdown APIは `children` と排他、comments markdownは inline only で page markdownとは仕様が違う。
