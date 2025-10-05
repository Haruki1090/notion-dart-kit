# Retrieve a page property item

Retrieves a `property_item` object for a given `page_id` and `property_id`.  Depending on the property type, the object returned will either be a value or a [paginated](ref:pagination) list of property item values. See [Property item objects](https://developers.notion.com/reference/property-item-object) for specifics. 

To obtain `property_id`'s, use the [Retrieve a database](ref:retrieve-a-database) endpoint. 

In cases where a property item has more than 25 references, this endpoint should be used, rather than [Retrieve a page](https://developers.notion.com/reference/retrieve-a-page). ([Retrieve a page ](https://developers.notion.com/reference/retrieve-a-page) will not return a complete list when the list exceeds 25 references.)

## Property Item Objects

For more detailed information refer to the [Property item object documentation](https://developers.notion.com/reference/property-item-object)

### Simple Properties

Each individual `property_item` properties will have a `type` and under the the key with the value for `type`, an object that identifies the property value, documented under [Property value objects](ref:page#property-value-object).

### Paginated Properties

Property types that return a paginated list of property item objects are:

- `title`
- `rich_text`
- `relation`
- `people`

Look for the `next_url` value in the response object for these property items to view paginated results. Refer to [paginated page properties](https://developers.notion.com/reference/page-property-values#paginated-page-properties) for a full description of the response object for these properties.

Refer to the [pagination reference](https://developers.notion.com/reference/intro#pagination) for details on how to iterate through a results list.  

### Rollup Properties

> 👍 
> 
> Learn more about rollup properties on the [Page properties page](https://developers.notion.com/reference/page-property-values#rollup) or in Notion’s [Help Center](https://www.notion.so/help/relations-and-rollups).

For regular "Show original" rollups, the endpoint returns a flattened list of all the property items in the rollup. 

For rollups with an aggregation, the API returns a [rollup property value](ref:page#rollup-property-values) under the `rollup` key and the list of relations. 

In order to avoid timeouts, if the rollup has a with a large number of aggregations or properties the endpoint returns a `next_cursor` value that is used to determinate the aggregation value _so far_ for the subset of relations that have been paginated through. 

Once `has_more` is `false`, then the final rollup value is returned.  Refer to the [Pagination documentation](ref:pagination) for more information on pagination in the Notion API. 

Computing the values of following aggregations are _not_ supported. Instead the endpoint returns a list of `property_item` objects for the rollup:

- `show_unique` (Show unique values)
- `unique` (Count unique values)
- `median`(Median)

> 📘 Integration capabilities
> 
> This endpoint requires an integration to have read content capabilities. Attempting to call this API without read content capabilities will return an HTTP response with a 403 status code. For more information on integration capabilities, see the [capabilities guide](ref:capabilities).

### Errors

Returns a 404 HTTP response if the page or property doesn't exist, or if the integration doesn't have access to the page.

Returns a 400 or 429 HTTP response if the request exceeds the [request limits](ref:request-limits).

_Note: Each Public API endpoint can return several possible error codes. See the [Error codes section](https://developers.notion.com/reference/status-codes#error-codes) of the Status codes documentation for more information._

# OpenAPI definition
```json
{
  "openapi": "3.1.0",
  "info": {
    "title": "Notion API",
    "version": "1"
  },
  "servers": [
    {
      "url": "https://api.notion.com"
    }
  ],
  "components": {
    "securitySchemes": {
      "sec0": {
        "type": "oauth2",
        "flows": {}
      }
    }
  },
  "security": [
    {
      "sec0": []
    }
  ],
  "paths": {
    "/v1/pages/{page_id}/properties/{property_id}": {
      "get": {
        "summary": "Retrieve a page property item",
        "description": "",
        "operationId": "retrieve-a-page-property",
        "parameters": [
          {
            "name": "page_id",
            "in": "path",
            "description": "Identifier for a Notion page",
            "schema": {
              "type": "string"
            },
            "required": true
          },
          {
            "name": "property_id",
            "in": "path",
            "description": "Identifier for a page [property](https://developers.notion.com/reference/page#all-property-values)",
            "schema": {
              "type": "string"
            },
            "required": true
          },
          {
            "name": "page_size",
            "in": "query",
            "description": "For paginated properties. The max number of property item objects on a page. The default size is 100",
            "schema": {
              "type": "integer",
              "format": "int32"
            }
          },
          {
            "name": "start_cursor",
            "in": "query",
            "description": "For paginated properties.",
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "Notion-Version",
            "in": "header",
            "description": "The [API version](/reference/versioning) to use for this request. The latest version is `<<latestNotionVersion>>`.",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "200",
            "content": {
              "application/json": {
                "examples": {
                  "Number Property Item": {
                    "value": "{\n  \"object\": \"property_item\",\n  \"id\" \"kjPO\",\n  \"type\": \"number\",\n  \"number\": 2\n}"
                  },
                  "Result": {
                    "value": "{\n    \"object\": \"list\",\n    \"results\": [\n        {\n            \"object\": \"property_item\",\n            \"id\" \"kjPO\",\n            \"type\": \"rich_text\",\n            \"rich_text\": {\n                \"type\": \"text\",\n                \"text\": {\n                    \"content\": \"Avocado \",\n                    \"link\": null\n                },\n                \"annotations\": {\n                    \"bold\": false,\n                    \"italic\": false,\n                    \"strikethrough\": false,\n                    \"underline\": false,\n                    \"code\": false,\n                    \"color\": \"default\"\n                },\n                \"plain_text\": \"Avocado \",\n                \"href\": null\n            }\n        },\n        {\n            \"object\": \"property_item\",\n            \"id\" \"ijPO\",\n            \"type\": \"rich_text\",\n            \"rich_text\": {\n                \"type\": \"mention\",\n                \"mention\": {\n                    \"type\": \"page\",\n                    \"page\": {\n                        \"id\": \"41117fd7-69a5-4694-bc07-c1e3a682c857\"\n                    }\n                },\n                \"annotations\": {\n                    \"bold\": false,\n                    \"italic\": false,\n                    \"strikethrough\": false,\n                    \"underline\": false,\n                    \"code\": false,\n                    \"color\": \"default\"\n                },\n                \"plain_text\": \"Lemons\",\n                \"href\": \"http://notion.so/41117fd769a54694bc07c1e3a682c857\"\n            }\n        },\n        {\n            \"object\": \"property_item\",\n            \"id\" \"kjPO\",\n            \"type\": \"rich_text\",\n            \"rich_text\": {\n                \"type\": \"text\",\n                \"text\": {\n                    \"content\": \" Tomato \",\n                    \"link\": null\n                },\n                \"annotations\": {\n                    \"bold\": false,\n                    \"italic\": false,\n                    \"strikethrough\": false,\n                    \"underline\": false,\n                    \"code\": false,\n                    \"color\": \"default\"\n                },\n                \"plain_text\": \" Tomato \",\n                \"href\": null\n            }\n        },\n...\n    ],\n    \"next_cursor\": \"some-next-cursor-value\",\n    \"has_more\": true,\n\t\t\"next_url\": \"http://api.notion.com/v1/pages/0e5235bf86aa4efb93aa772cce7eab71/properties/NVv^?start_cursor=some-next-cursor-value&page_size=25\",\n    \"property_item\": {\n      \"id\": \"NVv^\",\n      \"next_url\": null,\n      \"type\": \"rich_text\",\n      \"rich_text\": {}\n    }\n}"
                  },
                  "Rollup List Property Item": {
                    "value": "{\n    \"object\": \"list\",\n    \"results\": [\n        {\n            \"object\": \"property_item\",\n          \t\"id\": \"dj2l\",\n            \"type\": \"relation\",\n            \"relation\": {\n                \"id\": \"83f92c9d-523d-466e-8c1f-9bc2c25a99fe\"\n            }\n        },\n        {\n            \"object\": \"property_item\",\n          \t\"id\": \"dj2l\",\n            \"type\": \"relation\",\n            \"relation\": {\n                \"id\": \"45cfb825-3463-4891-8932-7e6d8c170630\"\n            }\n        },\n        {\n            \"object\": \"property_item\",\n          \t\"id\": \"dj2l\",\n            \"type\": \"relation\",\n            \"relation\": {\n                \"id\": \"1688be1a-a197-4f2a-9688-e528c4b56d94\"\n            }\n        }\n    ],\n    \"next_cursor\": \"some-next-cursor-value\",\n    \"has_more\": true,\n\t\t\"property_item\": {\n      \"id\": \"y}~p\",\n      \"next_url\": \"http://api.notion.com/v1/pages/0e5235bf86aa4efb93aa772cce7eab71/properties/y%7D~p?start_cursor=1QaTunT5&page_size=25\",\n      \"type\": \"rollup\",\n      \"rollup\": {\n        \"function\": \"sum\",\n        \"type\": \"incomplete\",\n        \"incomplete\": {}\n      }\n    }\n    \"type\": \"property_item\"\n}"
                  }
                }
              }
            }
          }
        },
        "deprecated": false,
        "security": [],
        "x-readme": {
          "code-samples": [
            {
              "language": "javascript",
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const pageId = 'b55c9c91-384d-452b-81db-d1ef79372b75';\n  const propertyId = \"aBcD123\n  const response = await notion.pages.properties.retrieve({ page_id: pageId, property_id: propertyId });\n  console.log(response);\n})();",
              "name": "Notion SDK for JavaScript"
            },
            {
              "language": "curl",
              "code": "curl --request GET \\\n  --url https://api.notion.com/v1/pages/b55c9c91-384d-452b-81db-d1ef79372b75/properties/some-property-id \\\n  --header 'Authorization: Bearer $NOTION_API_KEY' \\\n  --header 'Notion-Version: 2022-06-28'"
            }
          ],
          "samples-languages": [
            "javascript",
            "curl"
          ]
        }
      }
    }
  },
  "x-readme": {
    "headers": [],
    "explorer-enabled": false,
    "proxy-enabled": true
  },
  "x-readme-fauxas": true,
  "_id": "606ecc2cd9e93b0044cf6e47:614943b3de71ea001c546257"
}
```