# Create a database

Create a database and its initial data source.

Creates a database as a subpage in the specified parent page, or as a private page at the workspace level, with the specified `properties` schema set on its `initial_data_source`. Currently, the `parent` of a new database must be a Notion page (`page_id` type) or a [wiki database](https://www.notion.so/help/wikis-and-verified-pages).

Use this endpoint to create a database, its first [data source](ref:data-source), and its first table view, all in one API call. Then, if you want to add a second data source, use the [Create a data source](ref:create-a-data-source) API with a version of at least `2025-09-03`, and provide the `database_id` as the `id` returned by the database create response.

For a complete reference on what properties are available, see [Data source properties](ref:property-object). After creating the database, to update one of its child data sources' properties, use the [Update a data source](ref:update-a-data-source) API.

> 📘 Integration capabilities
> 
> This endpoint requires an integration to have insert content capabilities. Attempting to call this API without insert content capabilities will return an HTTP response with a 403 status code. For more information on integration capabilities, see the [capabilities guide](ref:capabilities).

> 🚧 Limitations
> 
> Creating new `status` database properties is currently not supported.

### Errors

Returns a 404 if the specified parent page does not exist, or if the integration does not have access to the parent page.

Returns a 400 if the request is incorrectly formatted, or a 429 HTTP response if the request exceeds the [request limits](ref:request-limits).

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
    "/v1/databases": {
      "post": {
        "summary": "Create a database",
        "description": "Create a database and its initial data source.",
        "operationId": "database-create",
        "parameters": [
          {
            "name": "Notion-Version",
            "in": "header",
            "description": "The [API version](/reference/versioning) to use for this request. The latest version is `2025-09-03`.",
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
                "required": [
                  "parent"
                ],
                "properties": {
                  "parent": {
                    "type": "object",
                    "description": "The parent page or workspace where the database will be created.",
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
                  "initial_data_source": {
                    "type": "object",
                    "description": "Initial data source configuration for the database.",
                    "properties": {
                      "properties": {
                        "type": "object",
                        "description": "The properties to apply to the database's initial data source.",
                        "properties": {
                          "<propertyIdentifier>": {
                            "type": "object",
                            "description": "Hash map of strings (property identifiers) corresponding to the configuration of each property. The `type` of each property can be omitted, but you must provide a sub-object whose parameter name matches the type, even if it's an empty object. For example, {\"type\": \"date\", \"date\": {}} and {\"date\": {}} are both valid values, but {\"type\": \"date\"}` is not.",
                            "properties": {
                              "description": {
                                "type": "string",
                                "description": "The property's description (optional)."
                              },
                              "type": {
                                "type": "string",
                                "description": "The type of property.",
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
                      }
                    }
                  },
                  "title": {
                    "type": "array",
                    "description": "The title of the database.",
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
                  "description": {
                    "type": "array",
                    "description": "The description of the database.",
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
                    "description": "The icon for the database.",
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
                    "description": "The cover image for the database.",
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
  "_id": "606ecc2cd9e93b0044cf6e47:68b0cf40c22c6762073b47da"
}
```