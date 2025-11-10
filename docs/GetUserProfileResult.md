# ZSGFClient::GetUserProfileResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**User**](User.md) |  | [optional] |
| **currencies** | [**Array&lt;UserCurrency&gt;**](UserCurrency.md) |  | [optional] |
| **role** | **String** |  | [optional] |
| **location** | [**GeoLocation**](GeoLocation.md) |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::GetUserProfileResult.new(
  user: null,
  currencies: null,
  role: null,
  location: null
)
```

