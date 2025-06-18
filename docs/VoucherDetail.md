# ZSGFClient::VoucherDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **memo** | **String** |  | [optional] |
| **merchant_contribute** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **other_contribute** | **String** |  | [optional] |
| **other_contribute_detail** | [**Array&lt;ContributeDetail&gt;**](ContributeDetail.md) |  | [optional] |
| **purchase_ant_contribute** | **String** |  | [optional] |
| **purchase_buyer_contribute** | **String** |  | [optional] |
| **purchase_merchant_contribute** | **String** |  | [optional] |
| **template_id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::VoucherDetail.new(
  amount: null,
  id: null,
  memo: null,
  merchant_contribute: null,
  name: null,
  other_contribute: null,
  other_contribute_detail: null,
  purchase_ant_contribute: null,
  purchase_buyer_contribute: null,
  purchase_merchant_contribute: null,
  template_id: null,
  type: null
)
```

