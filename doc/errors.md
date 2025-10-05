# Errors

> ❗️ This page has been deprecated.
> 
> Refer to the [status codes documentation](ref:status-codes) for an up-to-date list of error codes.

Responses from the API use HTTP response codes are used to indicate general classes of success and error. Error responses contain more detail about the error in the response body, in the `"code"` and `"message"` properties.

| HTTP Status Code | `"code"`                            | Description                                                                                                                                                          |
| :--------------- | :---------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 400              | `"invalid_json"`                    | The request body could not be decoded as JSON.                                                                                                                       |
| 400              | `"invalid_request_url"`             | The request URL is not valid.                                                                                                                                        |
| 400              | `"invalid_request"`                 | This request is not supported.                                                                                                                                       |
| 400              | `"validation_error"`                | The request body does not match the schema for the expected parameters. Check the `"message"` property for more details.                                             |
| 400              | `"missing_version"`                 | The request is missing the required `Notion-Version` header. See [Versioning](ref:versioning).                                                                       |
| 401              | `"unauthorized"`                    | The bearer token is not valid.                                                                                                                                       |
| 403              | `"restricted_resource"`             | Given the bearer token used, the client doesn't have permission to perform this operation.                                                                           |
| 404              | `"object_not_found"`                | Given the bearer token used, the resource does not exist. This error can also indicate that the resource has not been shared with owner of the bearer token.         |
| 409              | `"conflict_error"`                  | The transaction could not be completed, potentially due to a data collision. Make sure the parameters are up to date and try again.                                  |
| 429              | `"rate_limited"`                    | This request exceeds the number of requests allowed. Slow down and try again. [More details on rate limits](https://developers.notion.com/reference/request-limits). |
| 500              | `"internal_server_error"`           | An unexpected error occurred. Reach out to [Notion support](https://www.notion.so/notion/Notion-Official-83715d7703ee4b8699b5e659a4712dd8?target=intercom).          |
| 503              | `"service_unavailable"`             | Notion is unavailable. Try again later. This can occur when the time to respond to a request takes longer than 60 seconds, the maximum request timeout.              |
| 503              | `"database_connection_unavailable"` | Notion's database is unavailable or in an unqueryable state.  Try again later.                                                                                       |
| 504              | `"gateway_timeout"`                 | Notion timed out while attempting to complete this request. Please try again later.                                                                                  |
