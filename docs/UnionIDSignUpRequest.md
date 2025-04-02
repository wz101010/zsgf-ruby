# ZSGFClient::UnionIDSignUpRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_name** | **String** | 登录账号，可空 | [optional] |
| **union_id** | **String** | UnionID |  |
| **platform** | **String** | 平台标识 |  |
| **pwd** | **String** | 密码，6~32位 |  |
| **nick_name** | **String** | 昵称 | [optional] |
| **avatar** | **String** | 头像 | [optional] |
| **data** | **String** | 自定义数据 | [optional] |
| **email** | **String** | 邮箱 | [optional] |
| **email_code** | **String** | 邮箱验证码（只有启用的邮箱验证码功能时，才需要传入） | [optional] |
| **phone** | **String** | 手机号 | [optional] |
| **phone_code** | **String** | 手机验证码（只有启用的手机验证码功能时，才需要传入） | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::UnionIDSignUpRequest.new(
  user_name: null,
  union_id: null,
  platform: null,
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

