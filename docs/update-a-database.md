# Update a database

> ❗️ Deprecated as of version 2025-09-03
> 
> This page describes the API for versions up to and including `2022-06-28`. In the new `2025-09-03` version, the concepts of databases and data sources were split up, as described in [Upgrading to 2025-09-03](doc:upgrade-guide-2025-09-03).
> 
> Refer to the new APIs instead:
> 
> - [Update a database](ref:database-update) 
> - [Update a data source](ref:update-a-data-source)

Updates the database object — the title, description, or properties — of a specified database. 

Returns the updated [database object](https://developers.notion.com/reference/database).

Database properties represent the columns (or schema) of a database. To update the properties of a database, use the `properties` [body param](https://developers.notion.com/reference/update-property-schema-object) with this endpoint. Learn more about database properties in the [database properties](https://developers.notion.com/reference/property-object) and [Update database properties](https://developers.notion.com/reference/update-property-schema-object) docs.

To update a `relation` database property, share the related database with the integration. Learn more about relations in the [database properties](https://developers.notion.com/reference/property-object#relation) page.

For an overview of how to use the REST API with databases, refer to the [Working with databases](https://developers.notion.com/docs/working-with-databases) guide.

### How database property type changes work

All properties in pages are stored as rich text. Notion will convert that rich text based on the types defined in a database's schema. When a type is changed using the API, the data will continue to be available, it is just presented differently.

For example, a multi select property value is represented as a comma-separated list of strings (eg. "1, 2, 3") and a people property value is represented as a comma-separated list of IDs. These are compatible and the type can be converted.

Note: Not all type changes work. In some cases data will no longer be returned, such as people type → file type.

### Interacting with database rows

This endpoint cannot be used to update database rows.

To update the properties of a database row — rather than a column — use the [Update page properties](https://developers.notion.com/reference/patch-page) endpoint. To add a new row to a database, use the [Create a page](https://developers.notion.com/reference/post-page) endpoint.

### Recommended database schema size limit

Developers are encouraged to keep their database schema size to a maximum of **50KB**. To stay within this schema size limit, the number of properties (or columns) added to a database should be managed.

Database schema updates that are too large will be blocked by the REST API to help developers keep their database queries performant.

### Errors

Each Public API endpoint can return several possible error codes. See the [Error codes section](https://developers.notion.com/reference/status-codes#error-codes) of the Status codes documentation for more information.

> 🚧 The following database properties cannot be updated via the API:
> 
> - `formula`
> - `select`
> - `status`
> - [Synced content](https://www.notion.so/help/guides/synced-databases-bridge-different-tools) 
> - A `multi_select` database property’s options values. An option can be removed, but not updated.

> 📘 Database relations must be shared with your integration
> 
> To update a database [relation](https://www.notion.so/help/relations-and-rollups#what-is-a-database-relation) property, the related database must also be shared with your integration.

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
      "patch": {
        "summary": "Update a database",
        "description": "",
        "operationId": "update-a-database",
        "parameters": [
          {
            "name": "database_id",
            "in": "path",
            "description": "identifier for a Notion database",
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
                  "title": {
                    "type": "array",
                    "description": "An array of [rich text objects](https://developers.notion.com/reference/rich-text) that represents the title of the database that is displayed in the Notion UI. If omitted, then the database title remains unchanged."
                  },
                  "description": {
                    "type": "array",
                    "description": "An array of [rich text objects](https://developers.notion.com/reference/rich-text) that represents the description of the database that is displayed in the Notion UI. If omitted, then the database description remains unchanged."
                  },
                  "properties": {
                    "type": "string",
                    "description": "The properties of a database to be changed in the request, in the form of a JSON object. If updating an existing property, then the keys are the names or IDs of the properties as they appear in Notion, and the values are [property schema objects](ref:property-schema-object). If adding a new property, then the key is the name of the new database property and the value is a [property schema object](ref:property-schema-object).",
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
                    "value": "{\n  \"object\": \"database\",\n  \"id\": \"668d797c-76fa-4934-9b05-ad288df2d136\",\n  \"created_time\": \"2020-03-17T19:10:00.000Z\",\n  \"last_edited_time\": \"2021-08-11T17:26:00.000Z\",\n  \"parent\": {\n    \"type\": \"page_id\",\n    \"page_id\": \"48f8fee9-cd79-4180-bc2f-ec0398253067\"\n  },  \n  \"icon\": {\n    \"type\": \"emoji\",\n    \"emoji\": \"📝\"\n \t},\n  \"cover\": {\n  \t\"type\": \"external\",\n    \"external\": {\n    \t\"url\": \"https://website.domain/images/image.png\"\n    }\n  },\n  \"url\": \"https://www.notion.so/668d797c76fa49349b05ad288df2d136\",\n  \"title\": [\n    {\n      \"type\": \"text\",\n      \"text\": {\n        \"content\": \"Today'\\''s grocery list\",\n        \"link\": null\n      },\n      \"annotations\": {\n        \"bold\": false,\n        \"italic\": false,\n        \"strikethrough\": false,\n        \"underline\": false,\n        \"code\": false,\n        \"color\": \"default\"\n      },\n      \"plain_text\": \"Today'\\''s grocery list\",\n      \"href\": null\n    }\n  ],\n  \"description\": [\n    {\n      \"type\": \"text\",\n      \"text\": {\n        \"content\": \"Grocery list for just kale 🥬\",\n        \"link\": null\n      },\n      \"annotations\": {\n        \"bold\": false,\n        \"italic\": false,\n        \"strikethrough\": false,\n        \"underline\": false,\n        \"code\": false,\n        \"color\": \"default\"\n      },\n      \"plain_text\": \"Grocery list for just kale 🥬\",\n      \"href\": null\n    }\n  ],\n  \"properties\": {\n    \"Name\": {\n      \"id\": \"title\",\n\t\t\t\"name\": \"Name\",\n      \"type\": \"title\",\n      \"title\": {}\n    },\n    \"Description\": {\n      \"id\": \"J@cS\",\n\t\t\t\"name\": \"Description\",\n      \"type\": \"rich_text\",\n      \"rich_text\": {}\n    },\n    \"In stock\": {\n      \"id\": \"{xY`\",\n\t\t\t\"name\": \"In stock\",\n      \"type\": \"checkbox\",\n      \"checkbox\": {}\n    },\n    \"Food group\": {\n      \"id\": \"TJmr\",\n\t\t\t\"name\": \"Food group\",\n      \"type\": \"select\",\n      \"select\": {\n        \"options\": [\n          {\n            \"id\": \"96eb622f-4b88-4283-919d-ece2fbed3841\",\n            \"name\": \"🥦Vegetable\",\n            \"color\": \"green\"\n          },\n          {\n            \"id\": \"bb443819-81dc-46fb-882d-ebee6e22c432\",\n            \"name\": \"🍎Fruit\",\n            \"color\": \"red\"\n          },\n          {\n            \"id\": \"7da9d1b9-8685-472e-9da3-3af57bdb221e\",\n            \"name\": \"💪Protein\",\n            \"color\": \"yellow\"\n          }\n        ]\n      }\n    },\n    \"Price\": {\n      \"id\": \"cU^N\",\n\t\t\t\"name\": \"Price\",\n      \"type\": \"number\",\n      \"number\": {\n        \"format\": \"dollar\"\n      }\n    },\n    \"Cost of next trip\": {\n      \"id\": \"p:sC\",\n\t\t\t\"name\": \"Cost of next trip\",\n      \"type\": \"formula\",\n      \"formula\": {\n        \"value\": \"if(prop(\\\"In stock\\\"), 0, prop(\\\"Price\\\"))\"\n      }\n    },\n    \"Last ordered\": {\n      \"id\": \"]\\\\R[\",\n\t\t\t\"name\": \"Last ordered\",\n      \"type\": \"date\",\n      \"date\": {}\n    },\n    \"Meals\": {\n\t\t\t\"id\": \"gqk%60\",\n            \"name\": \"Meals\",\n      \"type\": \"relation\",\n      \"relation\": {\n        \"database\": \"668d797c-76fa-4934-9b05-ad288df2d136\",\n        \"synced_property_name\": null\n      }\n    },\n    \"Number of meals\": {\n      \"id\": \"Z\\\\Eh\",\n\t\t\t\"name\": \"Number of meals\",\n      \"type\": \"rollup\",\n      \"rollup\": {\n        \"rollup_property_name\": \"Name\",\n        \"relation_property_name\": \"Meals\",\n        \"rollup_property_id\": \"title\",\n        \"relation_property_id\": \"mxp^\",\n        \"function\": \"count\"\n      }\n    },\n    \"Store availability\": {\n\t\t\t\"id\": \"G%7Dji\",\n      \"name\": \"Store availability\",\n      \"type\": \"multi_select\",\n      \"multi_select\": {\n        \"options\": [\n          [\n            {\n              \"id\": \"d209b920-212c-4040-9d4a-bdf349dd8b2a\",\n              \"name\": \"Duc Loi Market\",\n              \"color\": \"blue\"\n            },\n            {\n              \"id\": \"70104074-0f91-467b-9787-00d59e6e1e41\",\n              \"name\": \"Rainbow Grocery\",\n              \"color\": \"gray\"\n            },\n            {\n              \"id\": \"6c3867c5-d542-4f84-b6e9-a420c43094e7\",\n              \"name\": \"Gus's Community Market\",\n              \"color\": \"yellow\"\n            },\n            {\n\t\t\t\t\t\t\t\"id\": \"a62fbb5f-fed4-44a4-8cac-cba5f518c1a1\",\n              \"name\": \"The Good Life Grocery\",\n              \"color\": \"orange\"\n           }\n          ]\n        ]\n      }\n    }\n    \"Photo\": {\n      \"id\": \"aTIT\",\n\t\t\t\"name\": \"Photo\",\n      \"type\": \"url\",\n      \"url\": {}\n    }\n  },\n  \"is_inline\": false\n}"
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
                    "value": "{\n    \"object\": \"error\",\n    \"status\": 400,\n    \"code\": \"validation_error\",\n    \"message\": \"body failed validation: body.title[0].text.content.length should be ≤ `2000`, instead was `2022`.\"\n}"
                  }
                },
                "schema": {
                  "oneOf": [
                    {
                      "type": "object",
                      "properties": {
                        "object": {
                          "type": "string",
                          "example": "error"
                        },
                        "status": {
                          "type": "integer",
                          "example": 400,
                          "default": 0
                        },
                        "code": {
                          "type": "string",
                          "example": "invalid_json"
                        },
                        "message": {
                          "type": "string",
                          "example": "Error parsing JSON body."
                        }
                      }
                    },
                    {
                      "type": "object",
                      "properties": {
                        "object": {
                          "type": "string",
                          "example": "error"
                        },
                        "status": {
                          "type": "integer",
                          "example": 400,
                          "default": 0
                        },
                        "code": {
                          "type": "string",
                          "example": "validation_error"
                        },
                        "message": {
                          "type": "string",
                          "example": "body failed validation: body.title[0].text.content.length should be ≤ `2000`, instead was `2022`."
                        }
                      }
                    }
                  ]
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
                    "value": "{\n    \"object\": \"error\",\n    \"status\": 404,\n    \"code\": \"object_not_found\",\n    \"message\": \"Could not find database with ID: a1d8501e-1ac1-43e9-a6bd-ea9fe6c8822c. Make sure the relevant pages and databases are shared with your integration.\"\n}"
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
                    "value": "{\n\t\"object\": \"error\",\n\t\"status\": 429,\n\t\"code\": \"rate_limited\",\n\t\"message\": \"You have been rate limited. Please try again in a few minutes.\"\n}"
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
              "language": "curl",
              "code": "curl --location --request PATCH 'https://api.notion.com/v1/databases/668d797c-76fa-4934-9b05-ad288df2d136' \\\n--header 'Authorization: Bearer '\"$NOTION_API_KEY\"'' \\\n--header 'Content-Type: application/json' \\\n--header 'Notion-Version: 2022-06-28' \\\n--data '{\n    \"title\": [\n        {\n            \"text\": {\n                \"content\": \"Today'\\''s grocery list\"\n            }\n        }\n    ],\n    \"description\": [\n        {\n            \"text\": {\n                \"content\": \"Grocery list for just kale 🥬\"\n            }\n        }\n    ],\n    \"properties\": {\n        \"+1\": null,\n        \"Photo\": {\n            \"url\": {}\n        },\n        \"Store availability\": {\n            \"multi_select\": {\n                \"options\": [\n                    {\n                        \"name\": \"Duc Loi Market\"\n                    },\n                    {\n                        \"name\": \"Rainbow Grocery\"\n                    },\n                    {\n                        \"name\": \"Gus'\\''s Community Market\"\n                    },\n                    {\n                        \"name\": \"The Good Life Grocery\",\n                        \"color\": \"orange\"\n                    }\n                ]\n            }\n        }\n    }       \n}'"
            }
          ],
          "samples-languages": [
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
  "_id": "606ecc2cd9e93b0044cf6e47:612001cf5a94a3006f0e8ffb"
}
```