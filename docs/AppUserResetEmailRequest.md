# ZSGFClient::AppUserResetEmailRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | 邮箱 | [optional] |
| **code** | **String** | 邮箱验证码 |  |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::AppUserResetEmailRequest.new(
  email: null,
  code: null
)
```

