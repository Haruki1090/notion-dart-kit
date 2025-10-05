# Send a file upload

Use this API to transmit file contents to Notion for a [file upload](ref:file-upload).

For this endpoint, use a `Content-Type` of `multipart/form-data`, and provide your file contents under the `file` key.

> 📘 
> 
> The use of multipart form data is unique to this endpoint. Other Notion APIs, including [Create a file upload](ref:create-a-file-upload) and [Complete a file upload](ref:complete-a-file-upload), use JSON parameters.
> 
> Include a `boundary` with the `Content-Type` header of your request as per [RFC 2388](https://datatracker.ietf.org/doc/html/rfc2388). Most request libraries (e.g. `fetch`, `ky`) automatically handle this as long as you provide a form data object but don't overwrite the `Content-Type` explicitly.
> 
> For more tips and examples, view the [file upload guide](ref:uploading-small-files#step-2-upload-file-contents).

When `mode=multi_part`, each part must include a form field `part_number` to indicate which part is being sent. Parts may be sent concurrently up to standard Notion API [rate limits](ref:request-limits), and may be sent out of order as long as all parts (1, ..., `part_number`) are successfully sent before calling the [complete file upload API](https://developers.notion.com/reference/complete-a-file-upload).

The maximum allowed length of a file name is 900 bytes, including any file extension included in the file name or inferred based on the `content_type`. However, we recommend using shorter names for performance and easier file management and lookup using the [List file uploads](ref:list-file-uploads) API.

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
    "/v1/file_uploads/{file_upload_id}/send": {
      "post": {
        "summary": "Send a file upload",
        "description": "Use this API to transmit file contents to Notion for a [file upload](ref:file-upload).",
        "operationId": "send-a-file-upload",
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {
                "type": "object",
                "required": [
                  "file"
                ],
                "properties": {
                  "file": {
                    "type": "string",
                    "description": "The raw binary file contents to upload.",
                    "format": "binary"
                  },
                  "part_number": {
                    "type": "string",
                    "description": "When using a `mode=multi_part` File Upload to send files greater than 20 MB in parts, this is the current part number. Must be an integer between 1 and 1000 provided as a string form field."
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
                    "value": "{\n\t\"id\": \"b52b8ed6-e029-4707-a671-832549c09de3\",\n\t\"object\": \"file_upload\",\n\t\"created_time\": \"2025-03-15T20:53:00.000Z\",\n\t\"last_edited_time\": \"2025-03-15T20:57:00.000Z\",\n  \"expiry_time\": \"2025-03-15T21:53:00.000Z\",\n\t\"upload_url\": null,\n\t\"archived\": false,\n  \"status\": \"uploaded\",\n\t\"filename\": \"test.txt\",\n\t\"content_type\": \"text/plain\",\n\t\"content_length\": 1024,\n}"
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
                  "Validation Error (Invalid Status)": {
                    "value": "{\n\t\"object\": \"error\",\n\t\"status\": 400,\n \t\"code\": \"validation_error\",\n\t\"message\": \"File upload with ID b52b8ed6-e029-4707-a671-832549c09de3 is not in the pending status.\"\n}"
                  },
                  "Validation Error (Content Length Limit)": {
                    "value": "{\n\t\"object\": \"error\",\n\t\"status\": 400,\n \t\"code\": \"validation_error\",\n\t\"message\": \"File size of 5242881 bytes exceeds the limit of 5242880.\"\n}"
                  }
                },
                "schema": {
                  "oneOf": [
                    {
                      "title": "Validation Error (Invalid Status)",
                      "type": "object",
                      "properties": {
                        "object": {
                          "type": "string",
                          "example": "error"
                        },
                        "status": {
                          "type": "integer",
                          "example": 400,
                          "default": 0
                        },
                        "code": {
                          "type": "string",
                          "example": "validation_error"
                        },
                        "message": {
                          "type": "string",
                          "example": "File upload with ID b52b8ed6-e029-4707-a671-832549c09de3 is not in the pending status."
                        }
                      }
                    },
                    {
                      "title": "Validation Error (Content Length Limit)",
                      "type": "object",
                      "properties": {
                        "object": {
                          "type": "string",
                          "example": "error"
                        },
                        "status": {
                          "type": "integer",
                          "example": 400,
                          "default": 0
                        },
                        "code": {
                          "type": "string",
                          "example": "validation_error"
                        },
                        "message": {
                          "type": "string",
                          "example": "File size of 5242881 bytes exceeds the limit of 5242880."
                        }
                      }
                    }
                  ]
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
        "security": [],
        "x-readme": {
          "code-samples": [
            {
              "language": "curl",
              "code": "curl --request POST \\\n  --url 'https://api.notion.com/v1/file_uploads/a3f9d3e2-1abc-42de-b904-badc0ffee000/send' \\\n  --header 'Authorization: Bearer ntn_****' \\\n  --header 'Notion-Version: 2022-06-28' \\\n  --header 'Content-Type: multipart/form-data' \\\n  -F \"file=@image_to_upload_split_aa.png\"\n  -F \"part_number=1\""
            },
            {
              "language": "python",
              "code": "import requests\n\n# Path to the 1st part of the split-up file:\nfile_name = \"image_to_upload_split_aa.png\"\n\nwith open(file_name, \"rb\") as f:\n    files = {\n\t\t    # Provide the MIME content type of the file\n\t\t    # as the 3rd argument.\n        \"file\": (file_name, f, \"image/png\"),\n\n        # Use a file name of `None` to treat this as a regular\n        # form field and not a file.\n        \"part_number\": (None, \"1\")\n    }\n\n    # URL can also be obtained from the `upload_url` field\n    # of the Create File Upload response to avoid needing\n    # to manually concatenate the `file_upload_id` and `/send`.\n    url = f\"https://api.notion.com/v1/file_uploads/{file_upload_id}/send\"\n    headers = {\n      \"Authorization\": f\"Bearer {NOTION_KEY}\",\n      \"Notion-Version\": \"2022-06-28\"\n    }\n\n    response = requests.post(url, headers=headers, files=files)\n    print(response.text)"
            },
            {
              "language": "ruby",
              "code": "require 'rest-client'\nrequire 'mime/types'\n\nfile_name = \"image_to_upload_split_aa.png\"\nfile_upload_id = \"YOUR_FILE_UPLOAD_ID\" # Replace with actual upload ID\nnotion_key = \"YOUR_NOTION_KEY\" # Replace with your actual notion key\n\nurl = \"https://api.notion.com/v1/file_uploads/#{file_upload_id}/send\"\n\n# Prepare the file\nfile = File.new(file_name, 'rb')\nfile_content_type = MIME::Types.type_for(file_name).first.content_type\n\n# Prepare headers\nheaders = {\n  Authorization: \"Bearer #{notion_key}\",\n  'Notion-Version': '2022-06-28'\n}\n\n# Prepare multipart data\npayload = {\n  file: RestClient::Payload::File.new(file, filename: file_name, content_type: file_content_type),\n  part_number: '1'\n}\n\n# Send the request\nresponse = RestClient.post(url, payload, headers)\n\n# Print the response\nputs response.body",
              "name": "Ruby"
            },
            {
              "language": "node",
              "code": "const fs = require('fs');\nconst fetch = require('node-fetch');\nconst FormData = require('form-data');\n\nconst file_name = \"image_to_upload_split_aa.png\";\nconst file_upload_id = \"YOUR_FILE_UPLOAD_ID\"; // Replace with actual upload ID\nconst NOTION_KEY = \"YOUR_NOTION_KEY\"; // Replace with your actual notion key\n\n// Prepare form data\nconst form = new FormData();\nform.append('file', fs.createReadStream(file_name), {\n    filename: file_name,\n    contentType: 'image/png',\n});\nform.append('part_number', '1');\n\n// Prepare headers\nconst headers = {\n    'Authorization': `Bearer ${NOTION_KEY}`,\n    'Notion-Version': '2022-06-28',\n    ...form.getHeaders()\n};\n\n// Send the POST request\nconst url = `https://api.notion.com/v1/file_uploads/${file_upload_id}/send`;\nfetch(url, {\n    method: 'POST',\n    headers: headers,\n    body: form\n})\n    .then(response => response.json())\n    .then(data => console.log(data))\n    .catch(error => console.error('Error:', error));",
              "name": "Node"
            },
            {
              "language": "php",
              "code": "<?php\n\nrequire 'vendor/autoload.php'; // Ensure Guzzle is loaded\n\nuse GuzzleHttp\\Client;\n\n$file_name = \"image_to_upload_split_aa.png\";\n$file_upload_id = \"YOUR_FILE_UPLOAD_ID\"; // Replace with actual upload ID\n$NOTION_KEY = \"YOUR_NOTION_KEY\"; // Replace with your actual notion key\n\n// Prepare the Guzzle client\n$client = new Client();\n\n// Prepare the file and other parameters\n$multipart = [\n    [\n        'name' => 'file',\n        'contents' => fopen($file_name, 'r'),\n        'filename' => $file_name,\n        'headers'  => [\n            'Content-Type' => 'image/png'\n        ]\n    ],\n    [\n        'name' => 'part_number',\n        'contents' => '1'\n    ]\n];\n\n// Send the POST request\n$url = \"https://api.notion.com/v1/file_uploads/{$file_upload_id}/send\";\n$response = $client->post($url, [\n    'headers' => [\n        'Authorization' => \"Bearer {$NOTION_KEY}\",\n        'Notion-Version' => '2022-06-28',\n    ],\n    'multipart' => $multipart\n]);\n\n// Print the response\necho $response->getBody();\n?>",
              "name": "PHP"
            }
          ],
          "samples-languages": [
            "curl",
            "python",
            "ruby",
            "node",
            "php"
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
  "_id": "606ecc2cd9e93b0044cf6e47:67ead0090c04c042179e3ba1"
}
```