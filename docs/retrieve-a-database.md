# Retrieve a database

> ❗️ Deprecated as of version 2025-09-03
> 
> This page describes the API for versions up to and including `2022-06-28`. In the new `2025-09-03` version, the concepts of databases and data sources were split up, as described in [Upgrading to 2025-09-03](doc:upgrade-guide-2025-09-03).
> 
> Refer to the new APIs instead:
> 
> - [Retrieve a database](ref:database-retrieve)
> - [Retrieve a data source](ref:retrieve-a-data-source)

Retrieves a [database object](https://developers.notion.com/reference/database) — information that describes the structure and columns of a database — for a provided database ID. The response adheres to any limits to an integration’s capabilities.

To fetch database rows rather than columns, use the [Query a database](https://developers.notion.com/reference/post-database-query) endpoint.

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

> 📘 Database relations must be shared with your integration
> 
> To retrieve database properties from [database relations](https://www.notion.so/help/relations-and-rollups#what-is-a-database-relation), the related database must be shared with your integration in addition to the database being retrieved. If the related database is not shared, properties based on relations will not be included in the API response.

> 🚧 The Notion API does not support retrieving linked databases.
> 
> To fetch the information in a [linked database](https://www.notion.so/help/guides/using-linked-databases), share the original source database with your Notion integration.

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
    "/v1/databases/{database_id}/": {
      "get": {
        "summary": "Retrieve a database",
        "description": "",
        "operationId": "retrieve-a-database",
        "parameters": [
          {
            "name": "database_id",
            "in": "path",
            "description": "An identifier for the Notion database.",
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
                    "value": "{\n    \"object\": \"database\",\n    \"id\": \"bc1211ca-e3f1-4939-ae34-5260b16f627c\",\n    \"created_time\": \"2021-07-08T23:50:00.000Z\",\n    \"last_edited_time\": \"2021-07-08T23:50:00.000Z\",\n    \"icon\": {\n        \"type\": \"emoji\",\n        \"emoji\": \"🎉\"\n    },\n    \"cover\": {\n        \"type\": \"external\",\n        \"external\": {\n            \"url\": \"https://website.domain/images/image.png\"\n        }\n    },\n    \"url\": \"https://www.notion.so/bc1211cae3f14939ae34260b16f627c\",\n    \"title\": [\n        {\n            \"type\": \"text\",\n            \"text\": {\n                \"content\": \"Grocery List\",\n                \"link\": null\n            },\n            \"annotations\": {\n                \"bold\": false,\n                \"italic\": false,\n                \"strikethrough\": false,\n                \"underline\": false,\n                \"code\": false,\n                \"color\": \"default\"\n            },\n            \"plain_text\": \"Grocery List\",\n            \"href\": null\n        }\n    ],\n    \"description\": [\n        {\n            \"type\": \"text\",\n            \"text\": {\n                \"content\": \"Grocery list for just kale 🥬\",\n                \"link\": null\n            },\n            \"annotations\": {\n                \"bold\": false,\n                \"italic\": false,\n                \"strikethrough\": false,\n                \"underline\": false,\n                \"code\": false,\n                \"color\": \"default\"\n            },\n            \"plain_text\": \"Grocery list for just kale 🥬\",\n            \"href\": null\n        }\n    ],\n    \"properties\": {\n        \"+1\": {\n            \"id\": \"Wp%3DC\",\n            \"name\": \"+1\",\n            \"type\": \"people\",\n            \"people\": {}\n        },\n        \"In stock\": {\n            \"id\": \"fk%5EY\",\n            \"name\": \"In stock\",\n            \"type\": \"checkbox\",\n            \"checkbox\": {}\n        },\n        \"Price\": {\n            \"id\": \"evWq\",\n            \"name\": \"Price\",\n            \"type\": \"number\",\n            \"number\": {\n                \"format\": \"dollar\"\n            }\n        },\n        \"Description\": {\n            \"id\": \"V}lX\",\n            \"name\": \"Description\",\n            \"type\": \"rich_text\",\n            \"rich_text\": {}\n        },\n        \"Last ordered\": {\n            \"id\": \"eVnV\",\n            \"name\": \"Last ordered\",\n            \"type\": \"date\",\n            \"date\": {}\n        },\n        \"Meals\": {\n            \"id\": \"%7DWA~\",\n            \"name\": \"Meals\",\n            \"type\": \"relation\",\n            \"relation\": {\n                \"database_id\": \"668d797c-76fa-4934-9b05-ad288df2d136\",\n                \"synced_property_name\": \"Related to Grocery List (Meals)\"\n            }\n        },\n        \"Number of meals\": {\n            \"id\": \"Z\\\\Eh\",\n            \"name\": \"Number of meals\",\n            \"type\": \"rollup\",\n            \"rollup\": {\n                \"rollup_property_name\": \"Name\",\n                \"relation_property_name\": \"Meals\",\n                \"rollup_property_id\": \"title\",\n                \"relation_property_id\": \"mxp^\",\n                \"function\": \"count\"\n            }\n        },\n        \"Store availability\": {\n            \"id\": \"s}Kq\",\n            \"name\": \"Store availability\",\n            \"type\": \"multi_select\",\n            \"multi_select\": {\n                \"options\": [\n                    {\n                        \"id\": \"cb79b393-d1c1-4528-b517-c450859de766\",\n                        \"name\": \"Duc Loi Market\",\n                        \"color\": \"blue\"\n                    },\n                    {\n                        \"id\": \"58aae162-75d4-403b-a793-3bc7308e4cd2\",\n                        \"name\": \"Rainbow Grocery\",\n                        \"color\": \"gray\"\n                    },\n                    {\n                        \"id\": \"22d0f199-babc-44ff-bd80-a9eae3e3fcbf\",\n                        \"name\": \"Nijiya Market\",\n                        \"color\": \"purple\"\n                    },\n                    {\n                        \"id\": \"0d069987-ffb0-4347-bde2-8e4068003dbc\",\n                        \"name\": \"Gus's Community Market\",\n                        \"color\": \"yellow\"\n                    }\n                ]\n            }\n        },\n        \"Photo\": {\n            \"id\": \"yfiK\",\n            \"name\": \"Photo\",\n            \"type\": \"files\",\n            \"files\": {}\n        },\n        \"Food group\": {\n            \"id\": \"CM%3EH\",\n            \"name\": \"Food group\",\n            \"type\": \"select\",\n            \"select\": {\n                \"options\": [\n                    {\n                        \"id\": \"6d4523fa-88cb-4ffd-9364-1e39d0f4e566\",\n                        \"name\": \"🥦Vegetable\",\n                        \"color\": \"green\"\n                    },\n                    {\n                        \"id\": \"268d7e75-de8f-4c4b-8b9d-de0f97021833\",\n                        \"name\": \"🍎Fruit\",\n                        \"color\": \"red\"\n                    },\n                    {\n                        \"id\": \"1b234a00-dc97-489c-b987-829264cfdfef\",\n                        \"name\": \"💪Protein\",\n                        \"color\": \"yellow\"\n                    }\n                ]\n            }\n        },\n        \"Name\": {\n            \"id\": \"title\",\n            \"name\": \"Name\",\n            \"type\": \"title\",\n            \"title\": {}\n        }\n    },\n    \"parent\": {\n        \"type\": \"page_id\",\n        \"page_id\": \"98ad959b-2b6a-4774-80ee-00246fb0ea9b\"\n    },\n    \"archived\": false,\n    \"is_inline\": false,\n    \"public_url\": null\n}"
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
                      "example": "bc1211ca-e3f1-4939-ae34-5260b16f627c"
                    },
                    "created_time": {
                      "type": "string",
                      "example": "2021-07-08T23:50:00.000Z"
                    },
                    "last_edited_time": {
                      "type": "string",
                      "example": "2021-07-08T23:50:00.000Z"
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
                    "url": {
                      "type": "string",
                      "example": "https://www.notion.so/bc1211cae3f14939ae34260b16f627c"
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
                    "description": {
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
                                "example": "Grocery list for just kale 🥬"
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
                            "example": "Grocery list for just kale 🥬"
                          },
                          "href": {}
                        }
                      }
                    },
                    "properties": {
                      "type": "object",
                      "properties": {
                        "+1": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "Wp%3DC"
                            },
                            "name": {
                              "type": "string",
                              "example": "+1"
                            },
                            "type": {
                              "type": "string",
                              "example": "people"
                            },
                            "people": {
                              "type": "object",
                              "properties": {}
                            }
                          }
                        },
                        "In stock": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "fk%5EY"
                            },
                            "name": {
                              "type": "string",
                              "example": "In stock"
                            },
                            "type": {
                              "type": "string",
                              "example": "checkbox"
                            },
                            "checkbox": {
                              "type": "object",
                              "properties": {}
                            }
                          }
                        },
                        "Price": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "evWq"
                            },
                            "name": {
                              "type": "string",
                              "example": "Price"
                            },
                            "type": {
                              "type": "string",
                              "example": "number"
                            },
                            "number": {
                              "type": "object",
                              "properties": {
                                "format": {
                                  "type": "string",
                                  "example": "dollar"
                                }
                              }
                            }
                          }
                        },
                        "Description": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "V}lX"
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
                        },
                        "Last ordered": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "eVnV"
                            },
                            "name": {
                              "type": "string",
                              "example": "Last ordered"
                            },
                            "type": {
                              "type": "string",
                              "example": "date"
                            },
                            "date": {
                              "type": "object",
                              "properties": {}
                            }
                          }
                        },
                        "Meals": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "%7DWA~"
                            },
                            "name": {
                              "type": "string",
                              "example": "Meals"
                            },
                            "type": {
                              "type": "string",
                              "example": "relation"
                            },
                            "relation": {
                              "type": "object",
                              "properties": {
                                "database_id": {
                                  "type": "string",
                                  "example": "668d797c-76fa-4934-9b05-ad288df2d136"
                                },
                                "synced_property_name": {
                                  "type": "string",
                                  "example": "Related to Grocery List (Meals)"
                                }
                              }
                            }
                          }
                        },
                        "Number of meals": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "Z\\Eh"
                            },
                            "name": {
                              "type": "string",
                              "example": "Number of meals"
                            },
                            "type": {
                              "type": "string",
                              "example": "rollup"
                            },
                            "rollup": {
                              "type": "object",
                              "properties": {
                                "rollup_property_name": {
                                  "type": "string",
                                  "example": "Name"
                                },
                                "relation_property_name": {
                                  "type": "string",
                                  "example": "Meals"
                                },
                                "rollup_property_id": {
                                  "type": "string",
                                  "example": "title"
                                },
                                "relation_property_id": {
                                  "type": "string",
                                  "example": "mxp^"
                                },
                                "function": {
                                  "type": "string",
                                  "example": "count"
                                }
                              }
                            }
                          }
                        },
                        "Store availability": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "s}Kq"
                            },
                            "name": {
                              "type": "string",
                              "example": "Store availability"
                            },
                            "type": {
                              "type": "string",
                              "example": "multi_select"
                            },
                            "multi_select": {
                              "type": "object",
                              "properties": {
                                "options": {
                                  "type": "array",
                                  "items": {
                                    "type": "object",
                                    "properties": {
                                      "id": {
                                        "type": "string",
                                        "example": "cb79b393-d1c1-4528-b517-c450859de766"
                                      },
                                      "name": {
                                        "type": "string",
                                        "example": "Duc Loi Market"
                                      },
                                      "color": {
                                        "type": "string",
                                        "example": "blue"
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        },
                        "Photo": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "yfiK"
                            },
                            "name": {
                              "type": "string",
                              "example": "Photo"
                            },
                            "type": {
                              "type": "string",
                              "example": "files"
                            },
                            "files": {
                              "type": "object",
                              "properties": {}
                            }
                          }
                        },
                        "Food group": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "CM%3EH"
                            },
                            "name": {
                              "type": "string",
                              "example": "Food group"
                            },
                            "type": {
                              "type": "string",
                              "example": "select"
                            },
                            "select": {
                              "type": "object",
                              "properties": {
                                "options": {
                                  "type": "array",
                                  "items": {
                                    "type": "object",
                                    "properties": {
                                      "id": {
                                        "type": "string",
                                        "example": "6d4523fa-88cb-4ffd-9364-1e39d0f4e566"
                                      },
                                      "name": {
                                        "type": "string",
                                        "example": "🥦Vegetable"
                                      },
                                      "color": {
                                        "type": "string",
                                        "example": "green"
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        },
                        "Name": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "title"
                            },
                            "name": {
                              "type": "string",
                              "example": "Name"
                            },
                            "type": {
                              "type": "string",
                              "example": "title"
                            },
                            "title": {
                              "type": "object",
                              "properties": {}
                            }
                          }
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
                          "example": "98ad959b-2b6a-4774-80ee-00246fb0ea9b"
                        }
                      }
                    },
                    "archived": {
                      "type": "boolean",
                      "example": false,
                      "default": true
                    },
                    "is_inline": {
                      "type": "boolean",
                      "example": false,
                      "default": true
                    },
                    "public_url": {}
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
          },
          "404": {
            "description": "404",
            "content": {
              "application/json": {
                "examples": {
                  "Result": {
                    "value": "{\n  \"object\": \"error\",\n  \"status\": 404,\n  \"code\": \"object_not_found\",\n  \"message\": \"Could not find database with ID: a1d8501e-1ac1-43e9-a6bd-ea9fe6c8822c. Make sure the relevant pages and databases are shared with your integration.\"\n}"
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
                      "example": 404,
                      "default": 0
                    },
                    "code": {
                      "type": "string",
                      "example": "object_not_found"
                    },
                    "message": {
                      "type": "string",
                      "example": "Could not find database with ID: a1d8501e-1ac1-43e9-a6bd-ea9fe6c8822c. Make sure the relevant pages and databases are shared with your integration."
                    }
                  }
                }
              }
            }
          },
          "429": {
            "description": "429",
            "content": {
              "application/json": {
                "examples": {
                  "Result": {
                    "value": "{\n  \"object\": \"error\",\n  \"status\": 429,\n  \"code\": \"rate_limited\",\n  \"message\": \"You have been rate limited. Please try again in a few minutes.\"\n}"
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
                      "example": 429,
                      "default": 0
                    },
                    "code": {
                      "type": "string",
                      "example": "rate_limited"
                    },
                    "message": {
                      "type": "string",
                      "example": "You have been rate limited. Please try again in a few minutes."
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
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const databaseId = '668d797c-76fa-4934-9b05-ad288df2d136';\n  const response = await notion.databases.retrieve({ database_id: databaseId });\n  console.log(response);\n})();",
              "name": "Notion SDK for JavaScript"
            },
            {
              "language": "curl",
              "code": "curl 'https://api.notion.com/v1/databases/668d797c-76fa-4934-9b05-ad288df2d136' \\\n  -H 'Authorization: Bearer '\"$NOTION_API_KEY\"'' \\\n  -H 'Notion-Version: 2022-06-28'"
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
  "_id": "606ecc2cd9e93b0044cf6e47:61200274545410001802c26b"
}
```