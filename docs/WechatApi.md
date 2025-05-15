# ZSGFClient::WechatApi

All URIs are relative to *https://api.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**wechat_decrypt**](WechatApi.md#wechat_decrypt) | **GET** /Wechat/{appKey}/Decrypt | 小程序-解密数据 |
| [**wechat_generate_scheme**](WechatApi.md#wechat_generate_scheme) | **POST** /Wechat/{appKey}/GenerateScheme | 小程序-生成scheme码(该接口用于获取小程序 scheme 码，适用于短信、邮件、外部网页、微信内等拉起小程序的业务场景) |
| [**wechat_js_code2_session**](WechatApi.md#wechat_js_code2_session) | **GET** /Wechat/{appKey}/JSCode2Session | 小程序-登录凭证校验 |
| [**wechat_js_config**](WechatApi.md#wechat_js_config) | **GET** /Wechat/{appKey}/JSConfig | 公众号H5-JS SDK Config |
| [**wechat_msg_sec_check**](WechatApi.md#wechat_msg_sec_check) | **POST** /Wechat/{appKey}/MsgSecCheck | 小程序-消息内容安全检测 |
| [**wechat_subscribe_msg**](WechatApi.md#wechat_subscribe_msg) | **POST** /Wechat/{appKey}/SubscribeMSG | 公众号H5-发送一次性订阅消息 |
| [**wechat_subscribe_send**](WechatApi.md#wechat_subscribe_send) | **POST** /Wechat/{appKey}/SubscribeSend | 小程序-发送订阅消息 |
| [**wechat_url_link_generate**](WechatApi.md#wechat_url_link_generate) | **POST** /Wechat/{appKey}/UrlLinkGenerate | 小程序-生成网页跳转地址(获取小程序 URL Link，适用于短信、邮件、网页、微信内等拉起小程序的业务场景) |
| [**wechat_user_info**](WechatApi.md#wechat_user_info) | **GET** /Wechat/{appKey}/UserInfo | 公众号H5-获取用户UnionID |
| [**wechat_wxa_code_get**](WechatApi.md#wechat_wxa_code_get) | **POST** /Wechat/{appKey}/WXACodeGet | 小程序-获取小程序码 |
| [**wechat_wxa_code_get_unlimited**](WechatApi.md#wechat_wxa_code_get_unlimited) | **POST** /Wechat/{appKey}/WXACodeGetUnlimited | 小程序-获取小程序码(无限制) |


## wechat_decrypt

> <StringApiResponse> wechat_decrypt(app_key, opts)

小程序-解密数据

解密小程序加密数据

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::WechatApi.new
app_key = 'app_key_example' # String | 
opts = {
  encrypted_data: 'encrypted_data_example', # String | 加密的数据
  iv: 'iv_example', # String | 加密算法的初始向量
  session_key: 'session_key_example' # String | 会话密钥
}

begin
  # 小程序-解密数据
  result = api_instance.wechat_decrypt(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_decrypt: #{e}"
end
```

#### Using the wechat_decrypt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringApiResponse>, Integer, Hash)> wechat_decrypt_with_http_info(app_key, opts)

```ruby
begin
  # 小程序-解密数据
  data, status_code, headers = api_instance.wechat_decrypt_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_decrypt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **encrypted_data** | **String** | 加密的数据 | [optional] |
| **iv** | **String** | 加密算法的初始向量 | [optional] |
| **session_key** | **String** | 会话密钥 | [optional] |

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wechat_generate_scheme

> <StringApiResponse> wechat_generate_scheme(app_key, opts)

小程序-生成scheme码(该接口用于获取小程序 scheme 码，适用于短信、邮件、外部网页、微信内等拉起小程序的业务场景)

生成小程序的scheme码

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::WechatApi.new
app_key = 'app_key_example' # String | 
opts = {
  request_body: [3.56] # Array<Object> | scheme码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/OpenApiDoc/qrcode-link/url-scheme/generateScheme.html
}

begin
  # 小程序-生成scheme码(该接口用于获取小程序 scheme 码，适用于短信、邮件、外部网页、微信内等拉起小程序的业务场景)
  result = api_instance.wechat_generate_scheme(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_generate_scheme: #{e}"
end
```

#### Using the wechat_generate_scheme_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringApiResponse>, Integer, Hash)> wechat_generate_scheme_with_http_info(app_key, opts)

```ruby
begin
  # 小程序-生成scheme码(该接口用于获取小程序 scheme 码，适用于短信、邮件、外部网页、微信内等拉起小程序的业务场景)
  data, status_code, headers = api_instance.wechat_generate_scheme_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_generate_scheme_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **request_body** | [**Array&lt;Object&gt;**](Object.md) | scheme码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/OpenApiDoc/qrcode-link/url-scheme/generateScheme.html | [optional] |

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## wechat_js_code2_session

> <StringApiResponse> wechat_js_code2_session(app_key, opts)

小程序-登录凭证校验

校验小程序登录凭证

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::WechatApi.new
app_key = 'app_key_example' # String | 
opts = {
  js_code: 'js_code_example' # String | 登录凭证，开发参考：https://dwz.cn/icNajFh7
}

begin
  # 小程序-登录凭证校验
  result = api_instance.wechat_js_code2_session(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_js_code2_session: #{e}"
end
```

#### Using the wechat_js_code2_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringApiResponse>, Integer, Hash)> wechat_js_code2_session_with_http_info(app_key, opts)

```ruby
begin
  # 小程序-登录凭证校验
  data, status_code, headers = api_instance.wechat_js_code2_session_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_js_code2_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **js_code** | **String** | 登录凭证，开发参考：https://dwz.cn/icNajFh7 | [optional] |

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wechat_js_config

> <WechatJSConfigResultApiResponse> wechat_js_config(app_key, opts)

公众号H5-JS SDK Config

获取公众号H5的JS SDK配置

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::WechatApi.new
app_key = 'app_key_example' # String | 
opts = {
  url: 'url_example' # String | 当前网页的URL
}

begin
  # 公众号H5-JS SDK Config
  result = api_instance.wechat_js_config(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_js_config: #{e}"
end
```

#### Using the wechat_js_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WechatJSConfigResultApiResponse>, Integer, Hash)> wechat_js_config_with_http_info(app_key, opts)

```ruby
begin
  # 公众号H5-JS SDK Config
  data, status_code, headers = api_instance.wechat_js_config_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WechatJSConfigResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_js_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **url** | **String** | 当前网页的URL | [optional] |

### Return type

[**WechatJSConfigResultApiResponse**](WechatJSConfigResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wechat_msg_sec_check

> Object wechat_msg_sec_check(app_key, opts)

小程序-消息内容安全检测

检测消息内容是否含有违法违规信息

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::WechatApi.new
app_key = 'app_key_example' # String | 
opts = {
  request_body: [3.56] # Array<Object> | 消息内容数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/OpenApiDoc/sec-center/sec-check/msgSecCheck.html
}

begin
  # 小程序-消息内容安全检测
  result = api_instance.wechat_msg_sec_check(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_msg_sec_check: #{e}"
end
```

#### Using the wechat_msg_sec_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> wechat_msg_sec_check_with_http_info(app_key, opts)

```ruby
begin
  # 小程序-消息内容安全检测
  data, status_code, headers = api_instance.wechat_msg_sec_check_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_msg_sec_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **request_body** | [**Array&lt;Object&gt;**](Object.md) | 消息内容数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/OpenApiDoc/sec-center/sec-check/msgSecCheck.html | [optional] |

### Return type

**Object**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## wechat_subscribe_msg

> <StringApiResponse> wechat_subscribe_msg(app_key, opts)

公众号H5-发送一次性订阅消息

发送公众号H5一次性订阅消息

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::WechatApi.new
app_key = 'app_key_example' # String | 
opts = {
  request_body: [3.56] # Array<Object> | 订阅消息数据，开发参考：https://dwz.cn/IXptek5n
}

begin
  # 公众号H5-发送一次性订阅消息
  result = api_instance.wechat_subscribe_msg(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_subscribe_msg: #{e}"
end
```

#### Using the wechat_subscribe_msg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringApiResponse>, Integer, Hash)> wechat_subscribe_msg_with_http_info(app_key, opts)

```ruby
begin
  # 公众号H5-发送一次性订阅消息
  data, status_code, headers = api_instance.wechat_subscribe_msg_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_subscribe_msg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **request_body** | [**Array&lt;Object&gt;**](Object.md) | 订阅消息数据，开发参考：https://dwz.cn/IXptek5n | [optional] |

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## wechat_subscribe_send

> <StringApiResponse> wechat_subscribe_send(app_key, opts)

小程序-发送订阅消息

发送小程序订阅消息

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::WechatApi.new
app_key = 'app_key_example' # String | 
opts = {
  request_body: [3.56] # Array<Object> | 订阅消息数据，开发参考：https://dwz.cn/bohXaCnp
}

begin
  # 小程序-发送订阅消息
  result = api_instance.wechat_subscribe_send(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_subscribe_send: #{e}"
end
```

#### Using the wechat_subscribe_send_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringApiResponse>, Integer, Hash)> wechat_subscribe_send_with_http_info(app_key, opts)

```ruby
begin
  # 小程序-发送订阅消息
  data, status_code, headers = api_instance.wechat_subscribe_send_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_subscribe_send_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **request_body** | [**Array&lt;Object&gt;**](Object.md) | 订阅消息数据，开发参考：https://dwz.cn/bohXaCnp | [optional] |

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## wechat_url_link_generate

> <StringApiResponse> wechat_url_link_generate(app_key, opts)

小程序-生成网页跳转地址(获取小程序 URL Link，适用于短信、邮件、网页、微信内等拉起小程序的业务场景)

生成小程序的网页跳转地址

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::WechatApi.new
app_key = 'app_key_example' # String | 
opts = {
  request_body: [3.56] # Array<Object> | 跳转地址数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/url-link/urllink.generate.html
}

begin
  # 小程序-生成网页跳转地址(获取小程序 URL Link，适用于短信、邮件、网页、微信内等拉起小程序的业务场景)
  result = api_instance.wechat_url_link_generate(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_url_link_generate: #{e}"
end
```

#### Using the wechat_url_link_generate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringApiResponse>, Integer, Hash)> wechat_url_link_generate_with_http_info(app_key, opts)

```ruby
begin
  # 小程序-生成网页跳转地址(获取小程序 URL Link，适用于短信、邮件、网页、微信内等拉起小程序的业务场景)
  data, status_code, headers = api_instance.wechat_url_link_generate_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_url_link_generate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **request_body** | [**Array&lt;Object&gt;**](Object.md) | 跳转地址数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/url-link/urllink.generate.html | [optional] |

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## wechat_user_info

> <StringApiResponse> wechat_user_info(app_key, opts)

公众号H5-获取用户UnionID

获取公众号H5用户的UnionID

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::WechatApi.new
app_key = 'app_key_example' # String | 
opts = {
  openid: 'openid_example' # String | 用户的OpenID
}

begin
  # 公众号H5-获取用户UnionID
  result = api_instance.wechat_user_info(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_user_info: #{e}"
end
```

#### Using the wechat_user_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringApiResponse>, Integer, Hash)> wechat_user_info_with_http_info(app_key, opts)

```ruby
begin
  # 公众号H5-获取用户UnionID
  data, status_code, headers = api_instance.wechat_user_info_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_user_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **openid** | **String** | 用户的OpenID | [optional] |

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wechat_wxa_code_get

> File wechat_wxa_code_get(app_key, opts)

小程序-获取小程序码

获取小程序码

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::WechatApi.new
app_key = 'app_key_example' # String | 
opts = {
  request_body: [3.56] # Array<Object> | 小程序码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/qr-code/wxacode.get.html
}

begin
  # 小程序-获取小程序码
  result = api_instance.wechat_wxa_code_get(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_wxa_code_get: #{e}"
end
```

#### Using the wechat_wxa_code_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> wechat_wxa_code_get_with_http_info(app_key, opts)

```ruby
begin
  # 小程序-获取小程序码
  data, status_code, headers = api_instance.wechat_wxa_code_get_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_wxa_code_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **request_body** | [**Array&lt;Object&gt;**](Object.md) | 小程序码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/qr-code/wxacode.get.html | [optional] |

### Return type

**File**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: image/jpeg, text/plain


## wechat_wxa_code_get_unlimited

> File wechat_wxa_code_get_unlimited(app_key, opts)

小程序-获取小程序码(无限制)

获取无限制的小程序码

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::WechatApi.new
app_key = 'app_key_example' # String | 
opts = {
  request_body: [3.56] # Array<Object> | 小程序码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/qr-code/wxacode.getUnlimited.html
}

begin
  # 小程序-获取小程序码(无限制)
  result = api_instance.wechat_wxa_code_get_unlimited(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_wxa_code_get_unlimited: #{e}"
end
```

#### Using the wechat_wxa_code_get_unlimited_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> wechat_wxa_code_get_unlimited_with_http_info(app_key, opts)

```ruby
begin
  # 小程序-获取小程序码(无限制)
  data, status_code, headers = api_instance.wechat_wxa_code_get_unlimited_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->wechat_wxa_code_get_unlimited_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **request_body** | [**Array&lt;Object&gt;**](Object.md) | 小程序码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/qr-code/wxacode.getUnlimited.html | [optional] |

### Return type

**File**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: image/jpeg, text/plain

