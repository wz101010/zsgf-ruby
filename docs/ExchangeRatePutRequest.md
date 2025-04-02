# ZSGFClient::ExchangeRatePutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to_currency_code** | **String** |  | [optional] |
| **exchange_rate** | **Integer** |  | [optional] |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::ExchangeRatePutRequest.new(
  to_currency_code: null,
  exchange_rate: null,
  description: null
)
```

