# Refresh a token

Refreshes an access token, generating a new access token and new refresh token

> 📘 
> 
> For step-by-step instructions on how to use this endpoint to refresh an access token, check out the [Authorization guide](https://developers.notion.com/docs/authorization#public-integration-auth-flow-set-up).

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
        "summary": "Refresh a token",
        "description": "Refreshes an access token, generating a new access token and new refresh token",
        "operationId": "refresh-a-token",
        "parameters": [
          {
            "name": "grant_type",
            "in": "path",
            "description": "A constant string: \"refresh_token\"",
            "schema": {
              "type": "string",
              "default": "\"refresh_token\""
            },
            "required": true
          },
          {
            "name": "refresh_token",
            "in": "path",
            "description": "A unique token that Notion generates to refresh your token, generated when a user initiates the OAuth flow.",
            "schema": {
              "type": "string"
            },
            "required": true
          },
          {
            "name": "Authorization",
            "in": "header",
            "schema": {
              "type": "string",
              "default": "Basic $BASE64_ENCODED_ID_AND_SECRET"
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
                    "value": "{\n  \"access_token\": \"ntn_e4502e8c9-1990-60af-845f-ff8f872b1ec6c\",\n\t\"refresh_token\": \"ntn_1202e8c9-0920-412f-055f-8f872ba1df26c\",\n  \"bot_id\": \"b3414d659-1224-5ty7-6ffr-cc9d8773drt601288f\",\n  \"duplicated_template_id\": null,\n  \"owner\": {\n    \"workspace\": true\n  },\n  \"workspace_icon\": \"https://website.domain/images/image.png\",\n  \"workspace_id\": \"j565j4d7x3-2882-61bs-564a-jj9d9ui-c36hxfr7x\",\n  \"workspace_name\": \"Ada's Notion Workspace\"\n}"
                  }
                },
                "schema": {
                  "type": "object",
                  "properties": {
                    "access_token": {
                      "type": "string",
                      "example": "ntn_e4502e8c9-1990-60af-845f-ff8f872b1ec6c"
                    },
                    "refresh_token": {
                      "type": "string",
                      "example": "ntn_1202e8c9-0920-412f-055f-8f872ba1df26c"
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
                    "value": "{\n  \"error\": \"invalid_grant\",\n  \"error_description\": \"Invalid refresh token\"\n}"
                  }
                },
                "schema": {
                  "type": "object",
                  "properties": {
                    "error": {
                      "type": "string",
                      "example": "invalid_grant"
                    },
                    "error_description": {
                      "type": "string",
                      "example": "Invalid refresh token"
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
              "code": "curl --location --request POST 'https://api.notion.com/v1/oauth/token' \\\n--header 'Authorization: Basic '\"$BASE64_ENCODED_ID_AND_SECRET\"'' \\\n--header 'Content-Type: application/json' \\\n--header 'Notion-Version: 2022-06-28' \\\n--data '{\n\t\"grant_type\": \"refresh_token\",\n  \"refresh_token\": \"nrt_4991090011501Ejc6Xn4sHguI7jZIN449mKe9PRhpMfNK\"\n}'",
              "name": "Refresh"
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
  "_id": "606ecc2cd9e93b0044cf6e47:68894b224575dc6d49b50b37"
}
```