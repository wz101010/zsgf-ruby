# ZSGFClient::QRCodeSignUpRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sign_in_key** | **Integer** | 登录密钥 | [optional] |
| **union_id** | **String** | UnionID，长度必须在1到50个字符之间，只能包含字母、数字、下划线和连字符 |  |
| **nick_name** | **String** | 用户昵称 | [optional] |
| **avatar** | **String** | 用户头像URL | [optional] |
| **data** | **String** | 自定义数据 | [optional] |
| **email** | **String** | 用户邮箱 | [optional] |
| **email_code** | **String** | 邮箱验证码（只有启用的邮箱验证码功能时，才需要传入），长度为4到8位的数字 | [optional] |
| **phone** | **String** | 用户手机号，必须为11位数字 | [optional] |
| **phone_code** | **String** | 手机验证码（只有启用的手机验证码功能时，才需要传入），长度为4到8位的数字 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::QRCodeSignUpRequest.new(
  sign_in_key: null,
  union_id: null,
  nick_name: null,
  avatar: null,
  data: null,
  email: null,
  email_code: null,
  phone: null,
  phone_code: null
)
```

