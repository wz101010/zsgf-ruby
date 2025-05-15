# ZSGFClient::AlipayTradeQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **msg** | **String** |  | [optional] |
| **sub_code** | **String** |  | [optional] |
| **sub_msg** | **String** |  | [optional] |
| **is_error** | **Boolean** |  | [optional][readonly] |
| **additional_status** | **String** |  | [optional] |
| **alipay_store_id** | **String** |  | [optional] |
| **alipay_sub_merchant_id** | **String** |  | [optional] |
| **async_pay_apply_status** | **String** |  | [optional] |
| **auth_trade_pay_mode** | **String** |  | [optional] |
| **biz_settle_mode** | **String** |  | [optional] |
| **bkagent_resp_info** | [**BkAgentRespInfo**](BkAgentRespInfo.md) |  | [optional] |
| **body** | **String** |  | [optional] |
| **buyer_logon_id** | **String** |  | [optional] |
| **buyer_open_id** | **String** |  | [optional] |
| **buyer_pay_amount** | **String** |  | [optional] |
| **buyer_user_id** | **String** |  | [optional] |
| **buyer_user_name** | **String** |  | [optional] |
| **buyer_user_type** | **String** |  | [optional] |
| **cashier_type** | **String** |  | [optional] |
| **charge_amount** | **String** |  | [optional] |
| **charge_flags** | **String** |  | [optional] |
| **charge_info_list** | [**Array&lt;ChargeInfo&gt;**](ChargeInfo.md) |  | [optional] |
| **credit_biz_order_id** | **String** |  | [optional] |
| **credit_pay_mode** | **String** |  | [optional] |
| **discount_amount** | **String** |  | [optional] |
| **discount_goods_detail** | **String** |  | [optional] |
| **enterprise_pay_info** | [**EnterprisePayInfo**](EnterprisePayInfo.md) |  | [optional] |
| **ext_infos** | **String** |  | [optional] |
| **fulfillment_detail_list** | [**Array&lt;FulfillmentDetail&gt;**](FulfillmentDetail.md) |  | [optional] |
| **fund_bill_list** | [**Array&lt;TradeFundBill&gt;**](TradeFundBill.md) |  | [optional] |
| **hb_fq_pay_info** | [**HbFqPayInfo**](HbFqPayInfo.md) |  | [optional] |
| **hyb_amount** | **String** |  | [optional] |
| **industry_sepc_detail** | **String** |  | [optional] |
| **industry_sepc_detail_acc** | **String** |  | [optional] |
| **industry_sepc_detail_gov** | **String** |  | [optional] |
| **intact_charge_info_list** | [**Array&lt;IntactChargeInfo&gt;**](IntactChargeInfo.md) |  | [optional] |
| **invoice_amount** | **String** |  | [optional] |
| **mdiscount_amount** | **String** |  | [optional] |
| **medical_insurance_info** | **String** |  | [optional] |
| **open_id** | **String** |  | [optional] |
| **out_trade_no** | **String** |  | [optional] |
| **passback_params** | **String** |  | [optional] |
| **pay_amount** | **String** |  | [optional] |
| **pay_currency** | **String** |  | [optional] |
| **payment_info_with_id_list** | [**Array&lt;PaymentInfoWithId&gt;**](PaymentInfoWithId.md) |  | [optional] |
| **period_scene** | **String** |  | [optional] |
| **point_amount** | **String** |  | [optional] |
| **pre_auth_pay_amount** | **String** |  | [optional] |
| **receipt_amount** | **String** |  | [optional] |
| **receipt_currency_type** | **String** |  | [optional] |
| **req_goods_detail** | [**Array&lt;GoodsDetail&gt;**](GoodsDetail.md) |  | [optional] |
| **send_pay_date** | **String** |  | [optional] |
| **settle_amount** | **String** |  | [optional] |
| **settle_currency** | **String** |  | [optional] |
| **settle_trans_rate** | **String** |  | [optional] |
| **settlement_id** | **String** |  | [optional] |
| **store_id** | **String** |  | [optional] |
| **store_name** | **String** |  | [optional] |
| **subject** | **String** |  | [optional] |
| **tap_pay_info** | [**TapPayInfo**](TapPayInfo.md) |  | [optional] |
| **terminal_id** | **String** |  | [optional] |
| **total_amount** | **String** |  | [optional] |
| **trade_no** | **String** |  | [optional] |
| **trade_settle_info** | [**TradeSettleInfo**](TradeSettleInfo.md) |  | [optional] |
| **trade_status** | **String** |  | [optional] |
| **trans_currency** | **String** |  | [optional] |
| **trans_pay_rate** | **String** |  | [optional] |
| **voucher_detail_list** | [**Array&lt;VoucherDetail&gt;**](VoucherDetail.md) |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::AlipayTradeQueryResponse.new(
  code: null,
  msg: null,
  sub_code: null,
  sub_msg: null,
  is_error: null,
  additional_status: null,
  alipay_store_id: null,
  alipay_sub_merchant_id: null,
  async_pay_apply_status: null,
  auth_trade_pay_mode: null,
  biz_settle_mode: null,
  bkagent_resp_info: null,
  body: null,
  buyer_logon_id: null,
  buyer_open_id: null,
  buyer_pay_amount: null,
  buyer_user_id: null,
  buyer_user_name: null,
  buyer_user_type: null,
  cashier_type: null,
  charge_amount: null,
  charge_flags: null,
  charge_info_list: null,
  credit_biz_order_id: null,
  credit_pay_mode: null,
  discount_amount: null,
  discount_goods_detail: null,
  enterprise_pay_info: null,
  ext_infos: null,
  fulfillment_detail_list: null,
  fund_bill_list: null,
  hb_fq_pay_info: null,
  hyb_amount: null,
  industry_sepc_detail: null,
  industry_sepc_detail_acc: null,
  industry_sepc_detail_gov: null,
  intact_charge_info_list: null,
  invoice_amount: null,
  mdiscount_amount: null,
  medical_insurance_info: null,
  open_id: null,
  out_trade_no: null,
  passback_params: null,
  pay_amount: null,
  pay_currency: null,
  payment_info_with_id_list: null,
  period_scene: null,
  point_amount: null,
  pre_auth_pay_amount: null,
  receipt_amount: null,
  receipt_currency_type: null,
  req_goods_detail: null,
  send_pay_date: null,
  settle_amount: null,
  settle_currency: null,
  settle_trans_rate: null,
  settlement_id: null,
  store_id: null,
  store_name: null,
  subject: null,
  tap_pay_info: null,
  terminal_id: null,
  total_amount: null,
  trade_no: null,
  trade_settle_info: null,
  trade_status: null,
  trans_currency: null,
  trans_pay_rate: null,
  voucher_detail_list: null
)
```

