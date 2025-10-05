# Filter database entries

> ❗️ Deprecated as of version 2025-09-03
> 
> This page describes the API for versions up to and including `2022-06-28`. In the new `2025-09-03` version, the concepts of databases and data sources were split up, as described in [Upgrading to 2025-09-03](doc:upgrade-guide-2025-09-03).
> 
> Refer to the new page instead:
> 
> - [Filter data source entries](ref:filter-data-source-entries)

When you [query a database](https://developers.notion.com/reference/post-database-query), you can send a `filter` object in the body of the request that limits the returned entries based on the specified criteria. 

For example, the below query limits the response to entries where the `"Task completed"`  `checkbox` property value is `true`: 

```curl
curl -X POST 'https://api.notion.com/v1/databases/897e5a76ae524b489fdfe71f5945d1af/query' \
  -H 'Authorization: Bearer '"$NOTION_API_KEY"'' \
  -H 'Notion-Version: 2022-06-28' \
  -H "Content-Type: application/json" \
--data '{
  "filter": {
    "property": "Task completed",
    "checkbox": {
        "equals": true
   }
  }
}'
```

Here is the same query using the [Notion SDK for JavaScript](https://github.com/makenotion/notion-sdk-js):

```javascript
const { Client } = require('@notionhq/client');

const notion = new Client({ auth: process.env.NOTION_API_KEY });
// replace with your own database ID
const databaseId = 'd9824bdc-8445-4327-be8b-5b47500af6ce';

const filteredRows = async () => {
	const response = await notion.databases.query({
	  database_id: databaseId,
	  filter: {
	    property: "Task completed",
	    checkbox: {
	      equals: true
	    }
	  },
	});
  return response;
}

```

Filters can be chained with the `and` and `or` keys so that multiple filters are applied at the same time. (See [Query a database](https://developers.notion.com/reference/post-database-query) for additional examples.)

```json
{
  "and": [
    {
      "property": "Done",
      "checkbox": {
        "equals": true
      }
    }, 
    {
      "or": [
        {
          "property": "Tags",
          "contains": "A"
        },
        {
          "property": "Tags",
          "contains": "B"
        }
      ]
    }
  ]
}
```

If no filter is provided, all the pages in the database will be returned with pagination.

## The filter object

Each `filter` object contains the following fields: 

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`property`",
    "0-1": "`string`",
    "0-2": "The name of the property as it appears in the database, or the property ID.",
    "0-3": "`\"Task completed\"`",
    "1-0": "`checkbox`  \n`date`  \n`files`  \n`formula`  \n`multi_select`  \n`number`  \n`people`  \n`phone_number`  \n`relation`  \n`rich_text`  \n`select`  \n`status`  \n`timestamp`  \n`verification`  \n`ID`",
    "1-1": "`object`",
    "1-2": "The type-specific filter condition for the query. Only types listed in the Field column of this table are supported.  \n  \nRefer to [type-specific filter conditions](#type-specific-filter-conditions) for details on corresponding object values.",
    "1-3": "`\"checkbox\": {\n  \"equals\": true\n}`"
  },
  "cols": 4,
  "rows": 2,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example checkbox filter object
{
  "filter": {
    "property": "Task completed",
    "checkbox": {
      "equals": true
    }
  }
}
```

> 👍 
> 
> The filter object mimics the database [filter option in the Notion UI](https://www.notion.so/help/views-filters-and-sorts).

## Type-specific filter conditions

### Checkbox

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`equals`",
    "0-1": "`boolean`",
    "0-2": "Whether a `checkbox` property value matches the provided value exactly.  \n  \nReturns or excludes all database entries with an exact value match.",
    "0-3": "`false`",
    "1-0": "`does_not_equal`",
    "1-1": "`boolean`",
    "1-2": "Whether a `checkbox` property value differs from the provided value.  \n  \nReturns or excludes all database entries with a difference in values.",
    "1-3": "`true`"
  },
  "cols": 4,
  "rows": 2,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example checkbox filter condition
{
  "filter": {
    "property": "Task completed",
    "checkbox": {
      "does_not_equal": true
    }
  }
}
```

### Date

> 📘 
> 
> For the `after`, `before`, `equals, on_or_before`, and `on_or_after` fields, if a date string with a time is provided, then the comparison is done with millisecond precision.
> 
> If no timezone is provided, then the timezone defaults to UTC.

A date filter condition can be used to limit `date` property value types and the [timestamp](#timestamp) property types `created_time` and `last_edited_time`.

The condition contains the below fields:  

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`after`",
    "0-1": "`string` ([ISO 8601 date](https://en.wikipedia.org/wiki/ISO_8601))",
    "0-2": "The value to compare the date property value against.  \n  \nReturns database entries where the date property value is after the provided date.",
    "0-3": "`\"2021-05-10\"`  \n  \n`\"2021-05-10T12:00:00\"`  \n  \n`\"2021-10-15T12:00:00-07:00\"`",
    "1-0": "`before`",
    "1-1": "`string` ([ISO 8601 date](https://en.wikipedia.org/wiki/ISO_8601))",
    "1-2": "The value to compare the date property value against.  \n  \nReturns database entries where the date property value is before the provided date.",
    "1-3": "`\"2021-05-10\"`  \n  \n`\"2021-05-10T12:00:00\"`  \n  \n`\"2021-10-15T12:00:00-07:00\"`",
    "2-0": "`equals`",
    "2-1": "`string` ([ISO 8601 date](https://en.wikipedia.org/wiki/ISO_8601))",
    "2-2": "The value to compare the date property value against.  \n  \nReturns database entries where the date property value is the provided date.",
    "2-3": "`\"2021-05-10\"`  \n  \n`\"2021-05-10T12:00:00\"`  \n  \n`\"2021-10-15T12:00:00-07:00\"`",
    "3-0": "`is_empty`",
    "3-1": "`true`",
    "3-2": "The value to compare the date property value against.  \n  \nReturns database entries where the date property value contains no data.",
    "3-3": "`true`",
    "4-0": "`is_not_empty`",
    "4-1": "`true`",
    "4-2": "The value to compare the date property value against.  \n  \nReturns database entries where the date property value is not empty.",
    "4-3": "`true`",
    "5-0": "`next_month`",
    "5-1": "`object` (empty)",
    "5-2": "A filter that limits the results to database entries where the date property value is within the next month.",
    "5-3": "`{}`",
    "6-0": "`next_week`",
    "6-1": "`object` (empty)",
    "6-2": "A filter that limits the results to database entries where the date property value is within the next week.",
    "6-3": "`{}`",
    "7-0": "`next_year`",
    "7-1": "`object` (empty)",
    "7-2": "A filter that limits the results to database entries where the date property value is within the next year.",
    "7-3": "`{}`",
    "8-0": "`on_or_after`",
    "8-1": "`string` ([ISO 8601 date](https://en.wikipedia.org/wiki/ISO_8601))",
    "8-2": "The value to compare the date property value against.  \n  \nReturns database entries where the date property value is on or after the provided date.",
    "8-3": "`\"2021-05-10\"`  \n  \n`\"2021-05-10T12:00:00\"`  \n  \n`\"2021-10-15T12:00:00-07:00\"`",
    "9-0": "`on_or_before`",
    "9-1": "`string` ([ISO 8601 date](https://en.wikipedia.org/wiki/ISO_8601))",
    "9-2": "The value to compare the date property value against.  \n  \nReturns database entries where the date property value is on or before the provided date.",
    "9-3": "`\"2021-05-10\"`  \n  \n`\"2021-05-10T12:00:00\"`  \n  \n`\"2021-10-15T12:00:00-07:00\"`",
    "10-0": "`past_month`",
    "10-1": "`object` (empty)",
    "10-2": "A filter that limits the results to database entries where the `date` property value is within the past month.",
    "10-3": "`{}`",
    "11-0": "`past_week`",
    "11-1": "`object` (empty)",
    "11-2": "A filter that limits the results to database entries where the `date` property value is within the past week.",
    "11-3": "`{}`",
    "12-0": "`past_year`",
    "12-1": "`object` (empty)",
    "12-2": "A filter that limits the results to database entries where the `date` property value is within the past year.",
    "12-3": "`{}`",
    "13-0": "`this_week`",
    "13-1": "`object` (empty)",
    "13-2": "A filter that limits the results to database entries where the `date` property value is this week.",
    "13-3": "`{}`"
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


```json Example date filter condition
{
  "filter": {
    "property": "Due date",
    "date": {
      "on_or_after": "2023-02-08"
    }
  }
}
```

### Files

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`is_empty`",
    "0-1": "`true`",
    "0-2": "Whether the files property value does not contain any data.  \n  \nReturns all database entries with an empty `files` property value.",
    "0-3": "`true`",
    "1-0": "`is_not_empty`",
    "1-1": "`true`",
    "1-2": "Whether the `files` property value contains data.  \n  \nReturns all entries with a populated `files` property value.",
    "1-3": "`true`"
  },
  "cols": 4,
  "rows": 2,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example files filter condition
{
  "filter": {
    "property": "Blueprint",
    "files": {
      "is_not_empty": true
    }
  }
}
```

### Formula

The primary field of the `formula` filter condition object matches the type of the formula’s result. For example, to filter a formula property that computes a `checkbox`, use a `formula` filter condition object with a `checkbox` field containing a checkbox filter condition as its value.

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`checkbox`",
    "0-1": "`object`",
    "0-2": "A [checkbox](#checkbox) filter condition to compare the formula result against.  \n  \nReturns database entries where the formula result matches the provided condition.",
    "0-3": "Refer to the [checkbox](#checkbox) filter condition.",
    "1-0": "`date`",
    "1-1": "`object`",
    "1-2": "A [date](#date) filter condition to compare the formula result against.  \n  \nReturns database entries where the formula result matches the provided condition.",
    "1-3": "Refer to the [date](#date) filter condition.",
    "2-0": "`number`",
    "2-1": "`object`",
    "2-2": "A [number](#number) filter condition to compare the formula result against.  \n  \nReturns database entries where the formula result matches the provided condition.",
    "2-3": "Refer to the [number](#number) filter condition.",
    "3-0": "`string`",
    "3-1": "`object`",
    "3-2": "A [rich text](#rich-text) filter condition to compare the formula result against.  \n  \nReturns database entries where the formula result matches the provided condition.",
    "3-3": "Refer to the [rich text](#rich-text) filter condition."
  },
  "cols": 4,
  "rows": 4,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example formula filter condition
{
  "filter": {
    "property": "One month deadline",
    "formula": {
      "date":{
          "after": "2021-05-10"
      }
    }
  }
}
```

### Multi-select

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`contains`",
    "0-1": "`string`",
    "0-2": "The value to compare the multi-select property value against.  \n  \nReturns database entries where the multi-select value matches the provided string.",
    "0-3": "`\"Marketing\"`",
    "1-0": "`does_not_contain`",
    "1-1": "`string`",
    "1-2": "The value to compare the multi-select property value against.  \n  \nReturns database entries where the multi-select value does not match the provided string.",
    "1-3": "`\"Engineering\"`",
    "2-0": "`is_empty`",
    "2-1": "`true`",
    "2-2": "Whether the multi-select property value is empty.  \n  \nReturns database entries where the multi-select value does not contain any data.",
    "2-3": "`true`",
    "3-0": "`is_not_empty`",
    "3-1": "`true`",
    "3-2": "Whether the multi-select property value is not empty.  \n  \nReturns database entries where the multi-select value does contains data.",
    "3-3": "`true`"
  },
  "cols": 4,
  "rows": 4,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example multi-select filter condition
{
  "filter": {
    "property": "Programming language",
    "multi_select": {
      "contains": "TypeScript"
    }
  }
}
```

### Number

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`does_not_equal`",
    "0-1": "`number`",
    "0-2": "The `number` to compare the number property value against.  \n  \nReturns database entries where the number property value differs from the provided `number`.",
    "0-3": "`42`",
    "1-0": "`equals`",
    "1-1": "`number`",
    "1-2": "The `number` to compare the number property value against.  \n  \nReturns database entries where the number property value is the same as the provided number.",
    "1-3": "`42`",
    "2-0": "`greater_than`",
    "2-1": "`number`",
    "2-2": "The `number` to compare the number property value against.  \n  \nReturns database entries where the number property value exceeds the provided `number`.",
    "2-3": "`42`",
    "3-0": "`greater_than_or_equal_to`",
    "3-1": "`number`",
    "3-2": "The `number` to compare the number property value against.  \n  \nReturns database entries where the number property value is equal to or exceeds the provided `number`.",
    "3-3": "`42`",
    "4-0": "`is_empty`",
    "4-1": "`true`",
    "4-2": "Whether the `number` property value is empty.  \n  \nReturns database entries where the number property value does not contain any data.",
    "4-3": "`true`",
    "5-0": "`is_not_empty`",
    "5-1": "`true`",
    "5-2": "Whether the number property value is not empty.  \n  \nReturns database entries where the number property value contains data.",
    "5-3": "`true`",
    "6-0": "`less_than`",
    "6-1": "`number`",
    "6-2": "The `number` to compare the number property value against.  \n  \nReturns database entries where the number property value is less than the provided `number`.",
    "6-3": "`42`",
    "7-0": "`less_than_or_equal_to`",
    "7-1": "`number`",
    "7-2": "The `number` to compare the number property value against.  \n  \nReturns database entries where the number property value is equal to or is less than the provided `number`.",
    "7-3": "`42`"
  },
  "cols": 4,
  "rows": 8,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example number filter condition
{
  "filter": {
    "property": "Estimated working days",
    "number": {
      "less_than_or_equal_to": 5
    }
  }
}
```

### People

You can apply a people filter condition to `people`, `created_by`, and `last_edited_by` database property types. 

The people filter condition contains the following fields:

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`contains`",
    "0-1": "`string` (UUIDv4)",
    "0-2": "The value to compare the people property value against.  \n  \nReturns database entries where the people property value contains the provided `string`.",
    "0-3": "`\"6c574cee-ca68-41c8-86e0-1b9e992689fb\"`",
    "1-0": "`does_not_contain`",
    "1-1": "`string` (UUIDv4)",
    "1-2": "The value to compare the people property value against.  \n  \nReturns database entries where the people property value does not contain the provided `string`.",
    "1-3": "`\"6c574cee-ca68-41c8-86e0-1b9e992689fb\"`",
    "2-0": "`is_empty`",
    "2-1": "`true`",
    "2-2": "Whether the people property value does not contain any data.  \n  \nReturns database entries where the people property value does not contain any data.",
    "2-3": "`true`",
    "3-0": "`is_not_empty`",
    "3-1": "`true`",
    "3-2": "Whether the people property value contains data.  \n  \nReturns database entries where the people property value is not empty.",
    "3-3": "`true`"
  },
  "cols": 4,
  "rows": 4,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example people filter condition
{
  "filter": {
    "property": "Last edited by",
    "people": {
      "contains": "c2f20311-9e54-4d11-8c79-7398424ae41e"
    }
  }
}
```

### Relation

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`contains`",
    "0-1": "`string` (UUIDv4)",
    "0-2": "The value to compare the relation property value against.  \n  \nReturns database entries where the relation property value contains the provided `string`.",
    "0-3": "`\"6c574cee-ca68-41c8-86e0-1b9e992689fb\"`",
    "1-0": "`does_not_contain`",
    "1-1": "`string` (UUIDv4)",
    "1-2": "The value to compare the relation property value against.  \n  \nReturns entries where the relation property value does not contain the provided `string`.",
    "1-3": "`\"6c574cee-ca68-41c8-86e0-1b9e992689fb\"`",
    "2-0": "`is_empty`",
    "2-1": "`true`",
    "2-2": "Whether the relation property value does not contain data.  \n  \nReturns database entries where the relation property value does not contain any data.",
    "2-3": "`true`",
    "3-0": "`is_not_empty`",
    "3-1": "`true`",
    "3-2": "Whether the relation property value contains data.  \n  \nReturns database entries where the property value is not empty.",
    "3-3": "`true`"
  },
  "cols": 4,
  "rows": 4,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example relation filter condition
{
  "filter": {
    "property": "✔️ Task List",
    "relation": {
      "contains": "0c1f7cb280904f18924ed92965055e32"
    }
  }
}
```

### Rich text

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`contains`",
    "0-1": "`string`",
    "0-2": "The `string` to compare the text property value against.  \n  \nReturns database entries with a text property value that includes the provided `string`.",
    "0-3": "`\"Moved to Q2\"`",
    "1-0": "`does_not_contain`",
    "1-1": "`string`",
    "1-2": "The `string` to compare the text property value against.  \n  \nReturns database entries with a text property value that does not include the provided `string`.",
    "1-3": "`\"Moved to Q2\"`",
    "2-0": "`does_not_equal`",
    "2-1": "`string`",
    "2-2": "The `string` to compare the text property value against.  \n  \nReturns database entries with a text property value that does not match the provided `string`.",
    "2-3": "`\"Moved to Q2\"`",
    "3-0": "`ends_with`",
    "3-1": "`string`",
    "3-2": "The `string` to compare the text property value against.  \n  \nReturns database entries with a text property value that ends with the provided `string`.",
    "3-3": "`\"Q2\"`",
    "4-0": "`equals`",
    "4-1": "`string`",
    "4-2": "The `string` to compare the text property value against.  \n  \nReturns database entries with a text property value that matches the provided `string`.",
    "4-3": "`\"Moved to Q2\"`",
    "5-0": "`is_empty`",
    "5-1": "`true`",
    "5-2": "Whether the text property value does not contain any data.  \n  \nReturns database entries with a text property value that is empty.",
    "5-3": "`true`",
    "6-0": "`is_not_empty`",
    "6-1": "`true`",
    "6-2": "Whether the text property value contains any data.  \n  \nReturns database entries with a text property value that contains data.",
    "6-3": "`true`",
    "7-0": "`starts_with`",
    "7-1": "`string`",
    "7-2": "The `string` to compare the text property value against.  \n  \nReturns database entries with a text property value that starts with the provided `string`.",
    "7-3": "\"Moved\""
  },
  "cols": 4,
  "rows": 8,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example rich text filter condition
{
  "filter": {
    "property": "Description",
    "rich_text": {
      "contains": "cross-team"
    }
  }
}
```

### Rollup

A rollup database property can evaluate to an array, date, or number value. The filter condition for the rollup property contains a `rollup` key and a corresponding object value that depends on the computed value type. 

#### Filter conditions for `array` rollup values

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`any`",
    "0-1": "`object`",
    "0-2": "The value to compare each rollup property value against. Can be a [filter condition](#type-specific-filter-conditions) for any other type.  \n  \nReturns database entries where the rollup property value matches the provided criteria.",
    "0-3": "`\"rich_text\": {\n\"contains\": \"Take Fig on a walk\"\n}`",
    "1-0": "`every`",
    "1-1": "`object`",
    "1-2": "The value to compare each rollup property value against. Can be a [filter condition](#type-specific-filter-conditions) for any other type.  \n  \nReturns database entries where every rollup property value matches the provided criteria.",
    "1-3": "`\"rich_text\": {\n\"contains\": \"Take Fig on a walk\"\n}`",
    "2-0": "`none`",
    "2-1": "`object`",
    "2-2": "The value to compare each rollup property value against. Can be a [filter condition](#type-specific-filter-conditions) for any other type.  \n  \nReturns database entries where no rollup property value matches the provided criteria.",
    "2-3": "`\"rich_text\": {\n\"contains\": \"Take Fig on a walk\"\n}`"
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


