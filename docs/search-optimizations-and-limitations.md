# Search optimizations and limitations

## Optimizations

Search works best when the request is as specific as possible. We recommend filtering by object (such as `page` or `database`) and providing a text `query` to narrow down results.

To speed up results, try reducing the `page_size`. The default `page_size` is 100.

Our implementation of the search endpoint includes an optimization where any pages or databases that are directly shared with an integration are guaranteed to be returned. If your use case requires pages or databases to immediately be available in search without an indexing delay, we recommend that you share relevant pages/databases with your integration directly.

## Limitations

The search endpoint works best when it's being used to query for pages and databases by name. It is not optimized for the following use cases:

- **Exhaustively enumerating through all the documents that a bot has access to in a workspace.** Search is not guaranteed to return everything, and the index may change as your integration iterates through pages and databases.
- **Searching or filtering within a particular database.** This use case is much better served by finding the database ID and using the [Query a database](https://developers.notion.com/reference/post-database-query) endpoint.
- **Immediate and complete results.** Search indexing is not immediate. If an integration performs a search quickly after a page is shared with the integration (such as immediately after a user performs OAuth), then the response may not contain the page.
    - When an integration needs to present a user interface that depends on search results, we recommend including a *Refresh* button to retry the search. This will allow users to determine if the expected result is present or not, and give them a way to try again.
