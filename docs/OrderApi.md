# ZSGFClient::OrderApi

All URIs are relative to *https://api-dev.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**order**](OrderApi.md#order) | **GET** /Order/{appKey}/{id} | 获取订单详情 |
| [**order_create**](OrderApi.md#order_create) | **POST** /Order/{appKey}/Create | 创建订单 |
| [**orders**](OrderApi.md#orders) | **GET** /Order/{appKey} | 获取订单列表 |


## order

> <OrderApiResponse> order(id, app_key)

获取订单详情

根据订单ID获取订单详情

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::OrderApi.new
id = 789 # Integer | 订单ID
app_key = 'app_key_example' # String | 

begin
  # 获取订单详情
  result = api_instance.order(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling OrderApi->order: #{e}"
end
```

#### Using the order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderApiResponse>, Integer, Hash)> order_with_http_info(id, app_key)

```ruby
begin
  # 获取订单详情
  data, status_code, headers = api_instance.order_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling OrderApi->order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 订单ID |  |
| **app_key** | **String** |  |  |

### Return type

[**OrderApiResponse**](OrderApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## order_create

> <CreateOrderResultApiResponse> order_create(app_key, opts)

创建订单

根据请求参数创建订单

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::OrderApi.new
app_key = 'app_key_example' # String | 
opts = {
  create_order_request: ZSGFClient::CreateOrderRequest.new({amount: 3.56, product_name: 'product_name_example', product_type: 'product_type_example', product_id: 'product_id_example'}) # CreateOrderRequest | 订单创建请求
}

begin
  # 创建订单
  result = api_instance.order_create(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling OrderApi->order_create: #{e}"
end
```

#### Using the order_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrderResultApiResponse>, Integer, Hash)> order_create_with_http_info(app_key, opts)

```ruby
begin
  # 创建订单
  data, status_code, headers = api_instance.order_create_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrderResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling OrderApi->order_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **create_order_request** | [**CreateOrderRequest**](CreateOrderRequest.md) | 订单创建请求 | [optional] |

### Return type

[**CreateOrderResultApiResponse**](CreateOrderResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## orders

> <OrderListResultApiResponse> orders(app_key, opts)

获取订单列表

根据查询条件获取订单列表

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::OrderApi.new
app_key = 'app_key_example' # String | 
opts = {
  status: 'status_example', # String | 订单状态
  order_no: 'order_no_example', # String | 系统订单号
  trade_no: 'trade_no_example', # String | 支付平台单号
  user_id: 789, # Integer | 用户ID
  pct_type: 'pct_type_example', # String | 商品类型
  pct_id: 'pct_id_example', # String | 商品ID
  pct_name: 'pct_name_example', # String | 商品名称
  skip: 56, # Integer | 跳过的条数
  take: 56 # Integer | 拉取的条数
}

begin
  # 获取订单列表
  result = api_instance.orders(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling OrderApi->orders: #{e}"
end
```

#### Using the orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderListResultApiResponse>, Integer, Hash)> orders_with_http_info(app_key, opts)

```ruby
begin
  # 获取订单列表
  data, status_code, headers = api_instance.orders_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderListResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling OrderApi->orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **status** | **String** | 订单状态 | [optional] |
| **order_no** | **String** | 系统订单号 | [optional] |
| **trade_no** | **String** | 支付平台单号 | [optional] |
| **user_id** | **Integer** | 用户ID | [optional] |
| **pct_type** | **String** | 商品类型 | [optional] |
| **pct_id** | **String** | 商品ID | [optional] |
| **pct_name** | **String** | 商品名称 | [optional] |
| **skip** | **Integer** | 跳过的条数 | [optional] |
| **take** | **Integer** | 拉取的条数 | [optional] |

### Return type

[**OrderListResultApiResponse**](OrderListResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

