# Query a database

> ❗️ Deprecated as of version 2025-09-03
> 
> This page describes the API for versions up to and including `2022-06-28`. In the new `2025-09-03` version, the concepts of databases and data sources were split up, as described in [Upgrading to 2025-09-03](doc:upgrade-guide-2025-09-03).
> 
> Refer to the new APIs instead:
> 
> - [Query a data source](ref:query-a-data-source)

Gets a list of [Pages](ref:page) and/or [Databases](https://developers.notion.com/reference/database) contained in the database, filtered and ordered according to the filter conditions and sort criteria provided in the request. The response may contain fewer than `page_size` of results. If the response includes a `next_cursor` value, refer to the [pagination reference](https://developers.notion.com/reference/intro#pagination) for details about how to use a cursor to iterate through the list.

> 📘 
> 
> [Wiki](https://www.notion.so/help/wikis-and-verified-pages) databases can contain both pages and databases as children.

[**Filters**](ref:post-database-query-filter) are similar to the [filters provided in the Notion UI](https://www.notion.so/help/views-filters-and-sorts) where the set of filters and filter groups chained by "And" in the UI is equivalent to having each filter in the array of the compound `"and"` filter. Similar a set of filters chained by "Or" in the UI would be represented as filters in the array of the `"or"` compound filter.  
Filters operate on database properties and can be combined. If no filter is provided, all the pages in the database will be returned with pagination.

[block:image]
{
  "images": [
    {
      "image": [
        "https://files.readme.io/6fe4a44-Screen_Shot_2021-12-23_at_11.46.21_AM.png",
        "Screen Shot 2021-12-23 at 11.46.21 AM.png",
        1340
      ],
      "align": "center",
      "caption": "The above filters in the UI can be represented as the following filter object"
    }
  ]
}
[/block]


```json Filter Object
{
  "and": [
    {
      "property": "Done",
      "checkbox": {
        "equals": true
      }
    }, 
    {
      "or": [
        {
          "property": "Tags",
          "contains": "A"
        },
        {
          "property": "Tags",
          "contains": "B"
        }
      ]
  	}
  ]
}
```

In addition to chained filters, databases can be queried with single filters.

```json
{
    "property": "Done",
    "checkbox": {
        "equals": true
   }
 }
```

[**Sorts**](ref:post-database-query-sort) are similar to the [sorts provided in the Notion UI](https://notion.so/notion/Intro-to-databases-fd8cd2d212f74c50954c11086d85997e#0eb303043b1742468e5aff2f3f670505). Sorts operate on database properties or page timestamps and can be combined. The order of the sorts in the request matter, with earlier sorts taking precedence over later ones.

The properties of the database schema returned in the response body can be filtered with the `filter_properties` query parameter.

```
https://api.notion.com/v1/databases/[database_id]/query?filter_properties=[property_id_1]
```

Multiple filter properties can be provided by chaining the `filter_properties` query param.

```
https://api.notion.com/v1/databases/[database_id]/query?filter_properties=[property_id_1]&filter_properties=[property_id_2]
```

Property IDs can be determined with the [Retrieve a database](https://developers.notion.com/reference/retrieve-a-database) endpoint.

If you are using the [Notion JavaScript SDK](https://github.com/makenotion/notion-sdk-js), the `filter_properties` endpoint expects an array of property ID strings.

```javascript
notion.databases.query({
	database_id: id,
	filter_properties: ["propertyID1", "propertyID2"]
})
```

> 📘 Permissions
> 
> Before an integration can query a database, the database must be shared with the integration. Attempting to query a database that has not been shared will return an HTTP response with a 404 status code. 
> 
> To share a database with an integration, click the ••• menu at the top right of a database page, scroll to `Add connections`, and use the search bar to find and select the integration from the dropdown list.

> 📘 Integration capabilities
> 
> This endpoint requires an integration to have read content capabilities. Attempting to call this API without read content capabilities will return an HTTP response with a 403 status code. For more information on integration capabilities, see the [capabilities guide](ref:capabilities).

> 📘 To display the page titles of related pages rather than just the ID:
> 
> 1. Add a rollup property to the database which uses a formula to get the related page's title. This works well if you have access to updating the database's schema.
> 
> 2. Otherwise, [retrieve the individual related pages](https://developers.notion.com/reference/retrieve-a-page) using each page ID.

> 🚧 Formula and Rollup Limitation
> 
> - If a formula depends on a page property that is a relation, and that relation has more than 25 references, only 25 will be evaluated as part of the formula.
> - Rollups and formulas that depend on multiple layers of relations may not return correct results.

### Errors

Returns a 404 HTTP response if the database doesn't exist, or if the integration doesn't have access to the database.

Returns a 400 or a 429 HTTP response if the request exceeds the [request limits](ref:request-limits).

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
    "/v1/databases/{database_id}/query": {
      "post": {
        "summary": "Query a database",
        "description": "",
        "operationId": "post-database-query",
        "parameters": [
          {
            "name": "database_id",
            "in": "path",
            "description": "Identifier for a Notion database.",
            "schema": {
              "type": "string"
            },
            "required": true
          },
          {
            "name": "filter_properties",
            "in": "query",
            "description": "A list of page property value IDs associated with the database. Use this param to limit the response to a specific page property value or values for pages that meet the `filter` criteria.",
            "schema": {
              "type": "string"
            }
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
                  "filter": {
                    "type": "string",
                    "description": "When supplied, limits which pages are returned based on the [filter conditions](ref:post-database-query-filter).",
                    "format": "json"
                  },
                  "sorts": {
                    "type": "array",
                    "description": "When supplied, orders the results based on the provided [sort criteria](ref:post-database-query-sort)."
                  },
                  "start_cursor": {
                    "type": "string",
                    "description": "When supplied, returns a page of results starting after the cursor provided. If not supplied, this endpoint will return the first page of results."
                  },
                  "page_size": {
                    "type": "integer",
                    "description": "The number of items from the full list desired in the response. Maximum: 100",
                    "default": 100,
                    "format": "int32"
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
                    "value": "{\n  \"object\": \"list\",\n  \"results\": [\n    {\n      \"object\": \"page\",\n      \"id\": \"59833787-2cf9-4fdf-8782-e53db20768a5\",\n      \"created_time\": \"2022-03-01T19:05:00.000Z\",\n      \"last_edited_time\": \"2022-07-06T20:25:00.000Z\",\n      \"created_by\": {\n        \"object\": \"user\",\n        \"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n      },\n      \"last_edited_by\": {\n        \"object\": \"user\",\n        \"id\": \"0c3e9826-b8f7-4f73-927d-2caaf86f1103\"\n      },\n      \"cover\": {\n        \"type\": \"external\",\n        \"external\": {\n          \"url\": \"https://upload.wikimedia.org/wikipedia/commons/6/62/Tuscankale.jpg\"\n        }\n      },\n      \"icon\": {\n        \"type\": \"emoji\",\n        \"emoji\": \"🥬\"\n      },\n      \"parent\": {\n        \"type\": \"database_id\",\n        \"database_id\": \"d9824bdc-8445-4327-be8b-5b47500af6ce\"\n      },\n      \"archived\": false,\n      \"properties\": {\n        \"Store availability\": {\n          \"id\": \"%3AUPp\",\n          \"type\": \"multi_select\",\n          \"multi_select\": [\n            {\n              \"id\": \"t|O@\",\n              \"name\": \"Gus's Community Market\",\n              \"color\": \"yellow\"\n            },\n            {\n              \"id\": \"{Ml\\\\\",\n              \"name\": \"Rainbow Grocery\",\n              \"color\": \"gray\"\n            }\n          ]\n        },\n        \"Food group\": {\n          \"id\": \"A%40Hk\",\n          \"type\": \"select\",\n          \"select\": {\n            \"id\": \"5e8e7e8f-432e-4d8a-8166-1821e10225fc\",\n            \"name\": \"🥬 Vegetable\",\n            \"color\": \"pink\"\n          }\n        },\n        \"Price\": {\n          \"id\": \"BJXS\",\n          \"type\": \"number\",\n          \"number\": 2.5\n        },\n        \"Responsible Person\": {\n          \"id\": \"Iowm\",\n          \"type\": \"people\",\n          \"people\": [\n            {\n              \"object\": \"user\",\n              \"id\": \"cbfe3c6e-71cf-4cd3-b6e7-02f38f371bcc\",\n              \"name\": \"Cristina Cordova\",\n              \"avatar_url\": \"https://lh6.googleusercontent.com/-rapvfCoTq5A/AAAAAAAAAAI/AAAAAAAAAAA/AKF05nDKmmUpkpFvWNBzvu9rnZEy7cbl8Q/photo.jpg\",\n              \"type\": \"person\",\n              \"person\": {\n                \"email\": \"cristina@makenotion.com\"\n              }\n            }\n          ]\n        },\n        \"Last ordered\": {\n          \"id\": \"Jsfb\",\n          \"type\": \"date\",\n          \"date\": {\n            \"start\": \"2022-02-22\",\n            \"end\": null,\n            \"time_zone\": null\n          }\n        },\n        \"Cost of next trip\": {\n          \"id\": \"WOd%3B\",\n          \"type\": \"formula\",\n          \"formula\": {\n            \"type\": \"number\",\n            \"number\": 0\n          }\n        },\n        \"Recipes\": {\n          \"id\": \"YfIu\",\n          \"type\": \"relation\",\n          \"relation\": [\n            {\n              \"id\": \"90eeeed8-2cdd-4af4-9cc1-3d24aff5f63c\"\n            },\n            {\n              \"id\": \"a2da43ee-d43c-4285-8ae2-6d811f12629a\"\n            }\n          ],\n\t\t\t\t\t\"has_more\": false\n        },\n        \"Description\": {\n          \"id\": \"_Tc_\",\n          \"type\": \"rich_text\",\n          \"rich_text\": [\n            {\n              \"type\": \"text\",\n              \"text\": {\n                \"content\": \"A dark \",\n                \"link\": null\n              },\n              \"annotations\": {\n                \"bold\": false,\n                \"italic\": false,\n                \"strikethrough\": false,\n                \"underline\": false,\n                \"code\": false,\n                \"color\": \"default\"\n              },\n              \"plain_text\": \"A dark \",\n              \"href\": null\n            },\n            {\n              \"type\": \"text\",\n              \"text\": {\n                \"content\": \"green\",\n                \"link\": null\n              },\n              \"annotations\": {\n                \"bold\": false,\n                \"italic\": false,\n                \"strikethrough\": false,\n                \"underline\": false,\n                \"code\": false,\n                \"color\": \"green\"\n              },\n              \"plain_text\": \"green\",\n              \"href\": null\n            },\n            {\n              \"type\": \"text\",\n              \"text\": {\n                \"content\": \" leafy vegetable\",\n                \"link\": null\n              },\n              \"annotations\": {\n                \"bold\": false,\n                \"italic\": false,\n                \"strikethrough\": false,\n                \"underline\": false,\n                \"code\": false,\n                \"color\": \"default\"\n              },\n              \"plain_text\": \" leafy vegetable\",\n              \"href\": null\n            }\n          ]\n        },\n        \"In stock\": {\n          \"id\": \"%60%5Bq%3F\",\n          \"type\": \"checkbox\",\n          \"checkbox\": true\n        },\n        \"Number of meals\": {\n          \"id\": \"zag~\",\n          \"type\": \"rollup\",\n          \"rollup\": {\n            \"type\": \"number\",\n            \"number\": 2,\n            \"function\": \"count\"\n          }\n        },\n        \"Photo\": {\n          \"id\": \"%7DF_L\",\n          \"type\": \"url\",\n          \"url\": \"https://i.insider.com/612fb23c9ef1e50018f93198?width=1136&format=jpeg\"\n        },\n        \"Name\": {\n          \"id\": \"title\",\n          \"type\": \"title\",\n          \"title\": [\n            {\n              \"type\": \"text\",\n              \"text\": {\n                \"content\": \"Tuscan kale\",\n                \"link\": null\n              },\n              \"annotations\": {\n                \"bold\": false,\n                \"italic\": false,\n                \"strikethrough\": false,\n                \"underline\": false,\n                \"code\": false,\n                \"color\": \"default\"\n              },\n              \"plain_text\": \"Tuscan kale\",\n              \"href\": null\n            }\n          ]\n        }\n      },\n      \"url\": \"https://www.notion.so/Tuscan-kale-598337872cf94fdf8782e53db20768a5\"\n    }\n  ],\n  \"next_cursor\": null,\n  \"has_more\": false,\n  \"type\": \"page_or_database\",\n\t\"page_or_database\": {}\n}"
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
                            "example": "2022-07-06T20:25:00.000Z"
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
                                "example": "0c3e9826-b8f7-4f73-927d-2caaf86f1103"
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
                                "example": "database_id"
                              },
                              "database_id": {
                                "type": "string",
                                "example": "d9824bdc-8445-4327-be8b-5b47500af6ce"
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
                                  },
                                  "type": {
                                    "type": "string",
                                    "example": "multi_select"
                                  },
                                  "multi_select": {
                                    "type": "array",
                                    "items": {
                                      "type": "object",
                                      "properties": {
                                        "id": {
                                          "type": "string",
                                          "example": "t|O@"
                                        },
                                        "name": {
                                          "type": "string",
                                          "example": "Gus's Community Market"
                                        },
                                        "color": {
                                          "type": "string",
                                          "example": "yellow"
                                        }
                                      }
                                    }
                                  }
                                }
                              },
                              "Food group": {
                                "type": "object",
                                "properties": {
                                  "id": {
                                    "type": "string",
                                    "example": "A%40Hk"
                                  },
                                  "type": {
                                    "type": "string",
                                    "example": "select"
                                  },
                                  "select": {
                                    "type": "object",
                                    "properties": {
                                      "id": {
                                        "type": "string",
                                        "example": "5e8e7e8f-432e-4d8a-8166-1821e10225fc"
                                      },
                                      "name": {
                                        "type": "string",
                                        "example": "🥬 Vegetable"
                                      },
                                      "color": {
                                        "type": "string",
                                        "example": "pink"
                                      }
                                    }
                                  }
                                }
                              },
                              "Price": {
                                "type": "object",
                                "properties": {
                                  "id": {
                                    "type": "string",
                                    "example": "BJXS"
                                  },
                                  "type": {
                                    "type": "string",
                                    "example": "number"
                                  },
                                  "number": {
                                    "type": "number",
                                    "example": 2.5,
                                    "default": 0
                                  }
                                }
                              },
                              "Responsible Person": {
                                "type": "object",
                                "properties": {
                                  "id": {
                                    "type": "string",
                                    "example": "Iowm"
                                  },
                                  "type": {
                                    "type": "string",
                                    "example": "people"
                                  },
                                  "people": {
                                    "type": "array",
                                    "items": {
                                      "type": "object",
                                      "properties": {
                                        "object": {
                                          "type": "string",
                                          "example": "user"
                                        },
                                        "id": {
                                          "type": "string",
                                          "example": "cbfe3c6e-71cf-4cd3-b6e7-02f38f371bcc"
                                        },
                                        "name": {
                                          "type": "string",
                                          "example": "Cristina Cordova"
                                        },
                                        "avatar_url": {
                                          "type": "string",
                                          "example": "https://lh6.googleusercontent.com/-rapvfCoTq5A/AAAAAAAAAAI/AAAAAAAAAAA/AKF05nDKmmUpkpFvWNBzvu9rnZEy7cbl8Q/photo.jpg"
                                        },
                                        "type": {
                                          "type": "string",
                                          "example": "person"
                                        },
                                        "person": {
                                          "type": "object",
                                          "properties": {
                                            "email": {
                                              "type": "string",
                                              "example": "cristina@makenotion.com"
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              },
                              "Last ordered": {
                                "type": "object",
                                "properties": {
                                  "id": {
                                    "type": "string",
                                    "example": "Jsfb"
                                  },
                                  "type": {
                                    "type": "string",
                                    "example": "date"
                                  },
                                  "date": {
                                    "type": "object",
                                    "properties": {
                                      "start": {
                                        "type": "string",
                                        "example": "2022-02-22"
                                      },
                                      "end": {},
                                      "time_zone": {}
                                    }
                                  }
                                }
                              },
                              "Cost of next trip": {
                                "type": "object",
                                "properties": {
                                  "id": {
                                    "type": "string",
                                    "example": "WOd%3B"
                                  },
                                  "type": {
                                    "type": "string",
                                    "example": "formula"
                                  },
                                  "formula": {
                                    "type": "object",
                                    "properties": {
                                      "type": {
                                        "type": "string",
                                        "example": "number"
                                      },
                                      "number": {
                                        "type": "integer",
                                        "example": 0,
                                        "default": 0
                                      }
                                    }
                                  }
                                }
                              },
                              "Recipes": {
                                "type": "object",
                                "properties": {
                                  "id": {
                                    "type": "string",
                                    "example": "YfIu"
                                  },
                                  "type": {
                                    "type": "string",
                                    "example": "relation"
                                  },
                                  "relation": {
                                    "type": "array",
                                    "items": {
                                      "type": "object",
                                      "properties": {
                                        "id": {
                                          "type": "string",
                                          "example": "90eeeed8-2cdd-4af4-9cc1-3d24aff5f63c"
                                        }
                                      }
                                    }
                                  },
                                  "has_more": {
                                    "type": "boolean",
                                    "example": false,
                                    "default": true
                                  }
                                }
                              },
                              "Description": {
                                "type": "object",
                                "properties": {
                                  "id": {
                                    "type": "string",
                                    "example": "_Tc_"
                                  },
                                  "type": {
                                    "type": "string",
                                    "example": "rich_text"
                                  },
                                  "rich_text": {
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
                                              "example": "A dark "
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
                                          "example": "A dark "
                                        },
                                        "href": {}
                                      }
                                    }
                                  }
                                }
                              },
                              "In stock": {
                                "type": "object",
                                "properties": {
                                  "id": {
                                    "type": "string",
                                    "example": "%60%5Bq%3F"
                                  },
                                  "type": {
                                    "type": "string",
                                    "example": "checkbox"
                                  },
                                  "checkbox": {
                                    "type": "boolean",
                                    "example": true,
                                    "default": true
                                  }
                                }
                              },
                              "Number of meals": {
                                "type": "object",
                                "properties": {
                                  "id": {
                                    "type": "string",
                                    "example": "zag~"
                                  },
                                  "type": {
                                    "type": "string",
                                    "example": "rollup"
                                  },
                                  "rollup": {
                                    "type": "object",
                                    "properties": {
                                      "type": {
                                        "type": "string",
                                        "example": "number"
                                      },
                                      "number": {
                                        "type": "integer",
                                        "example": 2,
                                        "default": 0
                                      },
                                      "function": {
                                        "type": "string",
                                        "example": "count"
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
                                    "example": "%7DF_L"
                                  },
                                  "type": {
                                    "type": "string",
                                    "example": "url"
                                  },
                                  "url": {
                                    "type": "string",
                                    "example": "https://i.insider.com/612fb23c9ef1e50018f93198?width=1136&format=jpeg"
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
                                  "type": {
                                    "type": "string",
                                    "example": "title"
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
                                              "example": "Tuscan kale"
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
                                          "example": "Tuscan kale"
                                        },
                                        "href": {}
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          },
                          "url": {
                            "type": "string",
                            "example": "https://www.notion.so/Tuscan-kale-598337872cf94fdf8782e53db20768a5"
                          }
                        }
                      }
                    },
                    "next_cursor": {},
                    "has_more": {
                      "type": "boolean",
                      "example": false,
                      "default": true
                    },
                    "type": {
                      "type": "string",
                      "example": "page_or_database"
                    },
                    "page_or_database": {
                      "type": "object",
                      "properties": {}
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
              "code": "curl -X POST 'https://api.notion.com/v1/databases/897e5a76ae524b489fdfe71f5945d1af/query' \\\n  -H 'Authorization: Bearer '\"$NOTION_API_KEY\"'' \\\n  -H 'Notion-Version: 2022-06-28' \\\n  -H \"Content-Type: application/json\" \\\n--data '{\n  \"filter\": {\n    \"or\": [\n      {\n        \"property\": \"In stock\",\n\"checkbox\": {\n\"equals\": true\n}\n      },\n      {\n\"property\": \"Cost of next trip\",\n\"number\": {\n\"greater_than_or_equal_to\": 2\n}\n}\n]\n},\n  \"sorts\": [\n    {\n      \"property\": \"Last ordered\",\n      \"direction\": \"ascending\"\n    }\n  ]\n}'"
            },
            {
              "language": "javascript",
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const databaseId = 'd9824bdc-8445-4327-be8b-5b47500af6ce';\n  const response = await notion.databases.query({\n    database_id: databaseId,\n    filter: {\n      or: [\n        {\n          property: 'In stock',\n          checkbox: {\n            equals: true,\n          },\n        },\n        {\n          property: 'Cost of next trip',\n          number: {\n            greater_than_or_equal_to: 2,\n          },\n        },\n      ],\n    },\n    sorts: [\n      {\n        property: 'Last ordered',\n        direction: 'ascending',\n      },\n    ],\n  });\n  console.log(response);\n})();"
            }
          ],
          "samples-languages": [
            "curl",
            "javascript"
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
  "_id": "606ecc2cd9e93b0044cf6e47:609176570b6bf20019821ce5"
}
```