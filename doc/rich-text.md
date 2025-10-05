# Rich text

Notion uses rich text to allow users to customize their content. Rich text refers to a type of document where content can be styled and formatted in a variety of customizable ways. This includes styling decisions, such as the use of italics, font size, and font color, as well as formatting, such as the use of hyperlinks or code blocks. 

Notion includes rich text objects in [block objects](https://developers.notion.com/reference/block) to indicate how blocks in a page are represented. [Blocks](https://developers.notion.com/reference/block) that support rich text will include a rich text object; however, not all block types offer rich text.

When blocks are retrieved from a page using the [Retrieve a block](https://developers.notion.com/reference/retrieve-a-block) or [Retrieve block children](https://developers.notion.com/reference/get-block-children) endpoints, an array of rich text objects will be included in the block object (when available). Developers can use this array to retrieve the plain text (`plain_text`) for the block or get all the rich text styling and formatting options applied to the block.

```json An example rich text object
{
  "type": "text",
  "text": {
    "content": "Some words ",
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
  "plain_text": "Some words ",
  "href": null
}
```

> 📘 
> 
> Many [block types](https://developers.notion.com/reference/block#block-type-objects) support rich text. In cases where it is supported, a `rich_text` object will be included in the block `type` object. All `rich_text` objects will include a `plain_text` property, which provides a convenient way for developers to access unformatted text from the Notion block.

Each rich text object contains the following fields.

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`type`",
    "0-1": "`string` (enum)",
    "0-2": "The type of this rich text object. Possible type values are: `\"text\"`, `\"mention\"`, `\"equation\"`.",
    "0-3": "`\"text\"`",
    "1-0": "`text` \\| `mention` \\| `equation`",
    "1-1": "`object`",
    "1-2": "An object containing type-specific configuration.  \n  \nRefer to the rich text type objects section below for details on type-specific values.",
    "1-3": "Refer to the rich text type objects section below for examples.",
    "2-0": "`annotations`",
    "2-1": "`object`",
    "2-2": "The information used to style the rich text object. Refer to the annotation object section below for details.",
    "2-3": "Refer to the annotation object section below for examples.",
    "3-0": "`plain_text`",
    "3-1": "`string`",
    "3-2": "The plain text without annotations.",
    "3-3": "`\"Some words \"`",
    "4-0": "`href`",
    "4-1": "`string` (optional)",
    "4-2": "The URL of any link or Notion mention in this text, if any.",
    "4-3": "`\"https://www.notion.so/Avocado-d093f1d200464ce78b36e58a3f0d8043\"`"
  },
  "cols": 4,
  "rows": 5,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]

## The annotation object

All rich text objects contain an `annotations` object that sets the styling for the rich text. `annotations` includes the following fields: 

[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`bold`",
    "0-1": "`boolean`",
    "0-2": "Whether the text is **bolded**.",
    "0-3": "`true`",
    "1-0": "`italic`",
    "1-1": "`boolean`",
    "1-2": "Whether the text is _italicized_.",
    "1-3": "`true`",
    "2-0": "`strikethrough`",
    "2-1": "`boolean`",
    "2-2": "Whether the text is struck through.",
    "2-3": "`false`",
    "3-0": "`underline`",
    "3-1": "`boolean`",
    "3-2": "Whether the text is underlined.",
    "3-3": "`false`",
    "4-0": "`code`",
    "4-1": "`boolean`",
    "4-2": "Whether the text is `code style`.",
    "4-3": "`true`",
    "5-0": "`color`",
    "5-1": "`string` (enum)",
    "5-2": "Color of the text. Possible values include:  \n  \n- `\"blue\"`  \n- `\"blue_background\"`  \n- `\"brown\"`  \n- `\"brown_background\"`  \n- `\"default\"`  \n- `\"gray\"`  \n- `\"gray_background\"`  \n- `\"green\"`  \n- `\"green_background\"`  \n- `\"orange\"`  \n-`\"orange_background\"`  \n- `\"pink\"`  \n- `\"pink_background\"`  \n- `\"purple\"`  \n- `\"purple_background\"`  \n- `\"red\"`  \n- `\"red_background”`  \n- `\"yellow\"`  \n- `\"yellow_background\"`",
    "5-3": "`\"green\"`"
  },
  "cols": 4,
  "rows": 6,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]

