# ZSGFClient::AccessTokenPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  |  |
| **tags** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **permissions** | **String** |  | [optional] |
| **expire_in_days** | **Integer** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::AccessTokenPostRequest.new(
  title: null,
  tags: null,
  description: null,
  permissions: null,
  expire_in_days: null
)
```

