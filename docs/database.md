# Database

Learn more about Notion's database object.

A **database** is an object that contains one or more [data sources](ref:data-sources). Databases can either be displayed inline in the parent page (`is_inline: true`) or as a full page (`is_inline: false`). The properties (schema) of each data source under a database can be maintained independently, and each data source has its own set of rows (pages).

Individual data sources don't have permissions settings, so the set of Notion users and bots that have access to data source children is managed through **databases**.

Databases that exist at the workspace level must be full-page databases, not inline. For easier permission management, we typically recommend having at least one level of parent page in between a database and the top-level workspace root.

## Object fields

> 📘 Changed as of 2025-09-03
> 
> In September 2025, the [Data source](ref:data-source) object was introduced, and includes the `properties` that used to exist here at the database level.
> 
> [block:image]{"images":[{"image":["https://files.readme.io/6dc5c7eccb432e908290e2642c84579936d55ee79c6cd60a5b0807e70cdeb55a-image.png",null,"Diagram of the new Notion API data model: databases parent one or more data sources, each of which parents zero or more pages."],"align":"center","border":true,"caption":"Diagram of the new Notion API data model.  \nA database is a parent of one or more data sources, each of which parents zero or more pages.  \nPreviously, databases could only have one data source, so the concepts were combined in the API until 2025."}]}[/block]
> 
> After [upgrading your API](doc:upgrade-guide-2025-09-03) integration to `2025-09-03`, the new database object shape is displayed, including an array of child `data_sources` but **not** the data source `properties`.

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`object`",
    "0-1": "`string`",
    "0-2": "Always `\"database\"`.",
    "0-3": "`\"database\"`",
    "1-0": "`id`",
    "1-1": "`string` (UUID)",
    "1-2": "Unique identifier for the database.",
    "1-3": "`\"2f26ee68-df30-4251-aad4-8ddc420cba3d\"`",
    "2-0": "`data_sources`",
    "2-1": "array of data source objects",
    "2-2": "List of child data sources, each of which is a JSON object with an `id` and `name`.  \n  \nUse [Retrieve a data source](ref:retrieve-a-data-source) to get more details on the data source, including its `properties`.",
    "2-3": "`[{\"id\": \"c174b72c-d782-432f-8dc0-b647e1c96df6\", \"name\": \"Tasks data source\"}]`",
    "3-0": "`created_time`",
    "3-1": "`string` ([ISO 8601 date and time](https://en.wikipedia.org/wiki/ISO_8601))",
    "3-2": "Date and time when this database was created. Formatted as an [ISO 8601 date time](https://en.wikipedia.org/wiki/ISO_8601) string.",
    "3-3": "`\"2020-03-17T19:10:04.968Z\"`",
    "4-0": "`created_by`",
    "4-1": "[Partial User](ref:user)",
    "4-2": "User who created the database.",
    "4-3": "`{\"object\": \"user\",\"id\": \"45ee8d13-687b-47ce-a5ca-6e2e45548c4b\"}`",
    "5-0": "`last_edited_time`",
    "5-1": "`string` ([ISO 8601 date and time](https://en.wikipedia.org/wiki/ISO_8601))",
    "5-2": "Date and time when this database was updated. Formatted as an [ISO 8601 date time](https://en.wikipedia.org/wiki/ISO_8601) string.",
    "5-3": "`\"2020-03-17T21:49:37.913Z\"`",
    "6-0": "`last_edited_by`",
    "6-1": "[Partial User](ref:user)",
    "6-2": "User who last edited the database.",
    "6-3": "`{\"object\": \"user\",\"id\": \"45ee8d13-687b-47ce-a5ca-6e2e45548c4b\"}`",
    "7-0": "`title`",
    "7-1": "array of [rich text objects](ref:rich-text)",
    "7-2": "Name of the database as it appears in Notion.  \nSee [rich text object](ref:rich-text)) for a breakdown of the properties.",
    "7-3": "`\"title\": [\n        {\n            \"type\": \"text\",\n            \"text\": {\n                \"content\": \"Can I create a URL property\",\n                \"link\": null\n            },\n            \"annotations\": {\n                \"bold\": false,\n                \"italic\": false,\n                \"strikethrough\": false,\n                \"underline\": false,\n                \"code\": false,\n                \"color\": \"default\"\n            },\n            \"plain_text\": \"Can I create a URL property\",\n            \"href\": null\n        }\n    ]`",
    "8-0": "`description`",
    "8-1": "array of [rich text objects](ref:rich-text)",
    "8-2": "Description of the database as it appears in Notion.  \nSee [rich text object](ref:rich-text)) for a breakdown of the properties.",
    "8-3": "",
    "9-0": "`icon`",
    "9-1": "[File Object](ref:file-object) or [Emoji object](ref:emoji-object)",
    "9-2": "Page icon.",
    "9-3": "",
    "10-0": "`cover`",
    "10-1": "[File object](ref:file-object) ",
    "10-2": "Page cover image.",
    "10-3": "",
    "11-0": "`parent`",
    "11-1": "`object`",
    "11-2": "Information about the database's parent. See [Parent object](ref:parent-object).",
    "11-3": "`{ \"type\": \"page_id\", \"page_id\": \"af5f89b5-a8ff-4c56-a5e8-69797d11b9f8\" }`",
    "12-0": "`url`",
    "12-1": "`string`",
    "12-2": "The URL of the Notion database.",
    "12-3": "`\"https://www.notion.so/668d797c76fa49349b05ad288df2d136\"`",
    "13-0": "`archived`",
    "13-1": "`boolean`",
    "13-2": "The archived status of the  database.",
    "13-3": "`false`",
    "14-0": "`in_trash`",
    "14-1": "`boolean`",
    "14-2": "Whether the database has been deleted.",
    "14-3": "`false`",
    "15-0": "`is_inline`",
    "15-1": "`boolean`",
    "15-2": "Has the value `true` if the database appears in the page as an inline block. Otherwise has the value `false` if the database appears as a child page.",
    "15-3": "`false`",
    "16-0": "`public_url`",
    "16-1": "`string`",
    "16-2": "The public page URL if the page has been published to the web. Otherwise, `null`.",
    "16-3": "`\"https://jm-testing.notion.site/p1-6df2c07bfc6b4c46815ad205d132e22d\"1`"
  },
  "cols": 4,
  "rows": 17,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]
