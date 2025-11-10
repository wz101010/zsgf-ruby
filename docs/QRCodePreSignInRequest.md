# ZSGFClient::QRCodePreSignInRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scopes** | **String** | 授权范围，长度不能超过100个字符，只能包含字母、数字和逗号 | [optional] |
| **remark** | **String** | 备注，长度不能超过200个字符 | [optional] |
| **scheme** | **String** | 方案，长度不能超过50个字符，只能包含字母和数字 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::QRCodePreSignInRequest.new(
  scopes: null,
  remark: null,
  scheme: null
)
```

