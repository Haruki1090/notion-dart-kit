# Retrieve a page

> 🚧 This endpoint will not accurately return properties that exceed 25 references
> 
> Do **not** use this endpoint if a page property includes more than 25 references to receive the full list of references. Instead, use the [Retrieve a page property endpoint](https://developers.notion.com/reference/retrieve-a-page-property) for the specific property to get its complete reference list.

Retrieves a [Page object](ref:page) using the ID specified.

Responses contains page **properties**, not page content. To fetch page content, use the [Retrieve block children](https://developers.notion.com/reference/get-block-children) endpoint.

Page properties are limited to up to **25 references** per page property. To retrieve data related to properties that have more than 25 references, use the [Retrieve a page property](https://developers.notion.com/reference/retrieve-a-page-property#rollup-properties) endpoint. (See [Limits](https://developers.notion.com/reference/retrieve-a-page#limits) below for additional information.)

### Parent objects: Pages vs. databases

If a page’s [Parent object](https://developers.notion.com/reference/parent-object) is a database, then the property values will conform to the [database property schema](https://developers.notion.com/reference/property-object). 

If a page object is not part of a database, then the only property value available for that page is its `title`.

### Limits

The endpoint returns a maximum of 25 page or person references per [page property](https://developers.notion.com/reference/property-value-object). If a page property includes more than 25 references, then the 26th reference and beyond might be returned as `Untitled`, `Anonymous`, or not be returned at all. 

This limit affects the following properties: 

- [`people`](https://developers.notion.com/reference/property-value-object#people-property-values): response object can’t be guaranteed to return more than 25 people.
- [`relation`](https://developers.notion.com/reference/property-value-object#relation-property-values): the `has_more` value of the `relation` in the response object is `true` if a `relation` contains more than 25 related pages. Otherwise, `has_more` is false.
- [`rich_text`](https://developers.notion.com/reference/property-value-object#rich-text-property-values): response object includes a maximum of 25 populated inline page or person mentions.
- [`title`](https://developers.notion.com/reference/property-value-object#title-property-values): response object includes a maximum of 25 inline page or person mentions.

> 📘 Integration capabilities
> 
> This endpoint requires an integration to have read content capabilities. Attempting to call this API without read content capabilities will return an HTTP response with a 403 status code. For more information on integration capabilities, see the [capabilities guide](ref:capabilities).

### Errors

Returns a 404 HTTP response if the page doesn't exist, or if the integration doesn't have access to the page.

Returns a 400 or 429 HTTP response if the request exceeds the [request limits](ref:request-limits).

_Note: Each Public API endpoint can return several possible error codes. See the Error codes section of the Status codes documentation for more information._

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
      "get": {
        "summary": "Retrieve a page",
        "description": "",
        "operationId": "retrieve-a-page",
        "parameters": [
          {
            "name": "page_id",
            "in": "path",
            "description": "Identifier for a Notion page",
            "schema": {
              "type": "string"
            },
            "required": true
          },
          {
            "name": "filter_properties",
            "in": "query",
            "description": "A list of page property value IDs associated with the page. Use this param to limit the response to a specific page property value or values. To retrieve multiple properties, specify each page property ID. For example: `?filter_properties=iAk8&filter_properties=b7dh`.",
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
        "responses": {
          "200": {
            "description": "200",
            "content": {
              "application/json": {
                "examples": {
                  "Result": {
                    "value": "{\n  \"object\": \"page\",\n  \"id\": \"59833787-2cf9-4fdf-8782-e53db20768a5\",\n  \"created_time\": \"2022-03-01T19:05:00.000Z\",\n  \"last_edited_time\": \"2022-07-06T20:25:00.000Z\",\n  \"created_by\": {\n    \"object\": \"user\",\n    \"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n  },\n  \"last_edited_by\": {\n    \"object\": \"user\",\n    \"id\": \"0c3e9826-b8f7-4f73-927d-2caaf86f1103\"\n  },\n  \"cover\": {\n    \"type\": \"external\",\n    \"external\": {\n      \"url\": \"https://upload.wikimedia.org/wikipedia/commons/6/62/Tuscankale.jpg\"\n    }\n  },\n  \"icon\": {\n    \"type\": \"emoji\",\n    \"emoji\": \"🥬\"\n  },\n  \"parent\": {\n    \"type\": \"data_source_id\",\n    \"data_source_id\": \"d9824bdc-8445-4327-be8b-5b47500af6ce\",\n    \"database_id\": \"9ce034a5-74ca-4259-8b01-8494453204fe\"\n  },\n  \"archived\": false,\n  \"properties\": {\n    \"Store availability\": {\n      \"id\": \"%3AUPp\",\n      \"type\": \"multi_select\",\n      \"multi_select\": [\n        {\n          \"id\": \"t|O@\",\n          \"name\": \"Gus's Community Market\",\n          \"color\": \"yellow\"\n        },\n        {\n          \"id\": \"{Ml\\\\\",\n          \"name\": \"Rainbow Grocery\",\n          \"color\": \"gray\"\n        }\n      ]\n    },\n    \"Food group\": {\n      \"id\": \"A%40Hk\",\n      \"type\": \"select\",\n      \"select\": {\n        \"id\": \"5e8e7e8f-432e-4d8a-8166-1821e10225fc\",\n        \"name\": \"🥬 Vegetable\",\n        \"color\": \"pink\"\n      }\n    },\n    \"Price\": {\n      \"id\": \"BJXS\",\n      \"type\": \"number\",\n      \"number\": 2.5\n    },\n    \"Responsible Person\": {\n      \"id\": \"Iowm\",\n      \"type\": \"people\",\n      \"people\": [\n        {\n          \"object\": \"user\",\n          \"id\": \"cbfe3c6e-71cf-4cd3-b6e7-02f38f371bcc\",\n          \"name\": \"Cristina Cordova\",\n          \"avatar_url\": \"https://lh6.googleusercontent.com/-rapvfCoTq5A/AAAAAAAAAAI/AAAAAAAAAAA/AKF05nDKmmUpkpFvWNBzvu9rnZEy7cbl8Q/photo.jpg\",\n          \"type\": \"person\",\n          \"person\": {\n            \"email\": \"cristina@makenotion.com\"\n          }\n        }\n      ]\n    },\n    \"Last ordered\": {\n      \"id\": \"Jsfb\",\n      \"type\": \"date\",\n      \"date\": {\n        \"start\": \"2022-02-22\",\n        \"end\": null,\n        \"time_zone\": null\n      }\n    },\n    \"Cost of next trip\": {\n      \"id\": \"WOd%3B\",\n      \"type\": \"formula\",\n      \"formula\": {\n        \"type\": \"number\",\n        \"number\": 0\n      }\n    },\n    \"Recipes\": {\n      \"id\": \"YfIu\",\n      \"type\": \"relation\",\n      \"relation\": [\n        {\n          \"id\": \"90eeeed8-2cdd-4af4-9cc1-3d24aff5f63c\"\n        },\n        {\n          \"id\": \"a2da43ee-d43c-4285-8ae2-6d811f12629a\"\n        }\n      ],\n\t\t\t\"has_more\": false\n    },\n    \"Description\": {\n      \"id\": \"_Tc_\",\n      \"type\": \"rich_text\",\n      \"rich_text\": [\n        {\n          \"type\": \"text\",\n          \"text\": {\n            \"content\": \"A dark \",\n            \"link\": null\n          },\n          \"annotations\": {\n            \"bold\": false,\n            \"italic\": false,\n            \"strikethrough\": false,\n            \"underline\": false,\n            \"code\": false,\n            \"color\": \"default\"\n          },\n          \"plain_text\": \"A dark \",\n          \"href\": null\n        },\n        {\n          \"type\": \"text\",\n          \"text\": {\n            \"content\": \"green\",\n            \"link\": null\n          },\n          \"annotations\": {\n            \"bold\": false,\n            \"italic\": false,\n            \"strikethrough\": false,\n            \"underline\": false,\n            \"code\": false,\n            \"color\": \"green\"\n          },\n          \"plain_text\": \"green\",\n          \"href\": null\n        },\n        {\n          \"type\": \"text\",\n          \"text\": {\n            \"content\": \" leafy vegetable\",\n            \"link\": null\n          },\n          \"annotations\": {\n            \"bold\": false,\n            \"italic\": false,\n            \"strikethrough\": false,\n            \"underline\": false,\n            \"code\": false,\n            \"color\": \"default\"\n          },\n          \"plain_text\": \" leafy vegetable\",\n          \"href\": null\n        }\n      ]\n    },\n    \"In stock\": {\n      \"id\": \"%60%5Bq%3F\",\n      \"type\": \"checkbox\",\n      \"checkbox\": true\n    },\n    \"Number of meals\": {\n      \"id\": \"zag~\",\n      \"type\": \"rollup\",\n      \"rollup\": {\n        \"type\": \"number\",\n        \"number\": 2,\n        \"function\": \"count\"\n      }\n    },\n    \"Photo\": {\n      \"id\": \"%7DF_L\",\n      \"type\": \"url\",\n      \"url\": \"https://i.insider.com/612fb23c9ef1e50018f93198?width=1136&format=jpeg\"\n    },\n    \"Name\": {\n      \"id\": \"title\",\n      \"type\": \"title\",\n      \"title\": [\n        {\n          \"type\": \"text\",\n          \"text\": {\n            \"content\": \"Tuscan kale\",\n            \"link\": null\n          },\n          \"annotations\": {\n            \"bold\": false,\n            \"italic\": false,\n            \"strikethrough\": false,\n            \"underline\": false,\n            \"code\": false,\n            \"color\": \"default\"\n          },\n          \"plain_text\": \"Tuscan kale\",\n          \"href\": null\n        }\n      ]\n    }\n  },\n  \"url\": \"https://www.notion.so/Tuscan-kale-598337872cf94fdf8782e53db20768a5\",\n  \"public_url\": null\n}"
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
          }
        },
        "deprecated": false,
        "security": [],
        "x-readme": {
          "code-samples": [
            {
              "language": "javascript",
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const pageId = '59833787-2cf9-4fdf-8782-e53db20768a5';\n  const response = await notion.pages.retrieve({ page_id: pageId });\n  console.log(response);\n})();",
              "name": "Notion SDK for JavaScript"
            },
            {
              "language": "curl",
              "code": "curl 'https://api.notion.com/v1/pages/b55c9c91-384d-452b-81db-d1ef79372b75' \\\n  -H 'Notion-Version: 2025-09-03' \\\n  -H 'Authorization: Bearer '\"$NOTION_API_KEY\"''"
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
  "_id": "606ecc2cd9e93b0044cf6e47:611ffa8eeb136f0016ce621c"
}
```