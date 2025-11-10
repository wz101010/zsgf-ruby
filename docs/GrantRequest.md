# ZSGFClient::GrantRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **redirect_uri** | **String** | 返回地址。默认无限制，也可在【安全-开放认证网址白名单】配置 | [optional] |
| **grant_type** | **String** | 授权类型。可选：email、phone、unionid、account |  |
| **scopes** | **String** | 自定义授权范围，用英文空格分隔 |  |
| **user_name** | **String** | 用户名。授权类型为：email/phone/account必填 | [optional] |
| **password** | **String** | 登录密码。授权类型为：email/phone/account必填 | [optional] |
| **union_id** | **String** | unionId。授权类型为：unionid必填 | [optional] |
| **platform** | **String** | 平台。授权类型为：unionid必填 | [optional] |
| **expire_in_days** | **Integer** | 授权有效期。1~99天 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::GrantRequest.new(
  redirect_uri: null,
  grant_type: null,
  scopes: null,
  user_name: null,
  password: null,
  union_id: null,
  platform: null,
  expire_in_days: null
)
```