```json Example array rollup filter condition
{
  "filter": {
    "property": "Related tasks",
    "rollup": {
      "any": {
        "rich_text": {
          "contains": "Migrate database"
        }
      }
    }
  }
}
```

#### Filter conditions for `date` rollup values

A rollup value is stored as a `date` only if the "Earliest date", "Latest date", or "Date range" computation is selected for the property in the Notion UI. 

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`date`",
    "0-1": "`object`",
    "0-2": "A [date](#date) filter condition to compare the rollup value against.  \n  \nReturns database entries where the rollup value matches the provided condition.",
    "0-3": "Refer to the [date](#date) filter condition."
  },
  "cols": 4,
  "rows": 1,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example date rollup filter condition
{
  "filter": {
    "property": "Parent project due date",
    "rollup": {
      "date": {
        "on_or_before": "2023-02-08"
      }
    }
  }
}
```

#### Filter conditions for `number` rollup values

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`number`",
    "0-1": "`object`",
    "0-2": "A [number](#number) filter condition to compare the rollup value against.  \n  \nReturns database entries where the rollup value matches the provided condition.",
    "0-3": "Refer to the [number](#number) filter condition."
  },
  "cols": 4,
  "rows": 1,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example number rollup filter condition
{
  "filter": {
    "property": "Total estimated working days",
    "rollup": {
      "number": {
        "does_not_equal": 42
      }
    }
  }
}
```

