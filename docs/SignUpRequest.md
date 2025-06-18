# ZSGFClient::SignUpRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_name** | **String** | 用户名，长度必须在6到32个字符之间，只能包含字母、数字、下划线和连字符 |  |
| **pwd** | **String** | 登录密码，长度必须在6到32个字符之间，只能包含字母和数字 |  |
| **nick_name** | **String** | 用户昵称，长度不能超过20个字符 | [optional] |
| **avatar** | **String** | 用户头像URL | [optional] |
| **data** | **String** | 自定义数据 | [optional] |
| **email** | **String** | 用户邮箱 | [optional] |
| **email_code** | **String** | 邮箱验证码（只有启用的邮箱验证码功能时，才需要传入），长度为4到8位的数字 | [optional] |
| **phone** | **String** | 用户手机号，必须为11位数字 | [optional] |
| **phone_code** | **String** | 手机验证码（只有启用的手机验证码功能时，才需要传入），长度为4到8位的数字 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::SignUpRequest.new(
  user_name: null,
  pwd: null,
  nick_name: null,
  avatar: null,
  data: null,
  email: null,
  email_code: null,
  phone: null,
  phone_code: null
)
```

