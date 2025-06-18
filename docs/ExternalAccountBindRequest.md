# ZSGFClient::ExternalAccountBindRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **union_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **platform_name** | **String** |  |  |
| **avatar** | **String** |  | [optional] |
| **data** | **String** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::ExternalAccountBindRequest.new(
  union_id: null,
  platform: null,
  platform_name: null,
  avatar: null,
  data: null
)
```

