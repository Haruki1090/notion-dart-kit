# Retrieve a data source

Retrieves a [data source](ref:data-source) object — information that describes the structure and columns of a data source — for a provided data source ID. The response adheres to any limits to an integration’s capabilities and the permissions of the `parent` database.

To fetch data source _rows_ (i.e. the child pages of a data source) rather than columns, use the [Query a data source](ref:query-a-data-source) endpoint.

### Finding a data source ID

Navigate to the database URL in your Notion workspace. The ID is the string of characters in the URL that is between the slash following the workspace name (if applicable) and the question mark. The ID is a 32 characters alphanumeric string.

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


Then, use the [Retrieve a database](ref:retrieve-a-database-1-6ee911d9) API to get a list of `data_sources` for that database. There is often only one data source, but when there are multiple, you may have the ID or name of the one you want to retrieve in mind (or you can retrieve each of them). Use that data source ID with this endpoint to get its `properties`.

To get a data source ID from the Notion app directly, the settings menu for a database includes a "Copy data source ID" button under "Manage data sources":

[block:image]
{
  "images": [
    {
      "image": [
        "https://files.readme.io/30ed6ac31d8c25eb2ff653dd3b11bfd2e30e8af4df6a6d5e0670b4ad7a96cf73-image.png",
        null,
        "Screenshot of the \"Manage data sources\" menu for a database in Notion, with \"Copy data source ID\" button."
      ],
      "align": "center",
      "sizing": "300px",
      "border": true,
      "caption": "Screenshot of the \"Manage data sources\" menu for a database in Notion, with \"Copy data source ID\" button."
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

> 📘 Data source relations must be shared with your integration
> 
> To retrieve data source properties from [database relations](https://www.notion.so/help/relations-and-rollups#what-is-a-database-relation), the related database must be shared with your integration in addition to the database being retrieved. If the related database is not shared, properties based on relations will not be included in the API response.

> 🚧 The Notion API does not support retrieving linked data sources
> 
> To fetch the information in a [linked data source](https://www.notion.so/help/guides/using-linked-databases), share the original source database with your Notion integration.

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
    "/v1/data_sources/{data_source_id}": {
      "get": {
        "summary": "Retrieve a data source",
        "description": "",
        "operationId": "retrieve-a-data-source",
        "parameters": [
          {
            "name": "data_source_id",
            "in": "path",
            "description": "ID of a Notion data source. This is a UUIDv4, with or without dashes.",
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
                    "value": "{\n\t\"object\": \"data_source\",\n\t\"id\": \"bc1211ca-e3f1-4939-ae34-5260b16f627c\",\n\t\"created_time\": \"2021-07-08T23:50:00.000Z\",\n\t\"last_edited_time\": \"2021-07-08T23:50:00.000Z\",\n\t\"properties\": {\n\t\t\"+1\": {\n\t\t\t\"id\": \"Wp%3DC\",\n\t\t\t\"name\": \"+1\",\n\t\t\t\"type\": \"people\",\n\t\t\t\"people\": {}\n\t\t},\n\t\t\"In stock\": {\n\t\t\t\"id\": \"fk%5EY\",\n\t\t\t\"name\": \"In stock\",\n\t\t\t\"type\": \"checkbox\",\n\t\t\t\"checkbox\": {}\n\t\t},\n\t\t\"Price\": {\n\t\t\t\"id\": \"evWq\",\n\t\t\t\"name\": \"Price\",\n\t\t\t\"type\": \"number\",\n\t\t\t\"number\": {\n\t\t\t\t\"format\": \"dollar\"\n\t\t\t}\n\t\t},\n\t\t\"Description\": {\n\t\t\t\"id\": \"V}lX\",\n\t\t\t\"name\": \"Description\",\n\t\t\t\"type\": \"rich_text\",\n\t\t\t\"rich_text\": {}\n\t\t},\n\t\t\"Last ordered\": {\n\t\t\t\"id\": \"eVnV\",\n\t\t\t\"name\": \"Last ordered\",\n\t\t\t\"type\": \"date\",\n\t\t\t\"date\": {}\n\t\t},\n\t\t\"Meals\": {\n\t\t\t\"id\": \"%7DWA~\",\n\t\t\t\"name\": \"Meals\",\n\t\t\t\"type\": \"relation\",\n\t\t\t\"relation\": {\n\t\t\t\t\"database_id\": \"668d797c-76fa-4934-9b05-ad288df2d136\",\n\t\t\t\t\"synced_property_name\": \"Related to Grocery List (Meals)\"\n\t\t\t}\n\t\t},\n\t\t\"Number of meals\": {\n\t\t\t\"id\": \"Z\\\\Eh\",\n\t\t\t\"name\": \"Number of meals\",\n\t\t\t\"type\": \"rollup\",\n\t\t\t\"rollup\": {\n\t\t\t\t\"rollup_property_name\": \"Name\",\n\t\t\t\t\"relation_property_name\": \"Meals\",\n\t\t\t\t\"rollup_property_id\": \"title\",\n\t\t\t\t\"relation_property_id\": \"mxp^\",\n\t\t\t\t\"function\": \"count\"\n\t\t\t}\n\t\t},\n\t\t\"Store availability\": {\n\t\t\t\"id\": \"s}Kq\",\n\t\t\t\"name\": \"Store availability\",\n\t\t\t\"type\": \"multi_select\",\n\t\t\t\"multi_select\": {\n\t\t\t\t\"options\": [\n\t\t\t\t\t{\n\t\t\t\t\t\t\"id\": \"cb79b393-d1c1-4528-b517-c450859de766\",\n\t\t\t\t\t\t\"name\": \"Duc Loi Market\",\n\t\t\t\t\t\t\"color\": \"blue\"\n\t\t\t\t\t},\n\t\t\t\t\t{\n\t\t\t\t\t\t\"id\": \"58aae162-75d4-403b-a793-3bc7308e4cd2\",\n\t\t\t\t\t\t\"name\": \"Rainbow Grocery\",\n\t\t\t\t\t\t\"color\": \"gray\"\n\t\t\t\t\t},\n\t\t\t\t\t{\n\t\t\t\t\t\t\"id\": \"22d0f199-babc-44ff-bd80-a9eae3e3fcbf\",\n\t\t\t\t\t\t\"name\": \"Nijiya Market\",\n\t\t\t\t\t\t\"color\": \"purple\"\n\t\t\t\t\t},\n\t\t\t\t\t{\n\t\t\t\t\t\t\"id\": \"0d069987-ffb0-4347-bde2-8e4068003dbc\",\n\t\t\t\t\t\t\"name\": \"Gus's Community Market\",\n\t\t\t\t\t\t\"color\": \"yellow\"\n\t\t\t\t\t}\n\t\t\t\t]\n\t\t\t}\n\t\t},\n\t\t\"Photo\": {\n\t\t\t\"id\": \"yfiK\",\n\t\t\t\"name\": \"Photo\",\n\t\t\t\"type\": \"files\",\n\t\t\t\"files\": {}\n\t\t},\n\t\t\"Food group\": {\n\t\t\t\"id\": \"CM%3EH\",\n\t\t\t\"name\": \"Food group\",\n\t\t\t\"type\": \"select\",\n\t\t\t\"select\": {\n\t\t\t\t\"options\": [\n\t\t\t\t\t{\n\t\t\t\t\t\t\"id\": \"6d4523fa-88cb-4ffd-9364-1e39d0f4e566\",\n\t\t\t\t\t\t\"name\": \"🥦Vegetable\",\n\t\t\t\t\t\t\"color\": \"green\"\n\t\t\t\t\t},\n\t\t\t\t\t{\n\t\t\t\t\t\t\"id\": \"268d7e75-de8f-4c4b-8b9d-de0f97021833\",\n\t\t\t\t\t\t\"name\": \"🍎Fruit\",\n\t\t\t\t\t\t\"color\": \"red\"\n\t\t\t\t\t},\n\t\t\t\t\t{\n\t\t\t\t\t\t\"id\": \"1b234a00-dc97-489c-b987-829264cfdfef\",\n\t\t\t\t\t\t\"name\": \"💪Protein\",\n\t\t\t\t\t\t\"color\": \"yellow\"\n\t\t\t\t\t}\n\t\t\t\t]\n\t\t\t}\n\t\t},\n\t\t\"Name\": {\n\t\t\t\"id\": \"title\",\n\t\t\t\"name\": \"Name\",\n\t\t\t\"type\": \"title\",\n\t\t\t\"title\": {}\n\t\t}\n\t},\n\t\"parent\": {\n\t\t\"type\": \"database_id\",\n\t\t\"database_id\": \"6ee911d9-189c-4844-93e8-260c1438b6e4\"\n\t},\n\t\"database_parent\": {\n\t\t\"type\": \"page_id\",\n\t\t\"page_id\": \"98ad959b-2b6a-4774-80ee-00246fb0ea9b\"\n\t},\n\t\"archived\": false,\n\t\"is_inline\": false,\n\t\"icon\": {\n\t\t\"type\": \"emoji\",\n\t\t\"emoji\": \"🎉\"\n\t},\n\t\"cover\": {\n\t\t\"type\": \"external\",\n\t\t\"external\": {\n\t\t\t\"url\": \"https://website.domain/images/image.png\"\n\t\t}\n\t},\n\t\"url\": \"https://www.notion.so/bc1211cae3f14939ae34260b16f627c\",\n\t\"title\": [\n\t\t{\n\t\t\t\"type\": \"text\",\n\t\t\t\"text\": {\n\t\t\t\t\"content\": \"Grocery List\",\n\t\t\t\t\"link\": null\n\t\t\t},\n\t\t\t\"annotations\": {\n\t\t\t\t\"bold\": false,\n\t\t\t\t\"italic\": false,\n\t\t\t\t\"strikethrough\": false,\n\t\t\t\t\"underline\": false,\n\t\t\t\t\"code\": false,\n\t\t\t\t\"color\": \"default\"\n\t\t\t},\n\t\t\t\"plain_text\": \"Grocery List\",\n\t\t\t\"href\": null\n\t\t}\n\t]\n}"
                  }
                },
                "schema": {
                  "type": "object",
                  "properties": {
                    "object": {
                      "type": "string",
                      "example": "data_source"
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
                          "example": "database_id"
                        },
                        "database_id": {
                          "type": "string",
                          "example": "6ee911d9-189c-4844-93e8-260c1438b6e4"
                        }
                      }
                    },
                    "database_parent": {
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
              "language": "curl",
              "code": "curl --request GET \\\n     --url 'https://api.notion.com/v1/data_sources/b55c9c91-384d-452b-81db-d1ef79372b75' \\\n     -H 'Notion-Version: 2025-09-03' \\\n     -H 'Authorization: Bearer '\"$NOTION_API_KEY\"''"
            },
            {
              "language": "node",
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const dataSourceId = '59833787-2cf9-4fdf-8782-e53db20768a5';\n  const response = await notion.dataSources.retrieve({ data_source_id: dataSourceId });\n  console.log(response);\n})();"
            }
          ],
          "samples-languages": [
            "curl",
            "node"
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
  "_id": "606ecc2cd9e93b0044cf6e47:68b1eba8c6fd9e0ed5b78608"
}
```