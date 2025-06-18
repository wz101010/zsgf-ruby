# ZSGFClient::SendSMSCodeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** | 用户手机号 |  |
| **type** | **String** | 用途。可选值：signup（注册）/forgetpwd（忘记密码） |  |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::SendSMSCodeRequest.new(
  phone: null,
  type: null
)
```

