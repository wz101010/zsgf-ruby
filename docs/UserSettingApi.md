# ZSGFClient::UserSettingApi

All URIs are relative to *https://api.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**user_setting**](UserSettingApi.md#user_setting) | **GET** /UserSetting/{appKey}/{id} | 获取用户配置项详情 |
| [**user_setting_delete**](UserSettingApi.md#user_setting_delete) | **DELETE** /UserSetting/{appKey}/{id} | 删除用户配置项 |
| [**user_setting_post**](UserSettingApi.md#user_setting_post) | **POST** /UserSetting/{appKey} | 添加用户配置项 |
| [**user_setting_put**](UserSettingApi.md#user_setting_put) | **PUT** /UserSetting/{appKey}/{id} | 更新用户配置项 |
| [**user_settings**](UserSettingApi.md#user_settings) | **GET** /UserSetting/{appKey} | 获取用户配置列表 |


## user_setting

> <UserSettingApiResponse> user_setting(id, app_key)

获取用户配置项详情

根据配置项ID获取用户配置项详情

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserSettingApi.new
id = 789 # Integer | 配置项ID
app_key = 'app_key_example' # String | 

begin
  # 获取用户配置项详情
  result = api_instance.user_setting(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserSettingApi->user_setting: #{e}"
end
```

#### Using the user_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserSettingApiResponse>, Integer, Hash)> user_setting_with_http_info(id, app_key)

```ruby
begin
  # 获取用户配置项详情
  data, status_code, headers = api_instance.user_setting_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserSettingApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserSettingApi->user_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 配置项ID |  |
| **app_key** | **String** |  |  |

### Return type

[**UserSettingApiResponse**](UserSettingApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_setting_delete

> <BooleanApiResponse> user_setting_delete(id, app_key)

删除用户配置项

根据配置项ID删除用户配置项

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserSettingApi.new
id = 789 # Integer | 配置项ID
app_key = 'app_key_example' # String | 

begin
  # 删除用户配置项
  result = api_instance.user_setting_delete(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserSettingApi->user_setting_delete: #{e}"
end
```

#### Using the user_setting_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_setting_delete_with_http_info(id, app_key)

```ruby
begin
  # 删除用户配置项
  data, status_code, headers = api_instance.user_setting_delete_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserSettingApi->user_setting_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 配置项ID |  |
| **app_key** | **String** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_setting_post

> <UserSettingPostResultApiResponse> user_setting_post(app_key, opts)

添加用户配置项

添加新的用户配置项

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserSettingApi.new
app_key = 'app_key_example' # String | 
opts = {
  user_setting: ZSGFClient::UserSetting.new({user_id: 3.56, code: 'code_example', value: 'value_example'}) # UserSetting | 配置项内容
}

begin
  # 添加用户配置项
  result = api_instance.user_setting_post(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserSettingApi->user_setting_post: #{e}"
end
```

#### Using the user_setting_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserSettingPostResultApiResponse>, Integer, Hash)> user_setting_post_with_http_info(app_key, opts)

```ruby
begin
  # 添加用户配置项
  data, status_code, headers = api_instance.user_setting_post_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserSettingPostResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserSettingApi->user_setting_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **user_setting** | [**UserSetting**](UserSetting.md) | 配置项内容 | [optional] |

### Return type

[**UserSettingPostResultApiResponse**](UserSettingPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_setting_put

> <BooleanApiResponse> user_setting_put(id, app_key, opts)

更新用户配置项

根据配置项ID更新用户配置项内容

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserSettingApi.new
id = 789 # Integer | 配置项ID
app_key = 'app_key_example' # String | 
opts = {
  user_setting: ZSGFClient::UserSetting.new({user_id: 3.56, code: 'code_example', value: 'value_example'}) # UserSetting | 配置项内容
}

begin
  # 更新用户配置项
  result = api_instance.user_setting_put(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserSettingApi->user_setting_put: #{e}"
end
```

#### Using the user_setting_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_setting_put_with_http_info(id, app_key, opts)

```ruby
begin
  # 更新用户配置项
  data, status_code, headers = api_instance.user_setting_put_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserSettingApi->user_setting_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 配置项ID |  |
| **app_key** | **String** |  |  |
| **user_setting** | [**UserSetting**](UserSetting.md) | 配置项内容 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_settings

> <UserSettingListApiResponse> user_settings(app_key, opts)

获取用户配置列表

根据用户ID、配置项代码和标签获取用户配置列表

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserSettingApi.new
app_key = 'app_key_example' # String | 
opts = {
  user_id: 789, # Integer | 用户ID
  code: 'code_example', # String | 配置项代码
  tag: 'tag_example' # String | 配置项标签
}

begin
  # 获取用户配置列表
  result = api_instance.user_settings(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserSettingApi->user_settings: #{e}"
end
```

#### Using the user_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserSettingListApiResponse>, Integer, Hash)> user_settings_with_http_info(app_key, opts)

```ruby
begin
  # 获取用户配置列表
  data, status_code, headers = api_instance.user_settings_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserSettingListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserSettingApi->user_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **user_id** | **Integer** | 用户ID | [optional] |
| **code** | **String** | 配置项代码 | [optional] |
| **tag** | **String** | 配置项标签 | [optional] |

### Return type

[**UserSettingListApiResponse**](UserSettingListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

