# ZSGFClient::EmailSignUpRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | 用户邮箱地址 |  |
| **pwd** | **String** | 用户密码，长度为6到32个字符 |  |
| **email_code** | **String** | 邮箱验证码 | [optional] |
| **phone** | **String** | 手机号，必须为11位数字 | [optional] |
| **phone_code** | **String** | 手机验证码（只有启用的手机验证码功能时，才需要传入） | [optional] |
| **nick_name** | **String** | 用户昵称 | [optional] |
| **avatar** | **String** | 用户头像URL | [optional] |
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

