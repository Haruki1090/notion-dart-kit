# Event types & delivery

Webhooks currently notify you about changes to pages and databases — such as when a new page is created, a title is updated, or someone changes a database schema. The events themselves do not contain the full content that changed. Instead, the webhook acts as a signal that something changed, and it’s up to your integration to follow up with a call to the Notion API to retrieve the latest content.

For example, let’s say a user updates the title of a page. You’ll receive a `page.content_updated` webhook event with the ID of the page that changed. From there, your integration can use the [retrieve a page endpoint](https://developers.notion.com/reference/retrieve-a-page) to fetch the latest page content — including the new title.

# Event types

## Event properties

**All webhook event types share the following shape of properties:**

[block:parameters]
{
  "data": {
    "h-0": "**Field**",
    "h-1": "**Type**",
    "h-2": "**Description**",
    "0-0": "`id`",
    "0-1": "UUID",
    "0-2": "The unique ID of the webhook event",
    "1-0": "`timestamp`",
    "1-1": "String",
    "1-2": "ISO 8601 formatted time at which the event occurred. This field can be used to order events on your side",
    "2-0": "`workspace_id`",
    "2-1": "UUID",
    "2-2": "The workspace ID where the event originated from",
    "3-0": "`subscription_id`",
    "3-1": "UUID",
    "3-2": "The ID of the webhook subscription",
    "4-0": "`integration_id`",
    "4-1": "UUID",
    "4-2": "Associated integration ID the subscription is set up with",
    "5-0": "`type`",
    "5-1": "String",
    "5-2": "Type of the event, e.g. `page.created`",
    "6-0": "`authors`",
    "6-1": "Array",
    "6-2": "Array of JSON objects with the ID (`id`) and type (`type`) of the author who performed the action that caused this webhook. `type` can be `\"person\"`, `\"bot\"`, or `\"agent\"`.  \n  \nThis helps you identify, for example, the API bot that created a page, or the Notion user that edited the schema of a database.  \n  \nThis will typically be an array of length 1, except for aggregated events when more than 1 user makes changes in a short time window.  \n  \nMore details on a [bot](https://developers.notion.com/reference/user#bots) or [person](https://developers.notion.com/reference/user#people) can be [retrieved by ID in the Users API](https://developers.notion.com/reference/get-user) after receiving a webhook.",
    "7-0": "`accessible_by`",
    "7-1": "Array",
    "7-2": "Array of JSON objects with the ID (`id`) and type (`type`) of each accessible bot and user who owns the bot connection to the `integration_id` and has access to the webhook's `entity`.  \n  \nThis field is only populated for public integrations, to help identify relevant user and bot connections.  \n  \nThe `type` of each entry can be `\"person\"` or `\"bot\"`.",
    "8-0": "`attempt_number`",
    "8-1": "number",
    "8-2": "A number ranged from 1 - 8 that indicates the attempt number of the current event delivery ",
    "9-0": "`entity`",
    "9-1": "Object",
    "9-2": "ID (`id`) and type (`type`) of the object that triggered the event. The `type` can be `\"page\"`, `\"block\"`, or `\"database\"`.",
    "10-0": "`data`",
    "10-1": "Object",
    "10-2": "Additional, event-specific data."
  },
  "cols": 3,
  "rows": 11,
  "align": [
    null,
    null,
    null
  ]
}
[/block]


## Supported webhook event types

Notion currently supports the following webhook event types. Each event represents a meaningful change to content in a workspace — such as the creation of a page, a schema update, or a new comment.

> 📘 More event types may be added in the future
> 
> If Notion supports additional event types or resources, your subscription won't update automatically to receive them.
> 
> To subscribe to more event types or change the existing types your endpoint is receiving, update your subscription in the integration page's **Webhooks** tab.

Below, you’ll find the list of available type values, a short description of what each event represents, and whether the event is aggregated. Aggregated events group multiple changes into a single notification to reduce noise and improve efficiency.

[block:parameters]
{
  "data": {
    "h-0": "Type",
    "h-1": "Description",
    "h-2": "Is aggregated?",
    "0-0": "`page.content_updated`",
    "0-1": "Triggered when the content of a page changes — for example  \nadding or removing a block on the page.",
    "0-2": "Yes",
    "1-0": "`page.created`",
    "1-1": "Triggered when a new page is created.",
    "1-2": "Yes",
    "2-0": "`page.deleted`",
    "2-1": "Triggered when a page is moved to the trash.",
    "2-2": "Yes",
    "3-0": "`page.locked`",
    "3-1": "Triggered when a page is locked from editing.",
    "3-2": "No",
    "4-0": "`page.moved`",
    "4-1": "Triggered when a page is moved to another location.",
    "4-2": "Yes",
    "5-0": "`page.properties_updated`",
    "5-1": "Triggered when a page's property is updated.",
    "5-2": "Yes",
    "6-0": "`page.undeleted`",
    "6-1": "Triggered when a page is restored from the trash.",
    "6-2": "Yes",
    "7-0": "`page.unlocked`",
    "7-1": "Triggered when a page is unlocked ",
    "7-2": "No",
    "8-0": "`database.content_updated`",
    "8-1": "Triggered when a database's content is updated— for example, adding or removing a child page.  \n  \n**Deprecated** in 2025-09-03 API version.",
    "8-2": "Yes",
    "9-0": "`database.created`",
    "9-1": "Triggered when a new database is created.",
    "9-2": "Yes",
    "10-0": "`database.deleted`",
    "10-1": "Triggered when a database is moved to the trash.",
    "10-2": "Yes",
    "11-0": "`database.moved`",
    "11-1": "Triggered when a database is moved to another location.",
    "11-2": "Yes",
    "12-0": "`database.schema_updated`",
    "12-1": "Triggered when a database's schema is updated — for example, adding or removing a database property.  \n  \n**Deprecated** in 2025-09-03 API version.",
    "12-2": "Yes",
    "13-0": "`database.undeleted`",
    "13-1": "Triggered when a database is restored from the trash.",
    "13-2": "Yes",
    "14-0": "`data_source.content_updated`",
    "14-1": "Triggered when a data source's content is updated— for example, adding or removing a child page.  \n  \n**New** in 2025-09-03 API version.",
    "14-2": "Yes",
    "15-0": "`data_source.created`",
    "15-1": "Triggered when a new data source is created within an existing database.  \n  \n**New** in 2025-09-03 API version.",
    "15-2": "Yes",
    "16-0": "`data_source.deleted`",
    "16-1": "Triggered when a data source is moved to the trash.  \n  \n**New** in 2025-09-03 API version.",
    "16-2": "Yes",
    "17-0": "`data_source.moved`",
    "17-1": "Triggered when a data source is moved to another database.  \n  \n**New** in 2025-09-03 API version.",
    "17-2": "Yes",
    "18-0": "`data_source.schema_updated`",
    "18-1": "Triggered when a data source's schema is updated — for example, adding or removing a database property.  \n  \n**New** in 2025-09-03 API version.",
    "18-2": "Yes",
    "19-0": "`data_source.undeleted`",
    "19-1": "Triggered when a data source is restored from the trash.  \n  \n**New** in 2025-09-03 API version.",
    "19-2": "Yes",
    "20-0": "`comment.created`",
    "20-1": "Triggered when a new comment or suggested edit is added to a page or block",
    "20-2": "No",
    "21-0": "`comment.deleted`",
    "21-1": "Triggered when a comment is deleted.",
    "21-2": "No",
    "22-0": "`comment.updated`",
    "22-1": "Triggered when a comment is edited.",
    "22-2": "No"
  },
  "cols": 3,
  "rows": 23,
  "align": [
    "left",
    "left",
    "left"
  ]
}
[/block]


> 🗒️ What does “aggregated” mean?
> 
> For high-frequency events like `page.content_updated`, Notion batches changes that occur within a short time window into a single webhook event. Events such as `page.created`, `page.deleted`, `page.undeleted` occur in quick succession, you may only recieve the most meaningful result event -- or none at all if the state returns to its original one. 
> 
> Event aggregration helps reduce redundant calls and improves reliability. Aggregated events may have a slight delivery delay (typically under one minute).

# Event delivery

Events should be delivered within 5 minutes of their occurrences. Most should be be delivered within a minute. Here are a few things to keep in mind when consuming webhook events.

## Event aggregation

Certain events that occur frequently, like page.content_updated, are aggregated by their entity within a brief time window. As a result, there may be a slight delay between the first occurrence of an event and its delivery to your webhook URL.

## Event ordering

Events may arrive in a different order than they occurred. If event ordering is critical for your workflows, use the event's timestamp field to reorder them. Also, webhook events may not show the most current state of the data. We strongly recommend fetching the latest data from the API.

## Delivery retries

We aim for at-most-once event delivery. If your webhook endpoint fails to acknowledge receipt of an event, we will retry delivery up to 8 times using an exponential backoff schedule. The final retry attempt occurs approximately 24 hours after the initial event trigger.

# Sample event payloads

Notion currently supports the following event `type`s. We've added an example payload to describe the shape of each event.

## page.created

```json
{
  "id": "367cba44-b6f3-4c92-81e7-6a2e9659efd4",
  "timestamp": "2024-12-05T23:55:34.285Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "page.created",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "153104cd-477e-809d-8dc4-ff2d96ae3090",
    "type": "page"
  },
  "data": {
    "parent": {
      "id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
      "type": "page"
    }
  }
}
```

## page.properties_updated

```json
{
  "id": "1782edd6-a853-4d4a-b02c-9c8c16f28e53",
  "timestamp": "2024-12-05T23:57:05.379Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "page.properties_updated",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "153104cd-477e-809d-8dc4-ff2d96ae3090",
    "type": "page"
  },
  "data": {
    "parent": {
      "id": "13950b26-c203-4f3b-b97d-93ec06319565",
      "type": "space"
    },
    "updated_properties": ["XGe%40", "bDf%5B", "DbAu"]
  }
}
```

## page.content_updated

```json
{
  "id": "56c3e00c-4f0c-4566-9676-4b058a50a03d",
  "timestamp": "2024-12-05T19:49:36.997Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "page.content_updated",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
    "type": "page"
  },
  "data": {
    "updated_blocks": [
      {
        "id": "153104cd-477e-80ec-a87d-f7ff0236d35c",
        "type": "block"
      }
    ],
    "parent": {
      "id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
      "type": "page"
    }
  }
}
```

## page.moved

```json
{
  "id": "7de99a6f-2edd-4116-bf59-2d09407bddec",
  "timestamp": "2024-12-11T05:43:14.383Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "page.moved",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "154104cd-477e-8030-9989-d4daf352d900",
    "type": "page"
  },
  "data": {
    "parent": {
      "id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
      "type": "page"
    }
  }
}
```

## page.deleted

```json
{
  "id": "ea6b8136-1db6-4f2e-b157-84a532437f62",
  "timestamp": "2024-12-05T23:59:31.215Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "page.deleted",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "153104cd-477e-8001-935c-c4b11828dfbd",
    "type": "page"
  },
  "data": {
    "parent": {
      "id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
      "type": "page"
    }
  }
}
```

## page.undeleted

```json
{
  "id": "ec37232c-a17b-4f02-bb7c-8d8e1f5f2250",
  "timestamp": "2024-12-06T00:00:03.356Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "page.undeleted",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "153104cd-477e-8001-935c-c4b11828dfbd",
    "type": "page"
  },
  "data": {
    "parent": {
      "id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
      "type": "page"
    }
  }
}
```

## page.locked

```json
{
  "id": "e2a3092c-5af0-442f-9d11-b813145edb72",
  "timestamp": "2024-12-06T00:00:56.480Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "page.locked",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "153104cd-477e-8001-935c-c4b11828dfbd",
    "type": "page"
  },
  "data": {
	  "parent": {
      "id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
      "type": "page"
    }
  }
}
```

## page.unlocked

```json
{
  "id": "e2a3092c-5af0-442f-9d11-b813145edb72",
  "timestamp": "2024-12-06T00:00:56.480Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "page.unlocked",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "153104cd-477e-8001-935c-c4b11828dfbd",
    "type": "page"
  },
  "data": {
    "parent": {
      "id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
      "type": "page"
    }
  }
}
```

<br />

## database.created

> 📘 Linked databases
> 
> For [linked databases](https://www.notion.com/help/guides/using-linked-databases), the `entity.type` is `"block"` instead of `"database"`.
> 
> If you [retrieve](https://developers.notion.com/reference/retrieve-a-block) this block in the API, it [has a type of `"child_database"`](https://developers.notion.com/reference/block#child-database).

```json
{
  "id": "d0bd8927-0826-4db0-9e26-83d57253f1ff",
  "timestamp": "2024-12-05T23:50:35.868Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "database.created",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "153104cd-477e-80eb-ae76-e1c2a32c7b35",
    "type": "database"
  },
  "data": {
    "parent": {
      "id": "153104cd-477e-803a-88dc-caececf26478",
      "type": "page"
    }
  }
}
```

## database.content_updated

> 📘 **Deprecated** in 2025-09-03 API version.

```json
{
  "id": "25e44fe0-6785-45bb-adc2-a321526c12c5",
  "timestamp": "2024-12-13T17:48:13.700Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "database.content_updated",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "15b104cd-477e-80c2-84a0-c32cefba5cff",
    "type": "database"
  },
  "data": {
    "updated_blocks": [
      {
        "id": "15b104cd-477e-80a4-bff3-cd05428a4d55",
        "type": "block"
      },
      {
        "id": "15b104cd-477e-80be-98e7-cdf0897fa5c9",
        "type": "block"
      }
    ],
    "parent": {
      "id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
      "type": "page"
    }
  }
}
```

## database.moved

```json
{
  "id": "f9c70013-d79d-4c4e-8d5b-939429949a2e",
  "timestamp": "2024-12-06T06:54:08.468Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "database.moved",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "153104cd-477e-80eb-ae76-e1c2a32c7b35",
    "type": "database"
  },
  "data": {
    "parent": {
      "id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
      "type": "page"
    }
  }
}
```

## database.deleted

```json
{
  "id": "c00e2ea7-032a-4e20-ae05-d69028a09ae9",
  "timestamp": "2024-12-05T23:51:27.295Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "database.deleted",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "153104cd-477e-80eb-ae76-e1c2a32c7b35",
    "type": "database"
  },
  "data": {
    "parent": {
      "id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
      "type": "page"
    }
  }
}
```

## database.undeleted

```json
{
  "id": "edd8ff6e-0f07-4621-934b-76ca55129cc2",
  "timestamp": "2024-12-05T23:52:16.149Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "database.undeleted",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "153104cd-477e-80eb-ae76-e1c2a32c7b35",
    "type": "database"
  },
  "data": {
    "parent": {
      "id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
      "type": "page"
    }
  }
}
```

<br />

## database.schema_updated

> 📘 **Deprecated** in 2025-09-03 API version.

```json
{
  "id": "5496f509-6988-4bab-b6a9-bdce0b720ca0",
  "timestamp": "2024-12-05T23:55:22.243Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "database.schema_updated",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "153104cd-477e-80eb-ae76-e1c2a32c7b35",
    "type": "database"
  },
  "data": {
    "parent": {
      "id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
      "type": "page"
    },
    "updated_properties": [
      {
        "id": "kqLW",
        "name": "Created at",
        "action": "created"
      },
      {
        "id": "wX%7Bd",
        "name": "Blurb",
        "action": "updated"
      },
      {
        "id": "LIM%5D",
        "name": "Description",
        "action": "deleted"
      }
    ],
  }
}
```

## data_source.content_updated

> 📘 **New** in 2025-09-03 API version. Replaces `database.content_updated`.

```json
{
  "id": "25e44fe0-6785-45bb-adc2-a321526c12c5",
  "timestamp": "2024-12-13T17:48:13.700Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "data_source.content_updated",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "15b104cd-477e-80c2-84a0-c32cefba5cff",
    "type": "data_source"
  },
  "data": {
    "updated_blocks": [
      {
        "id": "15b104cd-477e-80a4-bff3-cd05428a4d55",
        "type": "block"
      },
      {
        "id": "15b104cd-477e-80be-98e7-cdf0897fa5c9",
        "type": "block"
      }
    ],
    "parent": {
      "id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
      "type": "page"
    }
  }
}
```

## data_source.created

> 📘 **New** in 2025-09-03 API version.

```json
{
  "id": "6f6469cb-8022-409d-a560-62e631a84d74",
  "timestamp": "2025-09-03T17:24:49.997Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "attempt_number": 1,
  "api_version": "2025-09-03",
  "entity": {
    "id": "263104cd-477e-804b-8c32-000b2fcd241a",
    "type": "data_source"
  },
  "type": "data_source.created",
  "data": {
    "parent": {
      "id": "153104cd-477e-803a-88dc-caececf26478",
      "type": "page"
    }
  }
}
```

## data_source.deleted

> 📘 **New** in 2025-09-03 API version.

```json
{
  "id": "4e443c81-a332-40af-9300-c7eb6e514737",
  "timestamp": "2025-09-03T17:54:38.833Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "attempt_number": 1,
  "api_version": "2025-09-03",
  "entity": {
    "id": "263104cd-477e-804b-8c32-000b2fcd241a",
    "type": "data_source"
  },
  "type": "data_source.deleted",
  "data": {
    "parent": {
      "id": "263104cd-477e-80ef-8afe-c488d39a5cdb",
      "type": "page"
    }
  }
} 
```

## data_source.moved

> 📘 **New** in 2025-09-03 API version.

```json
{
  "id": "b6cc0a2c-f8f6-440b-920d-e3d6d7cf2e44",
  "timestamp": "2025-09-03T17:49:13.978Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "attempt_number": 1,
  "api_version": "2025-09-03",
  "entity": {
    "id": "263104cd-477e-8025-aae1-000b58fc5834",
    "type": "data_source"
  },
  "type": "data_source.moved",
  "data": {
    "parent": {
      "id": "263104cd-477e-80ef-8afe-c488d39a5cdb",
      "type": "database"
    }
  }
} 
```

## data_source.schema_updated

> 📘 **New** in 2025-09-03 API version. Replaces `database.schema_updated`.

```json
{
  "id": "5496f509-6988-4bab-b6a9-bdce0b720ca0",
  "timestamp": "2024-12-05T23:55:22.243Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "data_source.schema_updated",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "153104cd-477e-80eb-ae76-e1c2a32c7b35",
    "type": "data_source"
  },
  "data": {
    "parent": {
      "id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
      "type": "page"
    },
    "updated_properties": [
      {
        "id": "kqLW",
        "name": "Created at",
        "action": "created"
      },
      {
        "id": "wX%7Bd",
        "name": "Blurb",
        "action": "updated"
      },
      {
        "id": "LIM%5D",
        "name": "Description",
        "action": "deleted"
      }
    ],
  }
}
```

## data_source.undeleted

> 📘 **New** in 2025-09-03 API version.

```json
{
  "id": "afc2475f-aaeb-4a69-8158-b654ba4bc47b",
  "timestamp": "2025-09-03T17:55:42.075Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "attempt_number": 1,
  "api_version": "2025-09-03",
  "entity": {
    "id": "263104cd-477e-8025-aae1-000b58fc5834",
    "type": "data_source"
  },
  "type": "data_source.undeleted",
  "data": {
    "parent": {
      "id": "153104cd-477e-803a-88dc-caececf26478",
      "type": "page"
    }
  }
} 
```

## comment.created

  **For page comment**:

```json
{
  "id": "c6780f24-10b7-4f42-a6fd-230b6cf7ad69",
  "timestamp": "2024-12-05T20:46:45.854Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "comment.created",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "153104cd-477e-80ca-8f75-001d9e2b6839",
    "type": "comment"
  },
  "data": {
    "page_id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
    "parent": {
      "id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
      "type": "page"
    }
  }
}
```

  **For comment on a block**:

```json
{
  "id": "9cf67341-47d7-43f7-be6f-24b49dcc335b",
  "timestamp": "2024-12-05T20:48:00.550Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "comment.created",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "153104cd-477e-8071-b16a-001d9a35ad84",
    "type": "comment"
  },
  "data": {
    "page_id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
    "parent": {
      "id": "153104cd-477e-803a-88dc-caececf26478",
      "type": "block"
    }
  }
}
```

## comment.updated

```json
{
  "id": "68ad06e4-5b68-498d-8812-9a1d3e069e46",
  "timestamp": "2024-12-05T20:47:22.657Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "comment.updated",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "153104cd-477e-80ca-8f75-001d9e2b6839",
    "type": "comment"
  },
  "data": {
    "page_id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
    "parent": {
      "id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
      "type": "page"
    }
  }
}
```

## comment.deleted

```json
{
  "id": "aa4436d0-6694-49ad-aabb-55c6307f091b",
  "timestamp": "2024-12-05T20:49:08.688Z",
  "workspace_id": "13950b26-c203-4f3b-b97d-93ec06319565",
  "workspace_name": "Quantify Labs",
  "subscription_id": "29d75c0d-5546-4414-8459-7b7a92f1fc4b",
  "integration_id": "0ef2e755-4912-8096-91c1-00376a88a5ca",
  "type": "comment.deleted",
  "authors": [
    {
      "id": "c7c11cca-1d73-471d-9b6e-bdef51470190",
      "type": "person"
    }
  ],
  "accessible_by": [
    {
      "id": "556a1abf-4f08-40c6-878a-75890d2a88ba",
      "type": "person"
    },
    {
      "id": "1edc05f6-2702-81b5-8408-00279347f034",
      "type": "bot"
    }
  ],
  "attempt_number": 1,
  "entity": {
    "id": "153104cd-477e-8071-b16a-001d9a35ad84",
    "type": "comment"
  },
  "data": {
    "page_id": "0ef104cd-477e-80e1-8571-cfd10e92339a",
    "parent": {
      "id": "153104cd-477e-803a-88dc-caececf26478",
      "type": "block"
    }
  }
}
```
