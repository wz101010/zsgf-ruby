# ZSGFClient::CurrencyApi

All URIs are relative to *https://api.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**currencies**](CurrencyApi.md#currencies) | **GET** /Currency/{appKey} | 获取货币列表 |
| [**currency**](CurrencyApi.md#currency) | **GET** /Currency/{appKey}/{id} | 获取货币详情 |
| [**currency_delete**](CurrencyApi.md#currency_delete) | **DELETE** /Currency/{appKey}/{id} | 删除货币 |
| [**currency_exchange_rate_delete**](CurrencyApi.md#currency_exchange_rate_delete) | **DELETE** /Currency/{appKey}/ExchangeRates/{id} | 删除汇率 |
| [**currency_exchange_rate_put**](CurrencyApi.md#currency_exchange_rate_put) | **PUT** /Currency/{appKey}/ExchangeRates/{code} | 更新汇率 |
| [**currency_exchange_rates**](CurrencyApi.md#currency_exchange_rates) | **GET** /Currency/{appKey}/ExchangeRates/{code} | 获取汇率列表 |
| [**currency_post**](CurrencyApi.md#currency_post) | **POST** /Currency/{appKey} | 创建新货币 |
| [**currency_put**](CurrencyApi.md#currency_put) | **PUT** /Currency/{appKey}/{id} | 更新货币信息 |
| [**currency_transactions**](CurrencyApi.md#currency_transactions) | **GET** /Currency/{appKey}/Transactions | 获取货币交易记录 |


## currencies

> <CurrencyListApiResponse> currencies(app_key)

获取货币列表

获取所有货币的列表，按ID降序排列。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::CurrencyApi.new
app_key = 'app_key_example' # String | 

begin
  # 获取货币列表
  result = api_instance.currencies(app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currencies: #{e}"
end
```

#### Using the currencies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CurrencyListApiResponse>, Integer, Hash)> currencies_with_http_info(app_key)

```ruby
begin
  # 获取货币列表
  data, status_code, headers = api_instance.currencies_with_http_info(app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CurrencyListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currencies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |

### Return type

[**CurrencyListApiResponse**](CurrencyListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## currency

> <CurrencyApiResponse> currency(id, app_key)

获取货币详情

根据货币ID获取货币的详细信息。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::CurrencyApi.new
id = 789 # Integer | 货币ID
app_key = 'app_key_example' # String | 

begin
  # 获取货币详情
  result = api_instance.currency(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currency: #{e}"
end
```

#### Using the currency_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CurrencyApiResponse>, Integer, Hash)> currency_with_http_info(id, app_key)

```ruby
begin
  # 获取货币详情
  data, status_code, headers = api_instance.currency_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CurrencyApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currency_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 货币ID |  |
| **app_key** | **String** |  |  |

### Return type

[**CurrencyApiResponse**](CurrencyApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## currency_delete

> <BooleanApiResponse> currency_delete(id, app_key)

删除货币

根据货币ID删除货币。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::CurrencyApi.new
id = 789 # Integer | 货币ID
app_key = 'app_key_example' # String | 

begin
  # 删除货币
  result = api_instance.currency_delete(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currency_delete: #{e}"
end
```

#### Using the currency_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> currency_delete_with_http_info(id, app_key)

```ruby
begin
  # 删除货币
  data, status_code, headers = api_instance.currency_delete_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currency_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 货币ID |  |
| **app_key** | **String** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## currency_exchange_rate_delete

> <BooleanApiResponse> currency_exchange_rate_delete(id, app_key)

删除汇率

根据汇率ID删除汇率。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::CurrencyApi.new
id = 789 # Integer | 汇率ID
app_key = 'app_key_example' # String | 

begin
  # 删除汇率
  result = api_instance.currency_exchange_rate_delete(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currency_exchange_rate_delete: #{e}"
end
```

#### Using the currency_exchange_rate_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> currency_exchange_rate_delete_with_http_info(id, app_key)

```ruby
begin
  # 删除汇率
  data, status_code, headers = api_instance.currency_exchange_rate_delete_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currency_exchange_rate_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 汇率ID |  |
| **app_key** | **String** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## currency_exchange_rate_put

> <Int64ApiResponse> currency_exchange_rate_put(code, app_key, opts)

更新汇率

根据货币代码更新汇率信息。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::CurrencyApi.new
code = 'code_example' # String | 货币代码
app_key = 'app_key_example' # String | 
opts = {
  exchange_rate_put_request: ZSGFClient::ExchangeRatePutRequest.new # ExchangeRatePutRequest | 汇率信息
}

begin
  # 更新汇率
  result = api_instance.currency_exchange_rate_put(code, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currency_exchange_rate_put: #{e}"
end
```

#### Using the currency_exchange_rate_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int64ApiResponse>, Integer, Hash)> currency_exchange_rate_put_with_http_info(code, app_key, opts)

```ruby
begin
  # 更新汇率
  data, status_code, headers = api_instance.currency_exchange_rate_put_with_http_info(code, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int64ApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currency_exchange_rate_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | 货币代码 |  |
| **app_key** | **String** |  |  |
| **exchange_rate_put_request** | [**ExchangeRatePutRequest**](ExchangeRatePutRequest.md) | 汇率信息 | [optional] |

### Return type

[**Int64ApiResponse**](Int64ApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## currency_exchange_rates

> <CurrencyExchangeRateApiResponse> currency_exchange_rates(code, app_key)

获取汇率列表

根据货币代码获取该货币的汇率列表。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::CurrencyApi.new
code = 'code_example' # String | 货币代码
app_key = 'app_key_example' # String | 

begin
  # 获取汇率列表
  result = api_instance.currency_exchange_rates(code, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currency_exchange_rates: #{e}"
end
```

#### Using the currency_exchange_rates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CurrencyExchangeRateApiResponse>, Integer, Hash)> currency_exchange_rates_with_http_info(code, app_key)

```ruby
begin
  # 获取汇率列表
  data, status_code, headers = api_instance.currency_exchange_rates_with_http_info(code, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CurrencyExchangeRateApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currency_exchange_rates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | 货币代码 |  |
| **app_key** | **String** |  |  |

### Return type

[**CurrencyExchangeRateApiResponse**](CurrencyExchangeRateApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## currency_post

> <Int64ApiResponse> currency_post(app_key, opts)

创建新货币

创建一个新的货币并返回其ID。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::CurrencyApi.new
app_key = 'app_key_example' # String | 
opts = {
  currency: ZSGFClient::Currency.new # Currency | 货币信息
}

begin
  # 创建新货币
  result = api_instance.currency_post(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currency_post: #{e}"
end
```

#### Using the currency_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int64ApiResponse>, Integer, Hash)> currency_post_with_http_info(app_key, opts)

```ruby
begin
  # 创建新货币
  data, status_code, headers = api_instance.currency_post_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int64ApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currency_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **currency** | [**Currency**](Currency.md) | 货币信息 | [optional] |

### Return type

[**Int64ApiResponse**](Int64ApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## currency_put

> <BooleanApiResponse> currency_put(id, app_key, opts)

更新货币信息

根据货币ID更新货币的详细信息。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::CurrencyApi.new
id = 789 # Integer | 货币ID
app_key = 'app_key_example' # String | 
opts = {
  currency: ZSGFClient::Currency.new # Currency | 货币信息
}

begin
  # 更新货币信息
  result = api_instance.currency_put(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currency_put: #{e}"
end
```

#### Using the currency_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> currency_put_with_http_info(id, app_key, opts)

```ruby
begin
  # 更新货币信息
  data, status_code, headers = api_instance.currency_put_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currency_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 货币ID |  |
| **app_key** | **String** |  |  |
| **currency** | [**Currency**](Currency.md) | 货币信息 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## currency_transactions

> <CurrencyTransactionListApiResponse> currency_transactions(app_key, opts)

获取货币交易记录

根据用户ID、交易类型、货币代码、时间范围等条件获取货币交易记录。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::CurrencyApi.new
app_key = 'app_key_example' # String | 
opts = {
  user_id: 789, # Integer | 用户ID
  trans_type: 'trans_type_example', # String | 交易类型
  cur_code: 'cur_code_example', # String | 货币代码
  start_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 开始时间
  end_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 结束时间
  skip: 56, # Integer | 跳过的条数
  take: 56 # Integer | 拉取的条数
}

begin
  # 获取货币交易记录
  result = api_instance.currency_transactions(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currency_transactions: #{e}"
end
```

#### Using the currency_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CurrencyTransactionListApiResponse>, Integer, Hash)> currency_transactions_with_http_info(app_key, opts)

```ruby
begin
  # 获取货币交易记录
  data, status_code, headers = api_instance.currency_transactions_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CurrencyTransactionListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling CurrencyApi->currency_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **user_id** | **Integer** | 用户ID | [optional] |
| **trans_type** | **String** | 交易类型 | [optional] |
| **cur_code** | **String** | 货币代码 | [optional] |
| **start_time** | **Time** | 开始时间 | [optional] |
| **end_time** | **Time** | 结束时间 | [optional] |
| **skip** | **Integer** | 跳过的条数 | [optional] |
| **take** | **Integer** | 拉取的条数 | [optional] |

### Return type

[**CurrencyTransactionListApiResponse**](CurrencyTransactionListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

