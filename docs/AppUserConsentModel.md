# ZSGFClient::AppUserConsentModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **create_date** | **Time** |  | [optional] |
| **last_update** | **Time** |  | [optional] |
| **grant_type** | **String** |  | [optional] |
| **redirect_uri** | **String** |  | [optional] |
| **remark** | **String** |  | [optional] |
| **scopes** | **String** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::AppUserConsentModel.new(
  id: null,
  create_date: null,
  last_update: null,
  grant_type: null,
  redirect_uri: null,
  remark: null,
  scopes: null
)
```

