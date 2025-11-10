# ZSGFClient::ChargeInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charge_fee** | **String** |  | [optional] |
| **charge_type** | **String** |  | [optional] |
| **is_rating_on_switch** | **String** |  | [optional] |
| **is_rating_on_trade_receiver** | **String** |  | [optional] |
| **original_charge_fee** | **String** |  | [optional] |
| **sub_fee_detail_list** | [**Array&lt;SubFee&gt;**](SubFee.md) |  | [optional] |
| **switch_fee_rate** | **String** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::ChargeInfo.new(
  charge_fee: null,
  charge_type: null,
  is_rating_on_switch: null,
  is_rating_on_trade_receiver: null,
  original_charge_fee: null,
  sub_fee_detail_list: null,
  switch_fee_rate: null
)
```

