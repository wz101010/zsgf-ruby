# ZSGFClient::PhoneSignInRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** | 用户手机号 |  |
| **verify_code** | **String** | 验证码，长度为4到8位的数字 |  |
| **two_factor_code** | **String** | 双因素认证代码，如果启用双因素认证登录，则必填，长度必须为6个字符，只能包含数字 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::PhoneSignInRequest.new(
  phone: null,
  verify_code: null,
  two_factor_code: null
)
```

