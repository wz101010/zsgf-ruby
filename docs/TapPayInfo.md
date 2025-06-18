# ZSGFClient::TapPayInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_medium_type** | **String** |  | [optional] |
| **total_discount_amount** | **String** |  | [optional] |
| **total_discount_name** | **String** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::TapPayInfo.new(
  payment_medium_type: null,
  total_discount_amount: null,
  total_discount_name: null
)
```

