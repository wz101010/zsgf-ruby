# ZSGFClient::CurrencyExchangeRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 货币兑换比率的唯一标识符。 | [optional] |
| **from_currency_code** | **String** | 兑换的源货币代码，例如 &#39;USD&#39;。 | [optional] |
| **to_currency_code** | **String** | 兑换的目标货币代码，例如 &#39;CNY&#39;。 | [optional] |
| **exchange_rate** | **Integer** | 从源货币到目标货币的兑换比率。例如，1 USD &#x3D; 6.5 CNY。 | [optional] |
| **description** | **String** | 兑换比率的详细描述信息。 | [optional] |
| **create_date** | **Time** | 货币兑换比率的创建日期，默认为当前时间。 | [optional] |
| **last_update** | **Time** | 货币兑换比率的最后更新日期，默认为当前时间。 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::CurrencyExchangeRate.new(
  id: null,
  from_currency_code: null,
  to_currency_code: null,
  exchange_rate: null,
  description: null,
  create_date: null,
  last_update: null
)
```

