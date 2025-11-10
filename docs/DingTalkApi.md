# ZSGFClient::DingTalkApi

All URIs are relative to *https://api-dev.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ding_talk_user_info**](DingTalkApi.md#ding_talk_user_info) | **GET** /DingTalk/{appKey}/UserInfo | 获取用户资料 |


## ding_talk_user_info

> <StringApiResponse> ding_talk_user_info(app_key, opts)

获取用户资料

根据钉钉用户授权码获取用户的详细资料。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::DingTalkApi.new
app_key = 'app_key_example' # String | 
opts = {
  code: 'code_example' # String | 钉钉用户授权码
}

begin
  # 获取用户资料
  result = api_instance.ding_talk_user_info(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling DingTalkApi->ding_talk_user_info: #{e}"
end
```

#### Using the ding_talk_user_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringApiResponse>, Integer, Hash)> ding_talk_user_info_with_http_info(app_key, opts)

```ruby
begin
  # 获取用户资料
  data, status_code, headers = api_instance.ding_talk_user_info_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling DingTalkApi->ding_talk_user_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **code** | **String** | 钉钉用户授权码 | [optional] |

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

