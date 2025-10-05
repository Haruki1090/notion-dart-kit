# Update a database

Updates the attributes — the title, description, icon, or cover, etc. — of a specified database. 

Returns the updated [database object](ref:database).

To update the `properties` of the [data sources](ref:data-source) under a database, use the [Update a data source](ref:update-a-data-source) API starting from API version `2025-09-03`.

For an overview of how to use the REST API with databases, refer to the [Working with databases](https://developers.notion.com/docs/working-with-databases) guide.

Each Public API endpoint can return several possible error codes. See the [Error codes section](https://developers.notion.com/reference/status-codes#error-codes) of the Status codes documentation for more information.

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
      "patch": {
        "summary": "Update a database",
        "description": "",
        "operationId": "database-update",
        "parameters": [
          {
            "name": "Notion-Version",
            "in": "header",
            "description": "The [API version](/reference/versioning) to use for this request. The latest version is `<<internalLatestNotionVersion>>`.",
            "required": true,
            "schema": {
              "type": "string"
            }
          },
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
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {
                "type": "object",
                "properties": {
                  "parent": {
                    "type": "object",
                    "description": "The parent page or workspace to move the database to. If not provided, the database will not be moved.",
                    "required": [
                      "type"
                    ],
                    "properties": {
                      "type": {
                        "type": "string",
                        "description": "The type of parent under which to create the database. Either \"page_id\" or \"workspace\".",
                        "enum": [
                          "\"page_id\"",
                          "\"workspace\""
                        ]
                      },
                      "page_id": {
                        "type": "string",
                        "description": "ID of the new database's parent page, when `type=page_id`. This is a UUIDv4, with or without dashes."
                      },
                      "workspace": {
                        "type": "string",
                        "description": "Always `true` when `type=workspace`.",
                        "enum": [
                          "true"
                        ]
                      }
                    }
                  },
                  "title": {
                    "type": "array",
                    "description": "The updated title of the database, if any. If not provided, the title will not be updated.",
                    "items": {
                      "properties": {
                        "annotations": {
                          "type": "object",
                          "description": "The styling for the rich text.",
                          "properties": {
                            "bold": {
                              "type": "boolean",
                              "description": "Whether the text is formatted as bold.",
                              "default": false
                            },
                            "italic": {
                              "type": "boolean",
                              "description": "Whether the text is formatted as italic.",
                              "default": false
                            },
                            "strikethrough": {
                              "type": "boolean",
                              "description": "Whether the text is formatted with a strikethrough.",
                              "default": false
                            },
                            "underline": {
                              "type": "boolean",
                              "description": "Whether the text is formatted with an underline.",
                              "default": false
                            },
                            "code": {
                              "type": "boolean",
                              "description": "Whether the text is formatted as code.",
                              "default": false
                            },
                            "color": {
                              "type": "string",
                              "description": "The color of the text.",
                              "default": "\"default\"",
                              "enum": [
                                "\"default\"",
                                "\"gray\"",
                                "\"brown\"",
                                "\"orange\"",
                                "\"yellow\"",
                                "\"green\"",
                                "\"blue\"",
                                "\"purple\"",
                                "\"pink\"",
                                "\"red\"",
                                "\"default_background\"",
                                "\"gray_background\"",
                                "\"brown_background\"",
                                "\"orange_background\"",
                                "\"yellow_background\"",
                                "\"green_background\"",
                                "\"blue_background\"",
                                "\"purple_background\"",
                                "\"pink_background\"",
                                "\"red_background\""
                              ]
                            }
                          }
                        },
                        "plain_text": {
                          "type": "string",
                          "description": "The plain text content of the rich text object, without any styling."
                        },
                        "href": {
                          "type": "string",
                          "description": "A URL that the rich text object links to or mentions."
                        },
                        "type": {
                          "type": "string",
                          "enum": [
                            "\"text\"",
                            "\"mention\"",
                            "\"equation\""
                          ]
                        }
                      },
                      "type": "object"
                    }
                  },
                  "is_inline": {
                    "type": "boolean",
                    "description": "Whether the database should be displayed inline in the parent page. If not provided, the inline status will not be updated."
                  },
                  "icon": {
                    "type": "object",
                    "description": "The updated icon for the database, if any. If not provided, the icon will not be updated.",
                    "properties": {
                      "type": {
                        "type": "string",
                        "description": "The type of icon parameter being provided.",
                        "enum": [
                          "\"file_upload\"",
                          "\"emoji\"",
                          "\"external\"",
                          "\"custom_emoji\""
                        ]
                      },
                      "emoji": {
                        "type": "string",
                        "description": "When `type=emoji`, an emoji character."
                      },
                      "file_upload": {
                        "type": "object",
                        "description": "When `type=file_upload`, an object containing the `id` of the File Upload.",
                        "required": [
                          "id"
                        ],
                        "properties": {
                          "id": {
                            "type": "string",
                            "description": "ID of a FileUpload object that has the status `uploaded`."
                          }
                        }
                      },
                      "external": {
                        "type": "object",
                        "description": "When `type=external`, an object containing the external URL.",
                        "required": [
                          "url"
                        ],
                        "properties": {
                          "url": {
                            "type": "string",
                            "description": "The URL of the external file."
                          }
                        }
                      },
                      "custom_emoji": {
                        "type": "object",
                        "description": "When `type=custom_emoji`, an object containing the custom emoji.",
                        "required": [
                          "id"
                        ],
                        "properties": {
                          "id": {
                            "type": "string",
                            "description": "The ID of the custom emoji."
                          },
                          "name": {
                            "type": "string",
                            "description": "The name of the custom emoji."
                          },
                          "url": {
                            "type": "string",
                            "description": "The URL of the custom emoji."
                          }
                        }
                      }
                    }
                  },
                  "cover": {
                    "type": "object",
                    "description": "The updated cover image for the database, if any. If not provided, the cover will not be updated.",
                    "properties": {
                      "type": {
                        "type": "string",
                        "description": "The type of cover being provided.",
                        "enum": [
                          "\"file_upload\"",
                          "\"external\""
                        ]
                      },
                      "file_upload": {
                        "type": "object",
                        "description": "When `type=file_upload`, this is an object containing the ID of the File Upload.",
                        "required": [
                          "id"
                        ],
                        "properties": {
                          "id": {
                            "type": "string",
                            "description": "ID of a FileUpload object that has the status `uploaded`."
                          }
                        }
                      },
                      "external": {
                        "type": "object",
                        "description": "When `type=external`, this is an object containing the external URL for the cover.",
                        "required": [
                          "url"
                        ],
                        "properties": {
                          "url": {
                            "type": "string",
                            "description": "The URL of the external file."
                          }
                        }
                      }
                    }
                  },
                  "in_trash": {
                    "type": "boolean",
                    "description": "Whether the database should be moved to or from the trash. If not provided, the trash status will not be updated."
                  },
                  "is_locked": {
                    "type": "boolean",
                    "description": "Whether the database should be locked from editing in the Notion app UI. If not provided, the locked state will not be updated."
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
                    "value": "{\n\t\"object\": \"database\",\n\t\"id\": \"248104cd-477e-80fd-b757-e945d38000bd\",\n\t\"title\": [\n\t\t{\n\t\t\t\"type\": \"text\",\n\t\t\t\"text\": {\n\t\t\t\t\"content\": \"My Task Tracker\",\n\t\t\t\t\"link\": null\n\t\t\t},\n\t\t\t\"annotations\": {\n\t\t\t\t\"bold\": false,\n\t\t\t\t\"italic\": false,\n\t\t\t\t\"strikethrough\": false,\n\t\t\t\t\"underline\": false,\n\t\t\t\t\"code\": false,\n\t\t\t\t\"color\": \"default\"\n\t\t\t},\n\t\t\t\"plain_text\": \"My Task Tracker\",\n\t\t\t\"href\": null\n\t\t}\n\t],\n\t\"parent\": {\n\t\t\"type\": \"page_id\",\n\t\t\"page_id\": \"255104cd-477e-808c-b279-d39ab803a7d2\"\n\t},\n\t\"is_inline\": false,\n  \"in_trash\": false,\n  \"is_locked\": false,\n\t\"created_time\": \"2025-08-07T10:11:07.504-07:00\",\n\t\"last_edited_time\": \"2025-08-10T15:53:11.386-07:00\",\n\t\"data_sources\": [\n\t\t{\n\t\t\t\"id\": \"248104cd-477e-80af-bc30-000bd28de8f9\",\n\t\t\t\"name\": \"My Task Tracker\"\n\t\t}\n\t],\n\t\"icon\": null,\n\t\"cover\": null,\n\t\"developer_survey\": \"https://example.com/xyz\",\n\t\"request_id\": \"2f788b44-abf3-4809-aa4c-dd40734fed0b\"\n}"
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
                    "is_locked": {
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
  "_id": "606ecc2cd9e93b0044cf6e47:68b1ec171f568af9d48cf70c"
}
```