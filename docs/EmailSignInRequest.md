# ZSGFClient::EmailSignInRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **verify_code** | **String** |  |  |
| **two_factor_code** | **String** | 如果启用双因素认证登录，则必填 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::EmailSignInRequest.new(
  email: null,
  verify_code: null,
  two_factor_code: null
)
```

