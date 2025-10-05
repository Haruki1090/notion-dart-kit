# Retrieve a comment

Retrieves a [Comment object](ref:comment-object) from its `comment_id`

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
    "/v1/comments/{comment_id}": {
      "get": {
        "summary": "Retrieve a comment",
        "description": "Retrieves a [Comment object](ref:comment-object) from its `comment_id`",
        "operationId": "retrieve-comment",
        "parameters": [
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
                    "value": "{\n\t\"object\": \"comment\",\n\t\"id\": \"249911a-125e-803e-a164-001cf338b8ec\",\n\t\"parent\": {\n\t\t\"type\": \"block_id\",\n\t\t\"block_id\": \"247vw11a-125e-8053-8e73-d3b3ed4f5768\"\n\t},\n\t\"discussion_id\": \"1mv7b911a-125e-80df-8c9e-001c179f63ef\",\n\t\"created_time\": \"2025-08-06T20:36:00.000Z\",\n\t\"last_edited_time\": \"2025-08-06T20:36:00.000Z\",\n\t\"created_by\": {\n\t\t\"object\": \"user\",\n\t\t\"id\": \"2092e755-4912-81f0-98dd-0002ad4ec952\"\n\t},\n\t\"rich_text\": [\n\t\t{\n\t\t\t\"type\": \"text\",\n\t\t\t\"text\": {\n\t\t\t\t\"content\": \"hello there\",\n\t\t\t\t\"link\": null\n\t\t\t},\n\t\t\t\"annotations\": {\n\t\t\t\t\"bold\": false,\n\t\t\t\t\"italic\": false,\n\t\t\t\t\"strikethrough\": false,\n\t\t\t\t\"underline\": false,\n\t\t\t\t\"code\": false,\n\t\t\t\t\"color\": \"default\"\n\t\t\t},\n\t\t\t\"plain_text\": \"hello there\",\n\t\t\t\"href\": null\n\t\t}\n\t],\n\t\"display_name\": {\n\t\t\"type\": \"integration\",\n\t\t\"resolved_name\": \"int\"\n\t}\n}"
                  }
                },
                "schema": {
                  "type": "object",
                  "properties": {
                    "object": {
                      "type": "string",
                      "example": "comment"
                    },
                    "id": {
                      "type": "string",
                      "example": "249911a-125e-803e-a164-001cf338b8ec"
                    },
                    "parent": {
                      "type": "object",
                      "properties": {
                        "type": {
                          "type": "string",
                          "example": "block_id"
                        },
                        "block_id": {
                          "type": "string",
                          "example": "247vw11a-125e-8053-8e73-d3b3ed4f5768"
                        }
                      }
                    },
                    "discussion_id": {
                      "type": "string",
                      "example": "1mv7b911a-125e-80df-8c9e-001c179f63ef"
                    },
                    "created_time": {
                      "type": "string",
                      "example": "2025-08-06T20:36:00.000Z"
                    },
                    "last_edited_time": {
                      "type": "string",
                      "example": "2025-08-06T20:36:00.000Z"
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
                          "example": "2092e755-4912-81f0-98dd-0002ad4ec952"
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
                                "example": "hello there"
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
                            "example": "hello there"
                          },
                          "href": {}
                        }
                      }
                    },
                    "display_name": {
                      "type": "object",
                      "properties": {
                        "type": {
                          "type": "string",
                          "example": "integration"
                        },
                        "resolved_name": {
                          "type": "string",
                          "example": "int"
                        }
                      }
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
                    "value": "{\n  \"object\": \"error\",\n  \"status\": 403,\n  \"code\": \"restricted_resource\",\n  \"message\": \"Insufficient permissions for this endpoint.\"\n}"
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
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const commentId = '123e767c-d7af-4b18-a86d-55c61f1e39a4';\n  const response = await notion.comments.retrieve({ comment_id: commentId });\n  console.log(response);\n})();"
            },
            {
              "language": "curl",
              "code": "curl -X GET \\\n  'https://api.notion.com/v1/comments/126a28216bb14a7eb6e1c50111515c3d' \\\n  -H \"Authorization: Bearer $NOTION_API_KEY\" \\\n  -H 'Notion-Version: 2022-06-28' \\\n  -H 'Content-Type: application/json'"
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
  "_id": "606ecc2cd9e93b0044cf6e47:6894e14960407219f6acb141"
}
```