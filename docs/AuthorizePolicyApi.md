# ZSGFClient::AuthorizePolicyApi

All URIs are relative to *https://api.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authorize_policies**](AuthorizePolicyApi.md#authorize_policies) | **GET** /AuthorizePolicy/{appKey} | 获取鉴权策略列表 |
| [**authorize_policy**](AuthorizePolicyApi.md#authorize_policy) | **GET** /AuthorizePolicy/{appKey}/{id} | 获取鉴权策略详情 |
| [**authorize_policy_delete**](AuthorizePolicyApi.md#authorize_policy_delete) | **DELETE** /AuthorizePolicy/{appKey}/{id} | 删除鉴权策略 |
| [**authorize_policy_post**](AuthorizePolicyApi.md#authorize_policy_post) | **POST** /AuthorizePolicy/{appKey} | 添加鉴权策略 |
| [**authorize_policy_put**](AuthorizePolicyApi.md#authorize_policy_put) | **PUT** /AuthorizePolicy/{appKey}/{id} | 更新鉴权策略 |


## authorize_policies

> <AuthorizePolicyListApiResponse> authorize_policies(app_key, opts)

获取鉴权策略列表

根据鉴权类型和策略名称获取鉴权策略列表

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AuthorizePolicyApi.new
app_key = 'app_key_example' # String | 
opts = {
  auth_type: 'auth_type_example', # String | 鉴权类型（access_token、user、role）
  policy_name: 'policy_name_example' # String | 策略名称
}

begin
  # 获取鉴权策略列表
  result = api_instance.authorize_policies(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AuthorizePolicyApi->authorize_policies: #{e}"
end
```

#### Using the authorize_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthorizePolicyListApiResponse>, Integer, Hash)> authorize_policies_with_http_info(app_key, opts)

```ruby
begin
  # 获取鉴权策略列表
  data, status_code, headers = api_instance.authorize_policies_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthorizePolicyListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AuthorizePolicyApi->authorize_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **auth_type** | **String** | 鉴权类型（access_token、user、role） | [optional] |
| **policy_name** | **String** | 策略名称 | [optional] |

### Return type

[**AuthorizePolicyListApiResponse**](AuthorizePolicyListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## authorize_policy

> <AuthorizePolicyApiResponse> authorize_policy(id, app_key)

获取鉴权策略详情

根据鉴权策略ID获取鉴权策略详情

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AuthorizePolicyApi.new
id = 789 # Integer | 鉴权策略ID
app_key = 'app_key_example' # String | 

begin
  # 获取鉴权策略详情
  result = api_instance.authorize_policy(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AuthorizePolicyApi->authorize_policy: #{e}"
end
```

#### Using the authorize_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthorizePolicyApiResponse>, Integer, Hash)> authorize_policy_with_http_info(id, app_key)

```ruby
begin
  # 获取鉴权策略详情
  data, status_code, headers = api_instance.authorize_policy_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthorizePolicyApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AuthorizePolicyApi->authorize_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 鉴权策略ID |  |
| **app_key** | **String** |  |  |

### Return type

[**AuthorizePolicyApiResponse**](AuthorizePolicyApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## authorize_policy_delete

> <BooleanApiResponse> authorize_policy_delete(id, app_key)

删除鉴权策略

根据鉴权策略ID删除鉴权策略

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AuthorizePolicyApi.new
id = 789 # Integer | 鉴权策略ID
app_key = 'app_key_example' # String | 

begin
  # 删除鉴权策略
  result = api_instance.authorize_policy_delete(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AuthorizePolicyApi->authorize_policy_delete: #{e}"
end
```

#### Using the authorize_policy_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> authorize_policy_delete_with_http_info(id, app_key)

```ruby
begin
  # 删除鉴权策略
  data, status_code, headers = api_instance.authorize_policy_delete_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AuthorizePolicyApi->authorize_policy_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 鉴权策略ID |  |
| **app_key** | **String** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## authorize_policy_post

> <CreatePostResultApiResponse> authorize_policy_post(app_key, opts)

添加鉴权策略

添加新的鉴权策略

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AuthorizePolicyApi.new
app_key = 'app_key_example' # String | 
opts = {
  authorize_policy: ZSGFClient::AuthorizePolicy.new # AuthorizePolicy | 鉴权策略对象
}

begin
  # 添加鉴权策略
  result = api_instance.authorize_policy_post(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AuthorizePolicyApi->authorize_policy_post: #{e}"
end
```

#### Using the authorize_policy_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePostResultApiResponse>, Integer, Hash)> authorize_policy_post_with_http_info(app_key, opts)

```ruby
begin
  # 添加鉴权策略
  data, status_code, headers = api_instance.authorize_policy_post_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePostResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AuthorizePolicyApi->authorize_policy_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **authorize_policy** | [**AuthorizePolicy**](AuthorizePolicy.md) | 鉴权策略对象 | [optional] |

### Return type

[**CreatePostResultApiResponse**](CreatePostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## authorize_policy_put

> <BooleanApiResponse> authorize_policy_put(id, app_key, opts)

更新鉴权策略

根据鉴权策略ID更新鉴权策略

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AuthorizePolicyApi.new
id = 789 # Integer | 鉴权策略ID
app_key = 'app_key_example' # String | 
opts = {
  authorize_policy: ZSGFClient::AuthorizePolicy.new # AuthorizePolicy | 鉴权策略对象
}

begin
  # 更新鉴权策略
  result = api_instance.authorize_policy_put(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AuthorizePolicyApi->authorize_policy_put: #{e}"
end
```

#### Using the authorize_policy_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> authorize_policy_put_with_http_info(id, app_key, opts)

```ruby
begin
  # 更新鉴权策略
  data, status_code, headers = api_instance.authorize_policy_put_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AuthorizePolicyApi->authorize_policy_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 鉴权策略ID |  |
| **app_key** | **String** |  |  |
| **authorize_policy** | [**AuthorizePolicy**](AuthorizePolicy.md) | 鉴权策略对象 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json

