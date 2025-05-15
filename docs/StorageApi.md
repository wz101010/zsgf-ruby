# ZSGFClient::StorageApi

All URIs are relative to *https://api.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**storage_aggregate**](StorageApi.md#storage_aggregate) | **GET** /Storage/{appKey}/{table}/Aggregate | 聚合查询 |
| [**storage_batch_update**](StorageApi.md#storage_batch_update) | **PUT** /Storage/{appKey}/{table}/batch-update | 批量更新指定条件的数据 |
| [**storage_clear**](StorageApi.md#storage_clear) | **DELETE** /Storage/{appKey}/{table}/Clear | 清空表数据 |
| [**storage_delete**](StorageApi.md#storage_delete) | **DELETE** /Storage/{appKey}/{table}/{id} | 删除数据 |
| [**storage_delete_index**](StorageApi.md#storage_delete_index) | **DELETE** /Storage/{appKey}/{table}/indexes | 删除索引 |
| [**storage_detail**](StorageApi.md#storage_detail) | **GET** /Storage/{appKey}/{table}/{id} | 数据详情 |
| [**storage_execute_function**](StorageApi.md#storage_execute_function) | **GET** /Storage/{appKey}/ExecuteFunction | 执行函数 |
| [**storage_export**](StorageApi.md#storage_export) | **GET** /Storage/{appKey}/{table}/Export | 导出数据 |
| [**storage_import**](StorageApi.md#storage_import) | **POST** /Storage/{appKey}/{table}/Import | 导入数据 |
| [**storage_indexes**](StorageApi.md#storage_indexes) | **GET** /Storage/{appKey}/{table}/Indexes | 获取索引 |
| [**storage_list**](StorageApi.md#storage_list) | **GET** /Storage/{appKey}/{table} | 查询数据 |
| [**storage_post**](StorageApi.md#storage_post) | **POST** /Storage/{appKey}/{table} | 添加数据 |
| [**storage_post_index**](StorageApi.md#storage_post_index) | **POST** /Storage/{appKey}/{table}/indexes | 添加索引 |
| [**storage_put**](StorageApi.md#storage_put) | **PUT** /Storage/{appKey}/{table}/{id} | 更新数据 |
| [**storage_remove**](StorageApi.md#storage_remove) | **DELETE** /Storage/{appKey}/{table}/Remove | 删除表 |
| [**storage_stats**](StorageApi.md#storage_stats) | **GET** /Storage/{appKey}/{table}/Stats | 数据表统计 |
| [**storage_tables**](StorageApi.md#storage_tables) | **GET** /Storage/{appKey}/Tables | 获取数据表 |


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


## storage_batch_update

> <BooleanApiResponse> storage_batch_update(table, filter, app_key, request_body, opts)

批量更新指定条件的数据

批量更新指定表中符合条件的文档，可以动态指定查询条件和更新字段

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
filter = 'filter_example' # String | 查询条件
app_key = 'app_key_example' # String | 
request_body = [3.56] # Array<Object> | 更新的字段
opts = {
  replace: true # Boolean | 是否为全量替换，默认为 false
}

begin
  # 批量更新指定条件的数据
  result = api_instance.storage_batch_update(table, filter, app_key, request_body, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_batch_update: #{e}"
end
```

#### Using the storage_batch_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> storage_batch_update_with_http_info(table, filter, app_key, request_body, opts)

```ruby
begin
  # 批量更新指定条件的数据
  data, status_code, headers = api_instance.storage_batch_update_with_http_info(table, filter, app_key, request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_batch_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table** | **String** | 表名称 |  |
| **filter** | **String** | 查询条件 |  |
| **app_key** | **String** |  |  |
| **request_body** | [**Array&lt;Object&gt;**](Object.md) | 更新的字段 |  |
| **replace** | **Boolean** | 是否为全量替换，默认为 false | [optional][default to false] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## storage_clear

> <Int64ApiResponse> storage_clear(table, app_key, opts)

清空表数据

根据筛选条件清空指定表中的数据

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
  filter: 'filter_example' # String | 筛选条件，json格式
}

begin
  # 清空表数据
  result = api_instance.storage_clear(table, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_clear: #{e}"
end
```

#### Using the storage_clear_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int64ApiResponse>, Integer, Hash)> storage_clear_with_http_info(table, app_key, opts)

```ruby
begin
  # 清空表数据
  data, status_code, headers = api_instance.storage_clear_with_http_info(table, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int64ApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_clear_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table** | **String** | 表名称 |  |
| **app_key** | **String** |  |  |
| **filter** | **String** | 筛选条件，json格式 | [optional] |

### Return type

[**Int64ApiResponse**](Int64ApiResponse.md)

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


## storage_delete_index

> <BooleanApiResponse> storage_delete_index(table, app_key, opts)

删除索引

删除指定表的指定索引

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
  index_name: 'index_name_example' # String | 索引名称
}

begin
  # 删除索引
  result = api_instance.storage_delete_index(table, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_delete_index: #{e}"
end
```

#### Using the storage_delete_index_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> storage_delete_index_with_http_info(table, app_key, opts)

```ruby
begin
  # 删除索引
  data, status_code, headers = api_instance.storage_delete_index_with_http_info(table, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_delete_index_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table** | **String** | 表名称 |  |
| **app_key** | **String** |  |  |
| **index_name** | **String** | 索引名称 | [optional] |

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


## storage_execute_function

> <ObjectApiResponse> storage_execute_function(nonce, timestamp, signature, app_key, opts)

执行函数

执行指定的函数

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
nonce = 'nonce_example' # String | 随机字符串
timestamp = 789 # Integer | 时间戳
signature = 'signature_example' # String | 签名
app_key = 'app_key_example' # String | 
opts = {
  execute_function_request: ZSGFClient::ExecuteFunctionRequest.new # ExecuteFunctionRequest | 函数请求参数
}

begin
  # 执行函数
  result = api_instance.storage_execute_function(nonce, timestamp, signature, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_execute_function: #{e}"
end
```

#### Using the storage_execute_function_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectApiResponse>, Integer, Hash)> storage_execute_function_with_http_info(nonce, timestamp, signature, app_key, opts)

```ruby
begin
  # 执行函数
  data, status_code, headers = api_instance.storage_execute_function_with_http_info(nonce, timestamp, signature, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_execute_function_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nonce** | **String** | 随机字符串 |  |
| **timestamp** | **Integer** | 时间戳 |  |
| **signature** | **String** | 签名 |  |
| **app_key** | **String** |  |  |
| **execute_function_request** | [**ExecuteFunctionRequest**](ExecuteFunctionRequest.md) | 函数请求参数 | [optional] |

### Return type

[**ObjectApiResponse**](ObjectApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## storage_export

> File storage_export(table, app_key, opts)

导出数据

根据筛选条件导出指定表中的数据

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
  filter: 'filter_example', # String | 筛选条件，json格式
  start_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 开始时间
  end_time: Time.parse('2013-10-20T19:20:30+01:00') # Time | 结束时间
}

begin
  # 导出数据
  result = api_instance.storage_export(table, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_export: #{e}"
end
```

#### Using the storage_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> storage_export_with_http_info(table, app_key, opts)

```ruby
begin
  # 导出数据
  data, status_code, headers = api_instance.storage_export_with_http_info(table, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table** | **String** | 表名称 |  |
| **app_key** | **String** |  |  |
| **filter** | **String** | 筛选条件，json格式 | [optional] |
| **start_time** | **Time** | 开始时间 | [optional] |
| **end_time** | **Time** | 结束时间 | [optional] |

### Return type

**File**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_import

> <BooleanApiResponse> storage_import(table, app_key, opts)

导入数据

从文件导入数据到指定表中

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
  file: File.new('/path/to/some/file') # File | 导入的文件
}

begin
  # 导入数据
  result = api_instance.storage_import(table, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_import: #{e}"
end
```

#### Using the storage_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> storage_import_with_http_info(table, app_key, opts)

```ruby
begin
  # 导入数据
  data, status_code, headers = api_instance.storage_import_with_http_info(table, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_import_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table** | **String** | 表名称 |  |
| **app_key** | **String** |  |  |
| **file** | **File** | 导入的文件 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## storage_indexes

> <ObjectListApiResponse> storage_indexes(table, app_key)

获取索引

获取指定表的索引列表

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

begin
  # 获取索引
  result = api_instance.storage_indexes(table, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_indexes: #{e}"
end
```

#### Using the storage_indexes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectListApiResponse>, Integer, Hash)> storage_indexes_with_http_info(table, app_key)

```ruby
begin
  # 获取索引
  data, status_code, headers = api_instance.storage_indexes_with_http_info(table, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_indexes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table** | **String** | 表名称 |  |
| **app_key** | **String** |  |  |

### Return type

[**ObjectListApiResponse**](ObjectListApiResponse.md)

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


## storage_post_index

> <StringApiResponse> storage_post_index(table, app_key, opts)

添加索引

为指定表添加索引

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
opts = {
  post_index_request: ZSGFClient::PostIndexRequest.new({model: { key: [3.56]}}) # PostIndexRequest | json对象 / json数组
}

begin
  # 添加索引
  result = api_instance.storage_post_index(table, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_post_index: #{e}"
end
```

#### Using the storage_post_index_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringApiResponse>, Integer, Hash)> storage_post_index_with_http_info(table, app_key, opts)

```ruby
begin
  # 添加索引
  data, status_code, headers = api_instance.storage_post_index_with_http_info(table, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_post_index_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table** | **String** | 表名称（小写字母加数字,1-50位） |  |
| **app_key** | **String** |  |  |
| **post_index_request** | [**PostIndexRequest**](PostIndexRequest.md) | json对象 / json数组 | [optional] |

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


## storage_remove

> <BooleanApiResponse> storage_remove(table, app_key)

删除表

删除指定表

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

begin
  # 删除表
  result = api_instance.storage_remove(table, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_remove: #{e}"
end
```

#### Using the storage_remove_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> storage_remove_with_http_info(table, app_key)

```ruby
begin
  # 删除表
  data, status_code, headers = api_instance.storage_remove_with_http_info(table, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_remove_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table** | **String** | 表名称 |  |
| **app_key** | **String** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_stats

> <ObjectApiResponse> storage_stats(table, app_key)

数据表统计

获取指定表的数据统计信息

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

begin
  # 数据表统计
  result = api_instance.storage_stats(table, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_stats: #{e}"
end
```

#### Using the storage_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectApiResponse>, Integer, Hash)> storage_stats_with_http_info(table, app_key)

```ruby
begin
  # 数据表统计
  data, status_code, headers = api_instance.storage_stats_with_http_info(table, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table** | **String** | 表名称 |  |
| **app_key** | **String** |  |  |

### Return type

[**ObjectApiResponse**](ObjectApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_tables

> <StringListApiResponse> storage_tables(app_key)

获取数据表

获取当前应用的所有数据表名称

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
app_key = 'app_key_example' # String | 

begin
  # 获取数据表
  result = api_instance.storage_tables(app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_tables: #{e}"
end
```

#### Using the storage_tables_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringListApiResponse>, Integer, Hash)> storage_tables_with_http_info(app_key)

```ruby
begin
  # 获取数据表
  data, status_code, headers = api_instance.storage_tables_with_http_info(app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling StorageApi->storage_tables_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |

### Return type

[**StringListApiResponse**](StringListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

