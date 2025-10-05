# Retrieve block children

Returns a paginated array of child [block objects](ref:block) contained in the block using the ID specified. In order to receive a complete representation of a block, you may need to recursively retrieve the block children of child blocks. 

> 👍 
> 
> Page content is represented by block children. See the [Working with page content guide](https://developers.notion.com/docs/working-with-page-content#modeling-content-as-blocks) for more information.

Returns only the first level of children for the specified block. See [block objects](ref:block) for more detail on determining if that block has nested children.

The response may contain fewer than `page_size` of results.

See [Pagination](https://developers.notion.com/reference/intro#pagination) for details about how to use a cursor to iterate through the list.

> 📘 Integration capabilities
> 
> This endpoint requires an integration to have read content capabilities. Attempting to call this API without read content capabilities will return an HTTP response with a 403 status code. For more information on integration capabilities, see the [capabilities guide](ref:capabilities).

### Errors

Returns a 404 HTTP response if the block specified by `id` doesn't exist, or if the integration doesn't have access to the block.

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
    "/v1/blocks/{block_id}/children": {
      "get": {
        "summary": "Retrieve block children",
        "description": "",
        "operationId": "get-block-children",
        "parameters": [
          {
            "name": "block_id",
            "in": "path",
            "description": "Identifier for a [block](ref:block)",
            "schema": {
              "type": "string"
            },
            "required": true
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
                    "value": "{\n\t\"object\": \"list\",\n\t\"results\": [\n\t\t{\n\t\t\t\"object\": \"block\",\n\t\t\t\"id\": \"c02fc1d3-db8b-45c5-a222-27595b15aea7\",\n\t\t\t\"parent\": {\n\t\t\t\t\"type\": \"page_id\",\n\t\t\t\t\"page_id\": \"59833787-2cf9-4fdf-8782-e53db20768a5\"\n\t\t\t},\n\t\t\t\"created_time\": \"2022-03-01T19:05:00.000Z\",\n\t\t\t\"last_edited_time\": \"2022-03-01T19:05:00.000Z\",\n\t\t\t\"created_by\": {\n\t\t\t\t\"object\": \"user\",\n\t\t\t\t\"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n\t\t\t},\n\t\t\t\"last_edited_by\": {\n\t\t\t\t\"object\": \"user\",\n\t\t\t\t\"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n\t\t\t},\n\t\t\t\"has_children\": false,\n\t\t\t\"archived\": false,\n\t\t\t\"type\": \"heading_2\",\n\t\t\t\"heading_2\": {\n\t\t\t\t\"rich_text\": [\n\t\t\t\t\t{\n\t\t\t\t\t\t\"type\": \"text\",\n\t\t\t\t\t\t\"text\": {\n\t\t\t\t\t\t\t\"content\": \"Lacinato kale\",\n\t\t\t\t\t\t\t\"link\": null\n\t\t\t\t\t\t},\n\t\t\t\t\t\t\"annotations\": {\n\t\t\t\t\t\t\t\"bold\": false,\n\t\t\t\t\t\t\t\"italic\": false,\n\t\t\t\t\t\t\t\"strikethrough\": false,\n\t\t\t\t\t\t\t\"underline\": false,\n\t\t\t\t\t\t\t\"code\": false,\n\t\t\t\t\t\t\t\"color\": \"default\"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t\"plain_text\": \"Lacinato kale\",\n\t\t\t\t\t\t\"href\": null\n\t\t\t\t\t}\n\t\t\t\t],\n\t\t\t\t\"color\": \"default\",\n        \"is_toggleable\": false\n\t\t\t}\n\t\t},\n\t\t{\n\t\t\t\"object\": \"block\",\n\t\t\t\"id\": \"acc7eb06-05cd-4603-a384-5e1e4f1f4e72\",\n\t\t\t\"parent\": {\n\t\t\t\t\"type\": \"page_id\",\n\t\t\t\t\"page_id\": \"59833787-2cf9-4fdf-8782-e53db20768a5\"\n\t\t\t},\n\t\t\t\"created_time\": \"2022-03-01T19:05:00.000Z\",\n\t\t\t\"last_edited_time\": \"2022-03-01T19:05:00.000Z\",\n\t\t\t\"created_by\": {\n\t\t\t\t\"object\": \"user\",\n\t\t\t\t\"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n\t\t\t},\n\t\t\t\"last_edited_by\": {\n\t\t\t\t\"object\": \"user\",\n\t\t\t\t\"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n\t\t\t},\n\t\t\t\"has_children\": false,\n\t\t\t\"archived\": false,\n\t\t\t\"type\": \"paragraph\",\n\t\t\t\"paragraph\": {\n\t\t\t\t\"rich_text\": [\n\t\t\t\t\t{\n\t\t\t\t\t\t\"type\": \"text\",\n\t\t\t\t\t\t\"text\": {\n\t\t\t\t\t\t\t\"content\": \"Lacinato kale is a variety of kale with a long tradition in Italian cuisine, especially that of Tuscany. It is also known as Tuscan kale, Italian kale, dinosaur kale, kale, flat back kale, palm tree kale, or black Tuscan palm.\",\n\t\t\t\t\t\t\t\"link\": {\n\t\t\t\t\t\t\t\t\"url\": \"https://en.wikipedia.org/wiki/Lacinato_kale\"\n\t\t\t\t\t\t\t}\n\t\t\t\t\t\t},\n\t\t\t\t\t\t\"annotations\": {\n\t\t\t\t\t\t\t\"bold\": false,\n\t\t\t\t\t\t\t\"italic\": false,\n\t\t\t\t\t\t\t\"strikethrough\": false,\n\t\t\t\t\t\t\t\"underline\": false,\n\t\t\t\t\t\t\t\"code\": false,\n\t\t\t\t\t\t\t\"color\": \"default\"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t\"plain_text\": \"Lacinato kale is a variety of kale with a long tradition in Italian cuisine, especially that of Tuscany. It is also known as Tuscan kale, Italian kale, dinosaur kale, kale, flat back kale, palm tree kale, or black Tuscan palm.\",\n\t\t\t\t\t\t\"href\": \"https://en.wikipedia.org/wiki/Lacinato_kale\"\n\t\t\t\t\t}\n\t\t\t\t],\n\t\t\t\t\"color\": \"default\"\n\t\t\t}\n\t\t}\n\t],\n\t\"next_cursor\": null,\n\t\"has_more\": false,\n\t\"type\": \"block\",\n\t\"block\": {}\n}"
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
                    },
                    "next_cursor": {},
                    "has_more": {
                      "type": "boolean",
                      "example": false,
                      "default": true
                    },
                    "type": {
                      "type": "string",
                      "example": "block"
                    },
                    "block": {
                      "type": "object",
                      "properties": {}
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
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const blockId = '59833787-2cf9-4fdf-8782-e53db20768a5';\n  const response = await notion.blocks.children.list({\n    block_id: blockId,\n    page_size: 50,\n  });\n  console.log(response);\n})();",
              "name": "Notion SDK for JavaScript"
            },
            {
              "language": "curl",
              "code": "curl 'https://api.notion.com/v1/blocks/b55c9c91-384d-452b-81db-d1ef79372b75/children?page_size=100' \\\n  -H 'Authorization: Bearer '\"$NOTION_API_KEY\"'' \\\n  -H \"Notion-Version: 2022-06-28\""
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
  "_id": "606ecc2cd9e93b0044cf6e47:609880270bd97b01002d7380"
}
```