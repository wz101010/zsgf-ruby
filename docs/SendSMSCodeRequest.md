# ZSGFClient::SendSMSCodeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** | 手机号 |  |
| **type** | **String** | 用途。可选值：signup/forgetpwd |  |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::SendSMSCodeRequest.new(
  phone: null,
  type: null
)
```

