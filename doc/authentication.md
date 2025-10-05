# Authentication

Requests use the HTTP `Authorization` header to both authenticate and authorize operations. The Notion API accepts bearer tokens in this header. Bearer tokens are provided to you when you create an integration. If you're creating a public OAuth integration, the integration also receives bearer tokens each time a user completes the OAuth flow.

```curl
curl 'https://api.notion.com/v1/users' \
  -H 'Authorization: Bearer '"$NOTION_ACCESS_TOKEN"'' \
  -H "Notion-Version: 2022-06-28"
```

Inside Notion, users will see updates made by integrations attributed to a bot. The bot's name and avatar are controlled in the integration settings.

Using a [Notion SDK](https://notionapi.readme.io/reference/intro#code-samples--sdks), a bearer token can be passed once to initialize a `Client` and the client can be used to send multiple authenticated requests.

```javascript Notion SDK for JS
const { Client } = require('@notionhq/client');

const client = new Client({ auth: process.env.NOTION_ACCESS_TOKEN });
```



Learn more in the [Authorization guide](doc:authorization) .
