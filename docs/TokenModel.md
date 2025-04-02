# ZSGFClient::TokenModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  | [optional] |
| **token_type** | **String** |  | [optional] |
| **expires_in** | **Integer** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::TokenModel.new(
  access_token: null,
  token_type: null,
  expires_in: null
)
```

