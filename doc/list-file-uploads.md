# List file uploads

Use this API to retrieve [file uploads](ref:file-upload) for the current bot integration, sorted by most recent first.


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
    "/v1/file_uploads": {
      "get": {
        "summary": "List file uploads",
        "description": "Use this API to retrieve [file uploads](ref:file-upload) for the current bot integration, sorted by most recent first.",
        "operationId": "list-file-uploads",
        "parameters": [
          {
            "name": "status",
            "in": "query",
            "description": "Filter file uploads by specifying the status. Supported values are `pending`, `uploaded`, `expired`, `failed`.",
            "schema": {
              "type": "string",
              "enum": [
                "pending",
                "uploaded",
                "expired",
                "failed"
              ]
            }
          },
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
                    "value": "{}"
                  }
                },
                "schema": {
                  "type": "object",
                  "properties": {}
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
        "deprecated": false
      }
    }
  },
  "x-readme": {
    "headers": [],
    "explorer-enabled": false,
    "proxy-enabled": true
  },
  "x-readme-fauxas": true,
  "_id": "606ecc2cd9e93b0044cf6e47:680a532bcd9496006f722974"
}
```