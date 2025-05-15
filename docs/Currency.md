# ZSGFClient::Currency

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 货币的唯一标识符。 | [optional] |
| **name** | **String** | 货币的名称，例如 &#39;人民币&#39;, &#39;美元&#39; 等。 | [optional] |
| **code** | **String** | 货币的ISO标准代码，例如 &#39;CNY&#39;, &#39;USD&#39; 等。 | [optional] |
| **symbol** | **String** | 货币的符号，例如 &#39;$&#39;, &#39;€&#39;, &#39;¥&#39; 等。 | [optional] |
| **issuer** | **String** | 发行该货币的机构或国家名称。 | [optional] |
| **currency_type** | **String** | 货币的类型，例如 &#39;法定货币&#39;, &#39;加密货币&#39; 等。 | [optional] |
| **tags** | **String** | 用于分类或标记货币的标签。 | [optional] |
| **status** | **Boolean** | 指示货币当前是否可用。 | [optional] |
| **enable_virtual_recharge** | **Boolean** | 指示该货币是否允许进行虚拟充值。 | [optional] |
| **enable_virtual_consume** | **Boolean** | 指示该货币是否允许进行虚拟消费。 | [optional] |
| **description** | **String** | 货币的详细描述信息。 | [optional] |
| **fiat_exchange_rate** | **Integer** | 该货币与法定货币的兑换比率。 | [optional] |
| **fiat_daily_recharge_limit** | **Integer** | 每日通过法定货币充值的最大限额。 | [optional] |
| **total_supply** | **Integer** | 货币的总供应量，0 表示无限制。 | [optional] |
| **create_date** | **Time** | 货币记录的创建日期，默认为当前时间。 | [optional] |
| **last_update** | **Time** | 货币记录的最后更新日期，默认为当前时间。 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::Currency.new(
  id: null,
  name: null,
  code: null,
  symbol: null,
  issuer: null,
  currency_type: null,
  tags: null,
  status: null,
  enable_virtual_recharge: null,
  enable_virtual_consume: null,
  description: null,
  fiat_exchange_rate: null,
  fiat_daily_recharge_limit: null,
  total_supply: null,
  create_date: null,
  last_update: null
)
```

