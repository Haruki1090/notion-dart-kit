# Pagination

[block:callout]
{
  "type": "danger",
  "title": "This page has been deprecated and is no longer maintained.",
  "body": "Refer to the introduction for [up-to-date pagination information](https://developers.notion.com/reference/intro#pagination)."
}
[/block]
Endpoints which return a list of objects use pagination. Pagination allows an integration to request a part of the list, receiving an array of `results` and a `next_cursor` in the response. The integration can use the `next_cursor` in another request to receive the next part of the list. Using this technique, the integration can continue to make requests to receive the whole list (or just the parts the integration needs).

## Requests

Each paginated endpoint accepts the following request parameters:
[block:parameters]
{
  "data": {
    "h-0": "Parameter",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "",
    "0-0": "`start_cursor`",
    "0-1": "`string` (*optional*)",
    "0-2": "A `cursor` returned from a previous response, used to request the next page of results. Treat this as an opaque value.\n\n**Default**: `undefined`, which indicates to return results from the beginning of the list.",
    "1-0": "`page_size`",
    "1-1": "`number` (*optional*)",
    "1-2": "The number of items from the full list desired in the response. \n\n**Default**: `100`\n**Maximum**: `100`\n\nThe response may contain fewer than this number of results."
  },
  "cols": 3,
  "rows": 2
}
[/block]

[block:callout]
{
  "type": "info",
  "title": "Parameter location varies by endpoint",
  "body": "For endpoints using the HTTP `GET` method, these parameters are accepted in the request query string. For endpoints using the HTTP `POST` method, these parameters are accepted in the request body."
}
[/block]
## Responses

Responses from paginated endpoints contain the following properties:
[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "0-0": "`has_more`",
    "0-1": "`boolean`",
    "0-2": "When the response includes the end of the list, `false`. Otherwise, `true`.",
    "1-0": "`next_cursor`",
    "1-1": "`string`",
    "1-2": "Only available when `has_more` is `true`.\n\nUsed to retrieve the next page of results by passing the value as the `start_cursor` parameter to the same endpoint.",
    "2-0": "`results`",
    "2-1": "array of endpoint-dependent objects",
    "2-2": "The page, or partial list, or results.",
    "3-0": "`object`",
    "3-1": "`string`",
    "3-2": "Always `list`.",
    "4-0": "`type`",
    "4-1": "`string` (enum)",
    "4-2": "Type of the objects in `results`. Possible values include `\"block\"`, `\"page\"`, `\"user\"`, `\"database\"`, `\"property_item\"`, `\"page_or_database\"`.",
    "5-0": "`{type}`",
    "5-2": "An object containing a type-specific pagination information.",
    "5-1": "`Pagination Type Object` (see below)"
  },
  "cols": 3,
  "rows": 6
}
[/block]
## Pagination Type Object

Responses from paginated endpoints have keys corresponding to the value of `type`. Under the key is an object with type-specific pagination information. `"block"`, `"page"`, `"user"`, `"database"` and `"page_or_database"` pagination type objects are empty objects. See [Property item object](ref:property-item-object) endpoint for a description of `"property_item"` pagination type object.

## Paginated endpoints

* [Query a database](ref:post-database-query) 
* [List databases](ref:get-databases)
* [Retrieve a page property item](ref:retrieve-a-page-property) 
* [Retrieve block children](ref:get-block-children) 
* [List all users](ref:get-users) 
* [Search](ref:post-search)
