# ZSGFClient::AccessTokenPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  |  |
| **tags** | **String** |  | [optional] |
| **user_id** | **Integer** |  | [optional] |
| **description** | **String** |  | [optional] |
| **permissions** | **String** |  | [optional] |
| **expire_in_days** | **Integer** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::AccessTokenPostRequest.new(
  title: null,
  tags: null,
  user_id: null,
  description: null,
  permissions: null,
  expire_in_days: null
)
```

