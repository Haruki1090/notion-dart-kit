# Versioning

The Notion API is versioned. Our API versions are named for the date the version is released. For example, our latest version is `<<latestNotionVersion>>`.

Set the version by including a `Notion-Version` header. Setting this header is **required**.

```curl
curl https://api.notion.com/v1/users/01da9b00-e400-4959-91ce-af55307647e5 \
  -H "Authorization: Bearer secret_t1CdN9S8yicG5eWLUOfhcWaOscVnFXns"
  -H "Notion-Version: <<latestNotionVersion>>"
```
```javascript
// If you're using the JavaScript SDK, the appropriate Notion-Version header will be set for you.
```

A new API version is released when we introduce a **backwards-incompatible** change to the API. For example, changing a property type's name.

```json
// Prior to version 2021-05-13, the rich text property is called "text"
"properties": {
	"Description": {
		"type": "text",
		"text": [/* ... */]
	}
}

// In version 2021-05-13, the rich text property is now called "rich_text"
"properties": {
	"Description": {
		"type": "rich_text",
		"rich_text": [/* ... */]
	}
}
```

In the above example, if you do not upgrade to the new version, you will continue to set text properties using `text` when creating or updating a page. Once you upgrade to the new version, you will need to use `rich_text` to set that same text property.

Similarly, the page response will be returned with the property type `text` on the old version, while on the new version, the response will say `rich_text`.

> 🚧 Required Header
> 
> The `Notion-Version` header must be included in all REST API requests. This ensures the Notion API response is consistent with what your code expects. 
> 
> The most recent `Notion-Version` is `"<<latestNotionVersion>>"`.

> 📘 Versioning is only for backwards incompatible changes
> 
> For new features and additions to the API, such as adding a new API endpoint, or including a new object in an existing API endpoint's response, there won't be a new version. You'll be able to take advantage of any new functionality on the version of the API you're currently using.

**Note:** You may notice that Notion API URLs contain a `v1`. This is not related to the versioning described above. We don't intend to change these URLs.
