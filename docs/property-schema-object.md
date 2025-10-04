# Property Schema Object

Metadata that controls how a database property behaves.

## Database properties

Each database property schema object has at least one key which is the property type. This type contains behavior of this property. Possible values of this key are `"title"`, `"rich_text"`, `"number"`, `"select"`, `"multi_select"`, `"date"`, `"people"`, `"files"`, `"checkbox"`, `"url"`, `"email"`, `"phone_number"`, `"formula"`, `"relation"`, `"rollup"`, `"created_time"`, `"created_by"`, `"last_edited_time"`, `"last_edited_by"`.

## Title configuration

Each database must have exactly one database property schema object of type `"title"`. This database property controls the title that appears at the top of the page when the page is opened. Title database property objects have no additional configuration within the `title` property.

## Text configuration

Text database property schema objects have no additional configuration within the `rich_text` property.

## Number configuration

Number database property schema objects optionally contain the following configuration within the `number` property.
[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`format`",
    "0-1": "optional `string` (enum)",
    "0-2": "How the number is displayed in Notion. Potential values include: `number`, `number_with_commas`, `percent`, `dollar`, `canadian_dollar`, `euro`, `pound`, `yen`, `ruble`, `rupee`, `won`, `yuan`, `real`, `lira`, `rupiah`, `franc`, `hong_kong_dollar`, `new_zealand_dollar`, `krona`, `norwegian_krone`, `mexican_peso`, `rand`, `new_taiwan_dollar`, `danish_krone`, `zloty`, `baht`, `forint`, `koruna`, `shekel`, `chilean_peso`, `philippine_peso`, `dirham`, `colombian_peso`, `riyal`, `ringgit`, `leu`, `argentine_peso`, `uruguayan_peso`, `singapore_dollar`.",
    "0-3": "`\"percent\"`"
  },
  "cols": 4,
  "rows": 1
}
[/block]
## Select configuration

Select database property schema objects optionally contain the following configuration within the `select` property:
[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`options`",
    "0-1": "optional array of [select option objects](#select-options).",
    "0-2": "Sorted list of options available for this property.",
    "0-3": ""
  },
  "cols": 4,
  "rows": 1
}
[/block]
### Select options
[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`name`",
    "0-1": "`string`",
    "0-2": "Name of the option as it appears in Notion.",
    "0-3": "`\"Fruit\"`",
    "1-0": "`color`",
    "1-1": "optional `string` (enum)",
    "1-2": "Color of the option. Possible values include: `default`, `gray`, `brown`, `orange`, `yellow`, `green`, `blue`, `purple`, `pink`, `red`.",
    "1-3": "`\"red\"`"
  },
  "cols": 4,
  "rows": 2
}
[/block]
## Multi-select configuration

Multi-select database property schema objects optionally contain the following configuration within the `multi_select` property:
[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`options`",
    "0-1": "optional array of [multi-select option objects](#multi-select-options).",
    "0-2": "Settings for multi select properties."
  },
  "cols": 4,
  "rows": 1
}
[/block]
### Multi-select options
[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`name`",
    "0-1": "`string`",
    "0-2": "Name of the option as it appears in Notion.",
    "0-3": "`\"Fruit\"`",
    "1-0": "`color`",
    "1-1": "optional `string` (enum)",
    "1-2": "Color of the option. Possible values include: `default`, `gray`, `brown`, `orange`, `yellow`, `green`, `blue`, `purple`, `pink`, `red`.",
    "1-3": "`\"red\"`"
  },
  "cols": 4,
  "rows": 2
}
[/block]
## Date configuration

Date database property schema objects have no additional configuration within the `date` property.

## People configuration

People database property schema objects have no additional configuration within the `people` property.

## File configuration

File database property schema objects have no additional configuration within the `file` property.

## Checkbox configuration

Checkbox database property schema objects have no additional configuration within the `checkbox` property.

## URL configuration

URL database property schema objects have no additional configuration within the `url` property.

