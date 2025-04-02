# ZSGFClient::PhoneSignUpRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** |  |  |
| **phone_code** | **String** | 手机验证码 |  |
| **pwd** | **String** |  |  |
| **email** | **String** | 邮箱 | [optional] |
| **email_code** | **String** | 邮箱验证码（只有启用的邮箱验证码功能时，才需要传入） | [optional] |
| **nick_name** | **String** | 昵称 | [optional] |
| **avatar** | **String** | 头像 | [optional] |
| **data** | **String** | 自定义数据 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::PhoneSignUpRequest.new(
  phone: null,
  phone_code: null,
  pwd: null,
  email: null,
  email_code: null,
  nick_name: null,
  avatar: null,
  data: null
)
```

