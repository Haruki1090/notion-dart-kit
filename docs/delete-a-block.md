# Delete a block

Sets a [Block object](ref:block), including page blocks, to `archived: true` using the ID specified. Note: in the Notion UI application, this moves the block to the "Trash" where it can still be accessed and restored. 

To restore the block with the API, use the [Update a block](ref:update-a-block) or [Update page](ref:patch-page) respectively.  

> 📘 Integration capabilities
> 
> This endpoint requires an integration to have update content capabilities. Attempting to call this API without update content capabilities will return an HTTP response with a 403 status code. For more information on integration capabilities, see the [capabilities guide](ref:capabilities).

### Errors

Returns a 404 HTTP response if the block doesn't exist, or if the integration doesn't have access to the block.

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
    "/v1/blocks/{block_id}": {
      "delete": {
        "summary": "Delete a block",
        "description": "",
        "operationId": "delete-a-block",
        "parameters": [
          {
            "name": "block_id",
            "in": "path",
            "description": "Identifier for a Notion block",
            "schema": {
              "type": "string"
            },
            "required": true
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
                    "value": "{\n\t\"object\": \"block\",\n\t\"id\": \"7985540b-2e77-4ac6-8615-c3047e36f872\",\n\t\"parent\": {\n\t\t\"type\": \"page_id\",\n\t\t\"page_id\": \"59833787-2cf9-4fdf-8782-e53db20768a5\"\n\t},\n\t\"created_time\": \"2022-07-06T19:52:00.000Z\",\n\t\"last_edited_time\": \"2022-07-06T19:52:00.000Z\",\n\t\"created_by\": {\n\t\t\"object\": \"user\",\n\t\t\"id\": \"0c3e9826-b8f7-4f73-927d-2caaf86f1103\"\n\t},\n\t\"last_edited_by\": {\n\t\t\"object\": \"user\",\n\t\t\"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n\t},\n\t\"has_children\": false,\n\t\"archived\": true,\n\t\"type\": \"paragraph\",\n\t\"paragraph\": {\n\t\t\"rich_text\": [],\n\t\t\"color\": \"default\"\n\t}\n}"
                  }
                },
                "schema": {
                  "type": "object",
                  "properties": {
                    "object": {
                      "type": "string",
                      "example": "block"
                    },
                    "id": {
                      "type": "string",
                      "example": "7985540b-2e77-4ac6-8615-c3047e36f872"
                    },
                    "parent": {
                      "type": "object",
                      "properties": {
                        "type": {
                          "type": "string",
                          "example": "page_id"
                        },
                        "page_id": {
                          "type": "string",
                          "example": "59833787-2cf9-4fdf-8782-e53db20768a5"
                        }
                      }
                    },
                    "created_time": {
                      "type": "string",
                      "example": "2022-07-06T19:52:00.000Z"
                    },
                    "last_edited_time": {
                      "type": "string",
                      "example": "2022-07-06T19:52:00.000Z"
                    },
                    "created_by": {
                      "type": "object",
                      "properties": {
                        "object": {
                          "type": "string",
                          "example": "user"
                        },
                        "id": {
                          "type": "string",
                          "example": "0c3e9826-b8f7-4f73-927d-2caaf86f1103"
                        }
                      }
                    },
                    "last_edited_by": {
                      "type": "object",
                      "properties": {
                        "object": {
                          "type": "string",
                          "example": "user"
                        },
                        "id": {
                          "type": "string",
                          "example": "ee5f0f84-409a-440f-983a-a5315961c6e4"
                        }
                      }
                    },
                    "has_children": {
                      "type": "boolean",
                      "example": false,
                      "default": true
                    },
                    "archived": {
                      "type": "boolean",
                      "example": true,
                      "default": true
                    },
                    "type": {
                      "type": "string",
                      "example": "paragraph"
                    },
                    "paragraph": {
                      "type": "object",
                      "properties": {
                        "rich_text": {
                          "type": "array"
                        },
                        "color": {
                          "type": "string",
                          "example": "default"
                        }
                      }
                    }
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
                    "value": "{}"
                  }
                },
                "schema": {
                  "type": "object",
                  "properties": {}
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
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const blockId = '7985540b-2e77-4ac6-8615-c3047e36f872';\n  const response = await notion.blocks.delete({\n    block_id: blockId,\n  });\n  console.log(response);\n})();",
              "name": "Notion SDK for JavaScript"
            },
            {
              "language": "curl",
              "code": "curl -X DELETE 'https://api.notion.com/v1/blocks/9bc30ad4-9373-46a5-84ab-0a7845ee52e6' \\\n  -H 'Authorization: Bearer '\"$NOTION_API_KEY\"'' \\\n  -H 'Notion-Version: 2022-06-28'"
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
  "_id": "606ecc2cd9e93b0044cf6e47:6132447016d92b006ea46315"
}
```