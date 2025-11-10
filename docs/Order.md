# ZSGFClient::Order

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 订单的唯一标识符。 | [optional] |
| **user_id** | **Integer** | 创建订单的用户ID。 | [optional] |
| **pay_type** | **String** | 订单的支付类型，例如 &#39;信用卡&#39;, &#39;支付宝&#39;, &#39;微信支付&#39; 等。 | [optional] |
| **amount** | **Float** | 订单的总金额。 | [optional] |
| **order_no** | **String** | 订单的唯一编号，通常由系统生成。 | [optional] |
| **trade_no** | **String** | 与订单关联的交易编号，通常由支付平台提供。 | [optional] |
| **status** | **String** | 订单的当前状态，例如 &#39;待支付&#39;, &#39;已完成&#39;, &#39;已取消&#39; 等。 | [optional] |
| **product_type** | **String** | 订单中商品的类型分类。 | [optional] |
| **product_id** | **String** | 订单中商品的唯一标识符。 | [optional] |
| **product_name** | **String** | 订单中商品的名称。 | [optional] |
| **allow_refund** | **Boolean** | 指示订单是否允许进行退款操作。 | [optional] |
| **allow_refund_until** | **Time** | 订单允许进行退款操作的截止时间。 | [optional] |
| **tags** | **String** | 用于分类或标记订单的标签。 | [optional] |
| **remark** | **String** | 订单的额外备注信息。 | [optional] |
| **description** | **String** | 订单的详细描述信息。 | [optional] |
| **order_pay_time** | **Time** | 订单完成支付的时间。 | [optional] |
| **expire_time** | **Time** | 订单的过期时间，超过该时间订单将自动取消。 | [optional] |
| **create_date** | **Time** | 订单的创建时间，默认为当前时间。 | [optional] |
| **last_update** | **Time** | 订单的最后更新时间，默认为当前时间。 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::Order.new(
  id: null,
  user_id: null,
  pay_type: null,
  amount: null,
  order_no: null,
  trade_no: null,
  status: null,
  product_type: null,
  product_id: null,
  product_name: null,
  allow_refund: null,
  allow_refund_until: null,
  tags: null,
  remark: null,
  description: null,
  order_pay_time: null,
  expire_time: null,
  create_date: null,
  last_update: null
)
```

