# ZSGFClient::AppApi

All URIs are relative to *https://api.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**app**](AppApi.md#app) | **GET** /App/{appKey} | 应用详情 |
| [**app2_fa**](AppApi.md#app2_fa) | **GET** /App/{appKey}/2FA | 双因素验证 获取 |
| [**app2_fa_check**](AppApi.md#app2_fa_check) | **GET** /App/{appKey}/2FACheck | 双因素验证 验证 |
| [**app_check_version**](AppApi.md#app_check_version) | **GET** /App/{appKey}/CheckVersion | 更新应用数据库 |
| [**app_delete**](AppApi.md#app_delete) | **DELETE** /App/{appKey} | 删除应用 |
| [**app_info**](AppApi.md#app_info) | **GET** /App/{appKey}/Info | 应用详情 |
| [**app_post**](AppApi.md#app_post) | **POST** /App | 创建应用 |
| [**app_put**](AppApi.md#app_put) | **PUT** /App/{appKey} | 更新应用 |
| [**app_transfer**](AppApi.md#app_transfer) | **GET** /App/{appKey}/Transfer | 转移应用 |
| [**apps**](AppApi.md#apps) | **GET** /App | 应用列表 |


## app

> <AppApiResponse> app(app_key)

应用详情

根据应用Key获取应用的详细信息。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppApi.new
app_key = 'app_key_example' # String | 

begin
  # 应用详情
  result = api_instance.app(app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app: #{e}"
end
```

#### Using the app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppApiResponse>, Integer, Hash)> app_with_http_info(app_key)

```ruby
begin
  # 应用详情
  data, status_code, headers = api_instance.app_with_http_info(app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |

### Return type

[**AppApiResponse**](AppApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app2_fa

> <SetupCodeApiResponse> app2_fa(app_key)

双因素验证 获取

获取应用的双因素验证信息。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppApi.new
app_key = 'app_key_example' # String | 

begin
  # 双因素验证 获取
  result = api_instance.app2_fa(app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app2_fa: #{e}"
end
```

#### Using the app2_fa_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupCodeApiResponse>, Integer, Hash)> app2_fa_with_http_info(app_key)

```ruby
begin
  # 双因素验证 获取
  data, status_code, headers = api_instance.app2_fa_with_http_info(app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupCodeApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app2_fa_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |

### Return type

[**SetupCodeApiResponse**](SetupCodeApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app2_fa_check

> <BooleanApiResponse> app2_fa_check(app_key, opts)

双因素验证 验证

验证应用的双因素验证代码。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppApi.new
app_key = 'app_key_example' # String | 
opts = {
  code: 'code_example' # String | 双因素验证代码
}

begin
  # 双因素验证 验证
  result = api_instance.app2_fa_check(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app2_fa_check: #{e}"
end
```

#### Using the app2_fa_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> app2_fa_check_with_http_info(app_key, opts)

```ruby
begin
  # 双因素验证 验证
  data, status_code, headers = api_instance.app2_fa_check_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app2_fa_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **code** | **String** | 双因素验证代码 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_check_version

> <AppCheckVersionResultApiResponse> app_check_version(app_key, opts)

更新应用数据库

检查应用数据库的版本，如果有未应用的迁移且checkOnly为false，则应用这些迁移。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppApi.new
app_key = 'app_key_example' # String | 
opts = {
  check_only: true # Boolean | 是否仅检查版本
}

begin
  # 更新应用数据库
  result = api_instance.app_check_version(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app_check_version: #{e}"
end
```

#### Using the app_check_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppCheckVersionResultApiResponse>, Integer, Hash)> app_check_version_with_http_info(app_key, opts)

```ruby
begin
  # 更新应用数据库
  data, status_code, headers = api_instance.app_check_version_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppCheckVersionResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app_check_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **check_only** | **Boolean** | 是否仅检查版本 | [optional][default to true] |

### Return type

[**AppCheckVersionResultApiResponse**](AppCheckVersionResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_delete

> <BooleanApiResponse> app_delete(app_key)

删除应用

根据应用Key删除应用。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppApi.new
app_key = 'app_key_example' # String | 

begin
  # 删除应用
  result = api_instance.app_delete(app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app_delete: #{e}"
end
```

#### Using the app_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> app_delete_with_http_info(app_key)

```ruby
begin
  # 删除应用
  data, status_code, headers = api_instance.app_delete_with_http_info(app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_info

> <AppInfoResultApiResponse> app_info(app_key, opts)

应用详情

根据应用Key获取应用的详细信息和属性。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppApi.new
app_key = 'app_key_example' # String | 
opts = {
  prop_code: 'prop_code_example' # String | 属性代码
}

begin
  # 应用详情
  result = api_instance.app_info(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app_info: #{e}"
end
```

#### Using the app_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppInfoResultApiResponse>, Integer, Hash)> app_info_with_http_info(app_key, opts)

```ruby
begin
  # 应用详情
  data, status_code, headers = api_instance.app_info_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppInfoResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **prop_code** | **String** | 属性代码 | [optional] |

### Return type

[**AppInfoResultApiResponse**](AppInfoResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_post

> <AppPostResultApiResponse> app_post(opts)

创建应用

创建一个新的应用。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppApi.new
opts = {
  app: ZSGFClient::App.new # App | 应用对象
}

begin
  # 创建应用
  result = api_instance.app_post(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app_post: #{e}"
end
```

#### Using the app_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppPostResultApiResponse>, Integer, Hash)> app_post_with_http_info(opts)

```ruby
begin
  # 创建应用
  data, status_code, headers = api_instance.app_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppPostResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app** | [**App**](App.md) | 应用对象 | [optional] |

### Return type

[**AppPostResultApiResponse**](AppPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## app_put

> <BooleanApiResponse> app_put(app_key, opts)

更新应用

根据应用Key更新应用信息。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppApi.new
app_key = 'app_key_example' # String | 
opts = {
  app: ZSGFClient::App.new # App | 应用对象
}

begin
  # 更新应用
  result = api_instance.app_put(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app_put: #{e}"
end
```

#### Using the app_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> app_put_with_http_info(app_key, opts)

```ruby
begin
  # 更新应用
  data, status_code, headers = api_instance.app_put_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **app** | [**App**](App.md) | 应用对象 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## app_transfer

> <AppApiResponse> app_transfer(app_key, opts)

转移应用

将应用转移到另一个项目。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppApi.new
app_key = 'app_key_example' # String | 
opts = {
  project_id: 789 # Integer | 目标项目ID
}

begin
  # 转移应用
  result = api_instance.app_transfer(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app_transfer: #{e}"
end
```

#### Using the app_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppApiResponse>, Integer, Hash)> app_transfer_with_http_info(app_key, opts)

```ruby
begin
  # 转移应用
  data, status_code, headers = api_instance.app_transfer_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->app_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **project_id** | **Integer** | 目标项目ID | [optional] |

### Return type

[**AppApiResponse**](AppApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## apps

> <AppListResultApiResponse> apps(opts)

应用列表

根据项目ID获取应用列表，支持分页。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::AppApi.new
opts = {
  project_id: 789, # Integer | 项目ID
  skip: 56, # Integer | 跳过的记录数
  take: 56 # Integer | 获取的记录数
}

begin
  # 应用列表
  result = api_instance.apps(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->apps: #{e}"
end
```

#### Using the apps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppListResultApiResponse>, Integer, Hash)> apps_with_http_info(opts)

```ruby
begin
  # 应用列表
  data, status_code, headers = api_instance.apps_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppListResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling AppApi->apps_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **Integer** | 项目ID | [optional] |
| **skip** | **Integer** | 跳过的记录数 | [optional] |
| **take** | **Integer** | 获取的记录数 | [optional] |

### Return type

[**AppListResultApiResponse**](AppListResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

