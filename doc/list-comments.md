# List comments

Retrieves a list of un-resolved [Comment objects](ref:comment-object) from a page or block.

See [Pagination](https://developers.notion.com/reference/intro#pagination) for details about how to use a cursor to iterate through the list.

### Errors

Each Public API endpoint can return several possible error codes. See the [Error codes section](https://developers.notion.com/reference/status-codes#error-codes) of the Status codes documentation for more information.

> 📘 Reminder: Turn on integration comment capabilities
> 
> Integration capabilities for reading and inserting comments are off by default.
> 
> This endpoint requires an integration to have read comment capabilities. Attempting to call this endpoint without read comment capabilities will return an HTTP response with a 403 status code. 
> 
> For more information on integration capabilities, see the [capabilities guide](https://developers.notion.com/reference/capabilities). To update your integration settings, visit the [integration dashboard](https://www.notion.so/my-integrations).

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
    "/v1/comments": {
      "get": {
        "summary": "List comments",
        "description": "Retrieves a list of un-resolved [Comment objects](ref:comment-object) from a page or block.",
        "operationId": "list-comments",
        "parameters": [
          {
            "name": "Notion-Version",
            "in": "header",
            "description": "The [API version](/reference/versioning) to use for this request. The latest version is `<<latestNotionVersion>>`.",
            "required": true,
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "block_id",
            "in": "query",
            "description": "Identifier for a Notion block or page",
            "required": true,
            "schema": {
              "type": "string"
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
              "format": "int32"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "200",
            "content": {
              "application/json": {
                "examples": {
                  "OK": {
                    "value": "{\n    \"object\": \"list\",\n    \"results\": [\n        {\n            \"object\": \"comment\",\n            \"id\": \"94cc56ab-9f02-409d-9f99-1037e9fe502f\",\n            \"parent\": {\n                \"type\": \"page_id\",\n                \"page_id\": \"5c6a2821-6bb1-4a7e-b6e1-c50111515c3d\"\n            },\n            \"discussion_id\": \"f1407351-36f5-4c49-a13c-49f8ba11776d\",\n            \"created_time\": \"2022-07-15T16:52:00.000Z\",\n            \"last_edited_time\": \"2022-07-15T19:16:00.000Z\",\n            \"created_by\": {\n                \"object\": \"user\",\n                \"id\": \"9b15170a-9941-4297-8ee6-83fa7649a87a\"\n            },\n            \"rich_text\": [\n                {\n                    \"type\": \"text\",\n                    \"text\": {\n                        \"content\": \"Single comment\",\n                        \"link\": null\n                    },\n                    \"annotations\": {\n                        \"bold\": false,\n                        \"italic\": false,\n                        \"strikethrough\": false,\n                        \"underline\": false,\n                        \"code\": false,\n                        \"color\": \"default\"\n                    },\n                    \"plain_text\": \"Single comment\",\n                    \"href\": null\n                }\n            ]\n        }\n    ],\n    \"next_cursor\": null,\n    \"has_more\": false,\n    \"type\": \"comment\",\n    \"comment\": {}\n}"
                  }
                },
                "schema": {
                  "type": "object",
                  "properties": {
                    "object": {
                      "type": "string",
                      "example": "list"
                    },
                    "results": {
                      "type": "array",
                      "items": {
                        "type": "object",
                        "properties": {
                          "object": {
                            "type": "string",
                            "example": "comment"
                          },
                          "id": {
                            "type": "string",
                            "example": "94cc56ab-9f02-409d-9f99-1037e9fe502f"
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
                                "example": "5c6a2821-6bb1-4a7e-b6e1-c50111515c3d"
                              }
                            }
                          },
                          "discussion_id": {
                            "type": "string",
                            "example": "f1407351-36f5-4c49-a13c-49f8ba11776d"
                          },
                          "created_time": {
                            "type": "string",
                            "example": "2022-07-15T16:52:00.000Z"
                          },
                          "last_edited_time": {
                            "type": "string",
                            "example": "2022-07-15T19:16:00.000Z"
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
                                "example": "9b15170a-9941-4297-8ee6-83fa7649a87a"
                              }
                            }
                          },
                          "rich_text": {
                            "type": "array",
                            "items": {
                              "type": "object",
                              "properties": {
                                "type": {
                                  "type": "string",
                                  "example": "text"
                                },
                                "text": {
                                  "type": "object",
                                  "properties": {
                                    "content": {
                                      "type": "string",
                                      "example": "Single comment"
                                    },
                                    "link": {}
                                  }
                                },
                                "annotations": {
                                  "type": "object",
                                  "properties": {
                                    "bold": {
                                      "type": "boolean",
                                      "example": false,
                                      "default": true
                                    },
                                    "italic": {
                                      "type": "boolean",
                                      "example": false,
                                      "default": true
                                    },
                                    "strikethrough": {
                                      "type": "boolean",
                                      "example": false,
                                      "default": true
                                    },
                                    "underline": {
                                      "type": "boolean",
                                      "example": false,
                                      "default": true
                                    },
                                    "code": {
                                      "type": "boolean",
                                      "example": false,
                                      "default": true
                                    },
                                    "color": {
                                      "type": "string",
                                      "example": "default"
                                    }
                                  }
                                },
                                "plain_text": {
                                  "type": "string",
                                  "example": "Single comment"
                                },
                                "href": {}
                              }
                            }
                          }
                        }
                      }
                    },
                    "next_cursor": {},
                    "has_more": {
                      "type": "boolean",
                      "example": false,
                      "default": true
                    },
                    "type": {
                      "type": "string",
                      "example": "comment"
                    },
                    "comment": {
                      "type": "object",
                      "properties": {}
                    }
                  }
                }
              }
            }
          },
          "403": {
            "description": "403",
            "content": {
              "application/json": {
                "examples": {
                  "Result": {
                    "value": "{\n    \"object\": \"error\",\n    \"status\": 403,\n    \"code\": \"restricted_resource\",\n    \"message\": \"Insufficient permissions for this endpoint.\"\n}"
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
                      "example": 403,
                      "default": 0
                    },
                    "code": {
                      "type": "string",
                      "example": "restricted_resource"
                    },
                    "message": {
                      "type": "string",
                      "example": "Insufficient permissions for this endpoint."
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
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const blockId = 'd40e767c-d7af-4b18-a86d-55c61f1e39a4';\n  const response = await notion.comments.list({ block_id: blockId });\n  console.log(response);\n})();",
              "name": "Notion SDK for JavaScript"
            },
            {
              "language": "curl",
              "code": "curl 'https://api.notion.com/v1/comments?block_id=5c6a28216bb14a7eb6e1c50111515c3d'\\\n  -H 'Authorization: Bearer '\"$NOTION_API_KEY\"'' \\\n  -H \"Notion-Version: 2022-06-28\""
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
  "_id": "606ecc2cd9e93b0044cf6e47:62d195385aa7650013fee93d"
}
```