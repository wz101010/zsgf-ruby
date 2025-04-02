# ZSGFClient::AppUserResetPwdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **code** | **String** |  |  |
| **pwd** | **String** |  |  |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::AppUserResetPwdRequest.new(
  phone: null,
  email: null,
  code: null,
  pwd: null
)
```

