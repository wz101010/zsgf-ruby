# ZSGFClient::UserCurrencyApi

All URIs are relative to *https://api-dev.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**user_currencies**](UserCurrencyApi.md#user_currencies) | **GET** /UserCurrency/{appKey}/{id} | 获取用户资产 |
| [**user_currency_consume**](UserCurrencyApi.md#user_currency_consume) | **POST** /UserCurrency/{appKey}/CurrencyConsume | 消费虚拟币 |
| [**user_currency_exchange**](UserCurrencyApi.md#user_currency_exchange) | **POST** /UserCurrency/{appKey}/CurrencyExchange | 兑换虚拟币 |
| [**user_currency_recharge**](UserCurrencyApi.md#user_currency_recharge) | **POST** /UserCurrency/{appKey}/CurrencyRecharge | 充值虚拟币 |
| [**user_currency_transactions**](UserCurrencyApi.md#user_currency_transactions) | **GET** /UserCurrency/{appKey}/CurrencyTransactions | 虚拟币交易记录 |


## user_currencies

> <UserCurrencyListApiResponse> user_currencies(app_key, id, opts)

获取用户资产

获取用户的资产列表

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserCurrencyApi.new
app_key = 'app_key_example' # String | 
id = 'id_example' # String | 
opts = {
  user_id: 'user_id_example' # String | 
}

begin
  # 获取用户资产
  result = api_instance.user_currencies(app_key, id, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserCurrencyApi->user_currencies: #{e}"
end
```

#### Using the user_currencies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserCurrencyListApiResponse>, Integer, Hash)> user_currencies_with_http_info(app_key, id, opts)

```ruby
begin
  # 获取用户资产
  data, status_code, headers = api_instance.user_currencies_with_http_info(app_key, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserCurrencyListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserCurrencyApi->user_currencies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **id** | **String** |  |  |
| **user_id** | **String** |  | [optional] |

### Return type

[**UserCurrencyListApiResponse**](UserCurrencyListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_currency_consume

> <BooleanApiResponse> user_currency_consume(nonce, timestamp, signature, app_key, opts)

消费虚拟币

根据提供的参数进行虚拟币消费

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserCurrencyApi.new
nonce = 'nonce_example' # String | 随机数
timestamp = 789 # Integer | 时间戳（允许与服务器时间误差在1分钟内）
signature = 'signature_example' # String | 签名
app_key = 'app_key_example' # String | 
opts = {
  user_id: 'user_id_example', # String | 
  currency_consume_request: ZSGFClient::CurrencyConsumeRequest.new({currency: 'currency_example', balance: 37}) # CurrencyConsumeRequest | 消费请求参数
}

begin
  # 消费虚拟币
  result = api_instance.user_currency_consume(nonce, timestamp, signature, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserCurrencyApi->user_currency_consume: #{e}"
end
```

#### Using the user_currency_consume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_currency_consume_with_http_info(nonce, timestamp, signature, app_key, opts)

```ruby
begin
  # 消费虚拟币
  data, status_code, headers = api_instance.user_currency_consume_with_http_info(nonce, timestamp, signature, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserCurrencyApi->user_currency_consume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nonce** | **String** | 随机数 |  |
| **timestamp** | **Integer** | 时间戳（允许与服务器时间误差在1分钟内） |  |
| **signature** | **String** | 签名 |  |
| **app_key** | **String** |  |  |
| **user_id** | **String** |  | [optional] |
| **currency_consume_request** | [**CurrencyConsumeRequest**](CurrencyConsumeRequest.md) | 消费请求参数 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_currency_exchange

> <BooleanApiResponse> user_currency_exchange(nonce, timestamp, signature, app_key, opts)

兑换虚拟币

根据提供的参数进行虚拟币兑换

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserCurrencyApi.new
nonce = 'nonce_example' # String | 随机数
timestamp = 789 # Integer | 时间戳（允许与服务器时间误差在1分钟内）
signature = 'signature_example' # String | 签名
app_key = 'app_key_example' # String | 
opts = {
  user_id: 'user_id_example', # String | 
  exchange_currency_request: ZSGFClient::ExchangeCurrencyRequest.new({from_currency: 'from_currency_example', currency: 'currency_example', balance: 37}) # ExchangeCurrencyRequest | 兑换请求参数
}

begin
  # 兑换虚拟币
  result = api_instance.user_currency_exchange(nonce, timestamp, signature, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserCurrencyApi->user_currency_exchange: #{e}"
end
```

#### Using the user_currency_exchange_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_currency_exchange_with_http_info(nonce, timestamp, signature, app_key, opts)

```ruby
begin
  # 兑换虚拟币
  data, status_code, headers = api_instance.user_currency_exchange_with_http_info(nonce, timestamp, signature, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserCurrencyApi->user_currency_exchange_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nonce** | **String** | 随机数 |  |
| **timestamp** | **Integer** | 时间戳（允许与服务器时间误差在1分钟内） |  |
| **signature** | **String** | 签名 |  |
| **app_key** | **String** |  |  |
| **user_id** | **String** |  | [optional] |
| **exchange_currency_request** | [**ExchangeCurrencyRequest**](ExchangeCurrencyRequest.md) | 兑换请求参数 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_currency_recharge

> <BooleanApiResponse> user_currency_recharge(nonce, timestamp, signature, app_key, opts)

充值虚拟币

根据提供的参数进行虚拟币充值

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserCurrencyApi.new
nonce = 'nonce_example' # String | 随机数
timestamp = 789 # Integer | 时间戳（允许与服务器时间误差在1分钟内）
signature = 'signature_example' # String | 签名
app_key = 'app_key_example' # String | 
opts = {
  user_id: 'user_id_example', # String | 
  recharge_point_request: ZSGFClient::RechargePointRequest.new({currency: 'currency_example', balance: 37}) # RechargePointRequest | 充值请求参数
}

begin
  # 充值虚拟币
  result = api_instance.user_currency_recharge(nonce, timestamp, signature, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserCurrencyApi->user_currency_recharge: #{e}"
end
```

#### Using the user_currency_recharge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_currency_recharge_with_http_info(nonce, timestamp, signature, app_key, opts)

```ruby
begin
  # 充值虚拟币
  data, status_code, headers = api_instance.user_currency_recharge_with_http_info(nonce, timestamp, signature, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserCurrencyApi->user_currency_recharge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nonce** | **String** | 随机数 |  |
| **timestamp** | **Integer** | 时间戳（允许与服务器时间误差在1分钟内） |  |
| **signature** | **String** | 签名 |  |
| **app_key** | **String** |  |  |
| **user_id** | **String** |  | [optional] |
| **recharge_point_request** | [**RechargePointRequest**](RechargePointRequest.md) | 充值请求参数 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_currency_transactions

> <UserCurrencyCurrencyTransResultApiResponse> user_currency_transactions(app_key, opts)

虚拟币交易记录

根据提供的参数获取虚拟币交易记录

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserCurrencyApi.new
app_key = 'app_key_example' # String | 
opts = {
  trans_type: 'trans_type_example', # String | 交易类型
  cur_code: 'cur_code_example', # String | 货币代码
  start_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 开始时间
  end_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 结束时间
  skip: 56, # Integer | 跳过的条数
  take: 56, # Integer | 拉取的条数
  user_id: 'user_id_example' # String | 
}

begin
  # 虚拟币交易记录
  result = api_instance.user_currency_transactions(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserCurrencyApi->user_currency_transactions: #{e}"
end
```

#### Using the user_currency_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserCurrencyCurrencyTransResultApiResponse>, Integer, Hash)> user_currency_transactions_with_http_info(app_key, opts)

```ruby
begin
  # 虚拟币交易记录
  data, status_code, headers = api_instance.user_currency_transactions_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserCurrencyCurrencyTransResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserCurrencyApi->user_currency_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **trans_type** | **String** | 交易类型 | [optional] |
| **cur_code** | **String** | 货币代码 | [optional] |
| **start_time** | **Time** | 开始时间 | [optional] |
| **end_time** | **Time** | 结束时间 | [optional] |
| **skip** | **Integer** | 跳过的条数 | [optional] |
| **take** | **Integer** | 拉取的条数 | [optional] |
| **user_id** | **String** |  | [optional] |

### Return type

[**UserCurrencyCurrencyTransResultApiResponse**](UserCurrencyCurrencyTransResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

