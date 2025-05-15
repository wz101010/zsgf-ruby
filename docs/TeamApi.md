# ZSGFClient::TeamApi

All URIs are relative to *https://api.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**team_delete**](TeamApi.md#team_delete) | **DELETE** /Team/{id} | 删除团队 |
| [**team_post**](TeamApi.md#team_post) | **POST** /Team | 创建团队 |
| [**team_put**](TeamApi.md#team_put) | **PUT** /Team/{id} | 更新团队信息 |
| [**teams**](TeamApi.md#teams) | **GET** /Team | 获取团队列表 |


## team_delete

> <BooleanApiResponse> team_delete(id)

删除团队

根据团队ID删除团队

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::TeamApi.new
id = 789 # Integer | 团队ID

begin
  # 删除团队
  result = api_instance.team_delete(id)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling TeamApi->team_delete: #{e}"
end
```

#### Using the team_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> team_delete_with_http_info(id)

```ruby
begin
  # 删除团队
  data, status_code, headers = api_instance.team_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling TeamApi->team_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 团队ID |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## team_post

> <BooleanApiResponse> team_post(opts)

创建团队

创建一个新的团队

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::TeamApi.new
opts = {
  team: ZSGFClient::Team.new # Team | 团队信息
}

begin
  # 创建团队
  result = api_instance.team_post(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling TeamApi->team_post: #{e}"
end
```

#### Using the team_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> team_post_with_http_info(opts)

```ruby
begin
  # 创建团队
  data, status_code, headers = api_instance.team_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling TeamApi->team_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team** | [**Team**](Team.md) | 团队信息 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## team_put

> <BooleanApiResponse> team_put(id, opts)

更新团队信息

根据团队ID更新团队信息

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::TeamApi.new
id = 789 # Integer | 团队ID
opts = {
  team: ZSGFClient::Team.new # Team | 团队信息
}

begin
  # 更新团队信息
  result = api_instance.team_put(id, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling TeamApi->team_put: #{e}"
end
```

#### Using the team_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> team_put_with_http_info(id, opts)

```ruby
begin
  # 更新团队信息
  data, status_code, headers = api_instance.team_put_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling TeamApi->team_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 团队ID |  |
| **team** | [**Team**](Team.md) | 团队信息 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## teams

> <ListResponseItemListApiResponse> teams(opts)

获取团队列表

根据渠道代码和渠道应用ID获取团队列表

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::TeamApi.new
opts = {
  channel_code: 'channel_code_example', # String | 渠道代码
  channel_app_id: 'channel_app_id_example' # String | 渠道应用ID
}

begin
  # 获取团队列表
  result = api_instance.teams(opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling TeamApi->teams: #{e}"
end
```

#### Using the teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListResponseItemListApiResponse>, Integer, Hash)> teams_with_http_info(opts)

```ruby
begin
  # 获取团队列表
  data, status_code, headers = api_instance.teams_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListResponseItemListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling TeamApi->teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_code** | **String** | 渠道代码 | [optional] |
| **channel_app_id** | **String** | 渠道应用ID | [optional] |

### Return type

[**ListResponseItemListApiResponse**](ListResponseItemListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

