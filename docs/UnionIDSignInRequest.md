# ZSGFClient::UnionIDSignInRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **union_id** | **String** | UnionID，长度必须在1到99个字符之间，只能包含字母、数字、下划线和连字符 |  |
| **platform** | **String** | 平台，长度必须在1到20个字符之间，只能包含字母和数字 |  |
| **two_factor_code** | **String** | 双因素认证代码，如果启用双因素认证登录，则必填，长度必须为6个字符，只能包含数字 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::UnionIDSignInRequest.new(
  union_id: null,
  platform: null,
  two_factor_code: null
)
```

