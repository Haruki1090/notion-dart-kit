# Page

The Page object contains the [page property values](https://developers.notion.com/reference/page-property-values) of a single Notion page.

```json Example page object
{
    "object": "page",
    "id": "be633bf1-dfa0-436d-b259-571129a590e5",
    "created_time": "2022-10-24T22:54:00.000Z",
    "last_edited_time": "2023-03-08T18:25:00.000Z",
    "created_by": {
        "object": "user",
        "id": "c2f20311-9e54-4d11-8c79-7398424ae41e"
    },
    "last_edited_by": {
        "object": "user",
        "id": "9188c6a5-7381-452f-b3dc-d4865aa89bdf"
    },
    "cover": null,
    "icon": {
        "type": "emoji",
        "emoji": "🐞"
    },
    "parent": {
        "type": "data_source_id",
        "data_source_id": "a1d8501e-1ac1-43e9-a6bd-ea9fe6c8822b"
    },
    "archived": true,
    "in_trash": true,
    "properties": {
        "Due date": {
            "id": "M%3BBw",
            "type": "date",
            "date": {
                "start": "2023-02-23",
                "end": null,
                "time_zone": null
            }
        },
        "Status": {
            "id": "Z%3ClH",
            "type": "status",
            "status": {
                "id": "86ddb6ec-0627-47f8-800d-b65afd28be13",
                "name": "Not started",
                "color": "default"
            }
        },
        "Title": {
            "id": "title",
            "type": "title",
            "title": [
                {
                    "type": "text",
                    "text": {
                        "content": "Bug bash",
                        "link": null
                    },
                    "annotations": {
                        "bold": false,
                        "italic": false,
                        "strikethrough": false,
                        "underline": false,
                        "code": false,
                        "color": "default"
                    },
                    "plain_text": "Bug bash",
                    "href": null
                }
            ]
        }
    },
    "url": "https://www.notion.so/Bug-bash-be633bf1dfa0436db259571129a590e5",
		"public_url": "https://jm-testing.notion.site/p1-6df2c07bfc6b4c46815ad205d132e22d"
}
```

All pages have a [Parent](ref:parent-object). If the parent is a [data source](ref:data-source), the property values conform to the schema laid out in the data source's [properties](ref:property-object). Otherwise, the only property value is the `title`.

Page content is available as [blocks](ref:block). The content can be read using [retrieve block children](ref:get-block-children) and appended using [append block children](ref:patch-block-children).

## Page object properties

> 📘 
> 
> Properties marked with an \* are available to integrations with any capabilities. Other properties require read content capabilities in order to be returned from the Notion API. For more information on integration capabilities, see the [capabilities guide](ref:capabilities).

[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`object`\\*",
    "0-1": "`string`",
    "0-2": "Always `\"page\"`.",
    "0-3": "`\"page\"`",
    "1-0": "`id`\\*",
    "1-1": "`string` (UUIDv4)",
    "1-2": "Unique identifier of the page.",
    "1-3": "`\"45ee8d13-687b-47ce-a5ca-6e2e45548c4b\"`",
    "2-0": "`created_time`",
    "2-1": "`string` ([ISO 8601 date and time](https://en.wikipedia.org/wiki/ISO_8601))",
    "2-2": "Date and time when this page was created. Formatted as an [ISO 8601 date time](https://en.wikipedia.org/wiki/ISO_8601) string.",
    "2-3": "`\"2020-03-17T19:10:04.968Z\"`",
    "3-0": "`created_by`",
    "3-1": "[Partial User](ref:user)",
    "3-2": "User who created the page.",
    "3-3": "`{\"object\": \"user\",\"id\": \"45ee8d13-687b-47ce-a5ca-6e2e45548c4b\"}`",
    "4-0": "`last_edited_time`",
    "4-1": "`string` ([ISO 8601 date and time](https://en.wikipedia.org/wiki/ISO_8601))",
    "4-2": "Date and time when this page was updated. Formatted as an [ISO 8601 date time](https://en.wikipedia.org/wiki/ISO_8601) string.",
    "4-3": "`\"2020-03-17T19:10:04.968Z\"`",
    "5-0": "`last_edited_by`",
    "5-1": "[Partial User](ref:user)",
    "5-2": "User who last edited the page.",
    "5-3": "`{\"object\": \"user\",\"id\": \"45ee8d13-687b-47ce-a5ca-6e2e45548c4b\"}`",
    "6-0": "`archived`",
    "6-1": "`boolean`",
    "6-2": "The archived status of the page.",
    "6-3": "`false`",
    "7-0": "`in_trash`",
    "7-1": "`boolean`",
    "7-2": "Whether the page is in Trash. ",
    "7-3": "`false`",
    "8-0": "`icon`",
    "8-1": "[File Object](ref:file-object) (`type` of `\"external\"` or `\"file_upload\"` are supported) or [Emoji object](ref:emoji-object)",
    "8-2": "Page icon.",
    "8-3": "",
    "9-0": "`cover`",
    "9-1": "[File object](ref:file-object) (`type` of `\"external\"` or `\"file_upload\"` are supported)",
    "9-2": "Page cover image.",
    "9-3": "",
    "10-0": "`properties`",
    "10-1": "`object`",
    "10-2": "Property values of this page. As of version `2022-06-28`, `properties` only contains the ID of the property; in prior versions `properties` contained the values as well.  \n  \nIf `parent.type` is `\"page_id\"` or `\"workspace\"`, then the only valid key is `title`.  \n  \nIf `parent.type` is `\"data_source_id\"`, then the keys and values of this field are determined by the [`properties`](https://developers.notion.com/reference/property-object)  of the [data source](ref:data-source) this page belongs to.  \n  \n`key` string  \nName of a property as it appears in Notion.  \n  \n`value` object  \nSee [Property value object](https://developers.notion.com/reference/property-value-object).",
    "10-3": "`{ \"id\": \"A%40Hk\" }`",
    "11-0": "`parent`",
    "11-1": "`object`",
    "11-2": "Information about the page's parent. See [Parent object](ref:parent-object).",
    "11-3": "`{ \"type\": \"data_source_id\", \"data_source_id\": \"d9824bdc-8445-4327-be8b-5b47500af6ce\" }`",
    "12-0": "`url`",
    "12-1": "`string`",
    "12-2": "The URL of the Notion page.",
    "12-3": "`\"https://www.notion.so/Avocado-d093f1d200464ce78b36e58a3f0d8043\"`",
    "13-0": "`public_url`",
    "13-1": "`string`",
    "13-2": "The public page URL if the page has been published to the web. Otherwise, `null`.",
    "13-3": "`\"https://jm-testing.notion.site/p1-6df2c07bfc6b4c46815ad205d132e22d\"1`"
  },
  "cols": 4,
  "rows": 14,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]
