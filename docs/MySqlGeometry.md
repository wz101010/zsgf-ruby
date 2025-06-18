# ZSGFClient::MySqlGeometry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_coordinate** | **Float** |  | [optional][readonly] |
| **y_coordinate** | **Float** |  | [optional][readonly] |
| **srid** | **Integer** |  | [optional][readonly] |
| **is_null** | **Boolean** |  | [optional] |
| **value** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::MySqlGeometry.new(
  x_coordinate: null,
  y_coordinate: null,
  srid: null,
  is_null: null,
  value: null
)
```

