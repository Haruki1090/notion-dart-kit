# Comment display name

The Comment Display Name object represents the author name that shows up for a comment. This overrides the default author name when specified.

## Request format (input)

### Object properties

[block:parameters]
{
  "data": {
    "h-0": "Parameter",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`type`",
    "0-1": "`string`  \n(enum)",
    "0-2": "Possible type values are:`\"integration\"`, `\"user\"`, or `\"custom\"`",
    "0-3": "`\"user\"`",
    "1-0": "`custom`",
    "1-1": "`object`",
    "1-2": "If the type is `\"custom\"`, include a custom object specifying the custom name  \n`\"custom\": {  \n   \"name\": <Custom Name>\t\n}`",
    "1-3": "`\"custom\": {\n   \"name\": \"Notion Bot\"\t\n}`"
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


- `"integration"`: name of the [integration](doc:getting-started)
- `"user"`: name of the user who authenticated the integration (only for [Public Integrations](https://developers.notion.com/docs/getting-started#internal-vs-public-integrations))
- `"custom"`: any custom name

Example of a Create Comment request with custom display name:

```json API request
{
  "parent": {
    "page_id": "d0a1ffaf-a4d8-4acf-a1ed-abae6e110418"
  },
  "rich_text": [
    {
      "text": {
        "content": "Thanks for checking us out!"
      }
    }
  ],
  "display_name": {
    "type": "custom",
    "custom": {
      "name": "Notion Bot"
    }
  }
}
```

## Response format (output)

### Object properties

The response of Comment APIs like [Create comment](ref:create-a-comment) contains `attachments` with the following fields:

| Field           | Type            | Description                                                       | Example value  |
| :-------------- | :-------------- | :---------------------------------------------------------------- | :------------- |
| `type`          | `string` (enum) | Possible type values are:`"integration"`, `"user"`, or `"custom"` | `"custom"`     |
| `resolved_name` | `string`        | The custom display name shown in a comment                        | `"Notion Bot"` |

<br />

```json API Response
{
  ...existing parameters omitted,
  "display_name": {
    "type": "custom",
    "resolved_name": "Notion Bot"
  }
}
```
