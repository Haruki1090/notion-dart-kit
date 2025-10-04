# Create a file upload

Use this API to initiate the process of [uploading a file](doc:working-with-files-and-media) to your Notion workspace.

For a successful request, the response is a [File Upload](ref:file-upload) object with a `status` of `"pending"`.

The maximum allowed length of `filename` string is 900 bytes, including any file extension included in the file name or inferred based on the `content_type`. However, we recommend using shorter names for performance and easier file management and lookup using the [List file uploads](ref:list-file-uploads) API.

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
    "/v1/file_uploads": {
      "post": {
        "summary": "Create a file upload",
        "description": "Use this API to initiate the process of [uploading a file](doc:working-with-files-and-media) to your Notion workspace.",
        "operationId": "create-a-file-upload",
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
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {
                "type": "object",
                "properties": {
                  "mode": {
                    "type": "string",
                    "description": "How the file is being sent. Use `multi_part` for files larger than 20MB. Use `external_url` for files that are temporarily hosted publicly elsewhere. Default is `single_part`.",
                    "default": "single_part",
                    "enum": [
                      "single_part",
                      "multi_part",
                      "external_url"
                    ]
                  },
                  "filename": {
                    "type": "string",
                    "description": "Name of the file to be created. Required when `mode` is `multi_part` or `external_url`. Otherwise optional, and used to override the filename. Must include an extension, or have one inferred from the `content_type` parameter."
                  },
                  "content_type": {
                    "type": "string",
                    "description": "MIME type of the file to be created. Recommended when sending the file in multiple parts. Must match the content type of the file that's sent, and the extension of the `filename` parameter if any."
                  },
                  "number_of_parts": {
                    "type": "integer",
                    "description": "When `mode` is `multi_part`, the number of parts you are uploading. Must be between 1 and 1,000. This must match the number of parts as well as the final `part_number` you send.",
                    "format": "int32"
                  },
                  "external_url": {
                    "type": "string",
                    "description": "When `mode` is `external_url`, provide the HTTPS URL of a publicly accessible file to import into your workspace."
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
                    "value": "{\n\t\"id\": \"b52b8ed6-e029-4707-a671-832549c09de3\",\n\t\"object\": \"file_upload\",\n\t\"created_time\": \"2025-03-15T20:53:00.000Z\",\n\t\"last_edited_time\": \"2025-03-15T20:53:00.000Z\",\n  \"expiry_time\": \"2025-03-15T21:53:00.000Z\",\n\t\"upload_url\": \"<<baseUrl>>/v1/file_uploads/b52b8ed6-e029-4707-a671-832549c09de3/send`,\n\t\"archived\": false,\n  \"status\": \"pending\",\n\t\"filename\": \"test.txt\",\n\t\"content_type\": \"text/plain\",\n\t\"content_length\": 1024,\n}"
                  }
                }
              }
            }
          },
          "403": {
            "description": "403",
            "content": {
              "application/json": {
                "examples": {
                  "Result": {
                    "value": "{\n\t\"object\": \"error\",\n\t\"status\": 403,\n \t\"code\": \"restricted_resource\",\n\t\"message\": \"Insufficient permissions for this endpoint.\"\n}"
                  }
                },
                "schema": {
                  "type": "object",
                  "properties": {
                    "object": {
                      "type": "string",
                      "example": "error"
                    },
                    "status": {
                      "type": "integer",
                      "example": 403,
                      "default": 0
                    },
                    "code": {
                      "type": "string",
                      "example": "restricted_resource"
                    },
                    "message": {
                      "type": "string",
                      "example": "Insufficient permissions for this endpoint."
                    }
                  }
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
  "_id": "606ecc2cd9e93b0044cf6e47:67eace18749e710e21666006"
}
```