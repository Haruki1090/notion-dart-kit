# Page property items

## Overview

A `property_item` object describes the identifier, type, and value of a page property. It's returned from the [Retrieve a page property item](ref:retrieve-a-page-property)  API.

Generally, the details on this page are the same as those in [Page properties](ref:page-property-values), but with tweaks and additional information specific to the retrieve page property item endpoint, such as [value pagination](#paginated-property-values) .

## Common fields

Each page property item object contains the following keys. In addition, it will contain a key corresponding with the value of `type`. The value is an object containing type-specific data. The type-specific data are described in the sections below.

[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`object`",
    "0-1": "`\"property_item\"`",
    "0-2": "Always `\"property_item\"`.",
    "0-3": "`\"property_item\"`",
    "1-0": "`id`",
    "1-1": "`string`",
    "1-2": "Underlying identifier for the property. This identifier is guaranteed to remain constant when the property name changes. It may be a UUID, but is often a short random string.  \n  \nThe `id` may be used in place of `name` when creating or updating pages.",
    "1-3": "`\"f%5C%5C%3Ap\"`",
    "2-0": "`type`",
    "2-1": "`string` (enum)",
    "2-2": "Type of the property. Possible values are `\"rich_text\"`, `\"number\"`, `\"select\"`, `\"multi_select\"`, `\"date\"`, `\"formula\"`, `\"relation\"`, `\"rollup\"`, `\"title\"`, `\"people\"`, `\"files\"`, `\"checkbox\"`, `\"url\"`, `\"email\"`, `\"phone_number\"`, `\"created_time\"`, `\"created_by\"`, `\"last_edited_time\"`, and `\"last_edited_by\"`.",
    "2-3": "`\"rich_text\"`"
  },
  "cols": 4,
  "rows": 3,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


## Paginated values

The [`title`, `rich_text`, `relation` and `people`](https://developers.notion.com/reference/retrieve-a-page-property#paginated-properties) property items of are returned as a paginated `list` object of individual `property_item` objects in the results. An abridged set of the the properties found in the `list` object are found below; see the [Pagination](ref:pagination) documentation for additional information. 

| Property        | Type               | Description                                                   | Example value                                                                                                                      |
| :-------------- | :----------------- | :------------------------------------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------- |
| `object`        | `"list"`           | Always `"list"`.                                              | `"list"`                                                                                                                           |
| `type`          | `"property_item"`  | Always `"property_item"`.                                     | `"property_item"`                                                                                                                  |
| `results`       | `list`             | List of `property_item` objects.                              | `[{"object": "property_item", "id": "vYdV", "type": "relation", "relation": { "id": "535c3fb2-95e6-4b37-a696-036e5eac5cf6"}}... ]` |
| `property_item` | `object`           | A `property_item` object that describes the property.         | `{"id": "title", "next_url": null, "type": "title", "title": {}}`                                                                  |
| `next_url`      | `string` or `null` | The URL the user can request to get the next page of results. | `"http://api.notion.com/v1/pages/0e5235bf86aa4efb93aa772cce7eab71/properties/vYdV?start_cursor=LYxaUO&page_size=25"`               |

## Title

Title property value objects contain an array of [rich text objects](ref:rich-text) within the `title` property.

```json Title property value
{
  "Name": {
    "object": "list",
    "results": [
      {
        "object": "property_item",
        "id": "title",
        "type": "title",
        "title": {
          "type": "text",
          "text": {
            "content": "The title",
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
          "plain_text": "The title",
          "href": null
        }
      }
    ],
    "next_cursor": null,
    "has_more": false,
    "type": "property_item",
    "property_item": {
      "id": "title",
      "next_url": null,
      "type": "title",
      "title": {}
    }
  }
}
```

## Rich text

Rich text property value objects contain an array of [rich text objects](ref:rich-text) within the `rich_text` property.

```json Rich text property value
{
  "Details": {
    "object": "list",
    "results": [
      {
        "object": "property_item",
        "id": "NVv%5E",
        "type": "rich_text",
        "rich_text": {
          "type": "text",
          "text": {
            "content": "Some more text with ",
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
          "plain_text": "Some more text with ",
          "href": null
        }
      },
      {
        "object": "property_item",
        "id": "NVv%5E",
        "type": "rich_text",
        "rich_text": {
          "type": "text",
          "text": {
            "content": "fun formatting",
            "link": null
          },
          "annotations": {
            "bold": false,
            "italic": true,
            "strikethrough": false,
            "underline": false,
            "code": false,
            "color": "default"
          },
          "plain_text": "fun formatting",
          "href": null
        }
      }
    ],
    "next_cursor": null,
    "has_more": false,
    "type": "property_item",
    "property_item": {
      "id": "NVv^",
      "next_url": null,
      "type": "rich_text",
      "rich_text": {}
    }
  }
}
```

## Number

Number property value objects contain a number within the `number` property.

```json Number property value
{
  "Quantity": {
    "object": "property_item",
    "id": "XpXf",
    "type": "number",
    "number": 1234
  }
}
```

## Select

Select property value objects contain the following data within the `select` property:

[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`id`",
    "0-1": "`string` (UUIDv4)",
    "0-2": "ID of the option.  \n  \nWhen updating a select property, you can use either `name` or `id`.",
    "0-3": "`\"b3d773ca-b2c9-47d8-ae98-3c2ce3b2bffb\"`",
    "1-0": "`name`",
    "1-1": "`string`",
    "1-2": "Name of the option as it appears in Notion.  \n  \nIf the select [database property](https://developers.notion.com/reference/property-object) does not yet have an option by that name, it will be added to the database schema if the integration also has write access to the parent database.  \n  \nNote: Commas (\",\") are not valid for select values.",
    "1-3": "`\"Fruit\"`",
    "2-0": "`color`",
    "2-1": "`string` (enum)",
    "2-2": "Color of the option. Possible values are: `\"default\"`, `\"gray\"`, `\"brown\"`, `\"red\"`, `\"orange\"`, `\"yellow\"`, `\"green\"`, `\"blue\"`, `\"purple\"`, `\"pink\"`. Defaults to `\"default\"`.  \n  \nNot currently editable.",
    "2-3": "`\"red\"`"
  },
  "cols": 4,
  "rows": 3,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Select property value
{
  "Option": {
    "object": "property_item",
    "id": "%7CtzR",
    "type": "select",
    "select": {
      "id": "64190ec9-e963-47cb-bc37-6a71d6b71206",
      "name": "Option 1",
      "color": "orange"
    }
  }
}
```

## Multi-select

Multi-select property value objects contain an array of multi-select option values within the `multi_select` property.

### Option values

[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`id`",
    "0-1": "`string` (UUIDv4)",
    "0-2": "ID of the option.  \n  \nWhen updating a multi-select property, you can use either `name` or `id`.",
    "0-3": "`\"b3d773ca-b2c9-47d8-ae98-3c2ce3b2bffb\"`",
    "1-0": "`name`",
    "1-1": "`string`",
    "1-2": "Name of the option as it appears in Notion.  \n  \nIf the multi-select [database property](https://developers.notion.com/reference/property-object) does not yet have an option by that name, it will be added to the database schema if the integration also has write access to the parent database.  \n  \nNote: Commas (\",\") are not valid for select values.",
    "1-3": "`\"Fruit\"`",
    "2-0": "`color`",
    "2-1": "`string` (enum)",
    "2-2": "Color of the option. Possible values are: `\"default\"`, `\"gray\"`, `\"brown\"`, `\"red\"`, `\"orange\"`, `\"yellow\"`, `\"green\"`, `\"blue\"`, `\"purple\"`, `\"pink\"`. Defaults to `\"default\"`.  \n  \nNot currently editable.",
    "2-3": "`\"red\"`"
  },
  "cols": 4,
  "rows": 3,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Multi-select property value
{
  "Tags": {
    "object": "property_item",
    "id": "z%7D%5C%3C",
    "type": "multi_select",
    "multi_select": [
      {
        "id": "91e6959e-7690-4f55-b8dd-d3da9debac45",
        "name": "A",
        "color": "orange"
      },
      {
        "id": "2f998e2d-7b1c-485b-ba6b-5e6a815ec8f5",
        "name": "B",
        "color": "purple"
      }
    ]
  }
}
```

## Date

Date property value objects contain the following data within the `date` property:

[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`start`",
    "0-1": "string ([ISO 8601 date and time](https://en.wikipedia.org/wiki/ISO_8601))",
    "0-2": "An ISO 8601 format date, with optional time.",
    "0-3": "`\"2020-12-08T12:00:00Z\"`",
    "1-0": "`end`",
    "1-1": "string (optional, [ISO 8601 date and time](https://en.wikipedia.org/wiki/ISO_8601))",
    "1-2": "An ISO 8601 formatted date, with optional time. Represents the end of a date range.  \n  \nIf `null`, this property's date value is not a range.",
    "1-3": "`\"2020-12-08T12:00:00Z\"`",
    "2-0": "`time_zone`",
    "2-1": "string (optional, enum)",
    "2-2": "Time zone information for `start` and `end`. Possible values are extracted from the [IANA database](https://www.iana.org/time-zones) and they are based on the time zones from [Moment.js](https://momentjs.com/timezone/).  \n  \nWhen time zone is provided, `start` and `end` should not have any [UTC offset](https://en.wikipedia.org/wiki/UTC_offset). In addition, when time zone  is provided, `start` and `end` cannot be dates without time information.  \n  \nIf `null`, time zone information will be contained in [UTC offset](https://en.wikipedia.org/wiki/UTC_offset)s in `start` and `end`.",
    "2-3": "`\"America/Los_Angeles\"`"
  },
  "cols": 4,
  "rows": 3,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Date property value
{
  "Shipment Time": {
    "object": "property_item",
    "id": "i%3Ahj",
    "type": "date",
    "date": {
      "start": "2021-05-11T11:00:00.000-04:00",
      "end": null,
      "time_zone": null
    }
  }
}
```

## Formula

Formula property value objects represent the result of evaluating a formula described in the  
[database's properties](https://developers.notion.com/reference/property-object). These objects contain a `type` key and a key corresponding with the value of `type`. The value is an object containing type-specific data. The type-specific data are described in the sections below.

| Property | Type            | Description                                                                                            |
| :------- | :-------------- | :----------------------------------------------------------------------------------------------------- |
| `type`   | `string` (enum) | The type of the formula result. Possible values are `"string"`, `"number"`, `"boolean"`, and `"date"`. |

### String formula

String formula property values contain an optional string within the `string` property.

### Number formula

Number formula property values contain an optional number within the `number` property.

### Boolean formula

Boolean formula property values contain a boolean within the `boolean` property.

### Date formula

Date formula property values contain an optional [date property value](#date-property-values) within the `date` property.

```json Formula Property Value
{
  "Formula": {
    "object": "property_item",
    "id": "KpQq",
    "type": "formula",
    "formula": {
      "type": "number",
      "number": 1234
    }
  }
}
```

## Relation

Relation property value objects contain an array of `relation` property items with page references within the `relation` property. A page reference is an object with an `id` property which is a string value (UUIDv4) corresponding to a page ID in another database.

```json Relation property value
{
  "Project": {
    "object": "list",
    "results": [
      {
        "object": "property_item",
        "id": "vYdV",
        "type": "relation",
        "relation": {
          "id": "535c3fb2-95e6-4b37-a696-036e5eac5cf6"
        }
      }
    ],
    "next_cursor": null,
    "has_more": true,
    "type": "property_item",
    "property_item": {
      "id": "vYdV",
      "next_url": null,
      "type": "relation",
      "relation": {}
    }
  }
}
```

## Rollup

Rollup property value objects represent the result of evaluating a rollup described in the  
[data source's properties](ref:property-object). The property is returned as a `list` object of type `property_item` with a list of `relation` items used to computed the rollup under `results`. 

A `rollup` property item is also returned under the `property_type` key that describes the rollup aggregation and computed result. 

In order to avoid timeouts, if the rollup has a with a large number of aggregations or properties the endpoint returns a `next_cursor` value that is used to determinate the aggregation value _so far_ for the subset of relations that have been paginated through. 

Once `has_more` is `false`, then the final rollup value is returned.  See the [Pagination documentation](ref:pagination) for more information on pagination in the Notion API. 

Computing the values of following aggregations are _not_ supported. Instead the endpoint returns a list of `property_item` objects for the rollup:

- `show_unique` (Show unique values)
- `unique` (Count unique values)
- `median`(Median)

[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "0-0": "`type`",
    "0-1": "`string` (enum)",
    "0-2": "The type of rollup. Possible values are `\"number\"`, `\"date\"`, `\"array\"`, `\"unsupported\"` and `\"incomplete\"`.",
    "1-0": "`function`",
    "1-1": "`string` (enum)",
    "1-2": "Describes the aggregation used.  \nPossible values include: `count`,  `count_values`,  `empty`,  `not_empty`,  `unique`,  `show_unique`,  `percent_empty`,  `percent_not_empty`,  `sum`,  `average`,  `median`,  `min`,  `max`,  `range`,  `earliest_date`,  `latest_date`,  `date_range`,  `checked`,  `unchecked`,  `percent_checked`,  `percent_unchecked`,  `count_per_group`,  `percent_per_group`,  `show_original`"
  },
  "cols": 3,
  "rows": 2,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]


