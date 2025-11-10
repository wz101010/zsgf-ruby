# ZSGFClient::AlipayTradeRefundResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **msg** | **String** |  | [optional] |
| **sub_code** | **String** |  | [optional] |
| **sub_msg** | **String** |  | [optional] |
| **body** | **String** |  | [optional] |
| **is_error** | **Boolean** |  | [optional][readonly] |
| **buyer_logon_id** | **String** |  | [optional] |
| **buyer_open_id** | **String** |  | [optional] |
| **buyer_user_id** | **String** |  | [optional] |
| **fund_change** | **String** |  | [optional] |
| **gmt_refund_pay** | **String** |  | [optional] |
| **has_deposit_back** | **String** |  | [optional] |
| **open_id** | **String** |  | [optional] |
| **out_trade_no** | **String** |  | [optional] |
| **pre_auth_cancel_fee** | **String** |  | [optional] |
| **present_refund_buyer_amount** | **String** |  | [optional] |
| **present_refund_discount_amount** | **String** |  | [optional] |
| **present_refund_mdiscount_amount** | **String** |  | [optional] |
| **refund_charge_amount** | **String** |  | [optional] |
| **refund_charge_info_list** | [**Array&lt;RefundChargeInfo&gt;**](RefundChargeInfo.md) |  | [optional] |
| **refund_currency** | **String** |  | [optional] |
| **refund_detail_item_list** | [**Array&lt;TradeFundBill&gt;**](TradeFundBill.md) |  | [optional] |
| **refund_fee** | **String** |  | [optional] |
| **refund_hyb_amount** | **String** |  | [optional] |
| **refund_preset_paytool_list** | [**PresetPayToolInfo**](PresetPayToolInfo.md) |  | [optional] |
| **refund_settlement_id** | **String** |  | [optional] |
| **refund_voucher_detail_list** | [**Array&lt;VoucherDetail&gt;**](VoucherDetail.md) |  | [optional] |
| **send_back_fee** | **String** |  | [optional] |
| **store_name** | **String** |  | [optional] |
| **trade_no** | **String** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::AlipayTradeRefundResponse.new(
  code: null,
  msg: null,
  sub_code: null,
  sub_msg: null,
  body: null,
  is_error: null,
  buyer_logon_id: null,
  buyer_open_id: null,
  buyer_user_id: null,
  fund_change: null,
  gmt_refund_pay: null,
  has_deposit_back: null,
  open_id: null,
  out_trade_no: null,
  pre_auth_cancel_fee: null,
  present_refund_buyer_amount: null,
  present_refund_discount_amount: null,
  present_refund_mdiscount_amount: null,
  refund_charge_amount: null,
  refund_charge_info_list: null,
  refund_currency: null,
  refund_detail_item_list: null,
  refund_fee: null,
  refund_hyb_amount: null,
  refund_preset_paytool_list: null,
  refund_settlement_id: null,
  refund_voucher_detail_list: null,
  send_back_fee: null,
  store_name: null,
  trade_no: null
)
```

