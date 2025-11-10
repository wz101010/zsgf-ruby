# ZSGFClient::CurrencyTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 货币交易记录的唯一标识符。 | [optional] |
| **from_user_id** | **Integer** | 发起交易的发送方用户ID，若为转账交易时必填。 | [optional] |
| **user_id** | **Integer** | 进行货币交易的用户ID。 | [optional] |
| **transaction_type** | **String** | 货币交易的类型，例如 &#39;消费&#39;, &#39;奖励&#39;, &#39;兑换&#39;, &#39;转账&#39; 等。 | [optional] |
| **currency_type** | **String** | 交易的货币类型，例如 &#39;USD&#39;, &#39;CNY&#39; 等。 | [optional] |
| **currency_change** | **Integer** | 货币的变动数量，正数表示增加，负数表示减少。 | [optional] |
| **currency_balance** | **Float** | 交易完成后的货币余额。 | [optional] |
| **description** | **String** | 描述货币变动的具体原因或相关交易详情。 | [optional] |
| **status** | **String** | 货币交易的当前状态，例如 &#39;成功&#39;, &#39;失败&#39;, &#39;待审核&#39; 等。 | [optional] |
| **remark** | **String** | 交易的额外信息或管理员的备注。 | [optional] |
| **tags** | **String** | 用于分类或标记交易的标签。 | [optional] |
| **create_date** | **Time** | 货币交易发生的时间，默认为当前时间。 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::CurrencyTransaction.new(
  id: null,
  from_user_id: null,
  user_id: null,
  transaction_type: null,
  currency_type: null,
  currency_change: null,
  currency_balance: null,
  description: null,
  status: null,
  remark: null,
  tags: null,
  create_date: null
)
```

