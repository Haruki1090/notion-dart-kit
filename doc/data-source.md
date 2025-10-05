# Data source

Learn more about Notion's data source object.

**Data sources** are the individual tables of data that live under a Notion database. [Pages](ref:page) are the items (or children) in a data source. [Page property values](ref:page#property-value-object) must conform to the [property objects](ref:property-object) laid out in the parent data source object.

[block:image]
{
  "images": [
    {
      "image": [
        "https://files.readme.io/6dc5c7eccb432e908290e2642c84579936d55ee79c6cd60a5b0807e70cdeb55a-image.png",
        null,
        "Diagram of the new Notion API data model: databases parent one or more data sources, each of which parents zero or more pages."
      ],
      "align": "center",
      "border": true,
      "caption": "Diagram of the new Notion API data model.  \nA database is a parent of one or more data sources, each of which parents zero or more pages.  \nPreviously, databases could only have one data source, so the concepts were combined in the API until 2025."
    }
  ]
}
[/block]


As of API version `2025-09-03`, there's a suite of APIs for managing data sources:

- [Create a data source](ref:create-a-data-source): add an additional data source for an existing [Database](ref:database)
- [Update a data source](ref:update-a-data-source): update attributes, such as the `properties`, of a data source
- [Retrieve a data source](ref:retrieve-a-data-source)
- [Query a data source](ref:query-a-data-source)

## Object fields

> 📘 
> 
> Properties marked with an asterisk (\*) are available to integrations with any capabilities. Other properties require read content capabilities in order to be returned from the Notion API. For more information on integration capabilities, see the [capabilities guide](ref:capabilities).

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`object`\\*",
    "0-1": "`string`",
    "0-2": "Always `\"data_source\"`.",
    "0-3": "`\"data_source\"`",
    "1-0": "`id`\\*",
    "1-1": "`string` (UUID)",
    "1-2": "Unique identifier for the data source.",
    "1-3": "`\"2f26ee68-df30-4251-aad4-8ddc420cba3d\"`",
    "2-0": "`properties`\\*",
    "2-1": "`object`",
    "2-2": "Schema of properties for the data source as they appear in Notion.  \n  \n`key` string  \nThe name of the property as it appears in Notion.  \n  \n`value` object  \nA [Property object](https://developers.notion.com/reference/property-object).",
    "2-3": "",
    "3-0": "`parent`",
    "3-1": "`object`",
    "3-2": "Information about the data source's parent database. See [Parent object](ref:parent-object).",
    "3-3": "`{\"type\": \"database_id\", \"database_id\": \"842a0286-cef0-46a8-abba-eac4c8ca644e\"}`",
    "4-0": "`database_parent`",
    "4-1": "`object`",
    "4-2": "Information about the database's parent (in other words, the the data source's grandparent). See [Parent object](ref:parent-object) .",
    "4-3": "`{ \"type\": \"page_id\", \"page_id\": \"af5f89b5-a8ff-4c56-a5e8-69797d11b9f8\" }`",
    "5-0": "`created_time`",
    "5-1": "`string` ([ISO 8601 date and time](https://en.wikipedia.org/wiki/ISO_8601))",
    "5-2": "Date and time when this data source was created. Formatted as an [ISO 8601 date time](https://en.wikipedia.org/wiki/ISO_8601) string.",
    "5-3": "`\"2020-03-17T19:10:04.968Z\"`",
    "6-0": "`created_by`",
    "6-1": "[Partial User](ref:user)",
    "6-2": "User who created the data source.",
    "6-3": "`{\"object\": \"user\", \"id\": \"45ee8d13-687b-47ce-a5ca-6e2e45548c4b\"}`",
    "7-0": "`last_edited_time`",
    "7-1": "`string` ([ISO 8601 date and time](https://en.wikipedia.org/wiki/ISO_8601))",
    "7-2": "Date and time when this data source was updated. Formatted as an [ISO 8601 date time](https://en.wikipedia.org/wiki/ISO_8601) string.",
    "7-3": "`\"2020-03-17T21:49:37.913Z\"`",
    "8-0": "`last_edited_by`",
    "8-1": "[Partial User](ref:user)",
    "8-2": "User who last edited the data source.",
    "8-3": "`{\"object\": \"user\",\"id\": \"45ee8d13-687b-47ce-a5ca-6e2e45548c4b\"}`",
    "9-0": "`title`",
    "9-1": "array of [rich text objects](ref:rich-text)",
    "9-2": "Name of the data source as it appears in Notion.  \nSee [rich text object](ref:rich-text)) for a breakdown of the properties.",
    "9-3": "`[  \n  {  \n    \"type\": \"text\",  \n    \"text\": {  \n      \"content\": \"Can I create a URL property\",  \n      \"link\": null  \n    },  \n    \"annotations\": {  \n      \"bold\": false,  \n      \"italic\": false,  \n      \"strikethrough\": false,  \n      \"underline\": false,  \n      \"code\": false,  \n      \"color\": \"default\"  \n    },  \n    \"plain_text\": \"Can I create a URL property\",  \n    \"href\": null  \n  }  \n]`",
    "10-0": "`description`",
    "10-1": "array of [rich text objects](ref:rich-text)",
    "10-2": "Description of the data source as it appears in Notion.  \nSee [rich text object](ref:rich-text)) for a breakdown of the properties.",
    "10-3": "",
    "11-0": "`icon`",
    "11-1": "[File Object](ref:file-object) or [Emoji object](ref:emoji-object)",
    "11-2": "Data source icon.",
    "11-3": "",
    "12-0": "`archived`",
    "12-1": "`boolean`",
    "12-2": "The archived status of the  data source.",
    "12-3": "`false`",
    "13-0": "`in_trash`",
    "13-1": "`boolean`",
    "13-2": "Whether the data source has been deleted.",
    "13-3": "`false`"
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


> 🚧 Maximum schema size recommendation
> 
> Notion recommends a maximum schema size of **50KB**. Updates to database schemas that are too large will be blocked to help maintain database performance.
