# ZSGFClient::SendEmailCodeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **type** | **String** | 用途。可选值：signup/forgetpwd |  |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::SendEmailCodeRequest.new(
  email: null,
  type: null
)
```

