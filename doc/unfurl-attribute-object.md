# Unfurl attribute (Link Previews)

A Link Preview is created from an array of unfurl attribute objects.

A [Link Preview](https://developers.notion.com/docs/link-previews) is a real-time excerpt of authenticated content that unfurls in Notion when an authenticated user shares an enabled link. Developers can build Link Preview integrations to customize how links for domains they own look when the links unfurl in a Notion workspace. The display of the Link Preview is customizable in terms of content and layout.

> 👍 Learn how to build your own Link Preview integration
> 
> - [Introduction to Link Preview integrations](https://developers.notion.com/docs/link-previews) guide
> - [Build a Link Preview integration](https://developers.notion.com/docs/build-a-link-preview-integration) guide
> - [Help Centre](https://www.notion.so/help/guides/notion-api-link-previews-feature) guide

Link Previews can be displayed in their full format, or they can be shown as a "Mention".

Let's first look at an example of a full-format Link Preview:

[block:image]
{
  "images": [
    {
      "image": [
        "https://files.readme.io/a034247-link_preview.png",
        "link_preview.png",
        1242
      ],
      "align": "center",
      "caption": "Example Link Preview in a Notion workspace"
    }
  ]
}
[/block]

Here is the same link again but now as a Mention — a miniature version of a Link Preview that uses the same data. 

[block:image]
{
  "images": [
    {
      "image": [
        "https://files.readme.io/f588a6f-mention.png",
        "mention.png",
        1060
      ],
      "align": "center",
      "caption": "Example Mention in a Notion workspace"
    }
  ]
}
[/block]

A Link Preview or Mention displays data that is sent to Notion as an array of unfurl attribute objects. There are a number of optional attributes developers cannot. However, **every array must contain a `title` attribute and a `dev` attribute.**

Using the same Link Preview and Mention we saw above, let's look at the array of unfurl attribute objects that would render these previews. The following payload creates the example Link Preview and Mention above: 

```json
[
  {
    "id": "title",
    "name": "Title",
    "type": "inline",
    "inline": {
      "title": {
        "value": "Feature Request: Link Previews",
        "section": "title"
      }
    }
  },
  {
    "id": "dev",
    "name": "Developer Name",
    "type": "inline",
    "inline": {
      "plain_text": {
        "value": "Acme Inc",
        "section": "secondary"
      }
    }
  },
  {
    "id": "state",
    "name": "State",
    "type": "relation",
    "relation": {
      "uri": "acme:item_state/open",
      "mention": {
        "section": "primary"
      }
    }
  },
  {
    "id": "itemId",
    "name": "Item Id",
    "type": "inline",
    "inline": {
      "plain_text": {
        "value": "#23487",
        "section": "identifier"
      }
    }
  },
  {
    "id": "itemIcon",
    "name": "Item Icon",
    "type": "inline",
    "inline": {
      "color": {
        "value": {
          "r": 247,
          "g": 247,
          "b": 42
        },
        "section": "entity"
      }
    }
  },
  {
    "id": "description",
    "name": "Description",
    "type": "inline",
    "inline": {
      "plain_text": {
        "value": "Would love to be able to preview some Acme resources in Notion!\n Maybe an open item?",
        "section": "body"
      }
    }
  },
  {
    "id": "updated_at",
    "name": "Updated At",
    "type": "inline",
    "inline": {
      "datetime": {
        "value": "2022-01-11T19:53:18.829Z",
        "section": "secondary"
      }
    }
  },
  {
    "id": "label",
    "name": "Label",
    "type": "inline",
    "inline": {
      "enum": {
        "value": "🔨 Ready to Build",
        "color": {
          "r": 100,
          "g": 100,
          "b": 100
        },
        "section": "primary"
      }
    }
  },
  {
    "id": "media",
    "name": "Embed",
    "embed": {
      "src_url": "https://c.tenor.com/XgaU95K_XiwAAAAC/kermit-typing.gif",
      "image": {
        "section": "embed"
      }
    }
  }
]
```

Each unfurl attribute object in this array maps to a different customizable section of a Link Preview. (To learn more about each section, jump to [The `section` value](https://developers.notion.com/reference/unfurl-attribute-object#the-section-value).

[block:image]
{
  "images": [
    {
      "image": [
        "https://files.readme.io/3d6f5ec-Untitled_1.png",
        null,
        "Anatomy of a Link Preview in Notion"
      ],
      "align": "center",
      "caption": "Anatomy of a Link Preview in Notion"
    }
  ]
}
[/block]

First, let's let at the properties in each individual unfurl attribute object.

## The unfurl attribute object

```json Example unfurl attribute object
{
    "id": "title",
    "name": "Title",
    "type": "inline",
    "inline": {
      "title": {
        "value": "Feature Request: Link Previews",
        "section": "title"
      }
    }
  }
```

Each unfurl attribute object contains the following values:

[block:parameters]
{
  "data": {
    "h-0": "Field",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`id`",
    "0-1": "`string`",
    "0-2": "A unique identifier for the attribute.  \n  \nIf more than one attribute with the same `id` is provided, then the latter attribute overrides the value of the first.",
    "0-3": "`\"title\"`",
    "1-0": "`name`",
    "1-1": "`string`",
    "1-2": "A human readable name describing the attribute.",
    "1-3": "`\"Title\"`",
    "2-0": "`type`",
    "2-1": "`inline` \\|\\| `embed`",
    "2-2": "The type of attribute.  \n  \nMost attributes are `inline`. Use `embed` for rich media sub-types like `image`, `video`, or `audio`.",
    "2-3": "`\"inline\"`",
    "3-0": "`inline` \\|\\| `embed`",
    "3-1": "`object`",
    "3-2": "An object whose key is a sub-type. The child sub-type object includes the `value` to display and the `section` of the Link Preview where the data is rendered.",
    "3-3": "`{\n    \"title\": {\n      \"value\": \"Feature Request: Link Previews\",\n      \"section\": \"title\"\n      }\n}`"
  },
  "cols": 4,
  "rows": 4,
  "align": [
    "left",
    "left",
    "left",
    "left"
  ]
}
[/block]

### Inline sub-type objects

The key of inline sub-type objects represents the kind of sub-type. The values of the key are the `value` to display and the `section` of the Link Preview where the value is rendered. 

[block:parameters]
{
  "data": {
    "h-0": "Sub-type",
    "h-1": "Description",
    "h-2": "Example value",
    "0-0": "`color`",
    "0-1": "A color with r, b, g values.",
    "0-2": "`{\n  \"value\": {\n    \"r\": 247,\n    \"g\": 247,\n    \"b\": 42\n  },\n  \"section\": \"entity\"\n}`",
    "1-0": "`date`",
    "1-1": "A date.",
    "1-2": "`{\n  \"value\": \"2022-01-11\",\n  \"section\": \"secondary\"\n}`",
    "2-0": "`datetime`",
    "2-1": "A datetime.",
    "2-2": "`{\n  \"value\": \"2022-01-11T19:53:18.829Z\",\n  \"section\": \"secondary\"\n}`",
    "3-0": "`enum`",
    "3-1": "A string value and optional color object.",
    "3-2": "`{\n  \"value\": \"🔨 Ready to Build\",\n  \"color\": {\n    \"r\": 100,\n    \"g\": 100,\n    \"b\": 100\n  },\n  \"section\": \"primary\"\n}`",
    "4-0": "`plain_text`",
    "4-1": "Any plain text content.",
    "4-2": "`{\n  \"value\": \"Would love to be able to preview some Acme resources in Notion!\\n Maybe an open item?\",\n  \"section\": \"body\"\n}`",
    "5-0": "`title`\\*",
    "5-1": "The title of the Link Preview.  \n  \n\\*An unfurl attribute object of this type must be included in every payload to create a Link Preview.",
    "5-2": "`{\n  \"value\": \"Feature Request: Link Previews\",\n  \"section\": \"title\"\n}`"
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

#### The `dev` attribute

Every array of attribute objects that is sent to Notion to create a Link Preview must also include a `dev` attribute. The attribute indicates the developer or company who created the Link Preview. It takes the following format:

```json Example dev attribute
{
    "id": "dev",
    "name": "Developer Name",
    "type": "inline",
    "inline": {
      "plain_text": {
        "value": "Acme Inc",
        "section": "secondary"
     }
   }
 }
```

### Embed sub-type child objects

You can use the `embed` sub-type object to add rich content like JPGs, GIFs, or iFrames to your Link Preview. 

[block:image]
{
  "images": [
    {
      "image": [
        "https://files.readme.io/d482801-embed.png",
        "embed.png",
        1228
      ],
      "align": "center",
      "caption": "An example Link Preview that embeds an image of Kermit the Frog"
    }
  ]
}
[/block]

All embed sub-type objects contain: a `src_url` field that is a link to the embed, and an object whose key is the sub-type of the embed and whose value is an object indicating the `section` of the Link Preview where the value is rendered. 

| Sub-type | Description                                           | Example value                                                                                             |
| :------- | :---------------------------------------------------- | :-------------------------------------------------------------------------------------------------------- |
| `audio`  | Audio from a source URL.                              | `{   "src_url": "https://s3.us-east-3.amazonaws.com/12345.mp4",   "audio": {   "section": "embed"   } }`  |
| `html`   | HTML from a source URL that is rendered in an iFrame. | `{   "src_url": "https://s3.us-east-3.amazonaws.com/12345.html",   "html": {   "section": "embed"   } }`  |
| `image`  | Image from a source URL.                              | `{   "src_url": "https://s3.us-east-3.amazonaws.com/12345.png",   "image": {   "section": "avatar"   } }` |
| `video`  | Video from a source URL.                              | `{   "src_url": "https://s3.us-east-3.amazonaws.com/12345.mp4",   "video": {   "section": "embed"   } }`  |

> 📘 
> 
> There’s no need to ask a user to log in to your service in an iFrame embed. If they’re using a Link Preview, then they’ve already authenticated.

### The `section` value

The `section` value of an unfurl attribute object defines where an attribute is rendered in the Link Preview or Mention. 

[block:image]
{
  "images": [
    {
      "image": [
        "https://files.readme.io/121dcba-sections_lp.png",
        "sections_lp.png",
        1378
      ],
      "align": "center",
      "caption": "The sections of a Link Preview"
    }
  ]
}
[/block]

[block:image]
{
  "images": [
    {
      "image": [
        "https://files.readme.io/1de6886-sections_mention.png",
        "sections_mention.png",
        926
      ],
      "align": "center",
      "caption": "The sections of a Mention"
    }
  ]
}
[/block]

A `section` is specified in the sub-type object for the attribute. Refer to the table below for details about each `section` and its valid parent sub-types. 

[block:parameters]
{
  "data": {
    "h-0": "Section",
    "h-1": "Description",
    "h-2": "Valid parent sub-types",
    "0-0": "avatar",
    "0-1": "The picture found on the bottom left of a Link Preview.",
    "0-2": "`image`, `plain_text`",
    "1-0": "background",
    "1-1": "A background color for the Link Preview.",
    "1-2": "`color`",
    "2-0": "body",
    "2-1": "The main string content of a Link Preview.",
    "2-2": "`plain_text`",
    "3-0": "embed",
    "3-1": "The large space where the content of an `embed` attribute type is displayed in a Link Preview.",
    "3-2": "`audio`, `html`, `image`, `pdf`, `video`",
    "4-0": "entity",
    "4-1": "The small picture found in the subheading of a Link Preview and in a Mention.",
    "4-2": "`color`, `image`",
    "5-0": "identifier",
    "5-1": "The subheading found on the bottom of a Link Preview and on the left side of a Mention.",
    "5-2": "`image`, `plain_text`",
    "6-0": "primary",
    "6-1": "The first subheading section.",
    "6-2": "`enum`, `date`, `datetime`, `plain_text`",
    "7-0": "secondary",
    "7-1": "The second subheading section.",
    "7-2": "`date`, `datetime`, `plain_text`",
    "8-0": "title\\*",
    "8-1": "The main heading in a Link Preview or Mention.  \n  \n\\*Required.",
    "8-2": "`title`"
  },
  "cols": 3,
  "rows": 9,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]
