# ZSGFClient::StorageApi

All URIs are relative to *https://api-dev.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**storage_aggregate**](StorageApi.md#storage_aggregate) | **GET** /Storage/{appKey}/{table}/Aggregate | 聚合查询 |
| [**storage_delete**](StorageApi.md#storage_delete) | **DELETE** /Storage/{appKey}/{table}/{id} | 删除数据 |
| [**storage_detail**](StorageApi.md#storage_detail) | **GET** /Storage/{appKey}/{table}/{id} | 数据详情 |
| [**storage_list**](StorageApi.md#storage_list) | **GET** /Storage/{appKey}/{table} | 查询数据 |
| [**storage_post**](StorageApi.md#storage_post) | **POST** /Storage/{appKey}/{table} | 添加数据 |
| [**storage_put**](StorageApi.md#storage_put) | **PUT** /Storage/{appKey}/{table}/{id} | 更新数据 |


## storage_aggregate

> <ObjectListApiResponse> storage_aggregate(table, app_key, opts)

聚合查询

根据聚合管道查询指定表中的数据

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::StorageApi.new
table = 'table_example' # String | 表名称
app_key = 'app_key_example' # String | 
opts = {
  pipeline: 'pipeline_example' # String | 构建聚合查询
}

begin
  # 聚合查询
  result = api_instance.storage_aggregate(table, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_aggregate: #{e}"
end
```

#### Using the storage_aggregate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectListApiResponse>, Integer, Hash)> storage_aggregate_with_http_info(table, app_key, opts)

```ruby
begin
  # 聚合查询
  data, status_code, headers = api_instance.storage_aggregate_with_http_info(table, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_aggregate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table** | **String** | 表名称 |  |
| **app_key** | **String** |  |  |
| **pipeline** | **String** | 构建聚合查询 | [optional] |

### Return type

[**ObjectListApiResponse**](ObjectListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_delete

> <BooleanApiResponse> storage_delete(table, id, app_key)

删除数据

删除指定表中指定ID的数据

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::StorageApi.new
table = 'table_example' # String | 表名称
id = 'id_example' # String | 数据ID
app_key = 'app_key_example' # String | 

begin
  # 删除数据
  result = api_instance.storage_delete(table, id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_delete: #{e}"
end
```

#### Using the storage_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> storage_delete_with_http_info(table, id, app_key)

```ruby
begin
  # 删除数据
  data, status_code, headers = api_instance.storage_delete_with_http_info(table, id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table** | **String** | 表名称 |  |
| **id** | **String** | 数据ID |  |
| **app_key** | **String** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_detail

> <ObjectApiResponse> storage_detail(table, id, app_key, opts)

数据详情

获取指定表中指定ID的数据详情

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::StorageApi.new
table = 'table_example' # String | 表名称
id = 'id_example' # String | 数据ID
app_key = 'app_key_example' # String | 
opts = {
  project: 'project_example' # String | json格式
}

begin
  # 数据详情
  result = api_instance.storage_detail(table, id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_detail: #{e}"
end
```

#### Using the storage_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectApiResponse>, Integer, Hash)> storage_detail_with_http_info(table, id, app_key, opts)

```ruby
begin
  # 数据详情
  data, status_code, headers = api_instance.storage_detail_with_http_info(table, id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table** | **String** | 表名称 |  |
| **id** | **String** | 数据ID |  |
| **app_key** | **String** |  |  |
| **project** | **String** | json格式 | [optional] |

### Return type

[**ObjectApiResponse**](ObjectApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_list

> <StorageListResultApiResponse> storage_list(table, app_key, opts)

查询数据

根据条件查询指定表中的数据

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::StorageApi.new
table = 'table_example' # String | 表名称
app_key = 'app_key_example' # String | 
opts = {
  filter: 'filter_example', # String | 过滤，json格式
  project: 'project_example', # String | 字段映射，json格式
  sort: 'sort_example', # String | 排序，json格式
  start_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 开始时间
  end_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 结束时间
  explain: true, # Boolean | 查看执行计划
  take: 56, # Integer | 默认为10
  skip: 56 # Integer | 默认为0
}

begin
  # 查询数据
  result = api_instance.storage_list(table, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_list: #{e}"
end
```

#### Using the storage_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageListResultApiResponse>, Integer, Hash)> storage_list_with_http_info(table, app_key, opts)

```ruby
begin
  # 查询数据
  data, status_code, headers = api_instance.storage_list_with_http_info(table, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageListResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table** | **String** | 表名称 |  |
| **app_key** | **String** |  |  |
| **filter** | **String** | 过滤，json格式 | [optional] |
| **project** | **String** | 字段映射，json格式 | [optional] |
| **sort** | **String** | 排序，json格式 | [optional] |
| **start_time** | **Time** | 开始时间 | [optional] |
| **end_time** | **Time** | 结束时间 | [optional] |
| **explain** | **Boolean** | 查看执行计划 | [optional][default to false] |
| **take** | **Integer** | 默认为10 | [optional][default to 10] |
| **skip** | **Integer** | 默认为0 | [optional][default to 0] |

### Return type

[**StorageListResultApiResponse**](StorageListResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_post

> <StringApiResponse> storage_post(table, app_key, request_body)

添加数据

向指定表中添加数据，可以是单个json对象或json数组

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::StorageApi.new
table = 'table_example' # String | 表名称（小写字母加数字,1-50位）
app_key = 'app_key_example' # String | 
request_body = [3.56] # Array<Object> | json对象 / json数组

begin
  # 添加数据
  result = api_instance.storage_post(table, app_key, request_body)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_post: #{e}"
end
```

#### Using the storage_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringApiResponse>, Integer, Hash)> storage_post_with_http_info(table, app_key, request_body)

```ruby
begin
  # 添加数据
  data, status_code, headers = api_instance.storage_post_with_http_info(table, app_key, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table** | **String** | 表名称（小写字母加数字,1-50位） |  |
| **app_key** | **String** |  |  |
| **request_body** | [**Array&lt;Object&gt;**](Object.md) | json对象 / json数组 |  |

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## storage_put

> <BooleanApiResponse> storage_put(table, id, app_key, request_body, opts)

更新数据

更新指定表中指定ID的数据，可以选择全量更新或部分更新

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::StorageApi.new
table = 'table_example' # String | 表名称
id = 'id_example' # String | 数据ID
app_key = 'app_key_example' # String | 
request_body = [3.56] # Array<Object> | json格式
opts = {
  replace: true # Boolean | 是否为全量更新，默认为false
}

begin
  # 更新数据
  result = api_instance.storage_put(table, id, app_key, request_body, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_put: #{e}"
end
```

#### Using the storage_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> storage_put_with_http_info(table, id, app_key, request_body, opts)

```ruby
begin
  # 更新数据
  data, status_code, headers = api_instance.storage_put_with_http_info(table, id, app_key, request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table** | **String** | 表名称 |  |
| **id** | **String** | 数据ID |  |
| **app_key** | **String** |  |  |
| **request_body** | [**Array&lt;Object&gt;**](Object.md) | json格式 |  |
| **replace** | **Boolean** | 是否为全量更新，默认为false | [optional][default to false] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json

