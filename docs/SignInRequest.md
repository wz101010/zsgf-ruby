# ZSGFClient::SignInRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_name** | **String** |  |  |
| **pwd** | **String** |  |  |
| **two_factor_code** | **String** | 如果启用双因素认证登录，则必填 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::SignInRequest.new(
  user_name: null,
  pwd: null,
  two_factor_code: null
)
```

