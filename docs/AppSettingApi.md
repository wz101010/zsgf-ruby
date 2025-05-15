# ZSGFClient::AppSettingApi

All URIs are relative to *https://api.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**app_service_setting_group**](AppSettingApi.md#app_service_setting_group) | **GET** /AppSetting/{appKey}/Groups/{id} | 获取服务分组详情 |
| [**app_service_setting_group_delete**](AppSettingApi.md#app_service_setting_group_delete) | **DELETE** /AppSetting/{appKey}/Groups/{id} | 删除服务分组 |
| [**app_service_setting_group_post**](AppSettingApi.md#app_service_setting_group_post) | **POST** /AppSetting/{appKey}/Groups | 添加服务分组 |
| [**app_service_setting_group_put**](AppSettingApi.md#app_service_setting_group_put) | **PUT** /AppSetting/{appKey}/Groups/{id} | 更新服务分组 |
| [**app_service_setting_groups**](AppSettingApi.md#app_service_setting_groups) | **GET** /AppSetting/{appKey}/Groups | 获取服务分组列表 |
| [**app_service_setting_item**](AppSettingApi.md#app_service_setting_item) | **GET** /AppSetting/{appKey}/Items/{id} | 服务配置项详情 |
| [**app_service_setting_item_delete**](AppSettingApi.md#app_service_setting_item_delete) | **DELETE** /AppSetting/{appKey}/Items/{id} | 删除服务配置项 |
| [**app_service_setting_item_post**](AppSettingApi.md#app_service_setting_item_post) | **POST** /AppSetting/{appKey}/Items | 添加服务配置项 |
| [**app_service_setting_item_put**](AppSettingApi.md#app_service_setting_item_put) | **PUT** /AppSetting/{appKey}/Items/{id} | 更新服务配置项 |
| [**app_service_setting_items**](AppSettingApi.md#app_service_setting_items) | **GET** /AppSetting/{appKey}/Items | 服务配置项列表 |
| [**app_service_setting_provider**](AppSettingApi.md#app_service_setting_provider) | **GET** /AppSetting/{appKey}/Providers/{id} | 获取服务商详情 |
| [**app_service_setting_provider_delete**](AppSettingApi.md#app_service_setting_provider_delete) | **DELETE** /AppSetting/{appKey}/Providers/{id} | 删除服务商 |
| [**app_service_setting_provider_post**](AppSettingApi.md#app_service_setting_provider_post) | **POST** /AppSetting/{appKey}/Providers | 添加服务商 |
| [**app_service_setting_provider_put**](AppSettingApi.md#app_service_setting_provider_put) | **PUT** /AppSetting/{appKey}/Providers/{id} | 更新服务商 |
| [**app_service_setting_providers**](AppSettingApi.md#app_service_setting_providers) | **GET** /AppSetting/{appKey}/Providers | 获取服务商列表 |
| [**app_setting**](AppSettingApi.md#app_setting) | **GET** /AppSetting/{appKey}/{id} | 配置详情 |
| [**app_setting_delete**](AppSettingApi.md#app_setting_delete) | **DELETE** /AppSetting/{appKey}/{id} | 删除配置 |
| [**app_setting_post**](AppSettingApi.md#app_setting_post) | **POST** /AppSetting/{appKey} | 增加配置 |
| [**app_setting_put**](AppSettingApi.md#app_setting_put) | **PUT** /AppSetting/{appKey}/{id} | 更新配置 |
| [**app_settings**](AppSettingApi.md#app_settings) | **GET** /AppSetting/{appKey} | 配置列表 |


## app_service_setting_group

> <ServiceGroupApiResponse> app_service_setting_group(id, app_key)

获取服务分组详情

根据服务分组ID获取服务分组详情

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
id = 789 # Integer | 服务分组ID
app_key = 'app_key_example' # String | 

begin
  # 获取服务分组详情
  result = api_instance.app_service_setting_group(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_group: #{e}"
end
```

#### Using the app_service_setting_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceGroupApiResponse>, Integer, Hash)> app_service_setting_group_with_http_info(id, app_key)

```ruby
begin
  # 获取服务分组详情
  data, status_code, headers = api_instance.app_service_setting_group_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceGroupApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务分组ID |  |
| **app_key** | **String** |  |  |

### Return type

[**ServiceGroupApiResponse**](ServiceGroupApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_service_setting_group_delete

> <BooleanApiResponse> app_service_setting_group_delete(id, app_key)

删除服务分组

根据服务分组ID删除服务分组

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
id = 789 # Integer | 服务分组ID
app_key = 'app_key_example' # String | 

begin
  # 删除服务分组
  result = api_instance.app_service_setting_group_delete(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_group_delete: #{e}"
end
```

#### Using the app_service_setting_group_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> app_service_setting_group_delete_with_http_info(id, app_key)

```ruby
begin
  # 删除服务分组
  data, status_code, headers = api_instance.app_service_setting_group_delete_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_group_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务分组ID |  |
| **app_key** | **String** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_service_setting_group_post

> <AppSettingGroupPostResultApiResponse> app_service_setting_group_post(app_key, opts)

添加服务分组

添加新的服务分组信息

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
app_key = 'app_key_example' # String | 
opts = {
  service_group: ZSGFClient::ServiceGroup.new # ServiceGroup | 服务分组信息
}

begin
  # 添加服务分组
  result = api_instance.app_service_setting_group_post(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_group_post: #{e}"
end
```

#### Using the app_service_setting_group_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppSettingGroupPostResultApiResponse>, Integer, Hash)> app_service_setting_group_post_with_http_info(app_key, opts)

```ruby
begin
  # 添加服务分组
  data, status_code, headers = api_instance.app_service_setting_group_post_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppSettingGroupPostResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_group_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **service_group** | [**ServiceGroup**](ServiceGroup.md) | 服务分组信息 | [optional] |

### Return type

[**AppSettingGroupPostResultApiResponse**](AppSettingGroupPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## app_service_setting_group_put

> <BooleanApiResponse> app_service_setting_group_put(id, app_key, opts)

更新服务分组

根据服务分组ID更新服务分组信息

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
id = 789 # Integer | 服务分组ID
app_key = 'app_key_example' # String | 
opts = {
  service_group: ZSGFClient::ServiceGroup.new # ServiceGroup | 服务分组信息
}

begin
  # 更新服务分组
  result = api_instance.app_service_setting_group_put(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_group_put: #{e}"
end
```

#### Using the app_service_setting_group_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> app_service_setting_group_put_with_http_info(id, app_key, opts)

```ruby
begin
  # 更新服务分组
  data, status_code, headers = api_instance.app_service_setting_group_put_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_group_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务分组ID |  |
| **app_key** | **String** |  |  |
| **service_group** | [**ServiceGroup**](ServiceGroup.md) | 服务分组信息 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## app_service_setting_groups

> <ServiceGroupListApiResponse> app_service_setting_groups(app_key, opts)

获取服务分组列表

根据服务商ID和显示标志获取服务分组列表

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
app_key = 'app_key_example' # String | 
opts = {
  provider_id: 789, # Integer | 服务商ID
  show_flag: true # Boolean | 是否显示
}

begin
  # 获取服务分组列表
  result = api_instance.app_service_setting_groups(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_groups: #{e}"
end
```

#### Using the app_service_setting_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceGroupListApiResponse>, Integer, Hash)> app_service_setting_groups_with_http_info(app_key, opts)

```ruby
begin
  # 获取服务分组列表
  data, status_code, headers = api_instance.app_service_setting_groups_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceGroupListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **provider_id** | **Integer** | 服务商ID | [optional] |
| **show_flag** | **Boolean** | 是否显示 | [optional][default to false] |

### Return type

[**ServiceGroupListApiResponse**](ServiceGroupListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_service_setting_item

> <ServiceItemApiResponse> app_service_setting_item(id, app_key)

服务配置项详情

根据服务配置项ID获取服务配置项详情

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
id = 789 # Integer | 服务配置项ID
app_key = 'app_key_example' # String | 

begin
  # 服务配置项详情
  result = api_instance.app_service_setting_item(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_item: #{e}"
end
```

#### Using the app_service_setting_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceItemApiResponse>, Integer, Hash)> app_service_setting_item_with_http_info(id, app_key)

```ruby
begin
  # 服务配置项详情
  data, status_code, headers = api_instance.app_service_setting_item_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceItemApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务配置项ID |  |
| **app_key** | **String** |  |  |

### Return type

[**ServiceItemApiResponse**](ServiceItemApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_service_setting_item_delete

> <BooleanApiResponse> app_service_setting_item_delete(id, app_key)

删除服务配置项

根据服务配置项ID删除服务配置项

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
id = 789 # Integer | 服务配置项ID
app_key = 'app_key_example' # String | 

begin
  # 删除服务配置项
  result = api_instance.app_service_setting_item_delete(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_item_delete: #{e}"
end
```

#### Using the app_service_setting_item_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> app_service_setting_item_delete_with_http_info(id, app_key)

```ruby
begin
  # 删除服务配置项
  data, status_code, headers = api_instance.app_service_setting_item_delete_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_item_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务配置项ID |  |
| **app_key** | **String** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_service_setting_item_post

> <AppSettingItemPostResultApiResponse> app_service_setting_item_post(app_key, opts)

添加服务配置项

添加新的服务配置项信息

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
app_key = 'app_key_example' # String | 
opts = {
  service_item: ZSGFClient::ServiceItem.new # ServiceItem | 服务配置项信息
}

begin
  # 添加服务配置项
  result = api_instance.app_service_setting_item_post(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_item_post: #{e}"
end
```

#### Using the app_service_setting_item_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppSettingItemPostResultApiResponse>, Integer, Hash)> app_service_setting_item_post_with_http_info(app_key, opts)

```ruby
begin
  # 添加服务配置项
  data, status_code, headers = api_instance.app_service_setting_item_post_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppSettingItemPostResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_item_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **service_item** | [**ServiceItem**](ServiceItem.md) | 服务配置项信息 | [optional] |

### Return type

[**AppSettingItemPostResultApiResponse**](AppSettingItemPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## app_service_setting_item_put

> <BooleanApiResponse> app_service_setting_item_put(id, app_key, opts)

更新服务配置项

根据服务配置项ID更新服务配置项信息

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
id = 789 # Integer | 服务配置项ID
app_key = 'app_key_example' # String | 
opts = {
  service_item: ZSGFClient::ServiceItem.new # ServiceItem | 服务配置项信息
}

begin
  # 更新服务配置项
  result = api_instance.app_service_setting_item_put(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_item_put: #{e}"
end
```

#### Using the app_service_setting_item_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> app_service_setting_item_put_with_http_info(id, app_key, opts)

```ruby
begin
  # 更新服务配置项
  data, status_code, headers = api_instance.app_service_setting_item_put_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_item_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务配置项ID |  |
| **app_key** | **String** |  |  |
| **service_item** | [**ServiceItem**](ServiceItem.md) | 服务配置项信息 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## app_service_setting_items

> <ServiceItemListApiResponse> app_service_setting_items(app_key, opts)

服务配置项列表

根据业务代码、服务商代码、分组代码和显示标志获取服务配置项列表

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
app_key = 'app_key_example' # String | 
opts = {
  biz_code: 'biz_code_example', # String | 业务代码
  provider_code: 'provider_code_example', # String | 服务商代码
  group_code: 'group_code_example', # String | 分组代码
  show_flag: true # Boolean | 是否显示
}

begin
  # 服务配置项列表
  result = api_instance.app_service_setting_items(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_items: #{e}"
end
```

#### Using the app_service_setting_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceItemListApiResponse>, Integer, Hash)> app_service_setting_items_with_http_info(app_key, opts)

```ruby
begin
  # 服务配置项列表
  data, status_code, headers = api_instance.app_service_setting_items_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceItemListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **biz_code** | **String** | 业务代码 | [optional] |
| **provider_code** | **String** | 服务商代码 | [optional] |
| **group_code** | **String** | 分组代码 | [optional] |
| **show_flag** | **Boolean** | 是否显示 | [optional][default to false] |

### Return type

[**ServiceItemListApiResponse**](ServiceItemListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_service_setting_provider

> <ServiceProviderApiResponse> app_service_setting_provider(id, app_key)

获取服务商详情

根据服务商ID获取服务商详情

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
id = 789 # Integer | 服务商ID
app_key = 'app_key_example' # String | 

begin
  # 获取服务商详情
  result = api_instance.app_service_setting_provider(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_provider: #{e}"
end
```

#### Using the app_service_setting_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceProviderApiResponse>, Integer, Hash)> app_service_setting_provider_with_http_info(id, app_key)

```ruby
begin
  # 获取服务商详情
  data, status_code, headers = api_instance.app_service_setting_provider_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceProviderApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务商ID |  |
| **app_key** | **String** |  |  |

### Return type

[**ServiceProviderApiResponse**](ServiceProviderApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_service_setting_provider_delete

> <BooleanApiResponse> app_service_setting_provider_delete(id, app_key)

删除服务商

根据服务商ID删除服务商

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
id = 789 # Integer | 服务商ID
app_key = 'app_key_example' # String | 

begin
  # 删除服务商
  result = api_instance.app_service_setting_provider_delete(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_provider_delete: #{e}"
end
```

#### Using the app_service_setting_provider_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> app_service_setting_provider_delete_with_http_info(id, app_key)

```ruby
begin
  # 删除服务商
  data, status_code, headers = api_instance.app_service_setting_provider_delete_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_provider_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务商ID |  |
| **app_key** | **String** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_service_setting_provider_post

> <AppSettingProviderPostResultApiResponse> app_service_setting_provider_post(app_key, opts)

添加服务商

添加新的服务商信息

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
app_key = 'app_key_example' # String | 
opts = {
  service_provider: ZSGFClient::ServiceProvider.new # ServiceProvider | 服务商信息
}

begin
  # 添加服务商
  result = api_instance.app_service_setting_provider_post(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_provider_post: #{e}"
end
```

#### Using the app_service_setting_provider_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppSettingProviderPostResultApiResponse>, Integer, Hash)> app_service_setting_provider_post_with_http_info(app_key, opts)

```ruby
begin
  # 添加服务商
  data, status_code, headers = api_instance.app_service_setting_provider_post_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppSettingProviderPostResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_provider_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **service_provider** | [**ServiceProvider**](ServiceProvider.md) | 服务商信息 | [optional] |

### Return type

[**AppSettingProviderPostResultApiResponse**](AppSettingProviderPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## app_service_setting_provider_put

> <BooleanApiResponse> app_service_setting_provider_put(id, app_key, opts)

更新服务商

根据服务商ID更新服务商信息

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
id = 789 # Integer | 服务商ID
app_key = 'app_key_example' # String | 
opts = {
  service_provider: ZSGFClient::ServiceProvider.new # ServiceProvider | 服务商信息
}

begin
  # 更新服务商
  result = api_instance.app_service_setting_provider_put(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_provider_put: #{e}"
end
```

#### Using the app_service_setting_provider_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> app_service_setting_provider_put_with_http_info(id, app_key, opts)

```ruby
begin
  # 更新服务商
  data, status_code, headers = api_instance.app_service_setting_provider_put_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_provider_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务商ID |  |
| **app_key** | **String** |  |  |
| **service_provider** | [**ServiceProvider**](ServiceProvider.md) | 服务商信息 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## app_service_setting_providers

> <ServiceProviderListApiResponse> app_service_setting_providers(app_key, opts)

获取服务商列表

根据业务代码和显示标志获取服务商列表

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
app_key = 'app_key_example' # String | 
opts = {
  biz_code: 'biz_code_example', # String | 业务代码
  show_flag: true # Boolean | 是否显示
}

begin
  # 获取服务商列表
  result = api_instance.app_service_setting_providers(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_providers: #{e}"
end
```

#### Using the app_service_setting_providers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceProviderListApiResponse>, Integer, Hash)> app_service_setting_providers_with_http_info(app_key, opts)

```ruby
begin
  # 获取服务商列表
  data, status_code, headers = api_instance.app_service_setting_providers_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceProviderListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_service_setting_providers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **biz_code** | **String** | 业务代码 | [optional] |
| **show_flag** | **Boolean** | 是否显示 | [optional][default to false] |

### Return type

[**ServiceProviderListApiResponse**](ServiceProviderListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_setting

> <AppSettingApiResponse> app_setting(id, app_key)

配置详情

根据配置ID获取配置详情

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
id = 789 # Integer | 配置ID
app_key = 'app_key_example' # String | 

begin
  # 配置详情
  result = api_instance.app_setting(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_setting: #{e}"
end
```

#### Using the app_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppSettingApiResponse>, Integer, Hash)> app_setting_with_http_info(id, app_key)

```ruby
begin
  # 配置详情
  data, status_code, headers = api_instance.app_setting_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppSettingApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 配置ID |  |
| **app_key** | **String** |  |  |

### Return type

[**AppSettingApiResponse**](AppSettingApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_setting_delete

> <BooleanApiResponse> app_setting_delete(id, app_key)

删除配置

根据配置ID删除配置

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
id = 789 # Integer | 配置ID
app_key = 'app_key_example' # String | 

begin
  # 删除配置
  result = api_instance.app_setting_delete(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_setting_delete: #{e}"
end
```

#### Using the app_setting_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> app_setting_delete_with_http_info(id, app_key)

```ruby
begin
  # 删除配置
  data, status_code, headers = api_instance.app_setting_delete_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_setting_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 配置ID |  |
| **app_key** | **String** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_setting_post

> <AppSettingSettingPostResultApiResponse> app_setting_post(app_key, opts)

增加配置

添加新的配置内容

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
app_key = 'app_key_example' # String | 
opts = {
  app_setting: ZSGFClient::AppSetting.new({code: 'code_example', value: 'value_example'}) # AppSetting | 配置内容
}

begin
  # 增加配置
  result = api_instance.app_setting_post(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_setting_post: #{e}"
end
```

#### Using the app_setting_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppSettingSettingPostResultApiResponse>, Integer, Hash)> app_setting_post_with_http_info(app_key, opts)

```ruby
begin
  # 增加配置
  data, status_code, headers = api_instance.app_setting_post_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppSettingSettingPostResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_setting_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **app_setting** | [**AppSetting**](AppSetting.md) | 配置内容 | [optional] |

### Return type

[**AppSettingSettingPostResultApiResponse**](AppSettingSettingPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## app_setting_put

> <BooleanApiResponse> app_setting_put(id, app_key, opts)

更新配置

根据配置ID更新配置内容

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
id = 789 # Integer | 配置ID
app_key = 'app_key_example' # String | 
opts = {
  app_setting: ZSGFClient::AppSetting.new({code: 'code_example', value: 'value_example'}) # AppSetting | 配置内容
}

begin
  # 更新配置
  result = api_instance.app_setting_put(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_setting_put: #{e}"
end
```

#### Using the app_setting_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> app_setting_put_with_http_info(id, app_key, opts)

```ruby
begin
  # 更新配置
  data, status_code, headers = api_instance.app_setting_put_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_setting_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 配置ID |  |
| **app_key** | **String** |  |  |
| **app_setting** | [**AppSetting**](AppSetting.md) | 配置内容 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## app_settings

> <AppSettingListApiResponse> app_settings(app_key, opts)

配置列表

根据服务商代码、分组代码、标签和配置项代码获取配置列表

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppSettingApi.new
app_key = 'app_key_example' # String | 
opts = {
  provider_code: 'provider_code_example', # String | 服务商代码
  group_code: 'group_code_example', # String | 分组代码
  tag: 'tag_example', # String | 标签
  code: 'code_example' # String | 配置项代码
}

begin
  # 配置列表
  result = api_instance.app_settings(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_settings: #{e}"
end
```

#### Using the app_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppSettingListApiResponse>, Integer, Hash)> app_settings_with_http_info(app_key, opts)

```ruby
begin
  # 配置列表
  data, status_code, headers = api_instance.app_settings_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppSettingListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppSettingApi->app_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **provider_code** | **String** | 服务商代码 | [optional] |
| **group_code** | **String** | 分组代码 | [optional] |
| **tag** | **String** | 标签 | [optional] |
| **code** | **String** | 配置项代码 | [optional] |

### Return type

[**AppSettingListApiResponse**](AppSettingListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

