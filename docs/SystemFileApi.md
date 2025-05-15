# ZSGFClient::SystemFileApi

All URIs are relative to *https://api.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**system_file_create_folder**](SystemFileApi.md#system_file_create_folder) | **POST** /SystemFile/CreateFolder | 创建文件夹 |
| [**system_file_delete**](SystemFileApi.md#system_file_delete) | **DELETE** /SystemFile | 删除文件 |
| [**system_file_rename**](SystemFileApi.md#system_file_rename) | **POST** /SystemFile/Rename | 重命名文件 |
| [**system_file_upload**](SystemFileApi.md#system_file_upload) | **POST** /SystemFile | 上传文件 |
| [**system_files**](SystemFileApi.md#system_files) | **GET** /SystemFile | 获取文件列表 |


## system_file_create_folder

> <BooleanApiResponse> system_file_create_folder(opts)

创建文件夹

根据指定路径创建文件夹

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::SystemFileApi.new
opts = {
  path: 'path_example' # String | 文件夹路径
}

begin
  # 创建文件夹
  result = api_instance.system_file_create_folder(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling SystemFileApi->system_file_create_folder: #{e}"
end
```

#### Using the system_file_create_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> system_file_create_folder_with_http_info(opts)

```ruby
begin
  # 创建文件夹
  data, status_code, headers = api_instance.system_file_create_folder_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling SystemFileApi->system_file_create_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** | 文件夹路径 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## system_file_delete

> <BooleanApiResponse> system_file_delete(opts)

删除文件

根据指定路径删除文件

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::SystemFileApi.new
opts = {
  path: 'path_example' # String | 文件路径
}

begin
  # 删除文件
  result = api_instance.system_file_delete(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling SystemFileApi->system_file_delete: #{e}"
end
```

#### Using the system_file_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> system_file_delete_with_http_info(opts)

```ruby
begin
  # 删除文件
  data, status_code, headers = api_instance.system_file_delete_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling SystemFileApi->system_file_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** | 文件路径 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## system_file_rename

> <BooleanApiResponse> system_file_rename(opts)

重命名文件

根据指定的源文件名和目标文件名重命名文件

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::SystemFileApi.new
opts = {
  source_name: 'source_name_example', # String | 源文件名
  dest_name: 'dest_name_example' # String | 目标文件名
}

begin
  # 重命名文件
  result = api_instance.system_file_rename(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling SystemFileApi->system_file_rename: #{e}"
end
```

#### Using the system_file_rename_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> system_file_rename_with_http_info(opts)

```ruby
begin
  # 重命名文件
  data, status_code, headers = api_instance.system_file_rename_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling SystemFileApi->system_file_rename_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_name** | **String** | 源文件名 | [optional] |
| **dest_name** | **String** | 目标文件名 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## system_file_upload

> <StringApiResponse> system_file_upload(opts)

上传文件

根据指定路径上传文件

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::SystemFileApi.new
opts = {
  path: 'path_example', # String | 上传的路径
  file: File.new('/path/to/some/file') # File | 上传的文件
}

begin
  # 上传文件
  result = api_instance.system_file_upload(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling SystemFileApi->system_file_upload: #{e}"
end
```

#### Using the system_file_upload_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringApiResponse>, Integer, Hash)> system_file_upload_with_http_info(opts)

```ruby
begin
  # 上传文件
  data, status_code, headers = api_instance.system_file_upload_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling SystemFileApi->system_file_upload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** | 上传的路径 | [optional] |
| **file** | **File** | 上传的文件 | [optional] |

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## system_files

> <SystemFileListResultApiResponse> system_files(opts)

获取文件列表

根据指定路径获取文件列表

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::SystemFileApi.new
opts = {
  path: 'path_example' # String | 文件路径
}

begin
  # 获取文件列表
  result = api_instance.system_files(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling SystemFileApi->system_files: #{e}"
end
```

#### Using the system_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SystemFileListResultApiResponse>, Integer, Hash)> system_files_with_http_info(opts)

```ruby
begin
  # 获取文件列表
  data, status_code, headers = api_instance.system_files_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SystemFileListResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling SystemFileApi->system_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** | 文件路径 | [optional] |

### Return type

[**SystemFileListResultApiResponse**](SystemFileListResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

