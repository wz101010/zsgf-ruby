# ZSGFClient::AlipayCreateOrderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_no** | **String** | 自定义订单号 |  |
| **amount** | **Float** | 订单金额。例如：0.01 |  |
| **subject** | **String** | 商品名称 |  |
| **return_url** | **String** | 支付完成后返回的URL地址 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::AlipayCreateOrderRequest.new(
  order_no: null,
  amount: null,
  subject: null,
  return_url: null
)
```

