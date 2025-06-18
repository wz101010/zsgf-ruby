# ZSGFClient::AppUserResetPhoneRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** | 手机号码 | [optional] |
| **code** | **String** | 手机验证码 |  |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::AppUserResetPhoneRequest.new(
  phone: null,
  code: null
)
```

