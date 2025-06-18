# ZSGFClient::PhoneSignUpRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** | 用户手机号 |  |
| **phone_code** | **String** | 手机验证码，长度为4到8位的数字 |  |
| **pwd** | **String** | 用户密码，长度为6到32个字符 |  |
| **email** | **String** | 用户邮箱 | [optional] |
| **email_code** | **String** | 邮箱验证码（只有启用的邮箱验证码功能时，才需要传入），长度为4到8位的数字 | [optional] |
| **nick_name** | **String** | 用户昵称 | [optional] |
| **avatar** | **String** | 用户头像URL | [optional] |
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

