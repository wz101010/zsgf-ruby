# ZSGFClient::SendEmailCodeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | 用户邮箱地址 |  |
| **type** | **String** | 用途。可选值：signup、forgetpwd、signin、reset |  |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::SendEmailCodeRequest.new(
  email: null,
  type: null
)
```

