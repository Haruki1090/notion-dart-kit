# Update page properties

Updates the `properties` of a page in a database. The `properties` body param of this endpoint can only be used to update the `properties` of a page that is a child of a database. The page’s `properties` schema must match the parent [database’s properties](https://developers.notion.com/reference/property-object).

This endpoint can be used to update any page `icon` or `cover`, and can be used to [`delete`](https://developers.notion.com/reference/archive-a-page) or restore any page.

To add page content instead of page properties, use the [append block children](https://developers.notion.com/reference/patch-block-children) endpoint. The `page_id` can be passed as the `block_id` when adding block children to the page.

Returns the updated [page object](https://developers.notion.com/reference/page).

> 📘 Requirements
> 
> Your integration must have [update content capabilities](https://developers.notion.com/reference/capabilities#content-capabilities) on the target page in order to call this endpoint. To update your integrations capabilities, navigation to the [My integrations](https://www.notion.so/my-integrations) dashboard, select your integration, go to the **Capabilities** tab, and update your settings as needed.
> 
> Attempting a query without update content capabilities returns an HTTP response with a 403 status code.

> 🚧 Limitations
> 
> - Updating [rollup property values](https://developers.notion.com/reference/property-value-object#rollup-property-values) is not supported. 
> - A page’s `parent` cannot be changed.

### Errors

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
    "/v1/pages/{page_id}": {
      "patch": {
        "summary": "Update page properties",
        "description": "",
        "operationId": "patch-page",
        "parameters": [
          {
            "name": "page_id",
            "in": "path",
            "description": "The identifier for the Notion page to be updated.",
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
                  "properties": {
                    "type": "string",
                    "description": "The property values to update for the page. The keys are the names or IDs of the property and the values are property values. If a page property ID is not included, then it is not changed.",
                    "format": "json"
                  },
                  "in_trash": {
                    "type": "boolean",
                    "description": "Set to true to delete a block. Set to false to restore a block.",
                    "default": false
                  },
                  "icon": {
                    "type": "string",
                    "description": "A page icon for the page. Supported types are [external file object](https://developers.notion.com/reference/file-object) or [emoji object](https://developers.notion.com/reference/emoji-object).",
                    "format": "json"
                  },
                  "cover": {
                    "type": "string",
                    "description": "A cover image for the page. Only [external file objects](https://developers.notion.com/reference/file-object) are supported.",
                    "format": "json"
                  },
                  "is_locked": {
                    "type": "boolean",
                    "description": "Whether the page should be locked from editing in the Notion app UI. If not provided, the locked state will not be updated."
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
                    "value": "{\n\t\"object\": \"page\",\n\t\"id\": \"59833787-2cf9-4fdf-8782-e53db20768a5\",\n\t\"created_time\": \"2022-03-01T19:05:00.000Z\",\n\t\"last_edited_time\": \"2022-07-06T19:16:00.000Z\",\n\t\"created_by\": {\n\t\t\"object\": \"user\",\n\t\t\"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n\t},\n\t\"last_edited_by\": {\n\t\t\"object\": \"user\",\n\t\t\"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n\t},\n\t\"cover\": {\n\t\t\"type\": \"external\",\n\t\t\"external\": {\n\t\t\t\"url\": \"https://upload.wikimedia.org/wikipedia/commons/6/62/Tuscankale.jpg\"\n\t\t}\n\t},\n\t\"icon\": {\n\t\t\"type\": \"emoji\",\n\t\t\"emoji\": \"🥬\"\n\t},\n\t\"parent\": {\n\t\t\"type\": \"data_source_id\",\n    \"data_source_id\": \"d9824bdc-8445-4327-be8b-5b47500af6ce\",\n    \"database_id\": \"9ce034a5-74ca-4259-8b01-8494453204fe\"\n\t},\n  \"archived\": false,\n  \"is_locked\": false,\n\t\"properties\": {\n\t\t\"Store availability\": {\n\t\t\t\"id\": \"%3AUPp\"\n\t\t},\n\t\t\"Food group\": {\n\t\t\t\"id\": \"A%40Hk\"\n\t\t},\n\t\t\"Price\": {\n\t\t\t\"id\": \"BJXS\"\n\t\t},\n\t\t\"Responsible Person\": {\n\t\t\t\"id\": \"Iowm\"\n\t\t},\n\t\t\"Last ordered\": {\n\t\t\t\"id\": \"Jsfb\"\n\t\t},\n\t\t\"Cost of next trip\": {\n\t\t\t\"id\": \"WOd%3B\"\n\t\t},\n\t\t\"Recipes\": {\n\t\t\t\"id\": \"YfIu\"\n\t\t},\n\t\t\"Description\": {\n\t\t\t\"id\": \"_Tc_\"\n\t\t},\n\t\t\"In stock\": {\n\t\t\t\"id\": \"%60%5Bq%3F\"\n\t\t},\n\t\t\"Number of meals\": {\n\t\t\t\"id\": \"zag~\"\n\t\t},\n\t\t\"Photo\": {\n\t\t\t\"id\": \"%7DF_L\"\n\t\t},\n\t\t\"Name\": {\n\t\t\t\"id\": \"title\"\n\t\t}\n\t},\n\t\"url\": \"https://www.notion.so/Tuscan-Kale-598337872cf94fdf8782e53db20768a5\"\n}"
                  }
                },
                "schema": {
                  "type": "object",
                  "properties": {
                    "object": {
                      "type": "string",
                      "example": "page"
                    },
                    "id": {
                      "type": "string",
                      "example": "59833787-2cf9-4fdf-8782-e53db20768a5"
                    },
                    "created_time": {
                      "type": "string",
                      "example": "2022-03-01T19:05:00.000Z"
                    },
                    "last_edited_time": {
                      "type": "string",
                      "example": "2022-07-06T19:16:00.000Z"
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
                              "example": "https://upload.wikimedia.org/wikipedia/commons/6/62/Tuscankale.jpg"
                            }
                          }
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
                          "example": "🥬"
                        }
                      }
                    },
                    "parent": {
                      "type": "object",
                      "properties": {
                        "type": {
                          "type": "string",
                          "example": "data_source_id"
                        },
                        "data_source_id": {
                          "type": "string",
                          "example": "d9824bdc-8445-4327-be8b-5b47500af6ce"
                        },
                        "database_id": {
                          "type": "string",
                          "example": "9ce034a5-74ca-4259-8b01-8494453204fe"
                        }
                      }
                    },
                    "archived": {
                      "type": "boolean",
                      "example": false,
                      "default": true
                    },
                    "is_locked": {
                      "type": "boolean",
                      "example": false,
                      "default": true
                    },
                    "properties": {
                      "type": "object",
                      "properties": {
                        "Store availability": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "%3AUPp"
                            }
                          }
                        },
                        "Food group": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "A%40Hk"
                            }
                          }
                        },
                        "Price": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "BJXS"
                            }
                          }
                        },
                        "Responsible Person": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "Iowm"
                            }
                          }
                        },
                        "Last ordered": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "Jsfb"
                            }
                          }
                        },
                        "Cost of next trip": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "WOd%3B"
                            }
                          }
                        },
                        "Recipes": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "YfIu"
                            }
                          }
                        },
                        "Description": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "_Tc_"
                            }
                          }
                        },
                        "In stock": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "%60%5Bq%3F"
                            }
                          }
                        },
                        "Number of meals": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "zag~"
                            }
                          }
                        },
                        "Photo": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "%7DF_L"
                            }
                          }
                        },
                        "Name": {
                          "type": "object",
                          "properties": {
                            "id": {
                              "type": "string",
                              "example": "title"
                            }
                          }
                        }
                      }
                    },
                    "url": {
                      "type": "string",
                      "example": "https://www.notion.so/Tuscan-Kale-598337872cf94fdf8782e53db20768a5"
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
                  },
                  "has_more is set to true for a page property": {
                    "value": "{\n  \"object\": \"error\",\n  \"status\": 400,\n  \"code\": \"invalid_request\",\n  \"message\": ”Can't update page because has_more is set to true for page property '${invalidPageProperty}’”\n}"
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
                    "value": "{\n    \"object\": \"error\",\n    \"status\": 404,\n    \"code\": \"object_not_found\",\n    \"message\": \"Could not find page with ID: 4cc3b486-0b48-4cfe-8ce9-67c47100eb6a. Make sure the relevant pages and databases are shared with your integration.\"\n}"
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
                      "example": "Could not find page with ID: 4cc3b486-0b48-4cfe-8ce9-67c47100eb6a. Make sure the relevant pages and databases are shared with your integration."
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
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const pageId = '59833787-2cf9-4fdf-8782-e53db20768a5';\n  const response = await notion.pages.update({\n    page_id: pageId,\n    properties: {\n      'In stock': {\n        checkbox: true,\n      },\n    },\n  });\n  console.log(response);\n})();",
              "name": "Notion SDK for JavaScript"
            },
            {
              "language": "curl",
              "code": "curl https://api.notion.com/v1/pages/60bdc8bd-3880-44b8-a9cd-8a145b3ffbd7 \\\n  -H 'Authorization: Bearer '\"$NOTION_API_KEY\"'' \\\n  -H \"Content-Type: application/json\" \\\n  -H \"Notion-Version: 2022-06-28\" \\\n  -X PATCH \\\n\t--data '{\n  \"properties\": {\n    \"In stock\": { \"checkbox\": true }\n  }\n}'"
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
  "_id": "606ecc2cd9e93b0044cf6e47:611ffcf84f24e0003b3533ee"
}
```