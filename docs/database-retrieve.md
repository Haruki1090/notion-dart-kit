# Retrieve a database

Retrieves a [database object](ref:database) — a container for one or more [data sources](ref:data-source) — for a provided database ID. The response adheres to any limits to an integration’s capabilities.

The most important fields in the database object response to highlight:

- `data_sources`: An array of JSON objects with the `id` and `name` of every data source under the database
  - These data source IDs can be used with the [Retrieve a data source](ref:retrieve-a-data-source), [Update a data source](ref:update-a-data-source), and [Query a data source](ref:query-a-data-source) APIs
- `parent`: The direct parent of the database; generally a `page_id` or `workspace: true`

To find a database ID, navigate to the database URL in your Notion workspace. The ID is the string of characters in the URL that is between the slash following the workspace name (if applicable) and the question mark. The ID is a 32 characters alphanumeric string.

[block:image]
{
  "images": [
    {
      "image": [
        "https://files.readme.io/64967fd-small-62e5027-notion_database_id.png",
        null,
        "Notion database ID"
      ],
      "align": "center",
      "caption": "Notion database ID"
    }
  ]
}
[/block]


Refer to the [Build your first integration guide](https://developers.notion.com/docs/create-a-notion-integration#step-3-save-the-database-id) for more details.

### Errors

Each Public API endpoint can return several possible error codes. See the [Error codes section](https://developers.notion.com/reference/status-codes#error-codes) of the Status codes documentation for more information.

### Additional resources

- [How to share a database with your integration](https://developers.notion.com/docs/create-a-notion-integration#give-your-integration-page-permissions)
- [Working with databases guide](https://developers.notion.com/docs/working-with-databases)

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
    "/v1/databases/{database_id}": {
      "get": {
        "summary": "Retrieve a database",
        "description": "",
        "operationId": "database-retrieve",
        "parameters": [
          {
            "name": "database_id",
            "in": "path",
            "description": "ID of a Notion database, a container for one or more data sources. This is a UUIDv4, with or without dashes.",
            "schema": {
              "type": "string"
            },
            "required": true
          }
        ],
        "responses": {
          "200": {
            "description": "200",
            "content": {
              "application/json": {
                "examples": {
                  "Result": {
                    "value": "{\n\t\"object\": \"database\",\n\t\"id\": \"248104cd-477e-80fd-b757-e945d38000bd\",\n\t\"title\": [\n\t\t{\n\t\t\t\"type\": \"text\",\n\t\t\t\"text\": {\n\t\t\t\t\"content\": \"My Task Tracker\",\n\t\t\t\t\"link\": null\n\t\t\t},\n\t\t\t\"annotations\": {\n\t\t\t\t\"bold\": false,\n\t\t\t\t\"italic\": false,\n\t\t\t\t\"strikethrough\": false,\n\t\t\t\t\"underline\": false,\n\t\t\t\t\"code\": false,\n\t\t\t\t\"color\": \"default\"\n\t\t\t},\n\t\t\t\"plain_text\": \"My Task Tracker\",\n\t\t\t\"href\": null\n\t\t}\n\t],\n\t\"parent\": {\n\t\t\"type\": \"page_id\",\n\t\t\"page_id\": \"255104cd-477e-808c-b279-d39ab803a7d2\"\n\t},\n\t\"is_inline\": false,\n\t\"in_trash\": false,\n\t\"created_time\": \"2025-08-07T10:11:07.504-07:00\",\n\t\"last_edited_time\": \"2025-08-10T15:53:11.386-07:00\",\n\t\"data_sources\": [\n\t\t{\n\t\t\t\"id\": \"248104cd-477e-80af-bc30-000bd28de8f9\",\n\t\t\t\"name\": \"My Task Tracker\"\n\t\t}\n\t],\n\t\"icon\": null,\n\t\"cover\": null,\n\t\"developer_survey\": \"https://example.com/xyz\",\n\t\"request_id\": \"2f788b44-abf3-4809-aa4c-dd40734fed0b\"\n}"
                  }
                },
                "schema": {
                  "type": "object",
                  "properties": {
                    "object": {
                      "type": "string",
                      "example": "database"
                    },
                    "id": {
                      "type": "string",
                      "example": "248104cd-477e-80fd-b757-e945d38000bd"
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
                                "example": "My Task Tracker"
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
                            "example": "My Task Tracker"
                          },
                          "href": {}
                        }
                      }
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
                          "example": "255104cd-477e-808c-b279-d39ab803a7d2"
                        }
                      }
                    },
                    "is_inline": {
                      "type": "boolean",
                      "example": false,
                      "default": true
                    },
                    "in_trash": {
                      "type": "boolean",
                      "example": false,
                      "default": true
                    },
                    "created_time": {
                      "type": "string",
                      "example": "2025-08-07T10:11:07.504-07:00"
                    },
                    "last_edited_time": {
                      "type": "string",
                      "example": "2025-08-10T15:53:11.386-07:00"
                    },
                    "data_sources": {
                      "type": "array",
                      "items": {
                        "type": "object",
                        "properties": {
                          "id": {
                            "type": "string",
                            "example": "248104cd-477e-80af-bc30-000bd28de8f9"
                          },
                          "name": {
                            "type": "string",
                            "example": "My Task Tracker"
                          }
                        }
                      }
                    },
                    "icon": {},
                    "cover": {},
                    "developer_survey": {
                      "type": "string",
                      "example": "https://example.com/xyz"
                    },
                    "request_id": {
                      "type": "string",
                      "example": "2f788b44-abf3-4809-aa4c-dd40734fed0b"
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
        "security": []
      }
    }
  },
  "x-readme": {
    "headers": [],
    "explorer-enabled": false,
    "proxy-enabled": true
  },
  "x-readme-fauxas": true,
  "_id": "606ecc2cd9e93b0044cf6e47:68b1ec3c9b52dcbb8a539f3f"
}
```