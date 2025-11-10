# ZSGFClient::ExternalAccountApi

All URIs are relative to *https://api-dev.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**external_account_sign_in**](ExternalAccountApi.md#external_account_sign_in) | **POST** /ExternalAccount/{appKey}/SignIn | 外部账号登录 |
| [**user_external_account_bind**](ExternalAccountApi.md#user_external_account_bind) | **POST** /ExternalAccount/{appKey} | 绑定外部账号 |
| [**user_o_auth_accounts**](ExternalAccountApi.md#user_o_auth_accounts) | **GET** /ExternalAccount/{appKey} | 外部账号列表 |
| [**user_o_auth_accounts_put_bind**](ExternalAccountApi.md#user_o_auth_accounts_put_bind) | **PUT** /ExternalAccount/{appKey}/{id} | 更新绑定账号 |
| [**user_o_auth_accounts_un_bind**](ExternalAccountApi.md#user_o_auth_accounts_un_bind) | **DELETE** /ExternalAccount/{appKey}/{id} | 删除绑定账号 |


## external_account_sign_in

> <TokenModelApiResponse> external_account_sign_in(app_key, opts)

外部账号登录

使用外部账号登录应用

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ExternalAccountApi.new
app_key = 'app_key_example' # String | 
opts = {
  user_id: 'user_id_example', # String | 
  external_account_sign_in_request: ZSGFClient::ExternalAccountSignInRequest.new({union_id: 'union_id_example', platform: 'platform_example'}) # ExternalAccountSignInRequest | 登录请求参数
}

begin
  # 外部账号登录
  result = api_instance.external_account_sign_in(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ExternalAccountApi->external_account_sign_in: #{e}"
end
```

#### Using the external_account_sign_in_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenModelApiResponse>, Integer, Hash)> external_account_sign_in_with_http_info(app_key, opts)

```ruby
begin
  # 外部账号登录
  data, status_code, headers = api_instance.external_account_sign_in_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenModelApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ExternalAccountApi->external_account_sign_in_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **user_id** | **String** |  | [optional] |
| **external_account_sign_in_request** | [**ExternalAccountSignInRequest**](ExternalAccountSignInRequest.md) | 登录请求参数 | [optional] |

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_external_account_bind

> <BooleanApiResponse> user_external_account_bind(app_key, opts)

绑定外部账号

绑定外部账号，如果已存在绑定则直接返回成功

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ExternalAccountApi.new
app_key = 'app_key_example' # String | 
opts = {
  user_id: 'user_id_example', # String | 
  external_account_bind_request: ZSGFClient::ExternalAccountBindRequest.new({union_id: 'union_id_example', platform: 'platform_example', platform_name: 'platform_name_example'}) # ExternalAccountBindRequest | 绑定请求参数
}

begin
  # 绑定外部账号
  result = api_instance.user_external_account_bind(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ExternalAccountApi->user_external_account_bind: #{e}"
end
```

#### Using the user_external_account_bind_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_external_account_bind_with_http_info(app_key, opts)

```ruby
begin
  # 绑定外部账号
  data, status_code, headers = api_instance.user_external_account_bind_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ExternalAccountApi->user_external_account_bind_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **user_id** | **String** |  | [optional] |
| **external_account_bind_request** | [**ExternalAccountBindRequest**](ExternalAccountBindRequest.md) | 绑定请求参数 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_o_auth_accounts

> <UserLoginsListApiResponse> user_o_auth_accounts(app_key, opts)

外部账号列表

获取绑定成功的外部账号列表

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ExternalAccountApi.new
app_key = 'app_key_example' # String | 
opts = {
  user_id: 'user_id_example' # String | 
}

begin
  # 外部账号列表
  result = api_instance.user_o_auth_accounts(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ExternalAccountApi->user_o_auth_accounts: #{e}"
end
```

#### Using the user_o_auth_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserLoginsListApiResponse>, Integer, Hash)> user_o_auth_accounts_with_http_info(app_key, opts)

```ruby
begin
  # 外部账号列表
  data, status_code, headers = api_instance.user_o_auth_accounts_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserLoginsListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ExternalAccountApi->user_o_auth_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **user_id** | **String** |  | [optional] |

### Return type

[**UserLoginsListApiResponse**](UserLoginsListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_o_auth_accounts_put_bind

> <BooleanApiResponse> user_o_auth_accounts_put_bind(id, app_key, opts)

更新绑定账号

更新绑定的账号信息

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ExternalAccountApi.new
id = 789 # Integer | 绑定ID
app_key = 'app_key_example' # String | 
opts = {
  user_id: 'user_id_example', # String | 
  external_account_put_request: ZSGFClient::ExternalAccountPutRequest.new # ExternalAccountPutRequest | 更新请求参数
}

begin
  # 更新绑定账号
  result = api_instance.user_o_auth_accounts_put_bind(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ExternalAccountApi->user_o_auth_accounts_put_bind: #{e}"
end
```

#### Using the user_o_auth_accounts_put_bind_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_o_auth_accounts_put_bind_with_http_info(id, app_key, opts)

```ruby
begin
  # 更新绑定账号
  data, status_code, headers = api_instance.user_o_auth_accounts_put_bind_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ExternalAccountApi->user_o_auth_accounts_put_bind_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 绑定ID |  |
| **app_key** | **String** |  |  |
| **user_id** | **String** |  | [optional] |
| **external_account_put_request** | [**ExternalAccountPutRequest**](ExternalAccountPutRequest.md) | 更新请求参数 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_o_auth_accounts_un_bind

> <BooleanApiResponse> user_o_auth_accounts_un_bind(id, app_key, opts)

删除绑定账号

删除绑定的外部账号

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ExternalAccountApi.new
id = 789 # Integer | 绑定ID
app_key = 'app_key_example' # String | 
opts = {
  user_id: 'user_id_example' # String | 
}

begin
  # 删除绑定账号
  result = api_instance.user_o_auth_accounts_un_bind(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ExternalAccountApi->user_o_auth_accounts_un_bind: #{e}"
end
```

#### Using the user_o_auth_accounts_un_bind_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_o_auth_accounts_un_bind_with_http_info(id, app_key, opts)

```ruby
begin
  # 删除绑定账号
  data, status_code, headers = api_instance.user_o_auth_accounts_un_bind_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ExternalAccountApi->user_o_auth_accounts_un_bind_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 绑定ID |  |
| **app_key** | **String** |  |  |
| **user_id** | **String** |  | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

