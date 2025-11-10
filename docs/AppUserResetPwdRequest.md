# ZSGFClient::AppUserResetPwdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pwd** | **String** | 新的密码 |  |
| **oldpwd** | **String** | 旧的密码 |  |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::AppUserResetPwdRequest.new(
  pwd: null,
  oldpwd: null
)
```

