# ZSGFClient::TradeSettleInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trade_settle_detail_list** | [**Array&lt;TradeSettleDetail&gt;**](TradeSettleDetail.md) |  | [optional] |
| **trade_unsettled_amount** | **String** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::TradeSettleInfo.new(
  trade_settle_detail_list: null,
  trade_unsettled_amount: null
)
```

