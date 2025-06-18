# ZSGFClient::FileApi

All URIs are relative to *https://api-dev.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**file_create_folder**](FileApi.md#file_create_folder) | **POST** /File/{appKey}/CreateFolder | 创建文件夹 |
| [**file_delete**](FileApi.md#file_delete) | **DELETE** /File/{appKey} | 删除文件 / 文件夹 |
| [**file_rename**](FileApi.md#file_rename) | **POST** /File/{appKey}/Rename | 重命名文件 / 文件夹 |
| [**file_upload**](FileApi.md#file_upload) | **POST** /File/{appKey}/Upload | 上传文件 |
| [**files**](FileApi.md#files) | **GET** /File/{appKey} | 获取文件列表 |


## file_create_folder

> <BooleanApiResponse> file_create_folder(app_key, opts)

创建文件夹

在指定路径创建文件夹

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::FileApi.new
app_key = 'app_key_example' # String | 
opts = {
  path: 'path_example' # String | 文件夹路径
}

begin
  # 创建文件夹
  result = api_instance.file_create_folder(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling FileApi->file_create_folder: #{e}"
end
```

#### Using the file_create_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> file_create_folder_with_http_info(app_key, opts)

```ruby
begin
  # 创建文件夹
  data, status_code, headers = api_instance.file_create_folder_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling FileApi->file_create_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **path** | **String** | 文件夹路径 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## file_delete

> <BooleanApiResponse> file_delete(app_key, opts)

删除文件 / 文件夹

根据指定路径删除文件或文件夹

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::FileApi.new
app_key = 'app_key_example' # String | 
opts = {
  path: 'path_example' # String | 文件 / 文件夹路径
}

begin
  # 删除文件 / 文件夹
  result = api_instance.file_delete(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling FileApi->file_delete: #{e}"
end
```

#### Using the file_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> file_delete_with_http_info(app_key, opts)

```ruby
begin
  # 删除文件 / 文件夹
  data, status_code, headers = api_instance.file_delete_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling FileApi->file_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **path** | **String** | 文件 / 文件夹路径 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## file_rename

> <BooleanApiResponse> file_rename(app_key, opts)

重命名文件 / 文件夹

将指定的文件或文件夹重命名

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::FileApi.new
app_key = 'app_key_example' # String | 
opts = {
  source_name: 'source_name_example', # String | 原文件 / 文件夹名称
  dest_name: 'dest_name_example' # String | 新文件 / 文件夹名称
}

begin
  # 重命名文件 / 文件夹
  result = api_instance.file_rename(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling FileApi->file_rename: #{e}"
end
```

#### Using the file_rename_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> file_rename_with_http_info(app_key, opts)

```ruby
begin
  # 重命名文件 / 文件夹
  data, status_code, headers = api_instance.file_rename_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling FileApi->file_rename_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **source_name** | **String** | 原文件 / 文件夹名称 | [optional] |
| **dest_name** | **String** | 新文件 / 文件夹名称 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## file_upload

> <StringApiResponse> file_upload(app_key, opts)

上传文件

将文件上传到指定路径

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::FileApi.new
app_key = 'app_key_example' # String | 
opts = {
  path: 'path_example', # String | 文件夹路径
  file: File.new('/path/to/some/file') # File | 上传的文件
}

begin
  # 上传文件
  result = api_instance.file_upload(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling FileApi->file_upload: #{e}"
end
```

#### Using the file_upload_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringApiResponse>, Integer, Hash)> file_upload_with_http_info(app_key, opts)

```ruby
begin
  # 上传文件
  data, status_code, headers = api_instance.file_upload_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling FileApi->file_upload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **path** | **String** | 文件夹路径 | [optional] |
| **file** | **File** | 上传的文件 | [optional] |

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## files

> <FileListResultApiResponse> files(app_key, opts)

获取文件列表

根据指定路径获取文件和文件夹列表

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::FileApi.new
app_key = 'app_key_example' # String | 
opts = {
  path: 'path_example', # String | 文件路径
  skip: 56, # Integer | 跳过的记录数
  take: 56 # Integer | 获取的记录数
}

begin
  # 获取文件列表
  result = api_instance.files(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling FileApi->files: #{e}"
end
```

#### Using the files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileListResultApiResponse>, Integer, Hash)> files_with_http_info(app_key, opts)

```ruby
begin
  # 获取文件列表
  data, status_code, headers = api_instance.files_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileListResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling FileApi->files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **path** | **String** | 文件路径 | [optional] |
| **skip** | **Integer** | 跳过的记录数 | [optional][default to 0] |
| **take** | **Integer** | 获取的记录数 | [optional][default to 100] |

### Return type

[**FileListResultApiResponse**](FileListResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