### Select

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`equals`",
    "0-1": "`string`",
    "0-2": "The `string` to compare the select property value against.  \n  \nReturns database entries where the select property value matches the provided string.",
    "0-3": "`\"This week\"`",
    "1-0": "`does_not_equal`",
    "1-1": "`string`",
    "1-2": "The `string` to compare the select property value against.  \n  \nReturns database entries where the select property value does not match the provided `string`.",
    "1-3": "`\"Backlog\"`",
    "2-0": "`is_empty`",
    "2-1": "`true`",
    "2-2": "Whether the select property value does not contain data.  \n  \nReturns database entries where the select property value is empty.",
    "2-3": "`true`",
    "3-0": "`is_not_empty`",
    "3-1": "`true`",
    "3-2": "Whether the select property value contains data.  \n  \nReturns database entries where the select property value is not empty.",
    "3-3": "`true`"
  },
  "cols": 4,
  "rows": 4,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example select filter condition
{
  "filter": {
    "property": "Frontend framework",
    "select": {
      "equals": "React"
    }
  }
}
```

### Status

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "equals",
    "0-1": "string",
    "0-2": "The string to compare the status property value against.  \n  \nReturns database entries where the status property value matches the provided string.",
    "0-3": "\"This week\"",
    "1-0": "does_not_equal",
    "1-1": "string",
    "1-2": "The string to compare the status property value against.  \n  \nReturns database entries where the status property value does not match the provided string.",
    "1-3": "\"Backlog\"",
    "2-0": "is_empty",
    "2-1": "true",
    "2-2": "Whether the status property value does not contain data.  \n  \nReturns database entries where the status property value is empty.",
    "2-3": "true",
    "3-0": "is_not_empty",
    "3-1": "true",
    "3-2": "Whether the status property value contains data.  \n  \nReturns database entries where the status property value is not empty.",
    "3-3": "true"
  },
  "cols": 4,
  "rows": 4,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example status filter condition
{
  "filter": {
    "property": "Project status",
    "status": {
      "equals": "Not started"
    }
  }
}
```

