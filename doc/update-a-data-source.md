# Update a data source

Updates the [data source](ref:data-source)  object — the properties, title, description, or whether it's in the trash — of a specified data source under a database. 

Returns the updated data source object.

Use the `parent` parameter to move the data source to a different `database_id`. If you do so, any existing views that refer to the data source in the current database continue to exist, but become _linked_ views. A new standard "table" view for the moved data source is created under the new (destination) database. Use the Notion app to make any further changes to the views; managing views using the API is not currently supported.

Data source properties represent the columns (or schema) of a data source. To update the properties of a data source, use the `properties` [body param](ref:update-data-source-properties) with this endpoint. Learn more about data source properties in the [data source properties](ref:property-object) and [Update data source properties](ref:update-data-source-properties) docs.

To update a `relation` data source property, share the related database with the integration. Learn more about relations in the [data source properties](ref:property-object#relation) page.

For an overview of how to use the REST API with databases, refer to the [Working with databases](https://developers.notion.com/docs/working-with-databases) guide.

### How data sources property type changes work

All properties in pages are stored as rich text. Notion will convert that rich text based on the types defined in a data source's schema. When a type is changed using the API, the data will continue to be available, it is just presented differently.

For example, a multi select property value is represented as a comma-separated list of strings (eg. "1, 2, 3") and a people property value is represented as a comma-separated list of IDs. These are compatible and the type can be converted.

Note: Not all type changes work. In some cases data will no longer be returned, such as people type → file type.

### Interacting with data source rows

This endpoint cannot be used to update data source rows.

To update the properties of a data source row — rather than a column — use the [Update page properties](https://developers.notion.com/reference/patch-page) endpoint. To add a new row to a database, use the [Create a page](https://developers.notion.com/reference/post-page) endpoint.

### Recommended data source schema size limit

Developers are encouraged to keep their data source schema size to a maximum of **50KB**. To stay within this schema size limit, the number of properties (or columns) added to a data source should be managed.

Data source schema updates that are too large will be blocked by the REST API to help developers keep their data source queries performant.

### Errors

Each Public API endpoint can return several possible error codes. See the [Error codes section](https://developers.notion.com/reference/status-codes#error-codes) of the Status codes documentation for more information.

> 🚧 The following data source properties cannot be updated via the API:
> 
> - `formula`
> - `status`
> - [Synced content](https://www.notion.so/help/guides/synced-databases-bridge-different-tools) 
> - `place`

> 📘 Data source relations must be shared with your integration
> 
> To update a data source [relation](https://www.notion.so/help/relations-and-rollups#what-is-a-database-relation) property, the related database must also be shared with your integration.

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
      "patch": {
        "summary": "Update a data source",
        "description": "",
        "operationId": "update-a-data-source",
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
            "name": "data_source_id",
            "in": "path",
            "description": "ID of a Notion data source. This is a UUIDv4, with or without dashes.",
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
                  "properties": {
                    "type": "object",
                    "properties": {
                      "<propertyIdentifier>": {
                        "type": "object",
                        "description": "Map from property identifier strings to `null` (to remove an existing property) or an an object with a property configuration update.",
                        "properties": {
                          "name": {
                            "type": "string",
                            "description": "Updated name of the property. Must be provided when renaming an existing parameter. Otherwise, optional."
                          },
                          "description": {
                            "type": "string",
                            "description": "Description of the property."
                          },
                          "type": {
                            "type": "string",
                            "description": "Type of property being updated, added, or renamed. (Optional)",
                            "enum": [
                              "\"number\"",
                              "\"formula\"",
                              "\"select\"",
                              "\"multi_select\"",
                              "\"status\"",
                              "\"relation\"",
                              "\"rollup\"",
                              "\"unique_id\"",
                              "\"title\"",
                              "\"rich_text\"",
                              "\"url\"",
                              "\"people\"",
                              "\"files\"",
                              "\"email\"",
                              "\"phone_number\"",
                              "\"date\"",
                              "\"checkbox\"",
                              "\"created_by\"",
                              "\"created_time\"",
                              "\"last_edited_by\"",
                              "\"last_edited_time\"",
                              "\"button\"",
                              "\"location\"",
                              "\"verification\"",
                              "\"last_visited_time\"",
                              "\"place\""
                            ]
                          },
                          "number": {
                            "type": "object",
                            "properties": {
                              "format": {
                                "type": "string",
                                "description": "The format of the number property.",
                                "enum": [
                                  "\"number\"",
                                  "\"number_with_commas\"",
                                  "\"percent\"",
                                  "\"dollar\"",
                                  "\"australian_dollar\"",
                                  "\"canadian_dollar\"",
                                  "\"singapore_dollar\"",
                                  "\"euro\"",
                                  "\"pound\"",
                                  "\"yen\"",
                                  "\"ruble\"",
                                  "\"rupee\"",
                                  "\"won\"",
                                  "\"yuan\"",
                                  "\"real\"",
                                  "\"lira\"",
                                  "\"rupiah\"",
                                  "\"franc\"",
                                  "\"hong_kong_dollar\"",
                                  "\"new_zealand_dollar\"",
                                  "\"krona\"",
                                  "\"norwegian_krone\"",
                                  "\"mexican_peso\"",
                                  "\"rand\"",
                                  "\"new_taiwan_dollar\"",
                                  "\"danish_krone\"",
                                  "\"zloty\"",
                                  "\"baht\"",
                                  "\"forint\"",
                                  "\"koruna\"",
                                  "\"shekel\"",
                                  "\"chilean_peso\"",
                                  "\"philippine_peso\"",
                                  "\"dirham\"",
                                  "\"colombian_peso\"",
                                  "\"riyal\"",
                                  "\"ringgit\"",
                                  "\"leu\"",
                                  "\"argentine_peso\"",
                                  "\"uruguayan_peso\"",
                                  "\"peruvian_sol\"",
                                  ""
                                ]
                              }
                            }
                          },
                          "formula": {
                            "type": "object",
                            "properties": {
                              "expression": {
                                "type": "string",
                                "description": "A valid Notion formula expression."
                              }
                            }
                          },
                          "select": {
                            "type": "object",
                            "properties": {
                              "options": {
                                "type": "array",
                                "description": "Array of added or updated options for a `select` or `multi_select` property. One of `id` or `name` must be included in each array entry.",
                                "items": {
                                  "properties": {
                                    "color": {
                                      "type": "string",
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
                                        ""
                                      ]
                                    },
                                    "description": {
                                      "type": "string"
                                    },
                                    "name": {
                                      "type": "string"
                                    },
                                    "id": {
                                      "type": "string"
                                    }
                                  },
                                  "type": "object"
                                }
                              }
                            }
                          },
                          "multi_select": {
                            "type": "object",
                            "properties": {
                              "options": {
                                "type": "array",
                                "description": "Array of added or updated options for a `select` or `multi_select` property. One of `id` or `name` must be included in each array entry.",
                                "items": {
                                  "properties": {
                                    "color": {
                                      "type": "string",
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
                                        ""
                                      ]
                                    },
                                    "description": {
                                      "type": "string"
                                    },
                                    "name": {
                                      "type": "string"
                                    },
                                    "id": {
                                      "type": "string"
                                    }
                                  },
                                  "type": "object"
                                }
                              }
                            }
                          },
                          "relation": {
                            "type": "object",
                            "properties": {
                              "type": {
                                "type": "string",
                                "enum": [
                                  "\"single_property\"",
                                  "\"dual_property\""
                                ]
                              },
                              "single_property": {
                                "type": "object",
                                "description": "An empty object `{}`.",
                                "properties": {}
                              },
                              "dual_property": {
                                "type": "object",
                                "properties": {
                                  "synced_property_id": {
                                    "type": "string"
                                  },
                                  "synced_property_name": {
                                    "type": "string"
                                  }
                                }
                              }
                            }
                          },
                          "rollup": {
                            "type": "object",
                            "required": [
                              "function"
                            ],
                            "properties": {
                              "function": {
                                "type": "string",
                                "enum": [
                                  "\"count\"",
                                  "\"count_values\"",
                                  "\"empty\"",
                                  "\"not_empty\"",
                                  "\"unique\"",
                                  "\"show_unique\"",
                                  "\"percent_empty\"",
                                  "\"percent_not_empty\"",
                                  "\"sum\"",
                                  "\"average\"",
                                  "\"median\"",
                                  "\"min\"",
                                  "\"max\"",
                                  "\"range\"",
                                  "\"earliest_date\"",
                                  "\"latest_date\"",
                                  "\"date_range\"",
                                  "\"checked\"",
                                  "\"unchecked\"",
                                  "\"percent_checked\"",
                                  "\"percent_unchecked\"",
                                  "\"count_per_group\"",
                                  "\"percent_per_group\"",
                                  "\"show_original\""
                                ]
                              },
                              "relation_property_name": {
                                "type": "string"
                              },
                              "relation_property_id": {
                                "type": "string"
                              },
                              "rollup_property_name": {
                                "type": "string"
                              },
                              "rollup_property_id": {
                                "type": "string"
                              }
                            }
                          },
                          "unique_id": {
                            "type": "object",
                            "properties": {
                              "prefix": {
                                "type": "string"
                              }
                            }
                          }
                        }
                      }
                    }
                  },
                  "title": {
                    "type": "array",
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
                  "icon": {
                    "type": "object",
                    "description": "Optionally provide a new icon object to update the data source's icon, or provide `null` to remove the existing icon.",
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
                  "in_trash": {
                    "type": "boolean",
                    "description": "Pass `true` to move a data source to the trash, or `false` to restore it from the trash."
                  },
                  "parent": {
                    "type": "object",
                    "description": "The parent of the data source, when moving it to a different database. If not provided, the parent will not be updated.",
                    "required": [
                      "database_id"
                    ],
                    "properties": {
                      "type": {
                        "type": "string",
                        "description": "Always `database_id`.",
                        "enum": [
                          "\"database_id\""
                        ]
                      },
                      "database_id": {
                        "type": "string",
                        "description": "The ID of the parent database (with or without dashes), for example, 195de9221179449fab8075a27c979105"
                      }
                    }
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
              "code": "curl --request PATCH \\\n     --url 'https://api.notion.com/v1/data_sources/b55c9c91-384d-452b-81db-d1ef79372b75' \\\n     --header 'accept: application/json' \\\n     --header 'content-type: application/json' \\\n     --data '\n{\n\t\"properties\": {\n    \"Count\": null,\n    \"Website\": {\n      \"type\": \"url\",\n      \"url\": {}\n    }\n\t},\n\t\"title\": [\n\t\t{\n\t\t\t\"type\": \"text\",\n\t\t\t\"text\": {\"content\": \"New data source title\"}\n\t\t}\n\t]\n}\n'"
            },
            {
              "language": "node",
              "code": "import { Client } from \"@notionhq/client\"\n\nconst notion = new Client({\n  auth: \"{ACCESS_TOKEN}\",\n  notionVersion: \"2025-09-03\",\n})\n\ntry {\n  const response = await notion.dataSources.update({\n    data_source_id: \"6ee911d9-189c-4844-93e8-260c1438b6e4\",\n    properties: {\n      Count: null,\n      Website: {\n        type: \"url\",\n        url: {}\n      }\n    },\n    title: [\n      {\n        type: \"text\",\n        text: {content: \"New child data source\"}\n      }\n    ]\n  })\n\n  const dataSourceId = response.id\n  console.log(\"Successfully updated data source with ID:\", dataSourceId)\n\n} catch (error) {\n  // Handle `APIResponseError`\n  console.error(error)\n}"
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
  "_id": "606ecc2cd9e93b0044cf6e47:68b1eb94294f81a52a785591"
}
```