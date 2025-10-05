# List databases (deprecated)

[block:callout]
{
  "type": "danger",
  "title": "Search pages for more details",
  "body": "This endpoint is deprecated and is only available on API version \"2021-08-16\" and earlier. Use the [Search API](ref:post-search) instead. This endpoint will only return explicitly shared databases, while search will also return child pages. This endpoint's results cannot be filtered, while search can be used to match on page title."
}
[/block]
List all [Databases](ref:database) shared with the authenticated integration. The response may contain fewer than `page_size` of results.
[block:callout]
{
  "type": "info",
  "body": "Integrations can only access databases a user has shared with the integration.",
  "title": "Database access"
}
[/block]
See [Pagination](ref:pagination) for details about how to use a cursor to iterate through the list.
[block:callout]
{
  "type": "info",
  "title": "Integration capabilities",
  "body": "This endpoint requires an integration to have read content capabilities. Attempting to call this API without read content capabilities will return an HTTP response with a 403 status code. For more information on integration capabilities, see the [capabilities guide](ref:capabilities)."
}
[/block]
### Errors

Returns a 429 HTTP response if the request exceeds the [request limits](ref:request-limits).

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
    "/v1/databases": {
      "get": {
        "summary": "List databases (deprecated)",
        "description": "",
        "operationId": "get-databases",
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
            "required": true,
            "schema": {
              "type": "string",
              "default": "2021-08-16"
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
                    "value": "{\n  \"object\": \"list\",\n  \"results\": [\n    {\n      \"object\": \"database\",\n      \"id\": \"668d797c-76fa-4934-9b05-ad288df2d136\",\n      \"created_time\": \"2021-05-12T19:34:00.000Z\",\n      \"last_edited_time\": \"2021-05-13T04:55:00.000Z\",\n      \"parent\": {\n\t\t    \"type\": \"page_id\",\n   \t\t  \"page_id\": \"48f8fee9-cd79-4180-bc2f-ec0398253067\"\n      },\n      \"title\": [{\"type\": \"text\", \"text\": {\"content\": \"Grocery List\", \"link\": null}, \"annotations\": {\"bold\": false, \"italic\": false, \"strikethrough\": false, \"underline\": false, \"code\": false, \"color\": \"default\"}, \"plain_text\": \"Grocery List\", \"href\": null}],\n      \"icon\": {\n    \t\t\"type\": \"emoji\",\n    \t\t\"emoji\": \"🎉\"\n \t\t\t},\n  \t\t\"cover\": {\n  \t\t\t\"type\": \"external\",\n    \t\t\"external\": {\n    \t\t\t\"url\": \"https://website.domain/images/image.png\"\n    \t\t}\n  \t\t},\n      \"properties\": {\n        \"Description\": {\n          \"id\": \">otN\",\n          \"name\": \"Description\",\n          \"type\": \"rich_text\",\n          \"rich_text\": {}\n        }\n      }\n    },\n    {\n      \"object\": \"database\",\n      \"id\": \"74ba0cb2-732c-4d2f-954a-fcaa0d93a898\",\n      \"created_time\": \"2021-05-12T19:34:00.000Z\",\n      \"last_edited_time\": \"2021-05-13T04:55:00.000Z\",\n      \"parent\": {\n\t\t    \"type\": \"workspace\",\n        \"workspace\": true\n      },\n      \"title\": [{\"type\":\" text\", \"text\": {\"content\": \"Pantry\", \"link\": null}, \"annotations\": {\"bold\": false, \"italic\": false, \"strikethrough\": false, \"underline\": false, \"code\": false, \"color\": \"default\"}, \"plain_text\": \"Pantry\", \"href\": null}],\n      \"icon\": {\n    \t\t\"type\": \"emoji\",\n    \t\t\"emoji\": \"🚀\"\n \t\t\t},\n      \"cover\": null,\n      \"properties\": {\n        \"Description\": {\n          \"id\": \"Y:FB\",\n          \"name\": \"Description\",\n          \"type\": \"rich_text\",\n          \"rich_text\": {}\n        }\n      }\n    }\n  ],\n  \"next_cursor\": null,\n  \"has_more\": false\n}"
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
                            "example": "database"
                          },
                          "id": {
                            "type": "string",
                            "example": "668d797c-76fa-4934-9b05-ad288df2d136"
                          },
                          "created_time": {
                            "type": "string",
                            "example": "2021-05-12T19:34:00.000Z"
                          },
                          "last_edited_time": {
                            "type": "string",
                            "example": "2021-05-13T04:55:00.000Z"
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
                                "example": "48f8fee9-cd79-4180-bc2f-ec0398253067"
                              }
                            }
                          },
                          "title": {
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
                                      "example": "Grocery List"
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
                                  "example": "Grocery List"
                                },
                                "href": {}
                              }
                            }
                          },
                          "icon": {
                            "type": "object",
                            "properties": {
                              "type": {
                                "type": "string",
                                "example": "emoji"
                              },
                              "emoji": {
                                "type": "string",
                                "example": "🎉"
                              }
                            }
                          },
                          "cover": {
                            "type": "object",
                            "properties": {
                              "type": {
                                "type": "string",
                                "example": "external"
                              },
                              "external": {
                                "type": "object",
                                "properties": {
                                  "url": {
                                    "type": "string",
                                    "example": "https://website.domain/images/image.png"
                                  }
                                }
                              }
                            }
                          },
                          "properties": {
                            "type": "object",
                            "properties": {
                              "Description": {
                                "type": "object",
                                "properties": {
                                  "id": {
                                    "type": "string",
                                    "example": ">otN"
                                  },
                                  "name": {
                                    "type": "string",
                                    "example": "Description"
                                  },
                                  "type": {
                                    "type": "string",
                                    "example": "rich_text"
                                  },
                                  "rich_text": {
                                    "type": "object",
                                    "properties": {}
                                  }
                                }
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
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const response = await notion.databases.list();\n  console.log(response);\n})();",
              "name": "Notion SDK for JavaScript"
            },
            {
              "language": "curl",
              "code": "curl 'https://api.notion.com/v1/databases' \\\n  -H 'Authorization: Bearer '\"$NOTION_API_KEY\"'' \\\n  -H 'Notion-Version: 2021-08-16'"
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
  "_id": "606ecc2cd9e93b0044cf6e47:6120024006b02c0050e27718"
}
```