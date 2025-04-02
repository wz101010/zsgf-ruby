# ZSGFClient::EmailSignUpRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **pwd** | **String** |  |  |
| **email_code** | **String** | 邮箱验证码 | [optional] |
| **phone** | **String** | 手机号 | [optional] |
| **phone_code** | **String** | 手机验证码（只有启用的手机验证码功能时，才需要传入） | [optional] |
| **nick_name** | **String** | 昵称 | [optional] |
| **avatar** | **String** | 头像 | [optional] |
| **data** | **String** | 自定义数据 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::EmailSignUpRequest.new(
  email: null,
  pwd: null,
  email_code: null,
  phone: null,
  phone_code: null,
  nick_name: null,
  avatar: null,
  data: null
)
```

