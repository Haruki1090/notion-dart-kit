# Block

A block object represents a piece of content within Notion. The API translates the headings, toggles, paragraphs, lists, media, and more that you can interact with in the Notion UI as different [block type objects](https://developers.notion.com/reference/block#block-type-objects). 

 For example, the following block object represents a `Heading 2` in the Notion UI:

```json Example Block Object
{
	"object": "block",
	"id": "c02fc1d3-db8b-45c5-a222-27595b15aea7",
	"parent": {
		"type": "page_id",
		"page_id": "59833787-2cf9-4fdf-8782-e53db20768a5"
	},
	"created_time": "2022-03-01T19:05:00.000Z",
	"last_edited_time": "2022-07-06T19:41:00.000Z",
	"created_by": {
		"object": "user",
		"id": "ee5f0f84-409a-440f-983a-a5315961c6e4"
	},
	"last_edited_by": {
		"object": "user",
		"id": "ee5f0f84-409a-440f-983a-a5315961c6e4"
	},
	"has_children": false,
	"archived": false,
  "in_trash": false,
	"type": "heading_2",
	"heading_2": {
		"rich_text": [
			{
				"type": "text",
				"text": {
					"content": "Lacinato kale",
					"link": null
				},
				"annotations": {
					"bold": false,
					"italic": false,
					"strikethrough": false,
					"underline": false,
					"code": false,
					"color": "green"
				},
				"plain_text": "Lacinato kale",
				"href": null
			}
		],
		"color": "default",
    "is_toggleable": false
	}
}
```

Use the [Retrieve block children](https://developers.notion.com/reference/get-block-children) endpoint to list all of the blocks on a page. 

# Keys

> 📘 
> 
> Fields marked with an \* are available to integrations with any capabilities. Other properties require read content capabilities in order to be returned from the Notion API. Consult the [integration capabilities reference](https://developers.notion.com/reference/capabilities) for details.

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`object`\\*",
    "0-1": "`string`",
    "0-2": "Always `\"block\"`.",
    "0-3": "`\"block\"`",
    "1-0": "`id`\\*",
    "1-1": "`string` (UUIDv4)",
    "1-2": "Identifier for the block.",
    "1-3": "`\"7af38973-3787-41b3-bd75-0ed3a1edfac9\"`",
    "2-0": "`parent`",
    "2-1": "`object`",
    "2-2": "Information about the block's parent. See [Parent object](ref:parent-object).",
    "2-3": "`{ \"type\": \"block_id\", \"block_id\": \"7d50a184-5bbe-4d90-8f29-6bec57ed817b\" }`",
    "3-0": "`type`",
    "3-1": "`string` (enum)",
    "3-2": "Type of block. Possible values are:  \n  \n- [`\"bookmark\"`](https://developers.notion.com/reference/block#bookmark)\n- [`\"breadcrumb\"`](https://developers.notion.com/reference/block#breadcrumb)\n- [`\"bulleted_list_item\"`](https://developers.notion.com/reference/block#bulleted-list-item)\n- [`\"callout\"`](https://developers.notion.com/reference/block#callout)\n- [`\"child_database\"`](https://developers.notion.com/reference/block#child-database)\n- [`\"child_page\"`](https://developers.notion.com/reference/block#child-page)\n- [`\"column\"`](https://developers.notion.com/reference/block#column-list-and-column)\n- [`\"column_list\"`](https://developers.notion.com/reference/block#column-list-and-column)\n- [`\"divider\"`](https://developers.notion.com/reference/block#divider)\n- [`\"embed\"`](https://developers.notion.com/reference/block#embed)\n- [`\"equation\"`](https://developers.notion.com/reference/block#equation)\n- [`\"file\"`](https://developers.notion.com/reference/block#file)\n- [`\"heading_1\"`](https://developers.notion.com/reference/block#heading-1)\n- [`\"heading_2\"`](https://developers.notion.com/reference/block#heading-2)\n- [`\"heading_3\"`](https://developers.notion.com/reference/block#heading-3)\n- [`\"image\"`](https://developers.notion.com/reference/block#image)\n- [`\"link_preview\"`](https://developers.notion.com/reference/block#link-preview)\n- [`\"numbered_list_item\"`](https://developers.notion.com/reference/block#numbered-list-item)\n- [`\"paragraph\"`](https://developers.notion.com/reference/block#paragraph)\n- [`\"pdf\"`](https://developers.notion.com/reference/block#pdf)\n- [`\"quote\"`](https://developers.notion.com/reference/block#quote)\n- [`\"synced_block\"`](https://developers.notion.com/reference/block#synced-block)\n- [`\"table\"`](https://developers.notion.com/reference/block#table)\n- [`\"table_of_contents\"`](https://developers.notion.com/reference/block#table-of-contents)\n- [`\"table_row\"`](https://developers.notion.com/reference/block#table-row)\n- [`\"template\"`](https://developers.notion.com/reference/block#template)\n- [`\"to_do\"`](https://developers.notion.com/reference/block#to-do)\n- [`\"toggle\"`](https://developers.notion.com/reference/block#toggle-blocks)\n- `\"unsupported\"`\n- [`\"video\"`](https://developers.notion.com/reference/block#video)",
    "3-3": "`\"paragraph\"`",
    "4-0": "`created_time`",
    "4-1": "`string` ([ISO 8601 date time](https://en.wikipedia.org/wiki/ISO_8601))",
    "4-2": "Date and time when this block was created. Formatted as an [ISO 8601 date time](https://en.wikipedia.org/wiki/ISO_8601) string.",
    "4-3": "`\"2020-03-17T19:10:04.968Z\"`",
    "5-0": "`created_by`",
    "5-1": "[Partial User](ref:user)",
    "5-2": "User who created the block.",
    "5-3": "`{\"object\": \"user\",\"id\": \"45ee8d13-687b-47ce-a5ca-6e2e45548c4b\"}`",
    "6-0": "`last_edited_time`",
    "6-1": "`string` ([ISO 8601 date time](https://en.wikipedia.org/wiki/ISO_8601))",
    "6-2": "Date and time when this block was last updated. Formatted as an [ISO 8601 date time](https://en.wikipedia.org/wiki/ISO_8601) string.",
    "6-3": "`\"2020-03-17T19:10:04.968Z\"`",
    "7-0": "`last_edited_by`",
    "7-1": "[Partial User](ref:user)",
    "7-2": "User who last edited the block.",
    "7-3": "`{\"object\": \"user\",\"id\": \"45ee8d13-687b-47ce-a5ca-6e2e45548c4b\"}`",
    "8-0": "`archived`",
    "8-1": "`boolean`",
    "8-2": "The archived status of the block.",
    "8-3": "`false`",
    "9-0": "`in_trash`",
    "9-1": "`boolean`",
    "9-2": "Whether the block has been deleted. ",
    "9-3": "`false`",
    "10-0": "`has_children`",
    "10-1": "`boolean`",
    "10-2": "Whether or not the block has children blocks nested within it.",
    "10-3": "`true`",
    "11-0": "`{type}`",
    "11-1": "[`block type object`](https://developers.notion.com/reference/block#block-type-objects)",
    "11-2": "An object containing type-specific block information.",
    "11-3": "Refer to the [block type object section](https://developers.notion.com/reference/block#block-type-objects) for examples of each block type."
  },
  "cols": 4,
  "rows": 12,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]


### Block types that support child blocks

Some block types contain nested blocks. The following block types support child blocks: 

- [Bulleted list item](https://developers.notion.com/reference/block#bulleted-list-item)
- [Callout](https://developers.notion.com/reference/block#callout) 
- [Child database](https://developers.notion.com/reference/block#child-database)
- [Child page](https://developers.notion.com/reference/block#child-page)
- [Column](https://developers.notion.com/reference/block#column-list-and-column)
- [Heading 1](https://developers.notion.com/reference/block#heading-1), when the `is_toggleable` property is `true`
- [Heading 2](https://developers.notion.com/reference/block#heading-2), when the `is_toggleable` property is `true`
- [Heading 3](https://developers.notion.com/reference/block#heading-3), when the `is_toggleable` property is `true`
- [Numbered list item](https://developers.notion.com/reference/block#numbered-list-item)
- [Paragraph](https://developers.notion.com/reference/block#paragraph) 
- [Quote](https://developers.notion.com/reference/block#quote)
- [Synced block](https://developers.notion.com/reference/block#synced-block)
- [Table](https://developers.notion.com/reference/block#table)
- [Template](https://developers.notion.com/reference/block#template)
- [To do](https://developers.notion.com/reference/block#to-do)
- [Toggle](https://developers.notion.com/reference/block#toggle-blocks) 

> 📘 The API does not support all block types.
> 
> Only the block type objects listed in the reference below are supported. Any unsupported block types appear in the structure, but contain a `type` set to `"unsupported"`.

# Block type objects

Every block object has a key corresponding to the value of `type`. Under the key is an object with type-specific block information.

> 📘 
> 
> Many block types support rich text. In cases where it is supported, a [`rich_text` object](https://developers.notion.com/reference/rich-text) will be included in the block `type` object. All `rich_text` objects will include a `plain_text` property, which provides a convenient way for developers to access unformatted text from the Notion block.

## Audio

Audio block objects contain a [file object](https://developers.notion.com/reference/file-object) detailing information about the audio file. 

```json Example Audio block object
{
  "type": "audio",
  //...other keys excluded
  "audio": {
    "type": "external",
    "external": {
      "url": "https://companywebsite.com/files/sample.mp3"
    }
  }
}
```

### Supported audio types

The following file types can be attached with external URLs in the API as well as in the Notion app UI:

- `.mp3`
- `.wav`
- `.ogg`
- `.oga`
- `.m4a`

A wider set of audio files is [supported in the File Upload API](ref:working-with-files-and-media#supported-file-types) and can be attached using a `file_upload` ID.

### Supported file upload types

See the [file upload reference](ref:file-upload#file-types-and-sizes) for a list of supported file extensions and content types when attaching a File Upload to a block.

Audio blocks only support file types in the "audio" section of the table.

## Bookmark

Bookmark block objects contain the following information within the `bookmark` property:

| Field     | Type                                             | Description                   |
| :-------- | :----------------------------------------------- | :---------------------------- |
| `caption` | array of [rich text objects](ref:rich-text) text | The caption for the bookmark. |
| `url`     | string                                           | The link for the bookmark.    |

```json Example Bookmark block object
{
  //...other keys excluded
  "type": "bookmark",
  //...other keys excluded
  "bookmark": {
    "caption": [],
    "url": "https://companywebsite.com"
  }
}
```

## Breadcrumb

Breadcrumb block objects do not contain any information within the `breadcrumb` property.

```json Example Breadcrumb block object
{
  //...other keys excluded
  "type": "breadcrumb",
  //...other keys excluded
  "breadcrumb": {}
}
```

## Bulleted list item

Bulleted list item block objects contain the following information within the `bulleted_list_item` property:

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "0-0": "`rich_text`",
    "0-1": "`array` of [rich text objects](ref:rich-text)",
    "0-2": "The rich text in the `bulleted_list_item` block.",
    "1-0": "`color`",
    "1-1": "`string` (enum)",
    "1-2": "The color of the block. Possible values are:  \n  \n- `\"blue\"`\n- `\"blue_background\"`\n- `\"brown\"`\n- `\"brown_background\"`\n- `\"default\"`\n- `\"gray\"`\n- `\"gray_background\"`\n- `\"green\"`\n- `\"green_background\"`\n- `\"orange\"`\n- `\"orange_background\"`\n- `\"yellow\"`\n- `\"green\"`\n- `\"pink\"`\n- `\"pink_background\"`\n- `\"purple\"`\n- `\"purple_background\"`\n- `\"red\"`\n- `\"red_background\"`\n- `\"yellow_background\"`",
    "2-0": "`children`",
    "2-1": "`array` of [block objects](ref:block)",
    "2-2": "The nested child blocks (if any) of the `bulleted_list_item` block."
  },
  "cols": 3,
  "rows": 3,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example Bulleted list item block object
{
  //...other keys excluded
  "type": "bulleted_list_item",
  //...other keys excluded
  "bulleted_list_item": {
    "rich_text": [{
      "type": "text",
      "text": {
        "content": "Lacinato kale",
        "link": null
      }
      // ..other keys excluded
    }],
    "color": "default",
    "children":[{
      "type": "paragraph"
      // ..other keys excluded
    }]
  }
}
```

## Callout

Callout block objects contain the following information within the `callout` property:

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "0-0": "`rich_text`",
    "0-1": "`array` of [rich text objects](ref:rich-text)",
    "0-2": "The rich text in the `callout` block.",
    "1-0": "`icon`",
    "1-1": "`object`",
    "1-2": "An [emoji](https://developers.notion.com/reference/emoji-object) or [file](https://developers.notion.com/reference/file-object) object that represents the callout's icon. If the callout does not have an icon.",
    "2-0": "`color`",
    "2-1": "`string` (enum)",
    "2-2": "The color of the block. Possible values are:  \n  \n- `\"blue\"`\n- `\"blue_background\"`\n- `\"brown\"`\n- `\"brown_background\"`\n- `\"default\"`\n- `\"gray\"`\n- `\"gray_background\"`\n- `\"green\"`\n- `\"green_background\"`\n- `\"orange\"`\n- `\"orange_background\"`\n- `\"yellow\"`\n- `\"green\"`\n- `\"pink\"`\n- `\"pink_background\"`\n- `\"purple\"`\n- `\"purple_background\"`\n- `\"red\"`\n- `\"red_background\"`\n- `\"yellow_background\"`"
  },
  "cols": 3,
  "rows": 3,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example Callout block object
{
  //...other keys excluded
	"type": "callout",
   // ..other keys excluded
   "callout": {
   	"rich_text": [{
      "type": "text",
      "text": {
        "content": "Lacinato kale",
        "link": null
      }
      // ..other keys excluded
    }],
     "icon": {
       "emoji": "⭐"
     },
     "color": "default"
   }
}
```

## Child database

Child database block objects contain the following information within the `child_database` property:

| Field   | Type     | Description                           |
| :------ | :------- | :------------------------------------ |
| `title` | `string` | The plain text title of the database. |

```json Example Child database block
{
  //...other keys excluded
  "type": "child_database",
  //...other keys excluded
  "child_database": {
    "title": "My database"
  }
}
```

> 📘 Creating and updating `child_database` blocks
> 
> To create or update `child_database` type blocks, use the [Create a database](ref:create-a-database) and the [Update a database](ref:update-a-database) endpoints, specifying the ID of the parent page in the `parent` body param.

## Child page

Child page block objects contain the following information within the `child_page` property:

| Field   | Type     | Description                         |
| :------ | :------- | :---------------------------------- |
| `title` | `string` | The plain text `title` of the page. |

```json Example Child page block object
{
  //...other keys excluded
  "type": "child_page",
  //...other keys excluded
  "child_page": {
    "title": "Lacinato kale"
  }
}
```

> 📘 Creating and updating `child_page` blocks
> 
> To create or update `child_page` type blocks, use the [Create a page](https://developers.notion.com/reference/post-page) and the [Update page](https://developers.notion.com/reference/patch-page) endpoints, specifying the ID of the parent page in the `parent` body param.

## Code

Code block objects contain the following information within the `code` property:

| Field       | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Description                                           |
| :---------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :---------------------------------------------------- |
| `caption`   | `array` of [Rich text object](ref:rich-text) text objects                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | The rich text in the caption of the code block.       |
| `rich_text` | `array` of [Rich text object](ref:rich-text) text objects                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | The rich text in the code block.                      |
| `language`  | - `"abap"` - `"arduino"` - `"bash"` - `"basic"` - `"c"` - `"clojure"` - `"coffeescript"` - `"c++"` - `"c#"` - `"css"` - `"dart"` - `"diff"` - `"docker"` - `"elixir"` - `"elm"` - `"erlang"` - `"flow"` - `"fortran"` - `"f#"` - `"gherkin"` - `"glsl"` - `"go"` - `"graphql"` - `"groovy"` - `"haskell"` - `"html"` - `"java"` - `"javascript"` - `"json"` - `"julia"` - `"kotlin"` - `"latex"` - `"less"` - `"lisp"` - `"livescript"` - `"lua"` - `"makefile"` - `"markdown"` - `"markup"` - `"matlab"` - `"mermaid"` - `"nix"` - `"objective-c"` - `"ocaml"` - `"pascal"` - `"perl"` - `"php"` - `"plain text"` - `"powershell"` - `"prolog"` - `"protobuf"` - `"python"` - `"r"` - `"reason"` - `"ruby"` - `"rust"` - `"sass"` - `"scala"` - `"scheme"` - `"scss"` - `"shell"` - `"sql"` - `"swift"` - `"typescript"` - `"vb.net"` - `"verilog"` - `"vhdl"` - `"visual basic"` - `"webassembly"` - `"xml"` - `"yaml"` - `"java/c/c++/c#"` | The language of the code contained in the code block. |

```json Example Code block object
{
  // ... other keys excluded
  "type": "code",
  // ... other keys excluded
  "code": {
    "caption": [],
    "rich_text": [{
      "type": "text",
      "text": {
        "content": "const a = 3"
      }
    }],
    "language": "javascript"
  }
}
```

## Column list and column

Column lists are parent blocks for columns. They do not contain any information within the `column_list` property. 

```json Example Column list block object
{
  // ... other keys excluded
  "type": "column_list",
  // ... other keys excluded
  "column_list": {}
}
```

Columns are parent blocks for any block types listed in this reference except for other `column`s. They do not require any information within the `column` property, but a `width_ratio` number between 0 and 1 can be provided to customize the width of a column relative to others in the same column list. When omitted, the default is to use equal widths for all columns. When provided, `width_ratio`s should add up to 1.

Columns can only be appended to `column_list`s.

```json Example Column object
{
  // ... other keys excluded
  "type": "column",
  // ... other keys excluded
  "column": {
    "width_ratio": 0.25
  }
}
```

When creating a `column_list` block via [Append block children](https://developers.notion.com/reference/patch-block-children), the `column_list` must have at least two `column`s, and each `column` must have at least one child.

### Retrieve the content in a column list

Follow these steps to fetch the content in a `column_list`: 

1. Get the `column_list` ID from a query to [Retrieve block children](https://developers.notion.com/reference/get-block-children) for the parent page. 

2. Get the `column` children from a query to Retrieve block children for the `column_list`. 

3. Get the content in each individual `column` from a query to Retrieve block children for the unique `column` ID. 

## Divider

Divider block objects do not contain any information within the `divider` property.

```json Example Divider block object
{
  //...other keys excluded
  "type": "divider",
  //...other keys excluded
  "divider": {}
}
```

## Embed

Embed block objects include information about another website displayed within the Notion UI. The `embed` property contains the following information:

| Field | Type     | Description                                            |
| :---- | :------- | :----------------------------------------------------- |
| `url` | `string` | The link to the website that the embed block displays. |

```json Example Embed block object
{
  //...other keys excluded
  "type": "embed",
  //...other keys excluded
  "embed": {
    "url": "https://companywebsite.com"
  }
}
```

> 🚧 Differences in embed blocks between the Notion app and the API
> 
> The Notion app uses a 3rd-party service, iFramely, to validate and request metadata for embeds given a URL. This works well in a web app because Notion can kick off an asynchronous request for URL information, which might take seconds or longer to complete, and then update the block with the metadata in the UI after receiving a response from iFramely.
> 
> We chose not to call iFramely when creating embed blocks in the API because the API needs to be able to return faster than the UI, and because the response from iFramely could actually cause us to change the block type. This would result in a slow and potentially confusing experience as the block in the response would not match the block sent in the request.
> 
> The result is that embed blocks created via the API may not look exactly like their counterparts created in the Notion app.

> 👍 
> 
> Vimeo video links can be embedded in a Notion page via the public API using the embed block type.
> 
> For example, the following object can be passed to the [Append block children endpoint](https://developers.notion.com/reference/patch-block-children):
> 
> ```json
> {
>   "children": [
>     {
>       "embed": {
>         "url": "https://player.vimeo.com/video/226053498?h=a1599a8ee9"
>       }
>     }
>   ]
> }
> ```
> 
> For other video sources, see [Supported video types](https://developers.notion.com/reference/block#supported-video-types).

## Equation

Equation block objects are represented as children of [paragraph](https://developers.notion.com/reference/block#paragraph) blocks. They are nested within a [rich text object](https://developers.notion.com/reference/rich-text) and contain the following information within the `equation` property:

| Field        | Type     | Description                |
| :----------- | :------- | :------------------------- |
| `expression` | `string` | A KaTeX compatible string. |

```json Example Equation object
{
  //...other keys excluded
  "type": "equation",
  //...other keys excluded
  "equation": {
    "expression": "e=mc^2"
  }
}
```

## File

File block objects contain the following information within the `file` property: 

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "0-0": "`caption`",
    "0-1": "`array` of [rich text objects](ref:rich-text)",
    "0-2": "The caption of the file block.",
    "1-0": "`type`",
    "1-1": "One of:  \n  \n- `\"file\"`\n- `\"external\"`\n- `\"file_upload\"`",
    "1-2": "Type of file. This enum value indicates which of the following three objects are populated.",
    "2-0": "`file`",
    "2-1": "[Notion-hosted file object](ref:file-object#notion-hosted-files)",
    "2-2": "A file object that details information about the file contained in the block: a temporary download `url` and `expiry_time`. After the `expiry_time`, fetch the block again from the API to get a new `url`.  \n  \nOnly valid as a parameter if copied verbatim from the `file` field of a recent block API response from Notion. To attach a file, provide a `type` of `file_upload` instead.",
    "3-0": "`external`",
    "3-1": "[External file object](ref:file-object#external-files)",
    "3-2": "An object with a `url` property, identifying a publicly accessible URL.",
    "4-0": "`file_upload`",
    "4-1": "[File upload object](ref:file#file-uploads)",
    "4-2": "An object with the `id` of a [FileUpload](ref:file-upload) to attach to the block. After attaching, the API response responds with a type of `file`, not `file_upload`, so your integration can access a download `url`.",
    "5-0": "`name`",
    "5-1": "`string`",
    "5-2": "The name of the file, as shown in the Notion UI. Note that the UI may auto-append `.pdf` or other extensions.  \n  \nWhen attaching a `file_upload`, the `name` parameter is not required."
  },
  "cols": 3,
  "rows": 6,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example File block
{
  // ... other keys excluded
  "type": "file",
  // ... other keys excluded
  "file": {
    "caption": [],
    "type": "external",
    "external": {
      "url": "https://companywebsite.com/files/doc.txt"
    },
    "name": "doc.txt"
  }
}
```

## Headings

All heading block objects, `heading_1`, `heading_2`, and `heading_3`, contain the following information within their corresponding objects:

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "0-0": "`rich_text`",
    "0-1": "`array` of [rich text objects](ref:rich-text)",
    "0-2": "The rich text of the heading.",
    "1-0": "`color`",
    "1-1": "`string` (enum)",
    "1-2": "The color of the block. Possible values are:  \n  \n- `\"blue\"`\n- `\"blue_background\"`\n- `\"brown\"`\n- `\"brown_background\"`\n- `\"default\"`\n- `\"gray\"`\n- `\"gray_background\"`\n- `\"green\"`\n- `\"green_background\"`\n- `\"orange\"`\n- `\"orange_background\"`\n- `\"yellow\"`\n- `\"green\"`\n- `\"pink\"`\n- `\"pink_background\"`\n- `\"purple\"`\n- `\"purple_background\"`\n- `\"red\"`\n- `\"red_background\"`\n- `\"yellow_background\"`",
    "2-0": "`is_toggleable`",
    "2-1": "`boolean`",
    "2-2": "Whether or not the heading block is a toggle heading or not. If `true`, then the heading block toggles and can support children. If `false`, then the heading block is a static heading block."
  },
  "cols": 3,
  "rows": 3,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example Heading 1 block object
{
  //...other keys excluded
  "type": "heading_1",
  //...other keys excluded
  "heading_1": {
    "rich_text": [{
      "type": "text",
      "text": {
        "content": "Lacinato kale",
        "link": null
      }
    }],
    "color": "default",
    "is_toggleable": false
  }
}
```

```json Example Heading 2 block object
{
  //...other keys excluded
  "type": "heading_2",
  //...other keys excluded
  "heading_2": {
    "rich_text": [{
      "type": "text",
      "text": {
        "content": "Lacinato kale",
        "link": null
      }
    }],
    "color": "default",
    "is_toggleable": false
  }
}
```

```json Example Heading 3 block object
{
  //...other keys excluded
  "type": "heading_3",
  //...other keys excluded
  "heading_3": {
    "rich_text": [{
      "type": "text",
      "text": {
        "content": "Lacinato kale",
        "link": null
      }
    }],
    "color": "default",
    "is_toggleable": false
  }
}
```

## Image

Image block objects contain a [file object](https://developers.notion.com/reference/file-object) detailing information about the image. 

```json Example Image block object
{
  // ... other keys excluded
  "type": "image",
  // ... other keys excluded
  "image": {
    "type": "external",
    "external": {
      "url": "https://website.domain/images/image.png"
    }
  }
}
```

### Supported external image types

The image must be directly hosted. In other words, the `url` cannot point to a service that retrieves the image. The following image types are supported: 

- `.bmp`
- `.gif`
- `.heic`
- `.jpeg`
- `.jpg`
- `.png`
- `.svg`
- `.tif`
- `.tiff`

### Supported file upload types

See the [file upload reference](ref:file-upload#file-types-and-sizes) for a list of supported file extensions and content types when attaching a File Upload to a block.

Image blocks only support file types in the "image" section of the table.

## Link Preview

[Link Preview](https://developers.notion.com/docs/link-previews) block objects contain the originally pasted `url`:

```json Example Link preview block object
{
  //...other keys excluded
  "type": "link_preview",
  //...other keys excluded
  "link_preview": {
    "url": "https://github.com/example/example-repo/pull/1234"
  }
}
```

> 🚧 
> 
> The `link_preview` block can only be returned as part of a response. The API does not support creating or appending `link_preview` blocks.

## Mention

A mention block object is a child of a [rich text object](https://developers.notion.com/reference/rich-text) that is nested within a [paragraph block object](https://developers.notion.com/reference/block#paragraph). This block type represents any `@` tag in the Notion UI, for a user, date, Notion page, Notion database, or a miniaturized version of a [Link Preview](https://developers.notion.com/reference/unfurl-attribute-object).  

A mention block object contains the following fields: 

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "0-0": "`type`",
    "0-1": "`\"database\"`  \n  \n`\"date\"`  \n  \n`\"link_preview\"`  \n  \n`\"page\"`  \n  \n`\"user\"`",
    "0-2": "A constant string representing the type of the mention.",
    "1-0": "`\"database\"`  \n  \n`\"date\"`  \n  \n`\"link_preview\"`  \n  \n`\"page\"`  \n  \n`\"user\"`",
    "1-1": "`object`",
    "1-2": "An object with type-specific information about the mention."
  },
  "cols": 3,
  "rows": 2,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example Mention object
{
  //...other keys excluded
  "type": "page",
  "page": {
    "id": "3c612f56-fdd0-4a30-a4d6-bda7d7426309"
  }
}
```

## Numbered list item

Numbered list item block objects contain the following information within the `numbered_list_item` property:

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "0-0": "`rich_text`",
    "0-1": "`array` of [rich text objects](ref:rich-text)",
    "0-2": "The rich text displayed in the `numbered_list_item` block.",
    "1-0": "`color`",
    "1-1": "`string` (enum)",
    "1-2": "The color of the block. Possible values are:  \n  \n- `\"blue\"`\n- `\"blue_background\"`\n- `\"brown\"`\n- `\"brown_background\"`\n- `\"default\"`\n- `\"gray\"`\n- `\"gray_background\"`\n- `\"green\"`\n- `\"green_background\"`\n- `\"orange\"`\n- `\"orange_background\"`\n- `\"yellow\"`\n- `\"green\"`\n- `\"pink\"`\n- `\"pink_background\"`\n- `\"purple\"`\n- `\"purple_background\"`\n- `\"red\"`\n- `\"red_background\"`\n- `\"yellow_background\"`",
    "2-0": "`children`",
    "2-1": "`array` of [block objects](ref:block)",
    "2-2": "The nested child blocks (if any) of the `numbered_list_item` block."
  },
  "cols": 3,
  "rows": 3,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example Numbered list item block
{
  //...other keys excluded
  "type": "numbered_list_item",
  "numbered_list_item": {
    "rich_text": [
      {
        "type": "text",
        "text": {
          "content": "Finish reading the docs",
          "link": null
        }
      }
    ],
    "color": "default"
  }
}
```

## Paragraph

Paragraph block objects contain the following information within the `paragraph` property:

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "0-0": "`rich_text`",
    "0-1": "`array` of [rich text objects](ref:rich-text)",
    "0-2": "The rich text displayed in the paragraph block.",
    "1-0": "`color`",
    "1-1": "`string` (enum)",
    "1-2": "The color of the block. Possible values are:  \n  \n- `\"blue\"`\n- `\"blue_background\"`\n- `\"brown\"`\n- `\"brown_background\"`\n- `\"default\"`\n- `\"gray\"`\n- `\"gray_background\"`\n- `\"green\"`\n- `\"green_background\"`\n- `\"orange\"`\n- `\"orange_background\"`\n- `\"yellow\"`\n- `\"green\"`\n- `\"pink\"`\n- `\"pink_background\"`\n- `\"purple\"`\n- `\"purple_background\"`\n- `\"red\"`\n- `\"red_background\"`\n- `\"yellow_background\"`",
    "2-0": "`children`",
    "2-1": "`array` of [block objects](ref:block)",
    "2-2": "The nested child blocks (if any) of the `paragraph` block."
  },
  "cols": 3,
  "rows": 3,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example Paragraph block object
{
  //...other keys excluded
  "type": "paragraph",
  //...other keys excluded
  "paragraph": {
    "rich_text": [{
      "type": "text",
      "text": {
        "content": "Lacinato kale",
        "link": null
      }
    }],
    "color": "default"
}
```

```json Example Paragraph block object with a child Mention block object
{
//...other keys excluded
	"type": "paragraph",
  	"paragraph":{
  		"rich_text": [
    		{
      		"type": "mention",
      		"mention": {
        		"type": "date",
        		"date": {
          		"start": "2023-03-01",
          		"end": null,
          		"time_zone": null
        		}
      		},
      		"annotations": {
        		"bold": false,
        		"italic": false,
        		"strikethrough": false,
        		"underline": false,
        		"code": false,
        		"color": "default"
      		},
      		"plain_text": "2023-03-01",
      		"href": null
    		},
    		{
          "type": "text",
      		"text": {
        		"content": " ",
        		"link": null
      		},
      		"annotations": {
        		"bold": false,
        		"italic": false,
        		"strikethrough": false,
        		"underline": false,
        		"code": false,
        		"color": "default"
      		},
      		"plain_text": " ",
      		"href": null
    		}
  		],
  		"color": "default"
  	}
}
```

## PDF

A PDF block object represents a PDF that has been embedded within a Notion page. It contains the following fields:

[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "0-0": "`caption`",
    "0-1": "`array` of [rich text objects](ref:rich-text)",
    "0-2": "A caption, if provided, for the PDF block.",
    "1-0": "`type`",
    "1-1": "One of:  \n  \n- `\"file\"`\n- `\"external\"`\n- `\"file_upload\"`",
    "1-2": "A constant string representing the type of PDF. `file` indicates a Notion-hosted file, and `external` represents a third-party link. `file_upload` is only valid when providing parameters to attach a [File Upload](ref:file-upload) to a PDF block.",
    "2-0": "`external` \\|  \n`file` \\|  \n`file_upload`",
    "2-1": "[file object](https://developers.notion.com/reference/file-object)",
    "2-2": "An object containing type-specific information about the PDF."
  },
  "cols": 3,
  "rows": 3,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]


```json
{
  //...other keys excluded
  "type": "pdf",
  //...other keys excluded
  "pdf": {
    "type": "external",
    "external": {
      "url": "https://website.domain/files/doc.pdf"
    }
  }
}
```

### Supported file upload types

See the [file upload reference](ref:file-upload#file-types-and-sizes) for a list of supported file extensions and content types when attaching a File Upload to a block.

PDF blocks only support a type of `.pdf`.

## Quote

Quote block objects contain the following information within the `quote` property:

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "0-0": "`rich_text`",
    "0-1": "`array` of [rich text objects](ref:rich-text)",
    "0-2": "The rich text displayed in the quote block.",
    "1-0": "`color`",
    "1-1": "`string` (enum)",
    "1-2": "The color of the block. Possible values are:  \n  \n- `\"blue\"`\n- `\"blue_background\"`\n- `\"brown\"`\n- `\"brown_background\"`\n- `\"default\"`\n- `\"gray\"`\n- `\"gray_background\"`\n- `\"green\"`\n- `\"green_background\"`\n- `\"orange\"`\n- `\"orange_background\"`\n- `\"yellow\"`\n- `\"green\"`\n- `\"pink\"`\n- `\"pink_background\"`\n- `\"purple\"`\n- `\"purple_background\"`\n- `\"red\"`\n- `\"red_background\"`\n- `\"yellow_background\"`",
    "2-0": "`children`",
    "2-1": "`array` of [block objects](ref:block)",
    "2-2": "The nested child blocks, if any, of the quote block."
  },
  "cols": 3,
  "rows": 3,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example Quote block
{
	//...other keys excluded
	"type": "quote",
   //...other keys excluded
   "quote": {
   	"rich_text": [{
      "type": "text",
      "text": {
        "content": "To be or not to be...",
        "link": null
      },
    	//...other keys excluded
    }],
    //...other keys excluded
    "color": "default"
   }
}
```

## Synced block

Similar to the Notion UI, there are two versions of a `synced_block` object: the original block that was created first and doesn't yet sync with anything else, and the duplicate block or blocks synced to the original.

> 📘 
> 
> An original synced block must be created before corresponding duplicate block or blocks can be made.

### Original synced block

Original synced block objects contain the following information within the `synced_block` property: 

| Field         | Type                                  | Description                                                                                                                  |
| :------------ | :------------------------------------ | :--------------------------------------------------------------------------------------------------------------------------- |
| `synced_from` | `null`                                | The value is always `null` to signify that this is an original synced block that does not refer to another block.            |
| `children`    | `array` of [block objects](ref:block) | The nested child blocks, if any, of the `synced_block` block. These blocks will be mirrored in the duplicate `synced_block`. |

```json Example Original synced block
{
    //...other keys excluded
  	"type": "synced_block",
    "synced_block": {
        "synced_from": null,
        "children": [
            {
                "callout": {
                    "rich_text": [
                        {
                            "type": "text",
                            "text": {
                                "content": "Callout in synced block"
                            }
                        }
                    ]
                }
            }
        ]
    }
}
```

### Duplicate synced block

Duplicate synced block objects contain the following information within the `synced_from` object: 

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "0-0": "`type`",
    "0-1": "`string` (enum)",
    "0-2": "The type of the synced from object.  \n  \nPossible values are:  \n  \n- `\"block_id\"`",
    "1-0": "`block_id`",
    "1-1": "`string` (UUIDv4)",
    "1-2": "An identifier for the original `synced_block`."
  },
  "cols": 3,
  "rows": 2,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example Duplicate synced block object
{
    //...other keys excluded
  	"type": "synced_block",
    "synced_block": {
        "synced_from": {
            "block_id": "original_synced_block_id"
        }
    }
}
```

> 🚧 
> 
> The API does not supported updating synced block content.

## Table

Table block objects are parent blocks for table row children. Table block objects contain the following fields within the `table` property: 

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "0-0": "`table_width`",
    "0-1": "`integer`",
    "0-2": "The number of columns in the table.  \n  \n**Note that this cannot be changed via the public API once a table is created.**",
    "1-0": "`has_column_header`",
    "1-1": "`boolean`",
    "1-2": "Whether the table has a column header. If `true`, then the first row in the table appears visually distinct from the other rows.",
    "2-0": "`has_row_header`",
    "2-1": "`boolean`",
    "2-2": "Whether the table has a header row. If `true`, then the first column in the table appears visually distinct from the other columns."
  },
  "cols": 3,
  "rows": 3,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example Table block object
{
  //...other keys excluded
  "type": "table",
  "table": {
    "table_width": 2,
    "has_column_header": false,
    "has_row_header": false
  }
}
```

> 🚧 `table_width` can only be set when the table is first created.
> 
> Note that the number of columns in a table can only be set when the table is first created. Calls to the Update block endpoint to update `table_width` fail.

### Table rows

Follow these steps to fetch the `table_row`s of a `table`: 

1. Get the `table` ID from a query to [Retrieve block children](https://developers.notion.com/reference/get-block-children) for the parent page. 

2. Get the `table_rows` from a query to Retrieve block children for the `table`. 

A `table_row` block object contains the following fields within the `table_row` property:

| Property | Type                                                   | Description                                                                                        |
| :------- | :----------------------------------------------------- | :------------------------------------------------------------------------------------------------- |
| `cells`  | `array` of array of [rich text objects](ref:rich-text) | An array of cell contents in horizontal display order. Each cell is an array of rich text objects. |

```json Example Table row block object
{
  //...other keys excluded
  "type": "table_row",
  "table_row": {
    "cells": [
      [
        {
          "type": "text",
          "text": {
            "content": "column 1 content",
            "link": null
          },
          "annotations": {
            "bold": false,
            "italic": false,
            "strikethrough": false,
            "underline": false,
            "code": false,
            "color": "default"
          },
          "plain_text": "column 1 content",
          "href": null
        }
      ],
      [
        {
          "type": "text",
          "text": {
            "content": "column 2 content",
            "link": null
          },
          "annotations": {
            "bold": false,
            "italic": false,
            "strikethrough": false,
            "underline": false,
            "code": false,
            "color": "default"
          },
          "plain_text": "column 2 content",
          "href": null
        }
      ],
      [
        {
          "type": "text",
          "text": {
            "content": "column 3 content",
            "link": null
          },
          "annotations": {
            "bold": false,
            "italic": false,
            "strikethrough": false,
            "underline": false,
            "code": false,
            "color": "default"
          },
          "plain_text": "column 3 content",
          "href": null
        }
      ]
    ]
  }
}
```

> 📘 
> 
> When creating a table block via the [Append block children](ref:patch-block-children) endpoint, the `table` must have at least one `table_row` whose `cells` array has the same length as the `table_width`.

## Table of contents

Table of contents block objects contain the following information within the `table_of_contents` property:

[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "0-0": "`color`",
    "0-1": "`string` (enum)",
    "0-2": "The color of the block. Possible values are:  \n  \n- `\"blue\"`\n- `\"blue_background\"`\n- `\"brown\"`\n- `\"brown_background\"`\n- `\"default\"`\n- `\"gray\"`\n- `\"gray_background\"`\n- `\"green\"`\n- `\"green_background\"`\n- `\"orange\"`\n- `\"orange_background\"`\n- `\"yellow\"`\n- `\"green\"`\n- `\"pink\"`\n- `\"pink_background\"`\n- `\"purple\"`\n- `\"purple_background\"`\n- `\"red\"`\n- `\"red_background\"`\n- `\"yellow_background\"`"
  },
  "cols": 3,
  "rows": 1,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example Table of contents block object
{
  //...other keys excluded
	"type": "table_of_contents",
  "table_of_contents": {
  	"color": "default"
  }
}
```

## Template

> ❗️ Deprecation Notice
> 
> As of March 27, 2023 creation of template blocks will no longer be supported.

Template blocks represent [template buttons](https://www.notion.so/help/template-buttons) in the Notion UI.

Template block objects contain the following information within the `template` property:

| Field       | Type                                          | Description                                                                                                                    |
| :---------- | :-------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------- |
| `rich_text` | `array` of [rich text objects](ref:rich-text) | The rich text displayed in the title of the template.                                                                          |
| `children`  | `array` of [block objects](ref:block)         | The nested child blocks, if any, of the template block. These blocks are duplicated when the template block is used in the UI. |

```json Example Template block object
{
  //...other keys excluded
  "template": {
    "rich_text": [
      {
        "type": "text",
        "text": {
          "content": "Add a new to-do",
          "link": null
        },
        "annotations": {
          //...other keys excluded
        },
        "plain_text": "Add a new to-do",
        "href": null
      }
    ]
  }
}
```

## To do

To do block objects contain the following information within the `to_do` property:

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "0-0": "`rich_text`",
    "0-1": "`array` of [rich text objects](ref:rich-text)",
    "0-2": "The rich text displayed in the To do block.",
    "1-0": "`checked`",
    "1-1": "`boolean` (optional)",
    "1-2": "Whether the To do is checked.",
    "2-0": "`color`",
    "2-1": "`string` (enum)",
    "2-2": "The color of the block. Possible values are:  \n  \n- `\"blue\"`\n- `\"blue_background\"`\n- `\"brown\"`\n- `\"brown_background\"`\n- `\"default\"`\n- `\"gray\"`\n- `\"gray_background\"`\n- `\"green\"`\n- `\"green_background\"`\n- `\"orange\"`\n- `\"orange_background\"`\n- `\"yellow\"`\n- `\"green\"`\n- `\"pink\"`\n- `\"pink_background\"`\n- `\"purple\"`\n- `\"purple_background\"`\n- `\"red\"`\n- `\"red_background\"`\n- `\"yellow_background\"`",
    "3-0": "`children`",
    "3-1": "`array` of [block objects](ref:block)",
    "3-2": "The nested child blocks, if any, of the To do block."
  },
  "cols": 3,
  "rows": 4,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Example To do block object
{
  //...other keys excluded
  "type": "to_do",
  "to_do": {
    "rich_text": [{
      "type": "text",
      "text": {
        "content": "Finish Q3 goals",
        "link": null
      }
    }],
    "checked": false,
    "color": "default",
    "children":[{
      "type": "paragraph"
      // ..other keys excluded
    }]
  }
}
```

## Toggle blocks

Toggle block objects contain the following information within the `toggle` property:

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "0-0": "`rich_text`",
    "0-1": "`array` of [rich text objects](ref:rich-text)",
    "0-2": "The rich text displayed in the Toggle block.",
    "1-0": "`color`",
    "1-1": "`string` (enum)",
    "1-2": "The color of the block. Possible values are:  \n  \n- `\"blue\"`\n- `\"blue_background\"`\n- `\"brown\"`\n- `\"brown_background\"`\n- `\"default\"`\n- `\"gray\"`\n- `\"gray_background\"`\n- `\"green\"`\n- `\"green_background\"`\n- `\"orange\"`\n- `\"orange_background\"`\n- `\"yellow\"`\n- `\"green\"`\n- `\"pink\"`\n- `\"pink_background\"`\n- `\"purple\"`\n- `\"purple_background\"`\n- `\"red\"`\n- `\"red_background\"`\n- `\"yellow_background\"`",
    "2-0": "`children`",
    "2-1": "`array` of [block objects](ref:block)",
    "2-2": "The nested child blocks, if any, of the Toggle block."
  },
  "cols": 3,
  "rows": 3,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]


```json Toggle Block
{
  //...other keys excluded
  "type": "toggle",
  "toggle": {
    "rich_text": [{
      "type": "text",
      "text": {
        "content": "Additional project details",
        "link": null
      }
      //...other keys excluded
    }],
    "color": "default",
    "children":[{
      "type": "paragraph"
      // ..other keys excluded
    }]
  }
}
```

## Video

Video block objects contain a [file object](https://developers.notion.com/reference/file-object) detailing information about the video. 

```json Example Video block object
{
  "type": "video",
  //...other keys excluded
  "video": {
    "type": "external",
    "external": {
      "url": "https://companywebsite.com/files/video.mp4"
    }
  }
}
```

### Supported video types

- `.amv`
- `.asf`
- `.avi`
- `.f4v`
- `.flv`
- `.gifv`
- `.mkv`
- `.mov`
- `.mpg`
- `.mpeg`
- `.mpv`
- `.mp4`
- `.m4v`
- `.qt`
- `.wmv`
- YouTube video links that include `embed` or `watch`.  
  E.g. `https://www.youtube.com/watch?v=[id]`, `https://www.youtube.com/embed/[id]`

> 📘 
> 
> Vimeo video links are not currently supported by the video block type. However, they can be embedded in Notion pages using the `embed` block type. See [Embed](https://developers.notion.com/reference/block#embed) for more information.

### Supported file upload types

See the [file upload reference](ref:file-upload#file-types-and-sizes) for a list of supported file extensions and content types when attaching a File Upload to a block.

Video blocks only support file types in the "video" section of the table.
