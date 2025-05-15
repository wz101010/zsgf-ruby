# ZSGFClient::RefundChargeInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charge_type** | **String** |  | [optional] |
| **refund_charge_fee** | **String** |  | [optional] |
| **refund_sub_fee_detail_list** | [**Array&lt;RefundSubFee&gt;**](RefundSubFee.md) |  | [optional] |
| **switch_fee_rate** | **String** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::RefundChargeInfo.new(
  charge_type: null,
  refund_charge_fee: null,
  refund_sub_fee_detail_list: null,
  switch_fee_rate: null
)
```

