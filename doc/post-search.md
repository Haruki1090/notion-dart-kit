# Search by title

Searches all parent or child pages and data_sources that have been shared with an integration.

Returns all [pages](https://developers.notion.com/reference/page) or [data_sources](https://developers.notion.com/reference/data-source) , excluding duplicated linked databases, that have titles that include the `query` param. If no `query` param is provided, then the response contains all pages or data_sources that have been shared with the integration. The results adhere to any limitations related to an [integration’s capabilities](https://developers.notion.com/reference/capabilities).

To limit the request to search only pages or to search only data_source, use the `filter` param.

### Errors

Each Public API endpoint can return several possible error codes. See the [Error codes section](https://developers.notion.com/reference/status-codes#error-codes) of the Status codes documentation for more information.

> 📘 
> 
> The Search endpoint supports pagination. To learn more about working with [paginated](https://developers.notion.com/reference/intro#pagination) responses, see the pagination section of the Notion API Introduction.

> 🚧 
> 
> To search a specific data_source — not all sources shared with the integration — use the [Query a data_source](https://developers.notion.com/reference/query-a-data-source) endpoint instead.

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
    "/v1/search": {
      "post": {
        "summary": "Search by title",
        "description": "",
        "operationId": "post-search",
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
                "properties": {
                  "query": {
                    "type": "string",
                    "description": "The text that the API compares page and data_source titles against."
                  },
                  "sort": {
                    "type": "object",
                    "description": "A set of criteria, `direction` and `timestamp` keys, that orders the results. The **only** supported timestamp value is `\"last_edited_time\"`. Supported `direction` values are `\"ascending\"` and `\"descending\"`. If `sort` is not provided, then the most recently edited results are returned first.",
                    "properties": {
                      "direction": {
                        "type": "string",
                        "description": "The direction to sort. Possible values include `ascending` and `descending`."
                      },
                      "timestamp": {
                        "type": "string",
                        "description": "The name of the timestamp to sort against. Possible values include `last_edited_time`."
                      }
                    }
                  },
                  "filter": {
                    "type": "object",
                    "description": "A set of criteria, `value` and `property` keys, that limits the results to either only pages or only databases. Possible `value` values are `\"page\"` or `\"data_source\"`. The only supported `property` value is `\"object\"`.",
                    "properties": {
                      "value": {
                        "type": "string",
                        "description": "The value of the property to filter the results by.  Possible values for object type include `page` or `database`.  **Limitation**: Currently the only filter allowed is `object` which will filter by type of object (either `page` or `database`)"
                      },
                      "property": {
                        "type": "string",
                        "description": "The name of the property to filter by. Currently the only property you can filter by is the object type.  Possible values include `object`.   Limitation: Currently the only filter allowed is `object` which will filter by type of object (either `page` or `database`)"
                      }
                    }
                  },
                  "start_cursor": {
                    "type": "string",
                    "description": "A `cursor` value returned in a previous response that If supplied, limits the response to results starting after the `cursor`. If not supplied, then the first page of results is returned. Refer to [pagination](https://developers.notion.com/reference/intro#pagination) for more details."
                  },
                  "page_size": {
                    "type": "integer",
                    "description": "The number of items from the full list to include in the response. Maximum: `100`.",
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
                    "value": "{\n  \"object\": \"list\",\n  \"results\": [\n    {\n      \"object\": \"page\",\n      \"id\": \"954b67f9-3f87-41db-8874-23b92bbd31ee\",\n      \"created_time\": \"2022-07-06T19:30:00.000Z\",\n      \"last_edited_time\": \"2022-07-06T19:30:00.000Z\",\n      \"created_by\": {\n        \"object\": \"user\",\n        \"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n      },\n      \"last_edited_by\": {\n        \"object\": \"user\",\n        \"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n      },\n      \"cover\": {\n        \"type\": \"external\",\n        \"external\": {\n          \"url\": \"https://upload.wikimedia.org/wikipedia/commons/6/62/Tuscankale.jpg\"\n        }\n      },\n      \"icon\": {\n        \"type\": \"emoji\",\n        \"emoji\": \"🥬\"\n      },\n      \"parent\": {\n        \"type\": \"database_id\",\n        \"database_id\": \"d9824bdc-8445-4327-be8b-5b47500af6ce\"\n      },\n      \"archived\": false,\n      \"properties\": {\n        \"Store availability\": {\n          \"id\": \"%3AUPp\",\n          \"type\": \"multi_select\",\n          \"multi_select\": []\n        },\n        \"Food group\": {\n          \"id\": \"A%40Hk\",\n          \"type\": \"select\",\n          \"select\": {\n            \"id\": \"5e8e7e8f-432e-4d8a-8166-1821e10225fc\",\n            \"name\": \"🥬 Vegetable\",\n            \"color\": \"pink\"\n          }\n        },\n        \"Price\": {\n          \"id\": \"BJXS\",\n          \"type\": \"number\",\n          \"number\": null\n        },\n        \"Responsible Person\": {\n          \"id\": \"Iowm\",\n          \"type\": \"people\",\n          \"people\": []\n        },\n        \"Last ordered\": {\n          \"id\": \"Jsfb\",\n          \"type\": \"date\",\n          \"date\": null\n        },\n        \"Cost of next trip\": {\n          \"id\": \"WOd%3B\",\n          \"type\": \"formula\",\n          \"formula\": {\n            \"type\": \"number\",\n            \"number\": null\n          }\n        },\n        \"Recipes\": {\n          \"id\": \"YfIu\",\n          \"type\": \"relation\",\n          \"relation\": []\n        },\n        \"Description\": {\n          \"id\": \"_Tc_\",\n          \"type\": \"rich_text\",\n          \"rich_text\": [\n            {\n              \"type\": \"text\",\n              \"text\": {\n                \"content\": \"A dark green leafy vegetable\",\n                \"link\": null\n              },\n              \"annotations\": {\n                \"bold\": false,\n                \"italic\": false,\n                \"strikethrough\": false,\n                \"underline\": false,\n                \"code\": false,\n                \"color\": \"default\"\n              },\n              \"plain_text\": \"A dark green leafy vegetable\",\n              \"href\": null\n            }\n          ]\n        },\n        \"In stock\": {\n          \"id\": \"%60%5Bq%3F\",\n          \"type\": \"checkbox\",\n          \"checkbox\": false\n        },\n        \"Number of meals\": {\n          \"id\": \"zag~\",\n          \"type\": \"rollup\",\n          \"rollup\": {\n            \"type\": \"number\",\n            \"number\": 0,\n            \"function\": \"count\"\n          }\n        },\n        \"Photo\": {\n          \"id\": \"%7DF_L\",\n          \"type\": \"url\",\n          \"url\": null\n        },\n        \"Name\": {\n          \"id\": \"title\",\n          \"type\": \"title\",\n          \"title\": [\n            {\n              \"type\": \"text\",\n              \"text\": {\n                \"content\": \"Tuscan kale\",\n                \"link\": null\n              },\n              \"annotations\": {\n                \"bold\": false,\n                \"italic\": false,\n                \"strikethrough\": false,\n                \"underline\": false,\n                \"code\": false,\n                \"color\": \"default\"\n              },\n              \"plain_text\": \"Tuscan kale\",\n              \"href\": null\n            }\n          ]\n        }\n      },\n      \"url\": \"https://www.notion.so/Tuscan-kale-954b67f93f8741db887423b92bbd31ee\"\n    },\n    {\n      \"object\": \"page\",\n      \"id\": \"59833787-2cf9-4fdf-8782-e53db20768a5\",\n      \"created_time\": \"2022-03-01T19:05:00.000Z\",\n      \"last_edited_time\": \"2022-07-06T20:25:00.000Z\",\n      \"created_by\": {\n        \"object\": \"user\",\n        \"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n      },\n      \"last_edited_by\": {\n        \"object\": \"user\",\n        \"id\": \"0c3e9826-b8f7-4f73-927d-2caaf86f1103\"\n      },\n      \"cover\": {\n        \"type\": \"external\",\n        \"external\": {\n          \"url\": \"https://upload.wikimedia.org/wikipedia/commons/6/62/Tuscankale.jpg\"\n        }\n      },\n      \"icon\": {\n        \"type\": \"emoji\",\n        \"emoji\": \"🥬\"\n      },\n      \"parent\": {\n        \"type\": \"database_id\",\n        \"database_id\": \"d9824bdc-8445-4327-be8b-5b47500af6ce\"\n      },\n      \"archived\": false,\n      \"properties\": {\n        \"Store availability\": {\n          \"id\": \"%3AUPp\",\n          \"type\": \"multi_select\",\n          \"multi_select\": [\n            {\n              \"id\": \"t|O@\",\n              \"name\": \"Gus's Community Market\",\n              \"color\": \"yellow\"\n            },\n            {\n              \"id\": \"{Ml\\\\\",\n              \"name\": \"Rainbow Grocery\",\n              \"color\": \"gray\"\n            }\n          ]\n        },\n        \"Food group\": {\n          \"id\": \"A%40Hk\",\n          \"type\": \"select\",\n          \"select\": {\n            \"id\": \"5e8e7e8f-432e-4d8a-8166-1821e10225fc\",\n            \"name\": \"🥬 Vegetable\",\n            \"color\": \"pink\"\n          }\n        },\n        \"Price\": {\n          \"id\": \"BJXS\",\n          \"type\": \"number\",\n          \"number\": 2.5\n        },\n        \"Responsible Person\": {\n          \"id\": \"Iowm\",\n          \"type\": \"people\",\n          \"people\": [\n            {\n              \"object\": \"user\",\n              \"id\": \"cbfe3c6e-71cf-4cd3-b6e7-02f38f371bcc\",\n              \"name\": \"Cristina Cordova\",\n              \"avatar_url\": \"https://lh6.googleusercontent.com/-rapvfCoTq5A/AAAAAAAAAAI/AAAAAAAAAAA/AKF05nDKmmUpkpFvWNBzvu9rnZEy7cbl8Q/photo.jpg\",\n              \"type\": \"person\",\n              \"person\": {\n                \"email\": \"cristina@makenotion.com\"\n              }\n            }\n          ]\n        },\n        \"Last ordered\": {\n          \"id\": \"Jsfb\",\n          \"type\": \"date\",\n          \"date\": {\n            \"start\": \"2022-02-22\",\n            \"end\": null,\n            \"time_zone\": null\n          }\n        },\n        \"Cost of next trip\": {\n          \"id\": \"WOd%3B\",\n          \"type\": \"formula\",\n          \"formula\": {\n            \"type\": \"number\",\n            \"number\": 0\n          }\n        },\n        \"Recipes\": {\n          \"id\": \"YfIu\",\n          \"type\": \"relation\",\n          \"relation\": [\n            {\n              \"id\": \"90eeeed8-2cdd-4af4-9cc1-3d24aff5f63c\"\n            },\n            {\n              \"id\": \"a2da43ee-d43c-4285-8ae2-6d811f12629a\"\n            }\n          ],\n\t\t\t\t\t\"has_more\": false\n        },\n        \"Description\": {\n          \"id\": \"_Tc_\",\n          \"type\": \"rich_text\",\n          \"rich_text\": [\n            {\n              \"type\": \"text\",\n              \"text\": {\n                \"content\": \"A dark \",\n                \"link\": null\n              },\n              \"annotations\": {\n                \"bold\": false,\n                \"italic\": false,\n                \"strikethrough\": false,\n                \"underline\": false,\n                \"code\": false,\n                \"color\": \"default\"\n              },\n              \"plain_text\": \"A dark \",\n              \"href\": null\n            },\n            {\n              \"type\": \"text\",\n              \"text\": {\n                \"content\": \"green\",\n                \"link\": null\n              },\n              \"annotations\": {\n                \"bold\": false,\n                \"italic\": false,\n                \"strikethrough\": false,\n                \"underline\": false,\n                \"code\": false,\n                \"color\": \"green\"\n              },\n              \"plain_text\": \"green\",\n              \"href\": null\n            },\n            {\n              \"type\": \"text\",\n              \"text\": {\n                \"content\": \" leafy vegetable\",\n                \"link\": null\n              },\n              \"annotations\": {\n                \"bold\": false,\n                \"italic\": false,\n                \"strikethrough\": false,\n                \"underline\": false,\n                \"code\": false,\n                \"color\": \"default\"\n              },\n              \"plain_text\": \" leafy vegetable\",\n              \"href\": null\n            }\n          ]\n        },\n        \"In stock\": {\n          \"id\": \"%60%5Bq%3F\",\n          \"type\": \"checkbox\",\n          \"checkbox\": true\n        },\n        \"Number of meals\": {\n          \"id\": \"zag~\",\n          \"type\": \"rollup\",\n          \"rollup\": {\n            \"type\": \"number\",\n            \"number\": 2,\n            \"function\": \"count\"\n          }\n        },\n        \"Photo\": {\n          \"id\": \"%7DF_L\",\n          \"type\": \"url\",\n          \"url\": \"https://i.insider.com/612fb23c9ef1e50018f93198?width=1136&format=jpeg\"\n        },\n        \"Name\": {\n          \"id\": \"title\",\n          \"type\": \"title\",\n          \"title\": [\n            {\n              \"type\": \"text\",\n              \"text\": {\n                \"content\": \"Tuscan kale\",\n                \"link\": null\n              },\n              \"annotations\": {\n                \"bold\": false,\n                \"italic\": false,\n                \"strikethrough\": false,\n                \"underline\": false,\n                \"code\": false,\n                \"color\": \"default\"\n              },\n              \"plain_text\": \"Tuscan kale\",\n              \"href\": null\n            }\n          ]\n        }\n      },\n      \"url\": \"https://www.notion.so/Tuscan-kale-598337872cf94fdf8782e53db20768a5\"\n    }\n  ],\n  \"next_cursor\": null,\n  \"has_more\": false,\n  \"type\": \"page_or_database\",\n  \"page_or_database\": {}\n}"
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
                            "example": "954b67f9-3f87-41db-8874-23b92bbd31ee"
                          },
                          "created_time": {
                            "type": "string",
                            "example": "2022-07-06T19:30:00.000Z"
                          },
                          "last_edited_time": {
                            "type": "string",
                            "example": "2022-07-06T19:30:00.000Z"
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
                                    "type": "array"
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
                                  "number": {}
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
                                    "type": "array"
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
                                  "date": {}
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
                                      "number": {}
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
                                    "type": "array"
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
                                              "example": "A dark green leafy vegetable"
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
                                          "example": "A dark green leafy vegetable"
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
                                    "example": false,
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
                                        "example": 0,
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
                                  "url": {}
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
                            "example": "https://www.notion.so/Tuscan-kale-954b67f93f8741db887423b92bbd31ee"
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
                    "value": "{\n    \"object\": \"error\",\n    \"status\": 400,\n    \"code\": \"invalid_json\",\n    \"message\": \"Error parsing JSON body.\"\n}"
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
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const response = await notion.search({\n    query: 'External tasks',\n    filter: {\n      value: 'database',\n      property: 'object'\n    },\n    sort: {\n      direction: 'ascending',\n      timestamp: 'last_edited_time'\n    },\n  });\n  console.log(response);\n})();",
              "name": "Notion SDK for JavaScript"
            },
            {
              "language": "curl",
              "code": "curl -X POST 'https://api.notion.com/v1/search' \\\n  -H 'Authorization: Bearer '\"$NOTION_API_KEY\"'' \\\n  -H 'Content-Type: application/json' \\\n  -H 'Notion-Version: 2022-06-28' \\\n  --data '{\n    \"query\":\"External tasks\",\n    \"filter\": {\n        \"value\": \"data_source\",\n        \"property\": \"object\"\n    },\n    \"sort\":{\n      \"direction\":\"ascending\",\n      \"timestamp\":\"last_edited_time\"\n    }\n  }'"
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
  "_id": "606ecc2cd9e93b0044cf6e47:60987ed3ca59b8006bcda017"
}
```