### Number rollup

Number rollup property values contain a number within the `number` property.

### Date rollup

Date rollup property values contain a [date property value](#date-property-values) within the `date` property.

### Array rollup

Array rollup property values contain an array of `property_item` objects within the `results` property. 

### Incomplete rollup

Rollups with an aggregation with more than one page of aggregated results will return a `rollup` object of type `"incomplete"`. To obtain the final value paginate through the next values in the rollup using the `next_cursor` or `next_url` property. 

```json Rollup Property Value
{
  "Rollup": {
    "object": "list",
    "results": [
      {
        "object": "property_item",
        "id": "vYdV",
        "type": "relation",
        "relation": {
          "id": "535c3fb2-95e6-4b37-a696-036e5eac5cf6"
        }
      }...
    ],	
    "next_cursor": "1QaTunT5",
    "has_more": true,
    "type": "property_item",
    "property_item": {
      "id": "y}~p",
      "next_url": "http://api.notion.com/v1/pages/0e5235bf86aa4efb93aa772cce7eab71/properties/y%7D~p?start_cursor=1QaTunT5&page_size=25",
      "type": "rollup",
      "rollup": {
        "function": "sum",
        "type": "incomplete",
        "incomplete": {}
      }
    }
  }
}
```

## People

People property value objects contain an array of [user objects](ref:user) within the `people` property.

```json People property value
{
  "Owners": {
    "object": "property_item",
    "id": "KpQq",
    "type": "people",
    "people": [
      {
        "object": "user",
        "id": "285e5768-3fdc-4742-ab9e-125f9050f3b8",
        "name": "Example Avo",
        "avatar_url": null,
        "type": "person",
        "person": {
          "email": "avo@example.com"
        }
      }
    ]
  }
}
```

## Files

File property value objects contain an array of file references within the `files` property. A file reference is an object with a [File Object](ref:file-object) and `name` property, with a string value corresponding to a filename of the original file upload (e.g. `"Whole_Earth_Catalog.jpg"`).

```json
{
  "Files": {
    "object": "property_item",
    "id": "KpQq",
    "type": "files",
    "files": [
      {
        "type": "external",
        "name": "Space Wallpaper",
        "external": "https://website.domain/images/space.png"
      }
    ]
  }
}
```

## Checkbox

Checkbox property value objects contain a boolean within the `checkbox` property.

```json Checkbox property value
{
  "Done?": {
    "object": "property_item",
    "id": "KpQq",
    "type": "checkbox",
    "checkbox": true
  }
}
```

## URL

URL property value objects contain a non-empty string within the `url` property. The string describes a web address (i.e. `"http://worrydream.com/EarlyHistoryOfSmalltalk/"`).

```json URL property value
{
  "Website": {
    "object": "property_item",
    "id": "KpQq",
    "type": "url",
    "url": "https://notion.so/notiondevs"
  }
}
```

## Email

Email property value objects contain a string within the `email` property. The string describes an email address (i.e. `"hello@example.org"`).

```json Email property value
{
  "Shipper's Contact": {
    "object": "property_item",
    "id": "KpQq",
    "type": "email",
    "email": "hello@test.com"
  }
}
```

## Phone number

Phone number property value objects contain a string within the `phone_number` property. No structure is enforced.

```json Phone number property value
{
  "Shipper's No.": {
    "object": "property_item",
    "id": "KpQq",
    "type": "phone_number",
    "phone_number": "415-000-1111"
  }
}
```

## Created time

Created time property value objects contain a string within the `created_time` property. The string contains the date and time when this page was created. It is formatted as an [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date time string (i.e. `"2020-03-17T19:10:04.968Z"`).

```json Created time property value
{
  "Created Time": {
    "object": "property_item",
    "id": "KpQq",
    "type": "create_time",
  	"created_time": "2020-03-17T19:10:04.968Z"
  }
}
```

## Created by

Created by property value objects contain a [user object](ref:user) within the `created_by` property. The user object describes the user who created this page.

```json Created by property value
{
  "Created By": {
    "created_by": {
      "object": "user",
      "id": "23345d4f-cf71-4a70-89a5-226c95a6eaae",
      "name": "Test User",
      "type": "person",
      "person": {
        "email": "avo@example.org"
      }
    }
  }
}
```
```json Created by property value (using ID)
{
  "dsEa": {
    "created_by": {
			"object": "user",
			"id": "71e95936-2737-4e11-b03d-f174f6f13087"
  	}
  }
}
```

## Last edited time

Last edited time property value objects contain a string within the `last_edited_time` property. The string contains the date and time when this page was last updated. It is formatted as an [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date time string (i.e. `"2020-03-17T19:10:04.968Z"`).

```json Last edited time property value
{
  "Last Edited Time": {
  	"last_edited_time": "2020-03-17T19:10:04.968Z"
  }
}
```
```json Last edited time property value (using ID)
{
  "as0w": {
  	"last_edited_time": "2020-03-17T19:10:04.968Z"
  }
}
```

## Last edited by

Last edited by property value objects contain a [user object](ref:user) within the `last_edited_by` property. The user object describes the user who last updated this page.

```json Last edited by property value
{
  "Last Edited By": {
    "last_edited_by": {
      "object": "user",
      "id": "23345d4f-cf71-4a70-89a5-226c95a6eaae",
      "name": "Test User",
      "type": "person",
      "person": {
        "email": "avo@example.org"
      }
    }
  }
}
```
```json Last edited by property value (using ID)
{
  "as12": {
    "last_edited_by": {
			"object": "user",
			"id": "71e95936-2737-4e11-b03d-f174f6f13087"
  	}
  }
}
```
