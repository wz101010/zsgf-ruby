# ZSGFClient::SignInRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_name** | **String** | 用户名，长度必须在6到32个字符之间，只能包含字母、数字、下划线和连字符 |  |
| **pwd** | **String** | 用户密码，长度必须在6到50个字符之间，可以包含数字、大小写字母、下划线、连字符和特殊符号 |  |
| **two_factor_code** | **String** | 双因素认证代码，如果启用双因素认证登录，则必填，长度必须为6个字符，只能包含数字 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::SignInRequest.new(
  user_name: null,
  pwd: null,
  two_factor_code: null
)
```

