# Changes by version

[block:parameters]
{
  "data": {
    "h-0": "Version",
    "h-1": "Breaking changes",
    "0-0": "`2025-09-03`",
    "0-1": "`/v1/databases` APIs are re-organized into `/v1/data_sources` (for managing individual data sources under a database container) and `/v1/databases` (for managing the database container.)  \n  \nExisting database IDs stay the same, but a new concept of data source IDs is introduced, and required in order to manage data source properties, to support multi-source databases (new in the Notion app as of September 2025.)  \n  \nSee [changelog](page:changelog) and [Upgrading to 2025-09-03](doc:upgrade-guide-2025-09-03) guide for more details.",
    "1-0": "`2022-06-28`",
    "1-1": "Page properties must be retrieved using the page properties endpoint.  \n  \nParents are now always direct parents; a parent field has been added to block.  \n  \nDatabase relations have a type of `single_property` and `dual_property`.  \n  \nSee [changelog](https://developers.notion.com/changelog/releasing-notion-version-2022-06-28) for more details.",
    "2-0": "`2022-02-22`",
    "2-1": "See [changelog](https://developers.notion.com/changelog/releasing-notion-version-2022-02-22).",
    "3-0": "`2021-08-16`",
    "3-1": "The [Append block children](ref:patch-block-children) endpoint returns a list of new [Block object](ref:block) children instead of the parent block.  \n  \n Array rollup property types changed from `file`, `text` and `person` to `files`, `rich_text` and `people`.  \n  \nProperty IDs are now encoded to be URL safe.  \n  \nEmpty number, email, select, date, and rollup properties are now returned in page responses as `null`.  \n  \n[More information](changelog:notion-version-2021-08-16)",
    "4-0": "`2021-05-13`",
    "4-1": "Rich text property values use the type `rich_text` instead of `text`.  \n  \n[Migration details](changelog:unversioned-requests-no-longer-accepted)"
  },
  "cols": 2,
  "rows": 5,
  "align": [
    "left",
    "left"
  ]
}
[/block]
