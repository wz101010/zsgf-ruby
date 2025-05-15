# ZSGFClient::ReturnPageNotifyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | 应用ID | [optional] |
| **auth_app_id** | **String** | 授权应用ID | [optional] |
| **charset** | **String** | 字符集 | [optional] |
| **method** | **String** | 接口名称 | [optional] |
| **out_trade_no** | **String** | 商户订单号 | [optional] |
| **seller_id** | **String** | 卖家支付宝用户号 | [optional] |
| **sign** | **String** | 签名 | [optional] |
| **sign_type** | **String** | 签名类型 | [optional] |
| **timestamp** | **String** | 时间戳 | [optional] |
| **total_amount** | **String** | 订单总金额 | [optional] |
| **trade_no** | **String** | 支付宝交易号 | [optional] |
| **version** | **String** | 接口版本 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::ReturnPageNotifyRequest.new(
  app_id: null,
  auth_app_id: null,
  charset: null,
  method: null,
  out_trade_no: null,
  seller_id: null,
  sign: null,
  sign_type: null,
  timestamp: null,
  total_amount: null,
  trade_no: null,
  version: null
)
```

