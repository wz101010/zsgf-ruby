# ZSGFClient::UserCurrency

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 用户资产的唯一标识符。 | [optional] |
| **user_id** | **Integer** | 与用户资产关联的用户ID。 | [optional] |
| **currency_code** | **String** | 用户资产的货币代码，例如 &#39;USD&#39;, &#39;CNY&#39; 等。 | [optional] |
| **balance** | **Integer** | 用户的账户余额，表示当前持有的货币数量。 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::UserCurrency.new(
  id: null,
  user_id: null,
  currency_code: null,
  balance: null
)
```

