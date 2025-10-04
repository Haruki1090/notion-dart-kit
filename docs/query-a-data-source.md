# Query a data source

Gets a list of [Pages](ref:page) and/or [Data Sources](ref:data-source)  contained in the data source, filtered and ordered according to the filter conditions and sort criteria provided in the request. The response may contain fewer than `page_size` of results. If the response includes a `next_cursor` value, refer to the [pagination reference](https://developers.notion.com/reference/intro#pagination) for details about how to use a cursor to iterate through the list.

> 📘 Databases, data sources, and wikis
> 
> [Wiki](https://www.notion.so/help/wikis-and-verified-pages) data sources can contain both pages and databases as children. In all other cases, the children can only be pages.
> 
> When there's a [database](ref:database) result, this API returns all data sources that are children of _that_ database, instead of surfacing the database directly. Surfacing the data source instead of the direct database child helps make it easier to craft your next API request (for example, retrieving the data source).

[**Filters**](ref:filter-data-source-entries) are similar to the [filters provided in the Notion UI](https://www.notion.so/help/views-filters-and-sorts) where the set of filters and filter groups chained by "And" in the UI is equivalent to having each filter in the array of the compound `"and"` filter. Similar a set of filters chained by "Or" in the UI would be represented as filters in the array of the `"or"` compound filter.  
Filters operate on data source properties and can be combined. If no filter is provided, all the pages in the data source will be returned with pagination.

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

In addition to chained filters, data sources can be queried with single filters.

```json
{
    "property": "Done",
    "checkbox": {
        "equals": true
   }
 }
```

[**Sorts**](ref:sort-data-source-entries) are similar to the [sorts provided in the Notion UI](https://notion.so/notion/Intro-to-databases-fd8cd2d212f74c50954c11086d85997e#0eb303043b1742468e5aff2f3f670505). Sorts operate on database properties or page timestamps and can be combined. The order of the sorts in the request matter, with earlier sorts taking precedence over later ones.

The properties of the data source schema returned in the response body can be filtered with the `filter_properties` query parameter.

```
https://api.notion.com/v1/data_sources/[data_source_id]/query?filter_properties=[property_id_1]
```

Multiple filter properties can be provided by chaining the `filter_properties` query param.

```
https://api.notion.com/v1/data_sources/[data_source_id]/query?filter_properties=[property_id_1]&filter_properties=[property_id_2]
```

Property IDs can be determined with the [Retrieve a data source](ref:retrieve-a-data-source) endpoint.

If you are using the [Notion JavaScript SDK](https://github.com/makenotion/notion-sdk-js), the `filter_properties` endpoint expects an array of property ID strings.

```javascript
notion.dataSources.query({
	data_source_id: id,
	filter_properties: ["propertyID1", "propertyID2"]
})
```

> 📘 Permissions
> 
> Before an integration can query a data source, its parent database must be shared with the integration. Attempting to query a database that has not been shared will return an HTTP response with a 404 status code. 
> 
> To share a database with an integration, click the ••• menu at the top right of a database page, scroll to `Add connections`, and use the search bar to find and select the integration from the dropdown list.

> 📘 Integration capabilities
> 
> This endpoint requires an integration to have read content capabilities. Attempting to call this API without read content capabilities will return an HTTP response with a 403 status code. For more information on integration capabilities, see the [capabilities guide](ref:capabilities).

> 📘 To display the page titles of related pages rather than just the ID:
> 
> 1. Add a rollup property to the data source which uses a formula to get the related page's title. This works well if you have access to [update](ref:update-a-data-source) the data source's schema.
> 
> 2. Otherwise, [retrieve the individual related pages](ref:retrieve-a-page) using each page ID.

> 🚧 Formula and rollup limitations
> 
> - If a formula depends on a page property that is a relation, and that relation has more than 25 references, only 25 will be evaluated as part of the formula.
> - Rollups and formulas that depend on multiple layers of relations may not return correct results.
> - Notion recommends individually [retrieving each page property item](ref:retrieve-a-page-property) to get the most accurate result.

### Errors

Returns a 404 HTTP response if the data source doesn't exist, or if the integration doesn't have access to the data source.

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
    "/v1/data_sources/{data_source_id}/query": {
      "post": {
        "summary": "Query a data source",
        "description": "",
        "operationId": "query-a-data-source",
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
                  "sorts": {
                    "type": "array",
                    "description": "An array of property or timestamp sort objects.",
                    "items": {
                      "properties": {
                        "property": {
                          "type": "string"
                        },
                        "timestamp": {
                          "type": "string",
                          "enum": [
                            "\"created_time\"",
                            "\"last_edited_time\""
                          ]
                        },
                        "direction": {
                          "type": "string",
                          "enum": [
                            "\"ascending\"",
                            "\"descending\""
                          ]
                        }
                      },
                      "required": [
                        "direction"
                      ],
                      "type": "object"
                    }
                  },
                  "filter": {
                    "type": "object",
                    "properties": {
                      "timestamp": {
                        "type": "string",
                        "enum": [
                          "\"created_time\"",
                          "\"last_edited_time\""
                        ]
                      },
                      "created_time": {
                        "type": "object",
                        "properties": {
                          "equals": {
                            "type": "string",
                            "format": "date"
                          },
                          "before": {
                            "type": "string",
                            "format": "date"
                          },
                          "after": {
                            "type": "string",
                            "format": "date"
                          },
                          "on_or_before": {
                            "type": "string",
                            "format": "date"
                          },
                          "on_or_after": {
                            "type": "string",
                            "format": "date"
                          },
                          "this_week": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "past_week": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "past_month": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "past_year": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "next_week": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "next_month": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "next_year": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "is_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          },
                          "is_not_empty": {
                            "type": "boolean",
                            "description": "true"
                          }
                        }
                      },
                      "last_edited_time": {
                        "type": "object",
                        "properties": {
                          "equals": {
                            "type": "string",
                            "format": "date"
                          },
                          "before": {
                            "type": "string",
                            "format": "date"
                          },
                          "after": {
                            "type": "string",
                            "format": "date"
                          },
                          "on_or_before": {
                            "type": "string",
                            "format": "date"
                          },
                          "on_or_after": {
                            "type": "string",
                            "format": "date"
                          },
                          "this_week": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "past_week": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "past_month": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "past_year": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "next_week": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "next_month": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "next_year": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "is_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          },
                          "is_not_empty": {
                            "type": "boolean",
                            "description": "true"
                          }
                        }
                      },
                      "property": {
                        "type": "string"
                      },
                      "title": {
                        "type": "object",
                        "properties": {
                          "equals": {
                            "type": "string"
                          },
                          "does_not_equal": {
                            "type": "string"
                          },
                          "contains": {
                            "type": "string"
                          },
                          "does_not_contain": {
                            "type": "string"
                          },
                          "starts_with": {
                            "type": "string"
                          },
                          "ends_with": {
                            "type": "string"
                          },
                          "is_empty": {
                            "type": "string"
                          },
                          "is_not_empty": {
                            "type": "string"
                          }
                        }
                      },
                      "rich_text": {
                        "type": "object",
                        "properties": {
                          "equals": {
                            "type": "string"
                          },
                          "does_not_equal": {
                            "type": "string"
                          },
                          "contains": {
                            "type": "string"
                          },
                          "does_not_contain": {
                            "type": "string"
                          },
                          "starts_with": {
                            "type": "string"
                          },
                          "ends_with": {
                            "type": "string"
                          },
                          "is_empty": {
                            "type": "string"
                          },
                          "is_not_empty": {
                            "type": "string"
                          }
                        }
                      },
                      "number": {
                        "type": "object",
                        "properties": {
                          "equals": {
                            "type": "number",
                            "format": "float"
                          },
                          "does_not_equal": {
                            "type": "number",
                            "format": "float"
                          },
                          "greater_than": {
                            "type": "number",
                            "format": "float"
                          },
                          "less_than": {
                            "type": "number",
                            "format": "float"
                          },
                          "greater_than_or_equal_to": {
                            "type": "number",
                            "format": "float"
                          },
                          "less_than_or_equal_to": {
                            "type": "number",
                            "format": "float"
                          },
                          "is_empty": {
                            "type": "number",
                            "format": "float"
                          },
                          "is_not_empty": {
                            "type": "number",
                            "format": "float"
                          }
                        }
                      },
                      "checkbox": {
                        "type": "object",
                        "properties": {
                          "equals": {
                            "type": "boolean"
                          },
                          "does_not_equal": {
                            "type": "boolean"
                          }
                        }
                      },
                      "select": {
                        "type": "object",
                        "properties": {
                          "equals": {
                            "type": "string"
                          },
                          "does_not_equal": {
                            "type": "string"
                          },
                          "is_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          },
                          "is_not_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          }
                        }
                      },
                      "multi_select": {
                        "type": "object",
                        "properties": {
                          "equals": {
                            "type": "string"
                          },
                          "does_not_equal": {
                            "type": "string"
                          },
                          "is_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          },
                          "is_not_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          }
                        }
                      },
                      "status": {
                        "type": "object",
                        "properties": {
                          "equals": {
                            "type": "string"
                          },
                          "does_not_equal": {
                            "type": "string"
                          },
                          "is_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          },
                          "is_not_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          }
                        }
                      },
                      "date": {
                        "type": "object",
                        "properties": {
                          "equals": {
                            "type": "string",
                            "format": "date"
                          },
                          "before": {
                            "type": "string",
                            "format": "date"
                          },
                          "after": {
                            "type": "string",
                            "format": "date"
                          },
                          "on_or_before": {
                            "type": "string",
                            "format": "date"
                          },
                          "on_or_after": {
                            "type": "string",
                            "format": "date"
                          },
                          "this_week": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "past_week": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "past_month": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "past_year": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "next_week": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "next_month": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "next_year": {
                            "type": "object",
                            "description": "Empty object `{}`",
                            "properties": {}
                          },
                          "is_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          },
                          "is_not_empty": {
                            "type": "boolean",
                            "description": "true"
                          }
                        }
                      },
                      "people": {
                        "type": "object",
                        "properties": {
                          "contains": {
                            "type": "string"
                          },
                          "does_not_contain": {
                            "type": "string"
                          },
                          "is_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          },
                          "is_not_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          }
                        }
                      },
                      "files": {
                        "type": "object",
                        "properties": {
                          "is_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          },
                          "is_not_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          }
                        }
                      },
                      "url": {
                        "type": "object",
                        "properties": {
                          "equals": {
                            "type": "string"
                          },
                          "does_not_equal": {
                            "type": "string"
                          },
                          "contains": {
                            "type": "string"
                          },
                          "does_not_contain": {
                            "type": "string"
                          },
                          "starts_with": {
                            "type": "string"
                          },
                          "ends_with": {
                            "type": "string"
                          },
                          "is_empty": {
                            "type": "string"
                          },
                          "is_not_empty": {
                            "type": "string"
                          }
                        }
                      },
                      "email": {
                        "type": "object",
                        "properties": {
                          "equals": {
                            "type": "string"
                          },
                          "does_not_equal": {
                            "type": "string"
                          },
                          "contains": {
                            "type": "string"
                          },
                          "does_not_contain": {
                            "type": "string"
                          },
                          "starts_with": {
                            "type": "string"
                          },
                          "ends_with": {
                            "type": "string"
                          },
                          "is_empty": {
                            "type": "string"
                          },
                          "is_not_empty": {
                            "type": "string"
                          }
                        }
                      },
                      "phone_number": {
                        "type": "object",
                        "properties": {
                          "equals": {
                            "type": "string"
                          },
                          "does_not_equal": {
                            "type": "string"
                          },
                          "contains": {
                            "type": "string"
                          },
                          "does_not_contain": {
                            "type": "string"
                          },
                          "starts_with": {
                            "type": "string"
                          },
                          "ends_with": {
                            "type": "string"
                          },
                          "is_empty": {
                            "type": "string"
                          },
                          "is_not_empty": {
                            "type": "string"
                          }
                        }
                      },
                      "relation": {
                        "type": "object",
                        "properties": {
                          "contains": {
                            "type": "string"
                          },
                          "does_not_contain": {
                            "type": "string"
                          },
                          "is_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          },
                          "is_not_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          }
                        }
                      },
                      "created_by": {
                        "type": "object",
                        "properties": {
                          "contains": {
                            "type": "string"
                          },
                          "does_not_contain": {
                            "type": "string"
                          },
                          "is_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          },
                          "is_not_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          }
                        }
                      },
                      "last_edited_by": {
                        "type": "object",
                        "properties": {
                          "contains": {
                            "type": "string"
                          },
                          "does_not_contain": {
                            "type": "string"
                          },
                          "is_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          },
                          "is_not_empty": {
                            "type": "string",
                            "enum": [
                              "true"
                            ]
                          }
                        }
                      },
                      "formula": {
                        "type": "object",
                        "properties": {
                          "string": {
                            "type": "object",
                            "properties": {
                              "equals": {
                                "type": "string"
                              },
                              "does_not_equal": {
                                "type": "string"
                              },
                              "contains": {
                                "type": "string"
                              },
                              "does_not_contain": {
                                "type": "string"
                              },
                              "starts_with": {
                                "type": "string"
                              },
                              "ends_with": {
                                "type": "string"
                              },
                              "is_empty": {
                                "type": "string"
                              },
                              "is_not_empty": {
                                "type": "string"
                              }
                            }
                          },
                          "checkbox": {
                            "type": "object",
                            "properties": {
                              "equals": {
                                "type": "boolean"
                              },
                              "does_not_equal": {
                                "type": "boolean"
                              }
                            }
                          },
                          "number": {
                            "type": "object",
                            "properties": {
                              "equals": {
                                "type": "number",
                                "format": "float"
                              },
                              "does_not_equal": {
                                "type": "number",
                                "format": "float"
                              },
                              "greater_than": {
                                "type": "number",
                                "format": "float"
                              },
                              "less_than": {
                                "type": "number",
                                "format": "float"
                              },
                              "greater_than_or_equal_to": {
                                "type": "number",
                                "format": "float"
                              },
                              "less_than_or_equal_to": {
                                "type": "number",
                                "format": "float"
                              },
                              "is_empty": {
                                "type": "number",
                                "format": "float"
                              },
                              "is_not_empty": {
                                "type": "number",
                                "format": "float"
                              }
                            }
                          },
                          "date": {
                            "type": "object",
                            "properties": {
                              "equals": {
                                "type": "string",
                                "format": "date"
                              },
                              "before": {
                                "type": "string",
                                "format": "date"
                              },
                              "after": {
                                "type": "string",
                                "format": "date"
                              },
                              "on_or_before": {
                                "type": "string",
                                "format": "date"
                              },
                              "on_or_after": {
                                "type": "string",
                                "format": "date"
                              },
                              "this_week": {
                                "type": "object",
                                "description": "Empty object `{}`",
                                "properties": {}
                              },
                              "past_week": {
                                "type": "object",
                                "description": "Empty object `{}`",
                                "properties": {}
                              },
                              "past_month": {
                                "type": "object",
                                "description": "Empty object `{}`",
                                "properties": {}
                              },
                              "past_year": {
                                "type": "object",
                                "description": "Empty object `{}`",
                                "properties": {}
                              },
                              "next_week": {
                                "type": "object",
                                "description": "Empty object `{}`",
                                "properties": {}
                              },
                              "next_month": {
                                "type": "object",
                                "description": "Empty object `{}`",
                                "properties": {}
                              },
                              "next_year": {
                                "type": "object",
                                "description": "Empty object `{}`",
                                "properties": {}
                              },
                              "is_empty": {
                                "type": "string",
                                "enum": [
                                  "true"
                                ]
                              },
                              "is_not_empty": {
                                "type": "boolean",
                                "description": "true"
                              }
                            }
                          }
                        }
                      },
                      "unique_id": {
                        "type": "object",
                        "properties": {
                          "equals": {
                            "type": "number",
                            "format": "float"
                          },
                          "does_not_equal": {
                            "type": "number",
                            "format": "float"
                          },
                          "greater_than": {
                            "type": "number",
                            "format": "float"
                          },
                          "less_than": {
                            "type": "number",
                            "format": "float"
                          },
                          "greater_than_or_equal_to": {
                            "type": "number",
                            "format": "float"
                          },
                          "less_than_or_equal_to": {
                            "type": "number",
                            "format": "float"
                          },
                          "is_empty": {
                            "type": "number",
                            "format": "float"
                          },
                          "is_not_empty": {
                            "type": "number",
                            "format": "float"
                          }
                        }
                      },
                      "verification": {
                        "type": "object",
                        "required": [
                          "status"
                        ],
                        "properties": {
                          "status": {
                            "type": "string",
                            "enum": [
                              "\"verified\"",
                              "\"expired\"",
                              "\"none\"",
                              ""
                            ]
                          }
                        }
                      }
                    }
                  },
                  "start_cursor": {
                    "type": "string"
                  },
                  "page_size": {
                    "type": "integer",
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
                    "value": "{\n  \"object\": \"list\",\n  \"results\": [\n    {\n      \"object\": \"page\",\n      \"id\": \"59833787-2cf9-4fdf-8782-e53db20768a5\",\n      \"created_time\": \"2022-03-01T19:05:00.000Z\",\n      \"last_edited_time\": \"2022-07-06T20:25:00.000Z\",\n      \"created_by\": {\n        \"object\": \"user\",\n        \"id\": \"ee5f0f84-409a-440f-983a-a5315961c6e4\"\n      },\n      \"last_edited_by\": {\n        \"object\": \"user\",\n        \"id\": \"0c3e9826-b8f7-4f73-927d-2caaf86f1103\"\n      },\n      \"cover\": {\n        \"type\": \"external\",\n        \"external\": {\n          \"url\": \"https://upload.wikimedia.org/wikipedia/commons/6/62/Tuscankale.jpg\"\n        }\n      },\n      \"icon\": {\n        \"type\": \"emoji\",\n        \"emoji\": \"🥬\"\n      },\n      \"parent\": {\n        \"type\": \"data_source_id\",\n        \"database_id\": \"d9824bdc-8445-4327-be8b-5b47500af6ce\"\n        \"data_source_id\": \"27a2eeb5-b4f6-4dbe-b3b5-609a7ab26620\"\n      },\n      \"archived\": false,\n      \"properties\": {\n        \"Store availability\": {\n          \"id\": \"%3AUPp\",\n          \"type\": \"multi_select\",\n          \"multi_select\": [\n            {\n              \"id\": \"t|O@\",\n              \"name\": \"Gus's Community Market\",\n              \"color\": \"yellow\"\n            },\n            {\n              \"id\": \"{Ml\\\\\",\n              \"name\": \"Rainbow Grocery\",\n              \"color\": \"gray\"\n            }\n          ]\n        },\n        \"Food group\": {\n          \"id\": \"A%40Hk\",\n          \"type\": \"select\",\n          \"select\": {\n            \"id\": \"5e8e7e8f-432e-4d8a-8166-1821e10225fc\",\n            \"name\": \"🥬 Vegetable\",\n            \"color\": \"pink\"\n          }\n        },\n        \"Price\": {\n          \"id\": \"BJXS\",\n          \"type\": \"number\",\n          \"number\": 2.5\n        },\n        \"Responsible Person\": {\n          \"id\": \"Iowm\",\n          \"type\": \"people\",\n          \"people\": [\n            {\n              \"object\": \"user\",\n              \"id\": \"cbfe3c6e-71cf-4cd3-b6e7-02f38f371bcc\",\n              \"name\": \"Cristina Cordova\",\n              \"avatar_url\": \"https://lh6.googleusercontent.com/-rapvfCoTq5A/AAAAAAAAAAI/AAAAAAAAAAA/AKF05nDKmmUpkpFvWNBzvu9rnZEy7cbl8Q/photo.jpg\",\n              \"type\": \"person\",\n              \"person\": {\n                \"email\": \"cristina@makenotion.com\"\n              }\n            }\n          ]\n        },\n        \"Last ordered\": {\n          \"id\": \"Jsfb\",\n          \"type\": \"date\",\n          \"date\": {\n            \"start\": \"2022-02-22\",\n            \"end\": null,\n            \"time_zone\": null\n          }\n        },\n        \"Cost of next trip\": {\n          \"id\": \"WOd%3B\",\n          \"type\": \"formula\",\n          \"formula\": {\n            \"type\": \"number\",\n            \"number\": 0\n          }\n        },\n        \"Recipes\": {\n          \"id\": \"YfIu\",\n          \"type\": \"relation\",\n          \"relation\": [\n            {\n              \"id\": \"90eeeed8-2cdd-4af4-9cc1-3d24aff5f63c\"\n            },\n            {\n              \"id\": \"a2da43ee-d43c-4285-8ae2-6d811f12629a\"\n            }\n          ],\n\t\t\t\t\t\"has_more\": false\n        },\n        \"Description\": {\n          \"id\": \"_Tc_\",\n          \"type\": \"rich_text\",\n          \"rich_text\": [\n            {\n              \"type\": \"text\",\n              \"text\": {\n                \"content\": \"A dark \",\n                \"link\": null\n              },\n              \"annotations\": {\n                \"bold\": false,\n                \"italic\": false,\n                \"strikethrough\": false,\n                \"underline\": false,\n                \"code\": false,\n                \"color\": \"default\"\n              },\n              \"plain_text\": \"A dark \",\n              \"href\": null\n            },\n            {\n              \"type\": \"text\",\n              \"text\": {\n                \"content\": \"green\",\n                \"link\": null\n              },\n              \"annotations\": {\n                \"bold\": false,\n                \"italic\": false,\n                \"strikethrough\": false,\n                \"underline\": false,\n                \"code\": false,\n                \"color\": \"green\"\n              },\n              \"plain_text\": \"green\",\n              \"href\": null\n            },\n            {\n              \"type\": \"text\",\n              \"text\": {\n                \"content\": \" leafy vegetable\",\n                \"link\": null\n              },\n              \"annotations\": {\n                \"bold\": false,\n                \"italic\": false,\n                \"strikethrough\": false,\n                \"underline\": false,\n                \"code\": false,\n                \"color\": \"default\"\n              },\n              \"plain_text\": \" leafy vegetable\",\n              \"href\": null\n            }\n          ]\n        },\n        \"In stock\": {\n          \"id\": \"%60%5Bq%3F\",\n          \"type\": \"checkbox\",\n          \"checkbox\": true\n        },\n        \"Number of meals\": {\n          \"id\": \"zag~\",\n          \"type\": \"rollup\",\n          \"rollup\": {\n            \"type\": \"number\",\n            \"number\": 2,\n            \"function\": \"count\"\n          }\n        },\n        \"Photo\": {\n          \"id\": \"%7DF_L\",\n          \"type\": \"url\",\n          \"url\": \"https://i.insider.com/612fb23c9ef1e50018f93198?width=1136&format=jpeg\"\n        },\n        \"Name\": {\n          \"id\": \"title\",\n          \"type\": \"title\",\n          \"title\": [\n            {\n              \"type\": \"text\",\n              \"text\": {\n                \"content\": \"Tuscan kale\",\n                \"link\": null\n              },\n              \"annotations\": {\n                \"bold\": false,\n                \"italic\": false,\n                \"strikethrough\": false,\n                \"underline\": false,\n                \"code\": false,\n                \"color\": \"default\"\n              },\n              \"plain_text\": \"Tuscan kale\",\n              \"href\": null\n            }\n          ]\n        }\n      },\n      \"url\": \"https://www.notion.so/Tuscan-kale-598337872cf94fdf8782e53db20768a5\"\n    }\n  ],\n  \"next_cursor\": null,\n  \"has_more\": false,\n  \"type\": \"page_or_data_source\",\n\t\"page_or_data_source\": {}\n}"
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
              "code": "curl -X POST 'https://api.notion.com/v1/data_sources/897e5a76ae524b489fdfe71f5945d1af/query' \\\n  -H 'Authorization: Bearer '\"$NOTION_API_KEY\"'' \\\n  -H 'Notion-Version: 2022-06-28' \\\n  -H \"Content-Type: application/json\" \\\n--data '{\n  \"filter\": {\n    \"or\": [\n      {\n        \"property\": \"In stock\",\n        \"checkbox\": {\n          \"equals\": true\n        }\n      },\n      {\n        \"property\": \"Cost of next trip\",\n        \"number\": {\n          \"greater_than_or_equal_to\": 2\n        }\n      }\n    ]\n  },\n  \"sorts\": [\n    {\n      \"property\": \"Last ordered\",\n      \"direction\": \"ascending\"\n    }\n  ]\n}'"
            },
            {
              "language": "node",
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const dataSourceId = 'd9824bdc-8445-4327-be8b-5b47500af6ce';\n  const response = await notion.dataSources.query({\n    data_source_id: dataSourceId,\n    filter: {\n      or: [\n        {\n          property: 'In stock',\n          checkbox: {\n            equals: true,\n          },\n        },\n        {\n          property: 'Cost of next trip',\n          number: {\n            greater_than_or_equal_to: 2,\n          },\n        },\n      ],\n    },\n    sorts: [\n      {\n        property: 'Last ordered',\n        direction: 'ascending',\n      },\n    ],\n  });\n  console.log(response);\n})();"
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
  "_id": "606ecc2cd9e93b0044cf6e47:68b1ebd3866ea01713ccb69a"
}
```