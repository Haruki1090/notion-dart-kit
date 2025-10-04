# List all users

Returns a paginated list of [Users](ref:user) for the workspace. The response may contain fewer than `page_size` of results.

Guests are not included in the response.

See [Pagination](https://developers.notion.com/reference/intro#pagination) for details about how to use a cursor to iterate through the list.

### Errors

Each Public API endpoint can return several possible error codes. See the [Error codes section](https://developers.notion.com/reference/status-codes#error-codes) of the Status codes documentation for more information.

> 📘 
> 
> The API does not currently support filtering users by their email and/or name.

> 📘 Integration capabilities
> 
> This endpoint requires an integration to have user information capabilities. Attempting to call this API without user information capabilities will return an HTTP response with a 403 status code. For more information on integration capabilities, see the [capabilities guide](ref:capabilities).

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
    "/v1/users": {
      "get": {
        "summary": "List all users",
        "description": "",
        "operationId": "get-users",
        "parameters": [
          {
            "name": "start_cursor",
            "in": "query",
            "description": "If supplied, this endpoint will return a page of results starting after the cursor provided. If not supplied, this endpoint will return the first page of results.",
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "page_size",
            "in": "query",
            "description": "The number of items from the full list desired in the response. Maximum: 100",
            "schema": {
              "type": "integer",
              "format": "int32",
              "default": 100
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
                  "Result": {
                    "value": "{ \"object\": \"list\",\n  \"results\": [\n    {\n      \"object\": \"user\",\n      \"id\": \"d40e767c-d7af-4b18-a86d-55c61f1e39a4\",\n      \"type\": \"person\",\n      \"person\": {\n        \"email\": \"avo@example.org\",\n      },\n      \"name\": \"Avocado Lovelace\",\n      \"avatar_url\": \"https://secure.notion-static.com/e6a352a8-8381-44d0-a1dc-9ed80e62b53d.jpg\",\n    },\n    {\n      \"object\": \"user\",\n      \"id\": \"9a3b5ae0-c6e6-482d-b0e1-ed315ee6dc57\",\n      \"type\": \"bot\",\n      \"bot\": {},\n      \"name\": \"Doug Engelbot\",\n      \"avatar_url\": \"https://secure.notion-static.com/6720d746-3402-4171-8ebb-28d15144923c.jpg\",\n    }\n  ],\n  \"next_cursor\": \"fe2cc560-036c-44cd-90e8-294d5a74cebc\",\n  \"has_more\": true\n}"
                  }
                }
              }
            }
          },
          "400": {
            "description": "400",
            "content": {
              "application/json": {
                "examples": {
                  "Result": {
                    "value": "{\n    \"object\": \"error\",\n    \"status\": 400,\n    \"code\": \"missing_version\",\n    \"message\": \"Notion-Version header failed validation: Notion-Version header should be defined, instead was `undefined`.\"\n }"
                  }
                },
                "schema": {
                  "type": "object",
                  "properties": {
                    "object": {
                      "type": "string",
                      "example": "error"
                    },
                    "status": {
                      "type": "integer",
                      "example": 400,
                      "default": 0
                    },
                    "code": {
                      "type": "string",
                      "example": "missing_version"
                    },
                    "message": {
                      "type": "string",
                      "example": "Notion-Version header failed validation: Notion-Version header should be defined, instead was `undefined`."
                    }
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
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const response = await notion.users.list();\n  console.log(response);\n})();",
              "name": "Notion SDK for JavaScript"
            },
            {
              "language": "curl",
              "code": "curl 'https://api.notion.com/v1/users' \\\n  -H 'Authorization: Bearer '\"$NOTION_API_KEY\"'' \\\n  -H \"Notion-Version: 2022-06-28\""
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
  "_id": "606ecc2cd9e93b0044cf6e47:60913345799af6004f34cc66"
}
```