# Complete a file upload

Use this API to finalize a `mode=multi_part` [file upload](ref:file-upload) after all of the parts have been sent successfully.


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
    "/v1/file_uploads/{file_upload_id}/complete": {
      "post": {
        "summary": "Complete a file upload",
        "description": "Use this API to finalize a `mode=multi_part` [file upload](ref:file-upload) after all of the parts have been sent successfully.",
        "operationId": "complete-a-file-upload",
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
                    "value": "{\n\t\"id\": \"b52b8ed6-e029-4707-a671-832549c09de3\",\n\t\"object\": \"file_upload\",\n\t\"created_time\": \"2025-03-15T20:53:00.000Z\",\n\t\"last_edited_time\": \"2025-03-15T20:57:00.000Z\",\n  \"expiry_time\": \"2025-03-15T21:53:00.000Z\",\n\t\"archived\": false,\n  \"status\": \"uploaded\",\n\t\"filename\": \"test.txt\",\n\t\"content_type\": \"text/plain\",\n\t\"content_length\": 1024,\n}"
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
        "security": []
      }
    }
  },
  "x-readme": {
    "headers": [],
    "explorer-enabled": false,
    "proxy-enabled": true
  },
  "x-readme-fauxas": true,
  "_id": "606ecc2cd9e93b0044cf6e47:6802b4c35423d40025ef82af"
}
```