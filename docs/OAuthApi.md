# ZSGFClient::OAuthApi

All URIs are relative to *https://api-dev.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**o_auth_authorize**](OAuthApi.md#o_auth_authorize) | **POST** /OAuth/{appKey}/Authorize | 获取访问令牌 |
| [**o_auth_consents**](OAuthApi.md#o_auth_consents) | **GET** /OAuth/{appKey}/Consents | 获取授权记录 |
| [**o_auth_delete_consent**](OAuthApi.md#o_auth_delete_consent) | **DELETE** /OAuth/{appKey}/Consents/{id} | 删除授权记录 |
| [**o_auth_grant_code**](OAuthApi.md#o_auth_grant_code) | **POST** /OAuth/{appKey}/GrantCode | 获取授权码 |
| [**o_auth_profile**](OAuthApi.md#o_auth_profile) | **GET** /OAuth/{appKey}/Profile | 获取用户资料 |


## o_auth_authorize

> <AuthorizeResultApiResponse> o_auth_authorize(app_key, opts)

获取访问令牌

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::OAuthApi.new
app_key = 'app_key_example' # String | 
opts = {
  scheme: 'scheme_example', # String | 身份源
  code: 'code_example' # String | 授权码
}

begin
  # 获取访问令牌
  result = api_instance.o_auth_authorize(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling OAuthApi->o_auth_authorize: #{e}"
end
```

#### Using the o_auth_authorize_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthorizeResultApiResponse>, Integer, Hash)> o_auth_authorize_with_http_info(app_key, opts)

```ruby
begin
  # 获取访问令牌
  data, status_code, headers = api_instance.o_auth_authorize_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthorizeResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling OAuthApi->o_auth_authorize_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **scheme** | **String** | 身份源 | [optional] |
| **code** | **String** | 授权码 | [optional] |

### Return type

[**AuthorizeResultApiResponse**](AuthorizeResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## o_auth_consents

> <AppUserConsentModelListApiResponse> o_auth_consents(app_key)

获取授权记录

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::OAuthApi.new
app_key = 'app_key_example' # String | 

begin
  # 获取授权记录
  result = api_instance.o_auth_consents(app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling OAuthApi->o_auth_consents: #{e}"
end
```

#### Using the o_auth_consents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppUserConsentModelListApiResponse>, Integer, Hash)> o_auth_consents_with_http_info(app_key)

```ruby
begin
  # 获取授权记录
  data, status_code, headers = api_instance.o_auth_consents_with_http_info(app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppUserConsentModelListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling OAuthApi->o_auth_consents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |

### Return type

[**AppUserConsentModelListApiResponse**](AppUserConsentModelListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## o_auth_delete_consent

> <BooleanApiResponse> o_auth_delete_consent(id, app_key)

删除授权记录

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::OAuthApi.new
id = 789 # Integer | 
app_key = 'app_key_example' # String | 

begin
  # 删除授权记录
  result = api_instance.o_auth_delete_consent(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling OAuthApi->o_auth_delete_consent: #{e}"
end
```

#### Using the o_auth_delete_consent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> o_auth_delete_consent_with_http_info(id, app_key)

```ruby
begin
  # 删除授权记录
  data, status_code, headers = api_instance.o_auth_delete_consent_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling OAuthApi->o_auth_delete_consent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **app_key** | **String** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## o_auth_grant_code

> <GrantResultApiResponse> o_auth_grant_code(app_key, opts)

获取授权码

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::OAuthApi.new
app_key = 'app_key_example' # String | 
opts = {
  scheme: 'scheme_example', # String | 身份源，固定填：app
  grant_request: ZSGFClient::GrantRequest.new({grant_type: 'grant_type_example', scopes: 'scopes_example'}) # GrantRequest | 授权详情
}

begin
  # 获取授权码
  result = api_instance.o_auth_grant_code(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling OAuthApi->o_auth_grant_code: #{e}"
end
```

#### Using the o_auth_grant_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrantResultApiResponse>, Integer, Hash)> o_auth_grant_code_with_http_info(app_key, opts)

```ruby
begin
  # 获取授权码
  data, status_code, headers = api_instance.o_auth_grant_code_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrantResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling OAuthApi->o_auth_grant_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **scheme** | **String** | 身份源，固定填：app | [optional] |
| **grant_request** | [**GrantRequest**](GrantRequest.md) | 授权详情 | [optional] |

### Return type

[**GrantResultApiResponse**](GrantResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## o_auth_profile

> <ProfileResultApiResponse> o_auth_profile(app_key)

获取用户资料

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::OAuthApi.new
app_key = 'app_key_example' # String | 

begin
  # 获取用户资料
  result = api_instance.o_auth_profile(app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling OAuthApi->o_auth_profile: #{e}"
end
```

#### Using the o_auth_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileResultApiResponse>, Integer, Hash)> o_auth_profile_with_http_info(app_key)

```ruby
begin
  # 获取用户资料
  data, status_code, headers = api_instance.o_auth_profile_with_http_info(app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling OAuthApi->o_auth_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |

### Return type

[**ProfileResultApiResponse**](ProfileResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

