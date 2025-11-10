# ZSGFClient::UserLocationApi

All URIs are relative to *https://api-dev.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**user_location**](UserLocationApi.md#user_location) | **GET** /UserLocation/{appKey}/{id} | 获取位置详情 |
| [**user_location_delete**](UserLocationApi.md#user_location_delete) | **DELETE** /UserLocation/{appKey}/{id} | 删除位置 |
| [**user_location_post**](UserLocationApi.md#user_location_post) | **POST** /UserLocation/{appKey} | 添加位置 |
| [**user_location_put**](UserLocationApi.md#user_location_put) | **PUT** /UserLocation/{appKey}/{id} | 更新位置 |
| [**user_locations**](UserLocationApi.md#user_locations) | **GET** /UserLocation/{appKey} | 获取位置列表 |


## user_location

> <GeoLocationModelApiResponse> user_location(id, app_key, opts)

获取位置详情

根据位置ID获取位置详情

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserLocationApi.new
id = 789 # Integer | 位置ID
app_key = 'app_key_example' # String | 
opts = {
  user_id: 'user_id_example' # String | 
}

begin
  # 获取位置详情
  result = api_instance.user_location(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserLocationApi->user_location: #{e}"
end
```

#### Using the user_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeoLocationModelApiResponse>, Integer, Hash)> user_location_with_http_info(id, app_key, opts)

```ruby
begin
  # 获取位置详情
  data, status_code, headers = api_instance.user_location_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeoLocationModelApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserLocationApi->user_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 位置ID |  |
| **app_key** | **String** |  |  |
| **user_id** | **String** |  | [optional][default to &#39;&#39;] |

### Return type

[**GeoLocationModelApiResponse**](GeoLocationModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_location_delete

> <BooleanApiResponse> user_location_delete(id, app_key, opts)

删除位置

根据位置ID删除位置信息

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserLocationApi.new
id = 789 # Integer | 位置ID
app_key = 'app_key_example' # String | 
opts = {
  user_id: 'user_id_example' # String | 
}

begin
  # 删除位置
  result = api_instance.user_location_delete(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserLocationApi->user_location_delete: #{e}"
end
```

#### Using the user_location_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_location_delete_with_http_info(id, app_key, opts)

```ruby
begin
  # 删除位置
  data, status_code, headers = api_instance.user_location_delete_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserLocationApi->user_location_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 位置ID |  |
| **app_key** | **String** |  |  |
| **user_id** | **String** |  | [optional][default to &#39;&#39;] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_location_post

> <UserLocationPostResultApiResponse> user_location_post(app_key, opts)

添加位置

添加新的位置信息

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserLocationApi.new
app_key = 'app_key_example' # String | 
opts = {
  user_id: 'user_id_example', # String | 
  geo_location_model: ZSGFClient::GeoLocationModel.new({latitude: 3.56, longitude: 3.56, location_type: 'location_type_example'}) # GeoLocationModel | 位置信息
}

begin
  # 添加位置
  result = api_instance.user_location_post(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserLocationApi->user_location_post: #{e}"
end
```

#### Using the user_location_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserLocationPostResultApiResponse>, Integer, Hash)> user_location_post_with_http_info(app_key, opts)

```ruby
begin
  # 添加位置
  data, status_code, headers = api_instance.user_location_post_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserLocationPostResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserLocationApi->user_location_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **user_id** | **String** |  | [optional][default to &#39;&#39;] |
| **geo_location_model** | [**GeoLocationModel**](GeoLocationModel.md) | 位置信息 | [optional] |

### Return type

[**UserLocationPostResultApiResponse**](UserLocationPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_location_put

> <BooleanApiResponse> user_location_put(id, app_key, opts)

更新位置

此方法用于更新指定位置ID的位置信息。如果位置不存在，则创建一个新的位置。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserLocationApi.new
id = 789 # Integer | 位置ID
app_key = 'app_key_example' # String | 
opts = {
  user_id: 'user_id_example', # String | 
  geo_location_model: ZSGFClient::GeoLocationModel.new({latitude: 3.56, longitude: 3.56, location_type: 'location_type_example'}) # GeoLocationModel | 位置信息
}

begin
  # 更新位置
  result = api_instance.user_location_put(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserLocationApi->user_location_put: #{e}"
end
```

#### Using the user_location_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_location_put_with_http_info(id, app_key, opts)

```ruby
begin
  # 更新位置
  data, status_code, headers = api_instance.user_location_put_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserLocationApi->user_location_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 位置ID |  |
| **app_key** | **String** |  |  |
| **user_id** | **String** |  | [optional][default to &#39;&#39;] |
| **geo_location_model** | [**GeoLocationModel**](GeoLocationModel.md) | 位置信息 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_locations

> <UserLocationsResultApiResponse> user_locations(app_key, opts)

获取位置列表

根据条件获取位置列表

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserLocationApi.new
app_key = 'app_key_example' # String | 
opts = {
  tag: 'tag_example', # String | 标签
  type: 'type_example', # String | 分类
  x: 1.2, # Float | 纬度
  y: 1.2, # Float | 经度
  sphere: 789, # Integer | 附近距离，单位：米
  skip: 56, # Integer | 跳过的记录数
  take: 56, # Integer | 获取的记录数
  user_id: 'user_id_example' # String | 
}

begin
  # 获取位置列表
  result = api_instance.user_locations(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserLocationApi->user_locations: #{e}"
end
```

#### Using the user_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserLocationsResultApiResponse>, Integer, Hash)> user_locations_with_http_info(app_key, opts)

```ruby
begin
  # 获取位置列表
  data, status_code, headers = api_instance.user_locations_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserLocationsResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserLocationApi->user_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **tag** | **String** | 标签 | [optional] |
| **type** | **String** | 分类 | [optional] |
| **x** | **Float** | 纬度 | [optional] |
| **y** | **Float** | 经度 | [optional] |
| **sphere** | **Integer** | 附近距离，单位：米 | [optional] |
| **skip** | **Integer** | 跳过的记录数 | [optional] |
| **take** | **Integer** | 获取的记录数 | [optional][default to 10] |
| **user_id** | **String** |  | [optional][default to &#39;&#39;] |

### Return type

[**UserLocationsResultApiResponse**](UserLocationsResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

