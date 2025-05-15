# ZSGFClient::ExchangeCurrencyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_currency** | **String** | 源虚拟币代码 |  |
| **currency** | **String** | 目标虚拟币代码 |  |
| **balance** | **Integer** | 兑换额 |  |
| **remark** | **String** | 备注 | [optional] |
| **description** | **String** | 描述 | [optional] |
| **tags** | **String** | 标签 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::ExchangeCurrencyRequest.new(
  from_currency: null,
  currency: null,
  balance: null,
  remark: null,
  description: null,
  tags: null
)
```

