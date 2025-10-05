# Create a page

Creates a new [page](ref:page) that is a child of an existing page or [data source](ref:data-source).

If the new page is a child of an existing page,`title` is the only valid property in the `properties` body param.

If the new page is a child of an existing database, the keys of the `properties` object body param must match the parent [data source's properties](ref:property-object).

This endpoint can be used to create a new page with or without content using the `children` option. To add content to a page after creating it, use the [Append block children](https://developers.notion.com/reference/patch-block-children) endpoint.

Returns a new [page object](https://developers.notion.com/reference/page).

> 🚧 Some page `properties` are not supported via the API.
> 
> A request body that includes `rollup`, `created_by`, `created_time`, `last_edited_by`, or `last_edited_time` values in the properties object returns an error. These Notion-generated values cannot be created or updated via the API. If the `parent` contains any of these properties, then the new page’s corresponding values are automatically created.

> 📘 Requirements
> 
> Your integration must have [Insert Content capabilities](https://developers.notion.com/reference/capabilities#content-capabilities) on the target parent page or database in order to call this endpoint. To update your integrations capabilities, navigation to the [My integrations](https://www.notion.so/my-integrations) dashboard, select your integration, go to the **Capabilities** tab, and update your settings as needed.
> 
> Attempting a query without update content capabilities returns an HTTP response with a 403 status code.

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
    "/v1/pages": {
      "post": {
        "summary": "Create a page",
        "description": "",
        "operationId": "post-page",
        "parameters": [
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
                "required": [
                  "parent",
                  "properties"
                ],
                "properties": {
                  "parent": {
                    "type": "string",
                    "description": "The parent page or data source where the new page is inserted, represented as a JSON object with a `page_id` or `data_source_id` key, and the corresponding ID.",
                    "format": "json"
                  },
                  "properties": {
                    "type": "string",
                    "description": "The values of the page’s properties. If the `parent` is a database, then the schema must match the parent database’s properties. If the `parent` is a page, then the only valid object key is `title`.",
                    "format": "json"
                  },
                  "children": {
                    "type": "array",
                    "description": "The content to be rendered on the new page, represented as an array of [block objects](https://developers.notion.com/reference/block).",
                    "items": {
                      "type": "string"
                    }
                  },
                  "icon": {
                    "type": "string",
                    "description": "The icon of the new page. Either an [emoji object](https://developers.notion.com/reference/emoji-object) or an [external file object](https://developers.notion.com/reference/file-object)..",
                    "format": "json"
                  },
                  "cover": {
                    "type": "string",
                    "description": "The cover image of the new page, represented as a [file object](https://developers.notion.com/reference/file-object).",
                    "format": "json"
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
                    "value": "{\n  \"object\": \"page\",\n  \"id\": \"59833787-2cf9-4fdf-8782-e53db20768a5\",\n  \"created_time\": \"2022-03-01T19:05:00.000Z\",\n  \"last_edited_time\": \"2022-07-06T19:16:00.000Z\",\n  \"created_by\": {\n    \"object\": \"user\",\n    \"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n  },\n  \"last_edited_by\": {\n    \"object\": \"user\",\n    \"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n  },\n  \"cover\": {\n    \"type\": \"external\",\n    \"external\": {\n      \"url\": \"https://upload.wikimedia.org/wikipedia/commons/6/62/Tuscankale.jpg\"\n    }\n  },\n  \"icon\": {\n    \"type\": \"emoji\",\n    \"emoji\": \"🥬\"\n  },\n  \"parent\": {\n    \"type\": \"data_source_id\",\n    \"data_source_id\": \"d9824bdc-8445-4327-be8b-5b47500af6ce\",\n    \"database_id\": \"9ce034a5-74ca-4259-8b01-8494453204fe\"\n  },\n  \"archived\": false,\n  \"properties\": {\n    \"Store availability\": {\n      \"id\": \"%3AUPp\"\n    },\n    \"Food group\": {\n      \"id\": \"A%40Hk\"\n    },\n    \"Price\": {\n      \"id\": \"BJXS\"\n    },\n    \"Responsible Person\": {\n      \"id\": \"Iowm\"\n    },\n    \"Last ordered\": {\n      \"id\": \"Jsfb\"\n    },\n    \"Cost of next trip\": {\n      \"id\": \"WOd%3B\"\n    },\n    \"Recipes\": {\n      \"id\": \"YfIu\"\n    },\n    \"Description\": {\n      \"id\": \"_Tc_\"\n    },\n    \"In stock\": {\n      \"id\": \"%60%5Bq%3F\"\n    },\n    \"Number of meals\": {\n      \"id\": \"zag~\"\n    },\n    \"Photo\": {\n      \"id\": \"%7DF_L\"\n    },\n    \"Name\": {\n      \"id\": \"title\"\n    }\n  },\n  \"url\": \"https://www.notion.so/Tuscan-Kale-598337872cf94fdf8782e53db20768a5\"\n}"
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
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const response = await notion.pages.create({\n    cover: {\n      type: \"external\",\n      external: {\n        url: \"https://upload.wikimedia.org/wikipedia/commons/6/62/Tuscankale.jpg\"\n      }\n    },\n    icon: {\n      type: \"emoji\",\n      emoji: \"🥬\"\n    },\n    parent: {\n      type: \"data_source_id\",\n      data_source_id: \"d9824bdc-8445-4327-be8b-5b47500af6ce\"\n    },\n    properties: {\n      Name: {\n        title: [\n          {\n            text: {\n              content: \"Tuscan kale\"\n            }\n          }\n        ]\n      },\n      Description: {\n        rich_text: [\n          {\n            text: {\n              content: \"A dark green leafy vegetable\"\n            }\n          }\n        ]\n      },\n      \"Food group\": {\n        select: {\n          name: \"🥬 Vegetable\"\n        }\n      }\n    },\n    children: [\n      {\n        object: \"block\",\n        heading_2: {\n          rich_text: [\n            {\n              text: {\n                content: \"Lacinato kale\"\n              }\n            }\n          ]\n        }\n      },\n      {\n        object: \"block\",\n        paragraph: {\n          rich_text: [\n            {\n              text: {\n                content:\n                  \"Lacinato kale is a variety of kale with a long tradition in Italian cuisine, especially that of Tuscany. It is also known as Tuscan kale, Italian kale, dinosaur kale, kale, flat back kale, palm tree kale, or black Tuscan palm.\",\n                link: {\n                  url: \"https://en.wikipedia.org/wiki/Lacinato_kale\"\n                }\n              },\n              href: \"https://en.wikipedia.org/wiki/Lacinato_kale\"\n            }\n          ],\n          color: \"default\"\n        }\n      }\n    ]\n  });\n\n  console.log(response);\n})();",
              "name": "Notion SDK for JavaScript"
            },
            {
              "language": "curl",
              "code": "curl 'https://api.notion.com/v1/pages' \\\n  -H 'Authorization: Bearer '\"$NOTION_API_KEY\"'' \\\n  -H \"Content-Type: application/json\" \\\n  -H \"Notion-Version: 2022-06-28\" \\\n  --data '{\n  \"parent\": {\n    \"data_source_id\": \"d9824bdc84454327be8b5b47500af6ce\"\n  },\n  \"icon\": {\n    \"emoji\": \"🥬\"\n  },\n  \"cover\": {\n    \"external\": {\n      \"url\": \"https://upload.wikimedia.org/wikipedia/commons/6/62/Tuscankale.jpg\"\n    }\n  },\n  \"properties\": {\n    \"Name\": {\n      \"title\": [\n        {\n          \"text\": {\n            \"content\": \"Tuscan Kale\"\n          }\n        }\n      ]\n    },\n    \"Description\": {\n      \"rich_text\": [\n        {\n          \"text\": {\n            \"content\": \"A dark green leafy vegetable\"\n          }\n        }\n      ]\n    },\n    \"Food group\": {\n      \"select\": {\n        \"name\": \"Vegetable\"\n      }\n    },\n    \"Price\": { \"number\": 2.5 }\n  },\n  \"children\": [\n    {\n      \"object\": \"block\",\n      \"type\": \"heading_2\",\n      \"heading_2\": {\n        \"rich_text\": [{ \"type\": \"text\", \"text\": { \"content\": \"Lacinato kale\" } }]\n      }\n    },\n    {\n      \"object\": \"block\",\n      \"type\": \"paragraph\",\n      \"paragraph\": {\n        \"rich_text\": [\n          {\n            \"type\": \"text\",\n            \"text\": {\n              \"content\": \"Lacinato kale is a variety of kale with a long tradition in Italian cuisine, especially that of Tuscany. It is also known as Tuscan kale, Italian kale, dinosaur kale, kale, flat back kale, palm tree kale, or black Tuscan palm.\",\n              \"link\": { \"url\": \"https://en.wikipedia.org/wiki/Lacinato_kale\" }\n            }\n          }\n        ]\n      }\n    }\n  ]\n}'"
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
  "_id": "606ecc2cd9e93b0044cf6e47:611ffc19e9237200478c6943"
}
```