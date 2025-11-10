# ZSGFClient::AuthorizeResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** |  | [optional] |
| **error** | **String** |  | [optional] |
| **access_token** | **String** |  | [optional] |
| **token_type** | **String** |  | [optional] |
| **expires_in** | **Integer** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::AuthorizeResult.new(
  code: null,
  error: null,
  access_token: null,
  token_type: null,
  expires_in: null
)
```

