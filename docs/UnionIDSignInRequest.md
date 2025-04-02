# ZSGFClient::UnionIDSignInRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **union_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **two_factor_code** | **String** | 如果启用双因素认证登录，则必填 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::UnionIDSignInRequest.new(
  union_id: null,
  platform: null,
  two_factor_code: null
)
```