### Timestamp

Use a timestamp filter condition to filter results based on `created_time` or `last_edited_time` values. 

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "timestamp",
    "0-1": "created_time last_edited_time",
    "0-2": "A constant string representing the type of timestamp to use as a filter.",
    "0-3": "\"created_time\"",
    "1-0": "created_time  \nlast_edited_time",
    "1-1": "object",
    "1-2": "A date filter condition used to filter the specified timestamp.",
    "1-3": "Refer to the [date](#date) filter condition."
  },
  "cols": 4,
  "rows": 2,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example timestamp filter condition for created_time
{
  "filter": {
    "timestamp": "created_time",
    "created_time": {
      "on_or_before": "2022-10-13"
    }
  }
}
```

> 🚧 
> 
> The `timestamp` filter condition does not require a property name. The API throws an error if you provide one.

### Verification

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "status",
    "0-1": "string",
    "0-2": "The verification status being queried. Valid options are: `verified`, `expired`, `none`  \n  \nReturns database entries where the current verification status matches the queried status.",
    "0-3": "\"verified\""
  },
  "cols": 4,
  "rows": 1,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example verification filter condition for getting verified pages
{
  "filter": {
    "property": "verification",
    "verification": {
      "status": "verified"
    }
  }
}
```

### ID

Use a timestamp filter condition to filter results based on the `unique_id` value.

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`does_not_equal`",
    "0-1": "`number`",
    "0-2": "The value to compare the unique_id property value against.  \n  \nReturns database entries where the unique_id property value differs from the provided value.",
    "0-3": "`42`",
    "1-0": "`equals`",
    "1-1": "`number`",
    "1-2": "The value to compare the unique_id property value against.  \n  \nReturns database entries where the unique_id property value is the same as the provided value.",
    "1-3": "`42`",
    "2-0": "`greater_than`",
    "2-1": "`number`",
    "2-2": "The value to compare the unique_id property value against.  \n  \nReturns database entries where the unique_id property value exceeds the provided value.",
    "2-3": "`42`",
    "3-0": "`greater_than_or_equal_to`",
    "3-1": "`number`",
    "3-2": "The value to compare the unique_id property value against.  \n  \nReturns database entries where the unique_id property value is equal to or exceeds the provided value.",
    "3-3": "`42`",
    "4-0": "`less_than`",
    "4-1": "`number`",
    "4-2": "The value to compare the unique_id property value against.  \n  \nReturns database entries where the unique_id property value is less than the provided value.",
    "4-3": "`42`",
    "5-0": "`less_than_or_equal_to`",
    "5-1": "`number`",
    "5-2": "The value to compare the unique_id property value against.  \n  \nReturns database entries where the unique_id property value is equal to or is less than the provided value.",
    "5-3": "`42`"
  },
  "cols": 4,
  "rows": 6,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example ID filter condition
{
  "filter": {
    "and": [
      {
        "property": "ID",
        "unique_id": {
          "greater_than": 1
        }
      },
      {
        "property": "ID",
        "unique_id": {
          "less_than": 3
        }
      }
    ]
  }
}
```

## Compound filter conditions

You can use a compound filter condition to limit the results of a database query based on multiple conditions. This mimics filter chaining in the Notion UI. 

[block:image]
{
  "images": [
    {
      "image": [
        "https://files.readme.io/14ec7e8-Untitled.png",
        "Untitled.png",
        1340
      ],
      "align": "center",
      "caption": "An example filter chain in the Notion UI"
    }
  ]
}
[/block]


The above filters in the Notion UI are equivalent to the following compound filter condition via the API:

```json
{
  "and": [
    {
      "property": "Done",
      "checkbox": {
        "equals": true
      }
    }, 
    {
      "or": [
        {
          "property": "Tags",
          "contains": "A"
        },
        {
          "property": "Tags",
          "contains": "B"
        }
      ]
    }
  ]
}
```

A compound filter condition contains an `and` or `or` key with a value that is an array of filter objects or nested compound filter objects. Nesting is supported up to two levels deep. 

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`and`",
    "0-1": "`array`",
    "0-2": "An array of [filter](#type-specific-filter-conditions) objects or compound filter conditions.  \n  \nReturns database entries that match **all** of the provided filter conditions.",
    "0-3": "Refer to the examples below.",
    "1-0": "or",
    "1-1": "array",
    "1-2": "An array of [filter](#type-specific-filter-conditions) objects or compound filter conditions.  \n  \nReturns database entries that match **any** of the provided filter conditions",
    "1-3": "Refer to the examples below."
  },
  "cols": 4,
  "rows": 2,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


### Example compound filter conditions

```json Example compound filter condition for a checkbox and number property value
{
  "filter": {
    "and": [
      {
        "property": "Complete",
        "checkbox": {
          "equals": true
        }
      },
      {
        "property": "Working days",
        "number": {
          "greater_than": 10
        }
      }
    ]
  }
}
```

```json Example nested filter condition
{
  "filter": {
    "or": [
      {
        "property": "Description",
        "rich_text": {
          "contains": "2023"
        }
      },
      {
        "and": [
          {
            "property": "Department",
            "select": {
              "equals": "Engineering"
            }
          },
          {
            "property": "Priority goal",
            "checkbox": {
              "equals": true
            }
          }
        ]
      }
    ]
  }
}
```
