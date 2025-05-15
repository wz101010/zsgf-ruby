# ZSGFClient::ProjectApi

All URIs are relative to *https://api.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**project**](ProjectApi.md#project) | **GET** /Project/{id} | 项目详情 |
| [**project_delete**](ProjectApi.md#project_delete) | **DELETE** /Project/{id} | 删除项目 |
| [**project_post**](ProjectApi.md#project_post) | **POST** /Project | 创建项目 |
| [**project_put**](ProjectApi.md#project_put) | **PUT** /Project/{id} | 更新项目 |
| [**projects**](ProjectApi.md#projects) | **GET** /Project | 项目列表 |


## project

> <ProjectApiResponse> project(id)

项目详情

根据项目ID获取项目详情

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ProjectApi.new
id = 789 # Integer | 

begin
  # 项目详情
  result = api_instance.project(id)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ProjectApi->project: #{e}"
end
```

#### Using the project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectApiResponse>, Integer, Hash)> project_with_http_info(id)

```ruby
begin
  # 项目详情
  data, status_code, headers = api_instance.project_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ProjectApi->project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |

### Return type

[**ProjectApiResponse**](ProjectApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## project_delete

> <BooleanApiResponse> project_delete(id)

删除项目

根据项目ID删除项目

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ProjectApi.new
id = 789 # Integer | 

begin
  # 删除项目
  result = api_instance.project_delete(id)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ProjectApi->project_delete: #{e}"
end
```

#### Using the project_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> project_delete_with_http_info(id)

```ruby
begin
  # 删除项目
  data, status_code, headers = api_instance.project_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ProjectApi->project_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## project_post

> <PostResultApiResponse> project_post(opts)

创建项目

创建一个新项目

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ProjectApi.new
opts = {
  project: ZSGFClient::Project.new # Project | 
}

begin
  # 创建项目
  result = api_instance.project_post(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ProjectApi->project_post: #{e}"
end
```

#### Using the project_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostResultApiResponse>, Integer, Hash)> project_post_with_http_info(opts)

```ruby
begin
  # 创建项目
  data, status_code, headers = api_instance.project_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ProjectApi->project_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project** | [**Project**](Project.md) |  | [optional] |

### Return type

[**PostResultApiResponse**](PostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## project_put

> <BooleanApiResponse> project_put(id, opts)

更新项目

根据项目ID更新项目

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ProjectApi.new
id = 'id_example' # String | 
opts = {
  project: ZSGFClient::Project.new # Project | 
}

begin
  # 更新项目
  result = api_instance.project_put(id, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ProjectApi->project_put: #{e}"
end
```

#### Using the project_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> project_put_with_http_info(id, opts)

```ruby
begin
  # 更新项目
  data, status_code, headers = api_instance.project_put_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ProjectApi->project_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **project** | [**Project**](Project.md) |  | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## projects

> <ProjectListResultApiResponse> projects(opts)

项目列表

获取项目列表，支持分页

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::ProjectApi.new
opts = {
  skip: 56, # Integer | 
  take: 56 # Integer | 
}

begin
  # 项目列表
  result = api_instance.projects(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling ProjectApi->projects: #{e}"
end
```

#### Using the projects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectListResultApiResponse>, Integer, Hash)> projects_with_http_info(opts)

```ruby
begin
  # 项目列表
  data, status_code, headers = api_instance.projects_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectListResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling ProjectApi->projects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **skip** | **Integer** |  | [optional] |
| **take** | **Integer** |  | [optional] |

### Return type

[**ProjectListResultApiResponse**](ProjectListResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