## Email configuration

Email database property schema objects have no additional configuration within the `email` property.

## Phone number configuration

Phone number database property schema objects have no additional configuration within the `phone_number` property.

## Formula configuration

Formula database property schema objects contain the following configuration within the `formula` property:
[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`expression`",
    "0-1": "`string`",
    "0-2": "Formula to evaluate for this property. You can read more about the [syntax for formulas](https://notion.so/notion/Formulas-28f3f5c3ae644c59b4d862046ea6a541) in the help center.",
    "0-3": "`\"if(prop(\\\"In stock\\\"), 0, prop(\\\"Price\\\"))\"`"
  },
  "cols": 4,
  "rows": 1
}
[/block]

## Relation configuration

Relation database property objects contain the following configuration within the `relation` property. In addition, they must contain a key corresponding with the value of `type`. The value is an object containing type-specific configuration. The type-specific configurations are defined below.
[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`database_id`",
    "0-1": "`string` (UUID)",
    "0-2": "The database this relation refers to. This database must be shared with the integration.",
    "0-3": "`\"668d797c-76fa-4934-9b05-ad288df2d136\"`",
    "1-0": "`type`",
    "1-1": "`string` (optional enum)",
    "1-2": "The type of the relation. Can be `\"single_property\"` or `\"dual_property\"`.",
    "1-3": "`\"single_property\"`"
  },
  "cols": 4,
  "rows": 2
}
[/block]
### Single property relation configuration

Single property relation objects have no additional configuration within the `single_property` property.

### Dual property relation configuration

Dual property relation objects have no additional configuration within the `dual_property` property.

## Rollup configuration

Rollup database property objects contain the following configuration within the `rollup` property:
[block:parameters]
{
  "data": {
    "h-0": "Property",
    "h-1": "Type",
    "h-2": "Description",
    "h-3": "Example value",
    "0-0": "`relation_property_name`",
    "0-1": "optional `string`",
    "0-2": "The name of the relation property this property is responsible for rolling up. This relation is in the same database where the new rollup property is being created. One of `relation_property_name` or `relation_property_id` must be provided.",
    "0-3": "`\"Meals\"`",
    "1-0": "`relation_property_id`",
    "1-1": "optional `string`",
    "1-2": "The `id` of the relation property this property is responsible for rolling up. This relation is in the same database where the new rollup property is being created. One of `relation_property_name` or `relation_property_id` must be provided.",
    "1-3": "`\"fy:{\"`",
    "2-0": "`rollup_property_name`",
    "2-1": "optional `string`",
    "2-2": "The name of the property in the related database that is used as an input to `function`. The related database must be shared with the integration. One of `rollup_property_name` or `rollup_property_id` must be provided.",
    "2-3": "`\"Name\"`",
    "3-0": "`rollup_property_id`",
    "3-1": "optional `string`",
    "3-2": "The `id` of the property  in the related database that is used as an input to `function`. The related database must be shared with the integration. One of `rollup_property_name` or `rollup_property_id` must be provided.",
    "3-3": "`\"fy:{\"`",
    "4-0": "`function`",
    "4-1": "`string` (enum)",
    "4-2": "The function that is evaluated for every page in the relation of the rollup.\nPossible values include: `count_all`, `count_values`, `count_unique_values`, `count_empty`, `count_not_empty`, `percent_empty`, `percent_not_empty`, `sum`, `average`, `median`, `min`, `max`, `range`, `show_original`",
    "4-3": "`\"count\"`"
  },
  "cols": 4,
  "rows": 5
}
[/block]

## Created time configuration

Created time database property schema objects have no additional configuration within the `created_time` property.

## Created by configuration

Created by database property schema objects have no additional configuration within the `created_by` property.

## Last edited time configuration

Last edited time database property schema objects have no additional configuration within the `last_edited_time` property.

## Last edited by configuration

Last edited by database property schema objects have no additional configuration within the `last_edited_by` property.
