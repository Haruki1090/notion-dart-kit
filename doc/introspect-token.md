# Introspect token

Get a token's active status, scope, and issued time.


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
    "/v1/oauth/introspect": {
      "post": {
        "summary": "Introspect token",
        "description": "Get a token's active status, scope, and issued time.",
        "operationId": "introspect-token",
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
                  "token"
                ],
                "properties": {
                  "token": {
                    "type": "string",
                    "description": "The access token"
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
                    "value": "{\n  \"active\": true,\n  \"scope\": \"read_content insert_content update_content\",\n  \"iat\": 1727554061083  \n}"
                  }
                },
                "schema": {
                  "type": "object",
                  "properties": {
                    "active": {
                      "type": "boolean",
                      "example": true,
                      "default": true
                    },
                    "scope": {
                      "type": "string",
                      "example": "read_content insert_content update_content"
                    },
                    "iat": {
                      "type": "integer",
                      "example": 1727554061083,
                      "default": 0
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
              "code": "curl --location --request POST 'https://api.notion.com/v1/oauth/introspect' \\\n--header 'Authorization: Basic '\"$BASE64_ENCODED_ID_AND_SECRET\"'' \\\n--header 'Content-Type: application/json' \\\n--data '{\n  \"token\": \"'$ACCESS_TOKEN'\"\n}'"
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
  "_id": "606ecc2cd9e93b0044cf6e47:66f86270c642090043a010b4"
}
```