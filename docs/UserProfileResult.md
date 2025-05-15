# ZSGFClient::UserProfileResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**User**](User.md) |  | [optional] |
| **currencies** | [**Array&lt;UserCurrency&gt;**](UserCurrency.md) |  | [optional] |
| **role** | **String** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::UserProfileResult.new(
  user: null,
  currencies: null,
  role: null
)
```

