# ZSGFClient::AppApi

All URIs are relative to *https://api-dev.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**app_info**](AppApi.md#app_info) | **GET** /App/{appKey}/Info | 应用详情 |


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

