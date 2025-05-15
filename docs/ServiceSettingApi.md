# ZSGFClient::ServiceSettingApi

All URIs are relative to *https://api.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**service_setting**](ServiceSettingApi.md#service_setting) | **GET** /ServiceSetting/{id} | 获取配置详情 |
| [**service_setting_delete**](ServiceSettingApi.md#service_setting_delete) | **DELETE** /ServiceSetting/{id} | 删除配置 |
| [**service_setting_group**](ServiceSettingApi.md#service_setting_group) | **GET** /ServiceSetting/Groups/{id} | 获取服务分组详情 |
| [**service_setting_group_delete**](ServiceSettingApi.md#service_setting_group_delete) | **DELETE** /ServiceSetting/Groups/{id} | 删除服务分组 |
| [**service_setting_group_post**](ServiceSettingApi.md#service_setting_group_post) | **POST** /ServiceSetting/Groups | 添加服务分组 |
| [**service_setting_group_put**](ServiceSettingApi.md#service_setting_group_put) | **PUT** /ServiceSetting/Groups/{id} | 更新服务分组 |
| [**service_setting_groups**](ServiceSettingApi.md#service_setting_groups) | **GET** /ServiceSetting/Groups | 获取服务分组列表 |
| [**service_setting_item**](ServiceSettingApi.md#service_setting_item) | **GET** /ServiceSetting/Items/{id} | 服务配置详情 |
| [**service_setting_item_delete**](ServiceSettingApi.md#service_setting_item_delete) | **DELETE** /ServiceSetting/Items/{id} | 删除服务配置 |
| [**service_setting_item_post**](ServiceSettingApi.md#service_setting_item_post) | **POST** /ServiceSetting/Items | 添加服务配置 |
| [**service_setting_item_put**](ServiceSettingApi.md#service_setting_item_put) | **PUT** /ServiceSetting/Items/{id} | 更新服务配置 |
| [**service_setting_items**](ServiceSettingApi.md#service_setting_items) | **GET** /ServiceSetting/Items | 服务配置列表 |
| [**service_setting_post**](ServiceSettingApi.md#service_setting_post) | **POST** /ServiceSetting | 增加配置 |
| [**service_setting_provider**](ServiceSettingApi.md#service_setting_provider) | **GET** /ServiceSetting/Providers/{id} | 获取服务商详情 |
| [**service_setting_provider_delete**](ServiceSettingApi.md#service_setting_provider_delete) | **DELETE** /ServiceSetting/Providers/{id} | 删除服务商 |
| [**service_setting_provider_post**](ServiceSettingApi.md#service_setting_provider_post) | **POST** /ServiceSetting/Providers | 添加服务商 |
| [**service_setting_provider_put**](ServiceSettingApi.md#service_setting_provider_put) | **PUT** /ServiceSetting/Providers/{id} | 更新服务商 |
| [**service_setting_providers**](ServiceSettingApi.md#service_setting_providers) | **GET** /ServiceSetting/Providers | 获取服务商列表 |
| [**service_setting_put**](ServiceSettingApi.md#service_setting_put) | **PUT** /ServiceSetting/{id} | 更新配置 |
| [**service_settings**](ServiceSettingApi.md#service_settings) | **GET** /ServiceSetting | 获取配置列表 |


## service_setting

> <SettingsApiResponse> service_setting(id)

获取配置详情

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

api_instance = ZSGFClient::ServiceSettingApi.new
id = 789 # Integer | 配置ID

begin
  # 获取配置详情
  result = api_instance.service_setting(id)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting: #{e}"
end
```

#### Using the service_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SettingsApiResponse>, Integer, Hash)> service_setting_with_http_info(id)

```ruby
begin
  # 获取配置详情
  data, status_code, headers = api_instance.service_setting_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SettingsApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 配置ID |  |

### Return type

[**SettingsApiResponse**](SettingsApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## service_setting_delete

> <BooleanApiResponse> service_setting_delete(id)

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

api_instance = ZSGFClient::ServiceSettingApi.new
id = 789 # Integer | 配置ID

begin
  # 删除配置
  result = api_instance.service_setting_delete(id)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_delete: #{e}"
end
```

#### Using the service_setting_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> service_setting_delete_with_http_info(id)

```ruby
begin
  # 删除配置
  data, status_code, headers = api_instance.service_setting_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 配置ID |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## service_setting_group

> <ServiceGroupApiResponse> service_setting_group(id)

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

api_instance = ZSGFClient::ServiceSettingApi.new
id = 789 # Integer | 服务分组ID

begin
  # 获取服务分组详情
  result = api_instance.service_setting_group(id)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_group: #{e}"
end
```

#### Using the service_setting_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceGroupApiResponse>, Integer, Hash)> service_setting_group_with_http_info(id)

```ruby
begin
  # 获取服务分组详情
  data, status_code, headers = api_instance.service_setting_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceGroupApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务分组ID |  |

### Return type

[**ServiceGroupApiResponse**](ServiceGroupApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## service_setting_group_delete

> <BooleanApiResponse> service_setting_group_delete(id)

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

api_instance = ZSGFClient::ServiceSettingApi.new
id = 789 # Integer | 服务分组ID

begin
  # 删除服务分组
  result = api_instance.service_setting_group_delete(id)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_group_delete: #{e}"
end
```

#### Using the service_setting_group_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> service_setting_group_delete_with_http_info(id)

```ruby
begin
  # 删除服务分组
  data, status_code, headers = api_instance.service_setting_group_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_group_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务分组ID |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## service_setting_group_post

> <ServiceSettingGroupPostResultApiResponse> service_setting_group_post(opts)

添加服务分组

添加新的服务分组

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ServiceSettingApi.new
opts = {
  service_group: ZSGFClient::ServiceGroup.new # ServiceGroup | 服务分组实体
}

begin
  # 添加服务分组
  result = api_instance.service_setting_group_post(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_group_post: #{e}"
end
```

#### Using the service_setting_group_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceSettingGroupPostResultApiResponse>, Integer, Hash)> service_setting_group_post_with_http_info(opts)

```ruby
begin
  # 添加服务分组
  data, status_code, headers = api_instance.service_setting_group_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceSettingGroupPostResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_group_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_group** | [**ServiceGroup**](ServiceGroup.md) | 服务分组实体 | [optional] |

### Return type

[**ServiceSettingGroupPostResultApiResponse**](ServiceSettingGroupPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## service_setting_group_put

> <BooleanApiResponse> service_setting_group_put(id, opts)

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

api_instance = ZSGFClient::ServiceSettingApi.new
id = 789 # Integer | 服务分组ID
opts = {
  service_group: ZSGFClient::ServiceGroup.new # ServiceGroup | 服务分组实体
}

begin
  # 更新服务分组
  result = api_instance.service_setting_group_put(id, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_group_put: #{e}"
end
```

#### Using the service_setting_group_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> service_setting_group_put_with_http_info(id, opts)

```ruby
begin
  # 更新服务分组
  data, status_code, headers = api_instance.service_setting_group_put_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_group_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务分组ID |  |
| **service_group** | [**ServiceGroup**](ServiceGroup.md) | 服务分组实体 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## service_setting_groups

> <ServiceGroupListApiResponse> service_setting_groups(opts)

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

api_instance = ZSGFClient::ServiceSettingApi.new
opts = {
  provider_id: 789, # Integer | 服务商ID
  show_flag: true # Boolean | 是否显示
}

begin
  # 获取服务分组列表
  result = api_instance.service_setting_groups(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_groups: #{e}"
end
```

#### Using the service_setting_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceGroupListApiResponse>, Integer, Hash)> service_setting_groups_with_http_info(opts)

```ruby
begin
  # 获取服务分组列表
  data, status_code, headers = api_instance.service_setting_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceGroupListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **Integer** | 服务商ID | [optional] |
| **show_flag** | **Boolean** | 是否显示 | [optional][default to false] |

### Return type

[**ServiceGroupListApiResponse**](ServiceGroupListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## service_setting_item

> <ServiceItemApiResponse> service_setting_item(id)

服务配置详情

根据服务配置ID获取服务配置详情

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ServiceSettingApi.new
id = 789 # Integer | 服务配置ID

begin
  # 服务配置详情
  result = api_instance.service_setting_item(id)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_item: #{e}"
end
```

#### Using the service_setting_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceItemApiResponse>, Integer, Hash)> service_setting_item_with_http_info(id)

```ruby
begin
  # 服务配置详情
  data, status_code, headers = api_instance.service_setting_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceItemApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务配置ID |  |

### Return type

[**ServiceItemApiResponse**](ServiceItemApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## service_setting_item_delete

> <BooleanApiResponse> service_setting_item_delete(id)

删除服务配置

根据服务配置ID删除服务配置

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ServiceSettingApi.new
id = 789 # Integer | 服务配置ID

begin
  # 删除服务配置
  result = api_instance.service_setting_item_delete(id)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_item_delete: #{e}"
end
```

#### Using the service_setting_item_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> service_setting_item_delete_with_http_info(id)

```ruby
begin
  # 删除服务配置
  data, status_code, headers = api_instance.service_setting_item_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_item_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务配置ID |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## service_setting_item_post

> <ServiceSettingItemPostResultApiResponse> service_setting_item_post(opts)

添加服务配置

添加新的服务配置

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ServiceSettingApi.new
opts = {
  service_item: ZSGFClient::ServiceItem.new # ServiceItem | 服务配置实体
}

begin
  # 添加服务配置
  result = api_instance.service_setting_item_post(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_item_post: #{e}"
end
```

#### Using the service_setting_item_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceSettingItemPostResultApiResponse>, Integer, Hash)> service_setting_item_post_with_http_info(opts)

```ruby
begin
  # 添加服务配置
  data, status_code, headers = api_instance.service_setting_item_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceSettingItemPostResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_item_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_item** | [**ServiceItem**](ServiceItem.md) | 服务配置实体 | [optional] |

### Return type

[**ServiceSettingItemPostResultApiResponse**](ServiceSettingItemPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## service_setting_item_put

> <BooleanApiResponse> service_setting_item_put(id, opts)

更新服务配置

根据服务配置ID更新服务配置信息

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ServiceSettingApi.new
id = 789 # Integer | 服务配置ID
opts = {
  service_item: ZSGFClient::ServiceItem.new # ServiceItem | 服务配置实体
}

begin
  # 更新服务配置
  result = api_instance.service_setting_item_put(id, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_item_put: #{e}"
end
```

#### Using the service_setting_item_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> service_setting_item_put_with_http_info(id, opts)

```ruby
begin
  # 更新服务配置
  data, status_code, headers = api_instance.service_setting_item_put_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_item_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务配置ID |  |
| **service_item** | [**ServiceItem**](ServiceItem.md) | 服务配置实体 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## service_setting_items

> <ServiceItemListApiResponse> service_setting_items(opts)

服务配置列表

根据业务代码、服务商代码、分组代码和显示标志获取服务配置列表

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ServiceSettingApi.new
opts = {
  biz_code: 'biz_code_example', # String | 业务代码
  provider_code: 'provider_code_example', # String | 服务商代码
  group_code: 'group_code_example', # String | 分组代码
  show_flag: true # Boolean | 是否显示
}

begin
  # 服务配置列表
  result = api_instance.service_setting_items(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_items: #{e}"
end
```

#### Using the service_setting_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceItemListApiResponse>, Integer, Hash)> service_setting_items_with_http_info(opts)

```ruby
begin
  # 服务配置列表
  data, status_code, headers = api_instance.service_setting_items_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceItemListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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


## service_setting_post

> <ServiceSettingSettingPostResultApiResponse> service_setting_post(opts)

增加配置

添加新的配置

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ServiceSettingApi.new
opts = {
  settings: ZSGFClient::Settings.new # Settings | 配置实体
}

begin
  # 增加配置
  result = api_instance.service_setting_post(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_post: #{e}"
end
```

#### Using the service_setting_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceSettingSettingPostResultApiResponse>, Integer, Hash)> service_setting_post_with_http_info(opts)

```ruby
begin
  # 增加配置
  data, status_code, headers = api_instance.service_setting_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceSettingSettingPostResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings** | [**Settings**](Settings.md) | 配置实体 | [optional] |

### Return type

[**ServiceSettingSettingPostResultApiResponse**](ServiceSettingSettingPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## service_setting_provider

> <ServiceProviderApiResponse> service_setting_provider(id)

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

api_instance = ZSGFClient::ServiceSettingApi.new
id = 789 # Integer | 服务商ID

begin
  # 获取服务商详情
  result = api_instance.service_setting_provider(id)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_provider: #{e}"
end
```

#### Using the service_setting_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceProviderApiResponse>, Integer, Hash)> service_setting_provider_with_http_info(id)

```ruby
begin
  # 获取服务商详情
  data, status_code, headers = api_instance.service_setting_provider_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceProviderApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务商ID |  |

### Return type

[**ServiceProviderApiResponse**](ServiceProviderApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## service_setting_provider_delete

> <BooleanApiResponse> service_setting_provider_delete(id)

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

api_instance = ZSGFClient::ServiceSettingApi.new
id = 789 # Integer | 服务商ID

begin
  # 删除服务商
  result = api_instance.service_setting_provider_delete(id)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_provider_delete: #{e}"
end
```

#### Using the service_setting_provider_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> service_setting_provider_delete_with_http_info(id)

```ruby
begin
  # 删除服务商
  data, status_code, headers = api_instance.service_setting_provider_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_provider_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务商ID |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## service_setting_provider_post

> <ServiceSettingProviderPostResultApiResponse> service_setting_provider_post(opts)

添加服务商

添加新的服务商

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ServiceSettingApi.new
opts = {
  service_provider: ZSGFClient::ServiceProvider.new # ServiceProvider | 服务商实体
}

begin
  # 添加服务商
  result = api_instance.service_setting_provider_post(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_provider_post: #{e}"
end
```

#### Using the service_setting_provider_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceSettingProviderPostResultApiResponse>, Integer, Hash)> service_setting_provider_post_with_http_info(opts)

```ruby
begin
  # 添加服务商
  data, status_code, headers = api_instance.service_setting_provider_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceSettingProviderPostResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_provider_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_provider** | [**ServiceProvider**](ServiceProvider.md) | 服务商实体 | [optional] |

### Return type

[**ServiceSettingProviderPostResultApiResponse**](ServiceSettingProviderPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## service_setting_provider_put

> <BooleanApiResponse> service_setting_provider_put(id, opts)

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

api_instance = ZSGFClient::ServiceSettingApi.new
id = 789 # Integer | 服务商ID
opts = {
  service_provider: ZSGFClient::ServiceProvider.new # ServiceProvider | 服务商实体
}

begin
  # 更新服务商
  result = api_instance.service_setting_provider_put(id, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_provider_put: #{e}"
end
```

#### Using the service_setting_provider_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> service_setting_provider_put_with_http_info(id, opts)

```ruby
begin
  # 更新服务商
  data, status_code, headers = api_instance.service_setting_provider_put_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_provider_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务商ID |  |
| **service_provider** | [**ServiceProvider**](ServiceProvider.md) | 服务商实体 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## service_setting_providers

> <ServiceProviderListApiResponse> service_setting_providers(opts)

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

api_instance = ZSGFClient::ServiceSettingApi.new
opts = {
  biz_code: 'biz_code_example', # String | 业务代码
  show_flag: true # Boolean | 是否显示
}

begin
  # 获取服务商列表
  result = api_instance.service_setting_providers(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_providers: #{e}"
end
```

#### Using the service_setting_providers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceProviderListApiResponse>, Integer, Hash)> service_setting_providers_with_http_info(opts)

```ruby
begin
  # 获取服务商列表
  data, status_code, headers = api_instance.service_setting_providers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceProviderListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_providers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **biz_code** | **String** | 业务代码 | [optional] |
| **show_flag** | **Boolean** | 是否显示 | [optional][default to false] |

### Return type

[**ServiceProviderListApiResponse**](ServiceProviderListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## service_setting_put

> <BooleanApiResponse> service_setting_put(id, opts)

更新配置

根据配置ID更新配置信息

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ServiceSettingApi.new
id = 789 # Integer | 配置ID
opts = {
  settings: ZSGFClient::Settings.new # Settings | 配置实体
}

begin
  # 更新配置
  result = api_instance.service_setting_put(id, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_put: #{e}"
end
```

#### Using the service_setting_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> service_setting_put_with_http_info(id, opts)

```ruby
begin
  # 更新配置
  data, status_code, headers = api_instance.service_setting_put_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_setting_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 配置ID |  |
| **settings** | [**Settings**](Settings.md) | 配置实体 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## service_settings

> <SettingsListApiResponse> service_settings(biz_code, biz_id, opts)

获取配置列表

根据业务代码、业务标识、服务商代码、分组代码、标签和配置项代码获取配置列表

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ServiceSettingApi.new
biz_code = 'biz_code_example' # String | 业务代码
biz_id = 'biz_id_example' # String | 业务标识
opts = {
  provider_code: 'provider_code_example', # String | 服务商代码
  group_code: 'group_code_example', # String | 分组代码
  tag: 'tag_example', # String | 标签
  code: 'code_example' # String | 配置项代码
}

begin
  # 获取配置列表
  result = api_instance.service_settings(biz_code, biz_id, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_settings: #{e}"
end
```

#### Using the service_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SettingsListApiResponse>, Integer, Hash)> service_settings_with_http_info(biz_code, biz_id, opts)

```ruby
begin
  # 获取配置列表
  data, status_code, headers = api_instance.service_settings_with_http_info(biz_code, biz_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SettingsListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ServiceSettingApi->service_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **biz_code** | **String** | 业务代码 |  |
| **biz_id** | **String** | 业务标识 |  |
| **provider_code** | **String** | 服务商代码 | [optional] |
| **group_code** | **String** | 分组代码 | [optional] |
| **tag** | **String** | 标签 | [optional] |
| **code** | **String** | 配置项代码 | [optional] |

### Return type

[**SettingsListApiResponse**](SettingsListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

