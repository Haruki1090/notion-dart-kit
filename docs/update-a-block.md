# Update a block

Updates the content for the specified `block_id` based on the block type. Supported fields based on the block object type (see [Block object](ref:block#block-type-object) for available fields and the expected input for each field). 

**Note**: The update replaces the _entire_ value for a given field. If a field is omitted (ex: omitting `checked` when updating a `to_do` block), the value will not be changed. 

> 📘 Updating `child_page` blocks
> 
> To update `child_page` type blocks, use the [Update page](ref:patch-page) endpoint. Updating the page's `title` updates the text displayed in the associated `child_page` block.

> 📘 Updating `child_database` blocks
> 
> To update `child_database` type blocks, use the [Update database](ref:update-a-database) endpoint. Updating the page's `title` updates the text displayed in the associated `child_database` block.

> 📘 Updating `children`
> 
> A block's children _CANNOT_ be directly updated with this endpoint. Instead use [Append block children](ref:patch-block-children) to add children.

> 📘 Updating `heading` blocks
> 
> To update the toggle of a `heading` block, you can include the optional `is_toggleable` property in the request. Toggle can be added and removed from a `heading` block. However, you cannot remove toggle from a `heading` block if it has children. All children _MUST_ be removed before revoking toggle from a `heading` block.

### Success

Returns a 200 HTTP response containing the updated [block object](ref:block) on success.

> 📘 Integration capabilities
> 
> This endpoint requires an integration to have update content capabilities. Attempting to call this API without update content capabilities will return an HTTP response with a 403 status code. For more information on integration capabilities, see the [capabilities guide](ref:capabilities).

### Errors

Returns a 404 HTTP response if the block doesn't exist, has been archived, or if the integration doesn't have access to the page.

Returns a 400 if the `type` for the block is incorrect or the input is incorrect for a given field.

Returns a 400 or a 429 HTTP response if the request exceeds the [request limits](ref:request-limits).

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
      "patch": {
        "summary": "Update a block",
        "description": "",
        "operationId": "update-a-block",
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
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {
                "type": "object",
                "properties": {
                  "{type}": {
                    "type": "object",
                    "description": "The [block object `type`](ref:block#block-object-keys) value with the properties to be updated. Currently only `text` (for supported block types) and `checked` (for `to_do` blocks) fields can be updated.",
                    "properties": {}
                  },
                  "archived": {
                    "type": "boolean",
                    "description": "Set to true to archive (delete) a block. Set to false to un-archive (restore) a block.",
                    "default": true
                  }
                }
              }
            }
          }
        },
        "responses": {
          "200": {
            "description": "200",
            "content": {
              "application/json": {
                "examples": {
                  "Result": {
                    "value": "{\n\t\"object\": \"block\",\n\t\"id\": \"c02fc1d3-db8b-45c5-a222-27595b15aea7\",\n\t\"parent\": {\n\t\t\"type\": \"page_id\",\n\t\t\"page_id\": \"59833787-2cf9-4fdf-8782-e53db20768a5\"\n\t},\n\t\"created_time\": \"2022-03-01T19:05:00.000Z\",\n\t\"last_edited_time\": \"2022-07-06T19:41:00.000Z\",\n\t\"created_by\": {\n\t\t\"object\": \"user\",\n\t\t\"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n\t},\n\t\"last_edited_by\": {\n\t\t\"object\": \"user\",\n\t\t\"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n\t},\n\t\"has_children\": false,\n\t\"archived\": false,\n\t\"type\": \"heading_2\",\n\t\"heading_2\": {\n\t\t\"rich_text\": [\n\t\t\t{\n\t\t\t\t\"type\": \"text\",\n\t\t\t\t\"text\": {\n\t\t\t\t\t\"content\": \"Lacinato kale\",\n\t\t\t\t\t\"link\": null\n\t\t\t\t},\n\t\t\t\t\"annotations\": {\n\t\t\t\t\t\"bold\": false,\n\t\t\t\t\t\"italic\": false,\n\t\t\t\t\t\"strikethrough\": false,\n\t\t\t\t\t\"underline\": false,\n\t\t\t\t\t\"code\": false,\n\t\t\t\t\t\"color\": \"green\"\n\t\t\t\t},\n\t\t\t\t\"plain_text\": \"Lacinato kale\",\n\t\t\t\t\"href\": null\n\t\t\t}\n\t\t],\n\t\t\"color\": \"default\",\n    \"is_toggleable\": false\n\t}\n}"
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
                      "example": "2022-07-06T19:41:00.000Z"
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
                                    "example": "green"
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
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const blockId = '9bc30ad4-9373-46a5-84ab-0a7845ee52e6';\n  const response = await notion.blocks.update({\n\t\"block_id\": blockId,\n\t\"heading_2\": {\n\t\t\"rich_text\": [\n\t\t\t{\n\t\t\t\t\"text\": {\n\t\t\t\t\t\"content\": \"Lacinato kale\"\n\t\t\t\t},\n\t\t\t\t\"annotations\": {\n\t\t\t\t\t\"color\": \"green\"\n\t\t\t\t}\n\t\t\t}\n\t\t]\n\t}\n});\n  console.log(response);\n})();",
              "name": "Notion SDK for JavaScript"
            },
            {
              "language": "curl",
              "code": "curl https://api.notion.com/v1/blocks/9bc30ad4-9373-46a5-84ab-0a7845ee52e6 \\\n  -H 'Authorization: Bearer '\"$NOTION_API_KEY\"'' \\\n  -H \"Content-Type: application/json\" \\\n  -H \"Notion-Version: 2022-06-28\" \\\n  -X PATCH \\\n  --data '{\n  \"to_do\": {\n    \"rich_text\": [{ \n      \"text\": { \"content\": \"Lacinato kale\" } \n      }],\n    \"checked\": false\n  }\n}'"
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
  "_id": "606ecc2cd9e93b0044cf6e47:611ff9e1545410001802a284"
}
```