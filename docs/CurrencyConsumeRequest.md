# ZSGFClient::CurrencyConsumeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | 虚拟币代码 |  |
| **balance** | **Integer** | 消费额 |  |
| **remark** | **String** | 备注 | [optional] |
| **description** | **String** | 描述 | [optional] |
| **tags** | **String** | 标签 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::CurrencyConsumeRequest.new(
  currency: null,
  balance: null,
  remark: null,
  description: null,
  tags: null
)
```

