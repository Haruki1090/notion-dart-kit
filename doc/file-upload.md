# File Upload

The [File Upload object](#object-properties) tracks the lifecycle of a file uploaded to Notion in the API.

> 📘 Getting started
> 
> View [Working with files and media](doc:working-with-files-and-media) for a comprehensive, end-to-end guide to uploading and attaching files.

Once a file upload has a `status` of `"uploaded"`, pass its ID in a [file object](ref:file-object#files-uploaded-in-the-api-type-file_upload) with a `type` of `file_upload` to the API to attach it to blocks, pages, and databases in a Notion workspace.

## Object properties

The response of File Upload APIs like [Retrieve a file upload](ref:retrieve-a-file-upload) contains `FileUpload` objects with the following fields:

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "0-0": "`object`",
    "0-1": "`\"file_upload\"`",
    "0-2": "",
    "1-0": "`id`",
    "1-1": "UUID",
    "1-2": "ID of the FileUpload.",
    "2-0": "`created_time`",
    "2-1": "String",
    "2-2": "ISO 8601 timestamp when the FileUpload was created.",
    "3-0": "`last_edited_time`",
    "3-1": "String",
    "3-2": "ISO 8601 timestamp when the FileUpload was last modified.",
    "4-0": "`expiry_time`",
    "4-1": "String",
    "4-2": "Nullable. ISO 8601 timestamp when the FileUpload will expire, if the API integration that created it doesn't complete the upload and attach to at least one block or other object in a workspace.",
    "5-0": "`status`",
    "5-1": "One of:  \n  \n- `\"pending\"`\n- `\"uploaded\"`\n- `\"expired\"`\n- `\"failed\"`",
    "5-2": "Enum status of the file upload.  \n  \n`pending` status means awaiting upload or completion of an upload.  \n  \n`uploaded` status means file contents have been sent. If the `expiry_time` is `null`, that means the file upload has already been attached to a block or other object.  \n  \n`expired` and `failed` file uploads can no longer be used. `failed` is only used for FileUploads with `mode=external_url` when the import was unsuccessful.",
    "6-0": "`filename`",
    "6-1": "String",
    "6-2": "Nullable. Name of the file, provided during the [Create a file upload](ref:create-a-file-upload) step, or, for `single_part` uploads, can be determined from the provided filename in the form data passed to the [Send a file upload](ref:send-a-file-upload) step.  \n  \nA file extension is automatically added based on the `content_type` if the filename doesn't already have one.",
    "7-0": "`content_type`",
    "7-1": "String",
    "7-2": "Nullable. The MIME content type of the uploaded file. Must be provided explicitly or inferred from a `filename` that includes an extension.  \n  \nFor `single_part` uploads, the content type can remain `null` until the [Send a file upload](ref:send-a-file-upload) step and inferred from the `file` parameter's content type.",
    "8-0": "`content_length`",
    "8-1": "Integer",
    "8-2": "Nullable. The total size of the file, in bytes. For pending `multi_part` uploads, this field is a running total based on the file segments uploaded so far and recalculated at the end during the [Complete a file upload](ref:complete-a-file-upload) step.",
    "9-0": "`upload_url`",
    "9-1": "String",
    "9-2": "Field only included for `pending` file uploads.  \nThis is the URL to use for [sending file contents](ref:send-a-file-upload).",
    "10-0": "`complete_url`",
    "10-1": "String",
    "10-2": "Field only included for `pending` file uploads created with a `mode` of `multi_part`.  \nThis is the URL to use to [complete a multi-part file upload](ref:complete-a-file-upload).",
    "11-0": "`file_import_result`",
    "11-1": "String",
    "11-2": "Field only included for a `failed` or `uploaded` file upload created with a `mode` of `external_url`.  \nProvides details on the success or failure of importing a file into Notion using an external URL."
  },
  "cols": 3,
  "rows": 12,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]
