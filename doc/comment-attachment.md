# Comment attachment

The Comment Attachment object represents [files](ref:file-object) that have been attached to a [Comment](ref:comment-object).

> 📘 
> 
> Comments can currently support up to 3 attachments.

## Request format (input)

### Object properties

After following the [Working with files and media](doc:working-with-files-and-media) guide, provide an array of objects under the `attachments` parameter in the [Create comment](ref:create-a-comment) API, each containing the following properties:

[block:parameters]
{
  "data": {
    "h-0": "Parameter",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`file_upload_id`",
    "0-1": "`string` (UUID)",
    "0-2": "ID of a [File Upload](ref:file-upload) with a status of `\"uploaded\"`",
    "0-3": "`\"2e2cdb8b-9897-4a6c-a935-82922b1cfb87\"`",
    "1-0": "`type`",
    "1-1": "`string`  \n(optional)",
    "1-2": "Possible type values are:`\"file_upload\"`",
    "1-3": "`\"file_upload\"`"
  },
  "cols": 4,
  "rows": 2,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


Example Create Comment request:

```json API request
{
  "parent": {
    "page_id": "d0a1ffaf-a4d8-4acf-a1ed-abae6e110418"
  },
  "rich_text": [
    {
      "text": {"content": "Thanks for the helpful page!"}
    },
  ],
  "attachments": {
    "file_upload_id": "2e2cdb8b-9897-4a6c-a935-82922b1cfb87"
  }
}
```

In the Notion app, when viewing a comment uploaded using the API, the user experience is automatically customized based on the detected category of the file upload. For example, uploading a `.png` file displays your attachment as an inline image instead of a regular file download block.

## Response format (output)

### Object properties

The response of Comment APIs like [Create comment](ref:create-a-comment) contains `attachments` with the following fields:

| Field      | Type            | Description                                                                                                                                 | Example value                                                                                          |
| :--------- | :-------------- | :------------------------------------------------------------------------------------------------------------------------------------------ | :----------------------------------------------------------------------------------------------------- |
| `category` | `string` (enum) | The category of this attachment. Possible type values are: `"audio"`, `"image"`, `"pdf"`, `"productivity"`, and `"video"`                   | `"audio"`                                                                                              |
| `file`     | `object`        | A [file object](https://developers.notion.com/reference/file-object#notion-hosted-files-type-file)  containing type-specific configuration. | `{"url": "<https://s3.us-west-2.amazonaws.com/...">,       "expiry_time": "2025-06-10T21:26:03.070Z"}` |

Example attachment object in Create Comment response:

```json Comment Attachment Response
{
  "category": "video",
  "file": {
    "url": "https://s3.us-west-2.amazonaws.com/...",
    "expiry_time": "2025-06-10T21:26:03.070Z"
  }
}
```

The `file.url` is a temporary download link generated at the time of retrieving a comment. See the guide on [Retrieving existing files](doc:retrieving-files) to learn more about accessing the files you upload.
