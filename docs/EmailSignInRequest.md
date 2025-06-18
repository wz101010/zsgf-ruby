# ZSGFClient::EmailSignInRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | 用户邮箱地址 |  |
| **verify_code** | **String** | 验证码，长度为4到8位的数字 |  |
| **two_factor_code** | **String** | 双因素认证代码，如果启用双因素认证登录，则必填 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::EmailSignInRequest.new(
  email: null,
  verify_code: null,
  two_factor_code: null
)
```

