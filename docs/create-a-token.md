# Create a token

Creates an access token that a third-party service can use to authenticate with Notion.

> 📘 
> 
> For step-by-step instructions on how to use this endpoint to create a public integration, check out the [Authorization guide](https://developers.notion.com/docs/authorization#set-up-the-auth-flow-for-a-public-integration). To walkthrough how to create tokens for Link Previews, refer to the [Link Previews guide](https://developers.notion.com/docs/build-a-link-preview-integration).

> 🚧 Redirect URI requirements for public integrations
> 
> The `redirect_uri` is a _required_ field in the request body for this endpoint if:
> 
> - the `redirect_uri` query parameter was set in the [Authorization URL](https://developers.notion.com/docs/authorization#step-1-navigate-the-user-to-the-integrations-authorization-url) provided to users, _or_;
> - there are more than one `redirect_uri`s included in the [integration’s settings](https://www.notion.so/my-integrations) under **OAuth Domain & URIs**. 
> 
> In most cases, the `redirect_uri` field is required.
> 
> This field is not allowed in the request body if:
> 
> - there is one `redirect_uri` included in the [integration’s settings](https://www.notion.so/my-integrations) under **OAuth Domain & URIs**, _and_ the `redirect_uri` query parameter was not included in the Authorization URL.
> 
> Learn more in the public integration section of the [Authorization Guide](https://developers.notion.com/docs/authorization#public-integration-auth-flow-set-up).

_Note: Each Public API endpoint can return several possible error codes. To see a full description of each type of error code, see the [Error codes section](https://developers.notion.com/reference/status-codes#error-codes) of the Status codes documentation._

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
    "/v1/oauth/token": {
      "post": {
        "summary": "Create a token",
        "description": "Creates an access token that a third-party service can use to authenticate with Notion.",
        "operationId": "create-a-token",
        "parameters": [
          {
            "name": "Authorization",
            "in": "header",
            "schema": {
              "type": "string",
              "default": "Basic $BASE64_ENCODED_ID_AND_SECRET"
            }
          }
        ],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {
                "type": "object",
                "required": [
                  "code",
                  "grant_type",
                  "redirect_uri"
                ],
                "properties": {
                  "code": {
                    "type": "string",
                    "description": "A unique random code that Notion generates to authenticate with your service, generated when a user initiates the OAuth flow."
                  },
                  "grant_type": {
                    "type": "string",
                    "description": "A constant string: \"authorization_code\".",
                    "default": "\"authorization_code\""
                  },
                  "redirect_uri": {
                    "type": "string",
                    "description": "The `\"redirect_uri\"` that was provided in the OAuth Domain & URI section of the integration's Authorization settings. Do not include this field if a `\"redirect_uri\"` query param was not included in the Authorization URL provided to users. In most cases, this field is required."
                  },
                  "external_account": {
                    "type": "object",
                    "description": "Required if and only when building [Link Preview](https://developers.notion.com/docs/link-previews) integrations (otherwise ignored). An object with `key` and `name` properties. `key` should be a unique identifier for the account. Notion uses the `key` to determine whether or not the user is re-connecting the same account. `name` should be some way for the user to know which account they used to authenticate with your service. If a user has authenticated Notion with your integration before and `key` is the same but `name` is different, then Notion updates the `name` associated with your integration.",
                    "properties": {}
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
                    "value": "{\n  \"access_token\": \"e202e8c9-0990-40af-855f-ff8f872b1ec6c\",\n  \"bot_id\": \"b3414d659-1224-5ty7-6ffr-cc9d8773drt601288f\",\n  \"duplicated_template_id\": null,\n  \"owner\": {\n    \"workspace\": true\n  },\n  \"workspace_icon\": \"https://website.domain/images/image.png\",\n  \"workspace_id\": \"j565j4d7x3-2882-61bs-564a-jj9d9ui-c36hxfr7x\",\n  \"workspace_name\": \"Ada's Notion Workspace\"\n}"
                  }
                },
                "schema": {
                  "type": "object",
                  "properties": {
                    "access_token": {
                      "type": "string",
                      "example": "e202e8c9-0990-40af-855f-ff8f872b1ec6c"
                    },
                    "bot_id": {
                      "type": "string",
                      "example": "b3414d659-1224-5ty7-6ffr-cc9d8773drt601288f"
                    },
                    "duplicated_template_id": {},
                    "owner": {
                      "type": "object",
                      "properties": {
                        "workspace": {
                          "type": "boolean",
                          "example": true,
                          "default": true
                        }
                      }
                    },
                    "workspace_icon": {
                      "type": "string",
                      "example": "https://website.domain/images/image.png"
                    },
                    "workspace_id": {
                      "type": "string",
                      "example": "j565j4d7x3-2882-61bs-564a-jj9d9ui-c36hxfr7x"
                    },
                    "workspace_name": {
                      "type": "string",
                      "example": "Ada's Notion Workspace"
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
                    "value": "{\n    \"error\": \"invalid_request\",\n    \"error_description\": \"body failed validation: body.redirect_uri should be defined, instead was `undefined`.\"\n}"
                  }
                },
                "schema": {
                  "type": "object",
                  "properties": {
                    "error": {
                      "type": "string",
                      "example": "invalid_request"
                    },
                    "error_description": {
                      "type": "string",
                      "example": "body failed validation: body.redirect_uri should be defined, instead was `undefined`."
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
              "code": "curl --location --request POST 'https://api.notion.com/v1/oauth/token' \\\n--header 'Authorization: Basic '\"$BASE64_ENCODED_ID_AND_SECRET\"'' \\\n--header 'Content-Type: application/json' \\\n--header 'Notion-Version: 2022-06-28' \\\n--data '{\n  \"grant_type\": \"authorization_code\",\n  \"code\": \"e202e8c9-0990-40af-855f-ff8f872b1ec6\",\n  \"redirect_uri\": \"https://wwww.my-integration-endpoint.dev/callback\",\n   \"external_account\": {\n        \"key\": \"A83823453409384\",\n        \"name\": \"Notion - team@makenotion.com\"\n    }\n}'",
              "name": "Create a token for a Link Preview"
            },
            {
              "language": "curl",
              "code": "curl --location --request POST 'https://api.notion.com/v1/oauth/token' \\\n--header 'Authorization: Basic '\"$BASE64_ENCODED_ID_AND_SECRET\"'' \\\n--header 'Content-Type: application/json' \\\n--header 'Notion-Version: 2022-06-28' \\\n--data '{\n\t\"grant_type\": \"authorization_code\",\n  \"code\": \"e202e8c9-0990-40af-855f-ff8f872b1ec6\",\n  \"redirect_uri\": \"https://example.com/auth/notion/callback\"\n}'",
              "name": "Create a token for a public integration"
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
  "_id": "606ecc2cd9e93b0044cf6e47:63c0b606d6e97900106eb9f3"
}
```