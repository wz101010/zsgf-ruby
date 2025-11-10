# ZSGFClient::AccessTokenApi

All URIs are relative to *https://api-dev.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**access_token_delete**](AccessTokenApi.md#access_token_delete) | **DELETE** /AccessToken/{appKey}/{id} | 删除令牌 |
| [**access_token_post**](AccessTokenApi.md#access_token_post) | **POST** /AccessToken/{appKey} | 创建令牌 |
| [**access_token_put**](AccessTokenApi.md#access_token_put) | **PUT** /AccessToken/{appKey}/{id} | 更新令牌 |
| [**access_tokens**](AccessTokenApi.md#access_tokens) | **GET** /AccessToken/{appKey} | 令牌列表 |


## access_token_delete

> <BooleanApiResponse> access_token_delete(id, app_key, opts)

删除令牌

删除用户令牌

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AccessTokenApi.new
id = 789 # Integer | 
app_key = 'app_key_example' # String | 
opts = {
  user_id: 'user_id_example' # String | 
}

begin
  # 删除令牌
  result = api_instance.access_token_delete(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AccessTokenApi->access_token_delete: #{e}"
end
```

#### Using the access_token_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> access_token_delete_with_http_info(id, app_key, opts)

```ruby
begin
  # 删除令牌
  data, status_code, headers = api_instance.access_token_delete_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AccessTokenApi->access_token_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **app_key** | **String** |  |  |
| **user_id** | **String** |  | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## access_token_post

> <TokenModelApiResponse> access_token_post(app_key, opts)

创建令牌

创建新的用户令牌

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AccessTokenApi.new
app_key = 'app_key_example' # String | 
opts = {
  user_id: 'user_id_example', # String | 
  access_token_post_request: ZSGFClient::AccessTokenPostRequest.new({title: 'title_example'}) # AccessTokenPostRequest | 
}

begin
  # 创建令牌
  result = api_instance.access_token_post(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AccessTokenApi->access_token_post: #{e}"
end
```

#### Using the access_token_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenModelApiResponse>, Integer, Hash)> access_token_post_with_http_info(app_key, opts)

```ruby
begin
  # 创建令牌
  data, status_code, headers = api_instance.access_token_post_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenModelApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AccessTokenApi->access_token_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **user_id** | **String** |  | [optional] |
| **access_token_post_request** | [**AccessTokenPostRequest**](AccessTokenPostRequest.md) |  | [optional] |

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## access_token_put

> <BooleanApiResponse> access_token_put(id, app_key, opts)

更新令牌

更新现有的用户令牌

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AccessTokenApi.new
id = 789 # Integer | 
app_key = 'app_key_example' # String | 
opts = {
  user_id: 'user_id_example', # String | 
  access_token_put_request: ZSGFClient::AccessTokenPutRequest.new # AccessTokenPutRequest | 
}

begin
  # 更新令牌
  result = api_instance.access_token_put(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AccessTokenApi->access_token_put: #{e}"
end
```

#### Using the access_token_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> access_token_put_with_http_info(id, app_key, opts)

```ruby
begin
  # 更新令牌
  data, status_code, headers = api_instance.access_token_put_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AccessTokenApi->access_token_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **app_key** | **String** |  |  |
| **user_id** | **String** |  | [optional] |
| **access_token_put_request** | [**AccessTokenPutRequest**](AccessTokenPutRequest.md) |  | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## access_tokens

> <AccessTokenListResultApiResponse> access_tokens(app_key, opts)

令牌列表

获取用户令牌列表

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AccessTokenApi.new
app_key = 'app_key_example' # String | 
opts = {
  skip: 56, # Integer | 
  take: 56, # Integer | 
  user_id: 'user_id_example' # String | 
}

begin
  # 令牌列表
  result = api_instance.access_tokens(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AccessTokenApi->access_tokens: #{e}"
end
```

#### Using the access_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccessTokenListResultApiResponse>, Integer, Hash)> access_tokens_with_http_info(app_key, opts)

```ruby
begin
  # 令牌列表
  data, status_code, headers = api_instance.access_tokens_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccessTokenListResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AccessTokenApi->access_tokens_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **skip** | **Integer** |  | [optional] |
| **take** | **Integer** |  | [optional] |
| **user_id** | **String** |  | [optional] |

### Return type

[**AccessTokenListResultApiResponse**](AccessTokenListResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

