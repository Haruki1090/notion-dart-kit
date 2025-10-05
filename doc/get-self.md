# Retrieve your token's bot user

Retrieves the bot [User](ref:user) associated with the API token provided in the authorization header. The bot will have an `owner` field with information about the person who authorized the integration.

### Errors

Each Public API endpoint can return several possible error codes. See the [Error codes section](https://developers.notion.com/reference/status-codes#error-codes) of the Status codes documentation for more information.

> 📘 Integration capabilities
> 
> This endpoint is accessible from by integrations with any level of capabilities. The [user object](ref:user) returned will adhere to the limitations of the integration's capabilities. For more information on integration capabilities, see the [capabilities guide](ref:capabilities).

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
    "/v1/users/me": {
      "get": {
        "summary": "Retrieve your token's bot user",
        "description": "",
        "operationId": "get-self",
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
        "responses": {
          "200": {
            "description": "200",
            "content": {
              "application/json": {
                "examples": {
                  "Result": {
                    "value": "{\n  \"object\": \"user\",\n  \"id\": \"16d84278-ab0e-484c-9bdd-b35da3bd8905\",\n  \"name\": \"pied piper\",\n  \"avatar_url\": null,\n  \"type\": \"bot\",\n  \"bot\": {\n    \"owner\": {\n      \"type\": \"user\",\n      \"user\": {\n        \"object\": \"user\",\n        \"id\": \"5389a034-eb5c-47b5-8a9e-f79c99ef166c\",\n        \"name\": \"christine makenotion\",\n        \"avatar_url\": null,\n        \"type\": \"person\",\n        \"person\": {\n          \"email\": \"christine@makenotion.com\"\n        }\n      }\n    }\n  }\n}"
                  }
                },
                "schema": {
                  "type": "object",
                  "properties": {
                    "object": {
                      "type": "string",
                      "example": "user"
                    },
                    "id": {
                      "type": "string",
                      "example": "16d84278-ab0e-484c-9bdd-b35da3bd8905"
                    },
                    "name": {
                      "type": "string",
                      "example": "pied piper"
                    },
                    "avatar_url": {},
                    "type": {
                      "type": "string",
                      "example": "bot"
                    },
                    "bot": {
                      "type": "object",
                      "properties": {
                        "owner": {
                          "type": "object",
                          "properties": {
                            "type": {
                              "type": "string",
                              "example": "user"
                            },
                            "user": {
                              "type": "object",
                              "properties": {
                                "object": {
                                  "type": "string",
                                  "example": "user"
                                },
                                "id": {
                                  "type": "string",
                                  "example": "5389a034-eb5c-47b5-8a9e-f79c99ef166c"
                                },
                                "name": {
                                  "type": "string",
                                  "example": "christine makenotion"
                                },
                                "avatar_url": {},
                                "type": {
                                  "type": "string",
                                  "example": "person"
                                },
                                "person": {
                                  "type": "object",
                                  "properties": {
                                    "email": {
                                      "type": "string",
                                      "example": "christine@makenotion.com"
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
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
              "language": "javascript",
              "code": "const { Client } = require('@notionhq/client');\n\nconst notion = new Client({ auth: process.env.NOTION_API_KEY });\n\n(async () => {\n  const response = await notion.users.me();\n  console.log(response);\n})();",
              "name": "Notion SDK for JavaScript"
            },
            {
              "language": "curl",
              "code": "curl 'https://api.notion.com/v1/users/me' \\\n  -H 'Authorization: Bearer '\"$NOTION_API_KEY\"'' \\\n  -H \"Notion-Version: 2022-06-28\""
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
  "_id": "606ecc2cd9e93b0044cf6e47:615b94166cfcbf0025d4664d"
}
```