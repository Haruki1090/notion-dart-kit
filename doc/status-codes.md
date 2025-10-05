# Status codes

Responses from the API use HTTP response codes to indicate general classes of success and error.

## Success codes

| HTTP status code | Description                                |
| :--------------- | :----------------------------------------- |
| 200              | Notion successfully processed the request. |

## Error codes

Error responses contain more detail about the error in the response body, in the `"code"` and `"message"` properties.

[block:parameters]
{
  "data": {
    "h-0": "HTTP status code",
    "h-1": "`\"code\"`",
    "h-2": "Description",
    "h-3": "`\"message\"` example",
    "0-0": "400",
    "0-1": "`\"invalid_json\"`",
    "0-2": "The request body could not be decoded as JSON.",
    "0-3": "`\"Error parsing JSON body.\"`",
    "1-0": "400",
    "1-1": "`\"invalid_request_url\"`",
    "1-2": "The request URL is not valid.",
    "1-3": "`\"Invalid request URL\"`",
    "2-0": "400",
    "2-1": "`\"invalid_request\"`",
    "2-2": "This request is not supported.",
    "2-3": "`\"Unsupported request: <request name>.\"`",
    "3-0": "400",
    "3-1": "`\"invalid_grant\"`",
    "3-2": "The provided authorization grant (e.g., authorization code, resource owner credentials) or refresh token is invalid, expired, revoked, does not match the redirection URI used in the authorization request, or was issued to another client. See [OAuth 2.0 documentation](https://datatracker.ietf.org/doc/html/rfc6749#section-5.2) for more information.",
    "3-3": "`\"Invalid code: this code has been revoked.\"`",
    "4-0": "400",
    "4-1": "`\"validation_error\"`",
    "4-2": "The request body does not match the schema for the expected parameters. Check the `\"message\"` property for more details.",
    "4-3": "`\"body failed validation: body.properties should be defined, instead was undefined.\"`",
    "5-0": "400",
    "5-1": "`\"missing_version\"`",
    "5-2": "The request is missing the required `Notion-Version` header. See [Versioning](ref:versioning).",
    "5-3": "`\"Notion-Version header failed validation: Notion-Version header should be defined, instead was undefined.\"`",
    "6-0": "401",
    "6-1": "`\"unauthorized\"`",
    "6-2": "The bearer token is not valid.",
    "6-3": "`\"API token is invalid.\"`",
    "7-0": "403",
    "7-1": "`\"restricted_resource\"`",
    "7-2": "Given the bearer token used, the client doesn't have permission to perform this operation.",
    "7-3": "`\"API token does not have access to this resource.\"`",
    "8-0": "404",
    "8-1": "`\"object_not_found\"`",
    "8-2": "Given the bearer token used, the resource does not exist. This error can also indicate that the resource has not been shared with owner of the bearer token.",
    "8-3": "`\"Could not find database with ID: be907abe-510e-4116-a3d1-7ea71018c06f. Make sure the relevant pages and databases are shared with your integration.\"`",
    "9-0": "409",
    "9-1": "`\"conflict_error\"`",
    "9-2": "The transaction could not be completed, potentially due to a data collision. Make sure the parameters are up to date and try again.  \n  \nWe also use this HTTP status code in rare cases when our [File Upload](ref:file-upload) third-party data storage provider has downtime and sending file contents failed. In this case, please retry the request later.",
    "9-3": "`\"Conflict occurred while saving. Please try again.\"`",
    "10-0": "429",
    "10-1": "`\"rate_limited\"`",
    "10-2": "This request exceeds the number of requests allowed. Slow down and try again. [More details on rate limits](https://developers.notion.com/reference/request-limits).",
    "10-3": "`\"You have been rate limited. Please try again in a few minutes.\"`",
    "11-0": "500",
    "11-1": "`\"internal_server_error\"`",
    "11-2": "An unexpected error occurred. Reach out to [Notion support](https://www.notion.so/help).",
    "11-3": "`\"Unexpected error occurred.\"`",
    "12-0": "502",
    "12-1": "`\"bad_gateway\"`",
    "12-2": "Notion encountered an issue while attempting to complete this request (e.g., failed to establish a connection with an upstream server). Please try again.",
    "12-3": "`\"Bad Gateway\"`",
    "13-0": "503",
    "13-1": "`\"service_unavailable\"`",
    "13-2": "Notion is unavailable. This can occur when the time to respond to a request takes longer than 60 seconds, the maximum request timeout. Please try again later.",
    "13-3": "`\"Notion is unavailable, please try again later.\"`",
    "14-0": "503",
    "14-1": "`\"database_connection_unavailable\"`",
    "14-2": "Notion's database is unavailable or is not in a state that can be queried. Please try again later.",
    "14-3": "`\"Notion is unavailable, please try again later.\"`",
    "15-0": "504",
    "15-1": "`\"gateway_timeout\"`",
    "15-2": "Notion timed out while attempting to complete this request. Please try again later.",
    "15-3": "`\"Gateway Timeout\"`"
  },
  "cols": 4,
  "rows": 16,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]