## Rich text type objects

### Equation

Notion supports inline LaTeX equations as rich text object’s with a type value of `"equation"`. The corresponding equation type object contains the following: 

| Field        | Type     | Description                                        | Example value                                  |
| :----------- | :------- | :------------------------------------------------- | :--------------------------------------------- |
| `expression` | `string` | The LaTeX string representing the inline equation. | `"\frac{{ - b \pm \sqrt {b^2 - 4ac} }}{{2a}}"` |

#### Example rich text `equation` object

```json
{
  "type": "equation",
  "equation": {
    "expression": "E = mc^2"
  },
  "annotations": {
    "bold": false,
    "italic": false,
    "strikethrough": false,
    "underline": false,
    "code": false,
    "color": "default"
  },
  "plain_text": "E = mc^2",
  "href": null
}
```

### Mention

Mention objects represent an inline mention of a database, date, link preview mention, page, template mention, or user. A mention is created in the Notion UI when a user types `@` followed by the name of the reference.

If a rich text object’s `type` value is `"mention"`, then the corresponding `mention` object contains the following:

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`type`",
    "0-1": "`string` (enum)",
    "0-2": "The type of the inline mention. Possible values include:  \n  \n- `\"database\"`  \n- `\"date\"`  \n- `\"link_preview\"`  \n- `\"page\"`  \n- `\"template_mention\"`  \n- `\"user\"`",
    "0-3": "`\"user\"`",
    "1-0": "`database` \\| `date` \\| `link_preview` \\| `page` \\| `template_mention` \\| `user`",
    "1-1": "`object`",
    "1-2": "An object containing type-specific configuration. Refer to the mention type object sections below for details.",
    "1-3": "Refer to the mention type object sections below for example values."
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

#### Database mention type object

Database mentions contain a database reference within the corresponding `database` field. A database reference is an object with an `id` key and a string value (UUIDv4) corresponding to a database ID.

