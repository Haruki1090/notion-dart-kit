# Retrieve a block

Retrieves a [Block object](ref:block) using the ID specified.

If the block returned contains the key `has_children: true`, use the [Retrieve block children](https://developers.notion.com/reference/get-block-children) endpoint to get the list of children.

To retrieve page content for a specific page, use [Retrieve block children](https://developers.notion.com/reference/get-block-children) and set the page ID as the `block_id`.

For more information, read the [Working with page content guide](https://developers.notion.com/docs/working-with-page-content#modeling-content-as-blocks).

> 📘 Integration capabilities
> 
> This endpoint requires an integration to have read content capabilities. Attempting to call this API without read content capabilities will return an HTTP response with a 403 status code. For more information on integration capabilities, see the [capabilities guide](ref:capabilities).

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
      "get": {
        "summary": "Retrieve a block",
        "description": "",
        "operationId": "retrieve-a-block",
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
                    "value": "{\n\t\"object\": \"block\",\n\t\"id\": \"c02fc1d3-db8b-45c5-a222-27595b15aea7\",\n\t\"parent\": {\n\t\t\"type\": \"page_id\",\n\t\t\"page_id\": \"59833787-2cf9-4fdf-8782-e53db20768a5\"\n\t},\n\t\"created_time\": \"2022-03-01T19:05:00.000Z\",\n\t\"last_edited_time\": \"2022-03-01T19:05:00.000Z\",\n\t\"created_by\": {\n\t\t\"object\": \"user\",\n\t\t\"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n\t},\n\t\"last_edited_by\": {\n\t\t\"object\": \"user\",\n\t\t\"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n\t},\n\t\"has_children\": false,\n\t\"archived\": false,\n\t\"type\": \"heading_2\",\n\t\"heading_2\": {\n\t\t\"rich_text\": [\n\t\t\t{\n\t\t\t\t\"type\": \"text\",\n\t\t\t\t\"text\": {\n\t\t\t\t\t\"content\": \"Lacinato kale\",\n\t\t\t\t\t\"link\": null\n\t\t\t\t},\n\t\t\t\t\"annotations\": {\n\t\t\t\t\t\"bold\": false,\n\t\t\t\t\t\"italic\": false,\n\t\t\t\t\t\"strikethrough\": false,\n\t\t\t\t\t\"underline\": false,\n\t\t\t\t\t\"code\": false,\n\t\t\t\t\t\"color\": \"default\"\n\t\t\t\t},\n\t\t\t\t\"plain_text\": \"Lacinato kale\",\n\t\t\t\t\"href\": null\n\t\t\t}\n\t\t],\n\t\t\"color\": \"default\",\n    \"is_toggleable\": false\n\t}\n}"
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
                      "example": "c02fc1d3-db8b-45c5-a222-27595b15aea7"
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
                      "example": "2022-03-01T19:05:00.000Z"
                    },
                    "last_edited_time": {
                      "type": "string",
                      "example": "2022-03-01T19:05:00.000Z"
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
                          "example": "ee5f0f84-409a-440f-983a-a5315961c6e4"
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
                      "example": false,
                      "default": true
                    },
                    "type": {
                      "type": "string",
                      "example": "heading_2"
                    },
                    "heading_2": {
                      "type": "object",
                      "properties": {
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
                                    "example": "Lacinato kale"
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
                                "example": "Lacinato kale"
                              },
                              "href": {}
                            }
                          }
                        },
                        "color": {
                          "type": "string",
                          "example": "default"
                        },
                        "is_toggleable": {
                          "type": "boolean",
                          "example": false,
                          "default": true
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
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const blockId = 'c02fc1d3-db8b-45c5-a222-27595b15aea7';\n  const response = await notion.blocks.retrieve({\n    block_id: blockId,\n  });\n  console.log(response);\n})();",
              "name": "Notion SDK for JavaScript"
            },
            {
              "language": "curl",
              "code": "curl 'https://api.notion.com/v1/blocks/0c940186-ab70-4351-bb34-2d16f0635d49' \\\n  -H 'Authorization: Bearer '\"$NOTION_API_KEY\"'' \\\n  -H 'Notion-Version: 2022-06-28'"
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
  "_id": "606ecc2cd9e93b0044cf6e47:6108af2ab4cfb1004f0b82b3"
}
```