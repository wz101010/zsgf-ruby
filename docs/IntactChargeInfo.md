# ZSGFClient::IntactChargeInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actual_amount** | **String** |  | [optional] |
| **bill_type** | **String** |  | [optional] |
| **gmt_pay** | **String** |  | [optional] |
| **is_refund** | **Boolean** |  | [optional] |
| **out_biz_no** | **String** |  | [optional] |
| **plan_amount** | **String** |  | [optional] |
| **product_name** | **String** |  | [optional] |
| **service_target** | **String** |  | [optional] |
| **service_type** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **target_account_no** | **String** |  | [optional] |
| **target_user_id** | **String** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::IntactChargeInfo.new(
  actual_amount: null,
  bill_type: null,
  gmt_pay: null,
  is_refund: null,
  out_biz_no: null,
  plan_amount: null,
  product_name: null,
  service_target: null,
  service_type: null,
  status: null,
  target_account_no: null,
  target_user_id: null
)
```