If an integration doesn’t have [access](https://developers.notion.com/reference/capabilities) to the mentioned database, then the mention is returned with just the ID. The `plain_text` value that would be a title appears as `"Untitled"` and the annotation object’s values are defaults.

_Example rich text `mention` object for a `database` mention_ 

```json
{
  "type": "mention",
  "mention": {
    "type": "database",
    "database": {
      "id": "a1d8501e-1ac1-43e9-a6bd-ea9fe6c8822b"
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
  "plain_text": "Database with test things",
  "href": "https://www.notion.so/a1d8501e1ac143e9a6bdea9fe6c8822b"
}
```

#### Date mention type object

Date mentions contain a [date property value object](https://developers.notion.com/reference/property-value-object#date-property-values) within the corresponding `date` field.

_Example rich text `mention` object for a `date` mention_

```json
{
  "type": "mention",
  "mention": {
    "type": "date",
    "date": {
      "start": "2022-12-16",
      "end": null
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
  "plain_text": "2022-12-16",
  "href": null
}
```

#### Link Preview mention type object

If a user opts to share a [Link Preview](https://developers.notion.com/docs/link-previews) as a mention, then the API handles the Link Preview mention as a rich text object with a `type` value of `link_preview`. Link preview rich text mentions contain a corresponding `link_preview` object that includes the `url` that is used to create the Link Preview mention.

_Example rich text `mention` object for a `link_preview` mention_ 

```json
{
  "type": "mention",
  "mention": {
    "type": "link_preview",
    "link_preview": {
      "url": "https://workspace.slack.com/archives/C04PF0F9QSD/z1671139297838409?thread_ts=1671139274.065079&cid=C03PF0F9QSD"
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
  "plain_text": "https://workspace.slack.com/archives/C04PF0F9QSD/z1671139297838409?thread_ts=1671139274.065079&cid=C03PF0F9QSD",
  "href": "https://workspace.slack.com/archives/C04PF0F9QSD/z1671139297838409?thread_ts=1671139274.065079&cid=C03PF0F9QSD"
}
```

#### Page mention type object

Page mentions contain a page reference within the corresponding `page` field. A page reference is an object with an `id` property and a string value (UUIDv4) corresponding to a page ID.

If an integration doesn’t have [access](https://developers.notion.com/reference/capabilities) to the mentioned page, then the mention is returned with just the ID. The `plain_text` value that would be a title appears as `"Untitled"` and the annotation object’s values are defaults.

_Example rich text `mention` object for a `page` mention_ 

```json
{
  "type": "mention",
  "mention": {
    "type": "page",
    "page": {
      "id": "3c612f56-fdd0-4a30-a4d6-bda7d7426309"
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
  "plain_text": "This is a test page",
  "href": "https://www.notion.so/3c612f56fdd04a30a4d6bda7d7426309"
}
```

#### Template mention type object

The content inside a [template button](https://www.notion.so/help/template-buttons) in the Notion UI can include placeholder date and user mentions that populate when a template is duplicated. Template mention type objects contain these populated values. 

Template mention rich text objects contain a `template_mention` object with a nested `type` key that is either `"template_mention_date"` or `"template_mention_user"`.

If the `type` key is `"template_mention_date"`, then the rich text object contains the following `template_mention_date` field:

| Field                   | Type            | Description                                                                   | Example value |
| :---------------------- | :-------------- | :---------------------------------------------------------------------------- | :------------ |
| `template_mention_date` | `string` (enum) | The type of the date mention. Possible values include: `"today"` and `"now"`. | `"today"`     |

_Example rich text `mention` object for a `template_mention_date` mention _

```json
{
  "type": "mention",
  "mention": {
    "type": "template_mention",
    "template_mention": {
      "type": "template_mention_date",
      "template_mention_date": "today"
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
  "plain_text": "@Today",
  "href": null
}
```

If the type key is `"template_mention_user"`, then the rich text object contains the following `template_mention_user` field: 

| Field                   | Type            | Description                                                      | Example value |
| :---------------------- | :-------------- | :--------------------------------------------------------------- | :------------ |
| `template_mention_user` | `string` (enum) | The type of the user mention. The only possible value is `"me"`. | `"me"`        |

_Example rich text `mention` object for a `template_mention_user` mention _

```json
{
  "type": "mention",
  "mention": {
    "type": "template_mention",
    "template_mention": {
      "type": "template_mention_user",
      "template_mention_user": "me"
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
  "plain_text": "@Me",
  "href": null
}
```

#### User mention type object

If a rich text object’s `type` value is `"user"`, then the corresponding user field contains a [user object](https://developers.notion.com/reference/user). 

> 📘 
> 
> If your integration doesn’t yet have access to the mentioned user, then the `plain_text` that would include a user’s name reads as `"@Anonymous"`. To update the integration to get access to the user, update the integration capabilities on the integration settings page.

_Example rich text `mention` object for a `user` mention_

```json
{
  "type": "mention",
  "mention": {
    "type": "user",
    "user": {
      "object": "user",
      "id": "b2e19928-b427-4aad-9a9d-fde65479b1d9"
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
  "plain_text": "@Anonymous",
  "href": null
}
```

### Text

If a rich text object’s `type` value is `"text"`, then the corresponding `text` field contains an object including the following:

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`content`",
    "0-1": "`string`",
    "0-2": "The actual text content of the text.",
    "0-3": "`\"Some words \"`",
    "1-0": "`link`",
    "1-1": "`object` (optional)",
    "1-2": "An object with information about any inline link in this text, if included.  \n  \nIf the text contains an inline link, then the object key is `url` and the value is the URL’s string web address.  \n  \nIf the text doesn’t have any inline links, then the value is `null`.",
    "1-3": "`{\n  \"url\": \"https://developers.notion.com/\"\n}`"
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

#### Example rich text `text` object without link

```json
{
  "type": "text",
  "text": {
    "content": "This is an ",
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
  "plain_text": "This is an ",
  "href": null
}
```

#### Example rich `text` text object with link

```json
{
  "type": "text",
  "text": {
    "content": "inline link",
    "link": {
      "url": "https://developers.notion.com/"
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
  "plain_text": "inline link",
  "href": "https://developers.notion.com/"
}
```

> 📘 Rich text object limits
> 
> Refer to the request limits documentation page for information about [limits on the size of rich text objects](https://developers.notion.com/reference/request-limits#limits-for-property-values).
