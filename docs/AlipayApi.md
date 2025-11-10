# ZSGFClient::AlipayApi

All URIs are relative to *https://api-dev.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**alipay_create_order**](AlipayApi.md#alipay_create_order) | **POST** /Alipay/{appKey}/CreateOrder | 创建当面付订单 |
| [**alipay_create_order_page_pay**](AlipayApi.md#alipay_create_order_page_pay) | **POST** /Alipay/{appKey}/CreateOrderPagePay | 创建PC支付订单 |
| [**alipay_create_order_wap_pay**](AlipayApi.md#alipay_create_order_wap_pay) | **POST** /Alipay/{appKey}/CreateOrderWapPay | 创建WAP支付订单 |
| [**alipay_order_detail**](AlipayApi.md#alipay_order_detail) | **GET** /Alipay/{appKey}/OrderDetail | 获取订单详情 |
| [**alipay_order_refund**](AlipayApi.md#alipay_order_refund) | **POST** /Alipay/{appKey}/OrderRefund | 发起订单退款 |
| [**alipay_return_page_notify**](AlipayApi.md#alipay_return_page_notify) | **POST** /Alipay/{appKey}/ReturnPageNotify | 支付成功回调通知 |


## alipay_create_order

> <StringApiResponse> alipay_create_order(app_key, opts)

创建当面付订单

创建一个当面付订单，并返回支付二维码。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AlipayApi.new
app_key = 'app_key_example' # String | 
opts = {
  alipay_create_order_request: ZSGFClient::AlipayCreateOrderRequest.new({order_no: 'order_no_example', amount: 3.56, subject: 'subject_example'}) # AlipayCreateOrderRequest | 
}

begin
  # 创建当面付订单
  result = api_instance.alipay_create_order(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AlipayApi->alipay_create_order: #{e}"
end
```

#### Using the alipay_create_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringApiResponse>, Integer, Hash)> alipay_create_order_with_http_info(app_key, opts)

```ruby
begin
  # 创建当面付订单
  data, status_code, headers = api_instance.alipay_create_order_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AlipayApi->alipay_create_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **alipay_create_order_request** | [**AlipayCreateOrderRequest**](AlipayCreateOrderRequest.md) |  | [optional] |

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## alipay_create_order_page_pay

> <StringApiResponse> alipay_create_order_page_pay(app_key, opts)

创建PC支付订单

创建一个PC支付订单，并返回支付页面。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AlipayApi.new
app_key = 'app_key_example' # String | 
opts = {
  alipay_create_order_page_pay_request: ZSGFClient::AlipayCreateOrderPagePayRequest.new({order_no: 'order_no_example', amount: 3.56, subject: 'subject_example'}) # AlipayCreateOrderPagePayRequest | 
}

begin
  # 创建PC支付订单
  result = api_instance.alipay_create_order_page_pay(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AlipayApi->alipay_create_order_page_pay: #{e}"
end
```

#### Using the alipay_create_order_page_pay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringApiResponse>, Integer, Hash)> alipay_create_order_page_pay_with_http_info(app_key, opts)

```ruby
begin
  # 创建PC支付订单
  data, status_code, headers = api_instance.alipay_create_order_page_pay_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AlipayApi->alipay_create_order_page_pay_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **alipay_create_order_page_pay_request** | [**AlipayCreateOrderPagePayRequest**](AlipayCreateOrderPagePayRequest.md) |  | [optional] |

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## alipay_create_order_wap_pay

> <StringApiResponse> alipay_create_order_wap_pay(app_key, opts)

创建WAP支付订单

创建一个WAP支付订单，并返回支付页面。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AlipayApi.new
app_key = 'app_key_example' # String | 
opts = {
  alipay_create_order_wap_pay_request: ZSGFClient::AlipayCreateOrderWapPayRequest.new({order_no: 'order_no_example', amount: 3.56, subject: 'subject_example'}) # AlipayCreateOrderWapPayRequest | 
}

begin
  # 创建WAP支付订单
  result = api_instance.alipay_create_order_wap_pay(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AlipayApi->alipay_create_order_wap_pay: #{e}"
end
```

#### Using the alipay_create_order_wap_pay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringApiResponse>, Integer, Hash)> alipay_create_order_wap_pay_with_http_info(app_key, opts)

```ruby
begin
  # 创建WAP支付订单
  data, status_code, headers = api_instance.alipay_create_order_wap_pay_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AlipayApi->alipay_create_order_wap_pay_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **alipay_create_order_wap_pay_request** | [**AlipayCreateOrderWapPayRequest**](AlipayCreateOrderWapPayRequest.md) |  | [optional] |

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## alipay_order_detail

> <AlipayTradeQueryResponseApiResponse> alipay_order_detail(app_key, opts)

获取订单详情

查询订单详情，包括订单状态和支付信息。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AlipayApi.new
app_key = 'app_key_example' # String | 
opts = {
  order_no: 'order_no_example' # String | 订单号
}

begin
  # 获取订单详情
  result = api_instance.alipay_order_detail(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AlipayApi->alipay_order_detail: #{e}"
end
```

#### Using the alipay_order_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlipayTradeQueryResponseApiResponse>, Integer, Hash)> alipay_order_detail_with_http_info(app_key, opts)

```ruby
begin
  # 获取订单详情
  data, status_code, headers = api_instance.alipay_order_detail_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlipayTradeQueryResponseApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AlipayApi->alipay_order_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **order_no** | **String** | 订单号 | [optional] |

### Return type

[**AlipayTradeQueryResponseApiResponse**](AlipayTradeQueryResponseApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## alipay_order_refund

> <AlipayTradeRefundResponseApiResponse> alipay_order_refund(app_key, opts)

发起订单退款

对指定订单进行退款操作。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AlipayApi.new
app_key = 'app_key_example' # String | 
opts = {
  amount: 'amount_example', # String | 退款金额
  order_no: 'order_no_example' # String | 订单号
}

begin
  # 发起订单退款
  result = api_instance.alipay_order_refund(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AlipayApi->alipay_order_refund: #{e}"
end
```

#### Using the alipay_order_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlipayTradeRefundResponseApiResponse>, Integer, Hash)> alipay_order_refund_with_http_info(app_key, opts)

```ruby
begin
  # 发起订单退款
  data, status_code, headers = api_instance.alipay_order_refund_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlipayTradeRefundResponseApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AlipayApi->alipay_order_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **amount** | **String** | 退款金额 | [optional] |
| **order_no** | **String** | 订单号 | [optional] |

### Return type

[**AlipayTradeRefundResponseApiResponse**](AlipayTradeRefundResponseApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## alipay_return_page_notify

> <BooleanApiResponse> alipay_return_page_notify(app_key, opts)

支付成功回调通知

处理支付宝支付成功的同步通知。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AlipayApi.new
app_key = 'app_key_example' # String | 
opts = {
  return_page_notify_request: ZSGFClient::ReturnPageNotifyRequest.new # ReturnPageNotifyRequest | 
}

begin
  # 支付成功回调通知
  result = api_instance.alipay_return_page_notify(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AlipayApi->alipay_return_page_notify: #{e}"
end
```

#### Using the alipay_return_page_notify_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> alipay_return_page_notify_with_http_info(app_key, opts)

```ruby
begin
  # 支付成功回调通知
  data, status_code, headers = api_instance.alipay_return_page_notify_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AlipayApi->alipay_return_page_notify_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **return_page_notify_request** | [**ReturnPageNotifyRequest**](ReturnPageNotifyRequest.md) |  | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json

