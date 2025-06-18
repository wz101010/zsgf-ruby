# ZSGFClient::WechatApi

All URIs are relative to *https://api-dev.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**confirm_qr_code_login**](WechatApi.md#confirm_qr_code_login) | **POST** /Wechat/{appKey}/QR-Auth/Confirm-Login | 确认二维码登录请求 |
| [**confirm_qr_code_registration**](WechatApi.md#confirm_qr_code_registration) | **POST** /Wechat/{appKey}/QR-Auth/Confirm-Register | 确认二维码注册请求 |
| [**initiate_qr_auth_session**](WechatApi.md#initiate_qr_auth_session) | **POST** /Wechat/{appKey}/QR-Auth/Initiate | 初始化二维码认证会话 |
| [**scan_qr_code_for_auth**](WechatApi.md#scan_qr_code_for_auth) | **POST** /Wechat/{appKey}/QR-Auth/Scan | 验证二维码扫描结果 |
| [**wechat_decrypt**](WechatApi.md#wechat_decrypt) | **GET** /Wechat/{appKey}/Decrypt | 解密小程序用户数据 |
| [**wechat_generate_scheme**](WechatApi.md#wechat_generate_scheme) | **POST** /Wechat/{appKey}/GenerateScheme | 生成小程序Scheme码 |
| [**wechat_js_code2_session**](WechatApi.md#wechat_js_code2_session) | **GET** /Wechat/{appKey}/JSCode2Session | 校验小程序登录状态 |
| [**wechat_js_config**](WechatApi.md#wechat_js_config) | **GET** /Wechat/{appKey}/JSConfig | 配置公众号JS SDK |
| [**wechat_msg_sec_check**](WechatApi.md#wechat_msg_sec_check) | **POST** /Wechat/{appKey}/MsgSecCheck | 小程序内容安全检测 |
| [**wechat_subscribe_msg**](WechatApi.md#wechat_subscribe_msg) | **POST** /Wechat/{appKey}/SubscribeMSG | 发送公众号一次性订阅消息 |
| [**wechat_subscribe_send**](WechatApi.md#wechat_subscribe_send) | **POST** /Wechat/{appKey}/SubscribeSend | 发送小程序订阅消息 |
| [**wechat_url_link_generate**](WechatApi.md#wechat_url_link_generate) | **POST** /Wechat/{appKey}/UrlLinkGenerate | 生成小程序URL跳转链接 |
| [**wechat_user_info**](WechatApi.md#wechat_user_info) | **GET** /Wechat/{appKey}/UserInfo | 获取公众号H5 UnionID |
| [**wechat_wxa_code_get**](WechatApi.md#wechat_wxa_code_get) | **POST** /Wechat/{appKey}/WXACodeGet | 获取小程序码（普通） |
| [**wechat_wxa_code_get_unlimited**](WechatApi.md#wechat_wxa_code_get_unlimited) | **POST** /Wechat/{appKey}/WXACodeGetUnlimited | 获取小程序码（无限制） |


## confirm_qr_code_login

> <TokenModelApiResponse> confirm_qr_code_login(app_key, opts)

确认二维码登录请求

微信小程序用户确认二维码登录并获取访问令牌

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
  qr_code_sign_in_request: ZSGFClient::QRCodeSignInRequest.new({sign_in_key: 3.56}) # QRCodeSignInRequest | 登录确认请求参数
}

begin
  # 确认二维码登录请求
  result = api_instance.confirm_qr_code_login(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->confirm_qr_code_login: #{e}"
end
```

#### Using the confirm_qr_code_login_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenModelApiResponse>, Integer, Hash)> confirm_qr_code_login_with_http_info(app_key, opts)

```ruby
begin
  # 确认二维码登录请求
  data, status_code, headers = api_instance.confirm_qr_code_login_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenModelApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->confirm_qr_code_login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **qr_code_sign_in_request** | [**QRCodeSignInRequest**](QRCodeSignInRequest.md) | 登录确认请求参数 | [optional] |

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## confirm_qr_code_registration

> <TokenModelApiResponse> confirm_qr_code_registration(app_key, opts)

确认二维码注册请求

微信小程序用户通过二维码完成注册并获取访问令牌

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
  qr_code_sign_up_request: ZSGFClient::QRCodeSignUpRequest.new({union_id: 'union_id_example'}) # QRCodeSignUpRequest | 注册确认请求参数
}

begin
  # 确认二维码注册请求
  result = api_instance.confirm_qr_code_registration(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->confirm_qr_code_registration: #{e}"
end
```

#### Using the confirm_qr_code_registration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenModelApiResponse>, Integer, Hash)> confirm_qr_code_registration_with_http_info(app_key, opts)

```ruby
begin
  # 确认二维码注册请求
  data, status_code, headers = api_instance.confirm_qr_code_registration_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenModelApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->confirm_qr_code_registration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **qr_code_sign_up_request** | [**QRCodeSignUpRequest**](QRCodeSignUpRequest.md) | 注册确认请求参数 | [optional] |

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## initiate_qr_auth_session

> <Int64ApiResponse> initiate_qr_auth_session(app_key, opts)

初始化二维码认证会话

创建用于微信小程序扫码登录/注册的认证会话

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
  qr_code_pre_sign_in_request: ZSGFClient::QRCodePreSignInRequest.new # QRCodePreSignInRequest | 认证会话初始化请求参数
}

begin
  # 初始化二维码认证会话
  result = api_instance.initiate_qr_auth_session(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->initiate_qr_auth_session: #{e}"
end
```

#### Using the initiate_qr_auth_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int64ApiResponse>, Integer, Hash)> initiate_qr_auth_session_with_http_info(app_key, opts)

```ruby
begin
  # 初始化二维码认证会话
  data, status_code, headers = api_instance.initiate_qr_auth_session_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int64ApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->initiate_qr_auth_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **qr_code_pre_sign_in_request** | [**QRCodePreSignInRequest**](QRCodePreSignInRequest.md) | 认证会话初始化请求参数 | [optional] |

### Return type

[**Int64ApiResponse**](Int64ApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## scan_qr_code_for_auth

> <UserQRCodeScanResultApiResponse> scan_qr_code_for_auth(app_key, opts)

验证二维码扫描结果

微信小程序扫描二维码并获取应用授权信息

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
  qr_code_scan_request: ZSGFClient::QRCodeScanRequest.new({sign_in_key: 3.56}) # QRCodeScanRequest | 二维码扫描请求参数
}

begin
  # 验证二维码扫描结果
  result = api_instance.scan_qr_code_for_auth(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->scan_qr_code_for_auth: #{e}"
end
```

#### Using the scan_qr_code_for_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserQRCodeScanResultApiResponse>, Integer, Hash)> scan_qr_code_for_auth_with_http_info(app_key, opts)

```ruby
begin
  # 验证二维码扫描结果
  data, status_code, headers = api_instance.scan_qr_code_for_auth_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserQRCodeScanResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling WechatApi->scan_qr_code_for_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **qr_code_scan_request** | [**QRCodeScanRequest**](QRCodeScanRequest.md) | 二维码扫描请求参数 | [optional] |

### Return type

[**UserQRCodeScanResultApiResponse**](UserQRCodeScanResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## wechat_decrypt

> <StringApiResponse> wechat_decrypt(app_key, opts)

解密小程序用户数据

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
  # 解密小程序用户数据
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
  # 解密小程序用户数据
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

生成小程序Scheme码

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
  # 生成小程序Scheme码
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
  # 生成小程序Scheme码
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

校验小程序登录状态

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
  # 校验小程序登录状态
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
  # 校验小程序登录状态
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

配置公众号JS SDK

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
  # 配置公众号JS SDK
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
  # 配置公众号JS SDK
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

小程序内容安全检测

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
  # 小程序内容安全检测
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
  # 小程序内容安全检测
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

发送公众号一次性订阅消息

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
  # 发送公众号一次性订阅消息
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
  # 发送公众号一次性订阅消息
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

发送小程序订阅消息

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
  # 发送小程序订阅消息
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
  # 发送小程序订阅消息
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

生成小程序URL跳转链接

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
  # 生成小程序URL跳转链接
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
  # 生成小程序URL跳转链接
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

获取公众号H5 UnionID

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
  # 获取公众号H5 UnionID
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
  # 获取公众号H5 UnionID
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

获取小程序码（普通）

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
  # 获取小程序码（普通）
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
  # 获取小程序码（普通）
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
- **Accept**: image/jpeg


## wechat_wxa_code_get_unlimited

> File wechat_wxa_code_get_unlimited(app_key, opts)

获取小程序码（无限制）

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
  # 获取小程序码（无限制）
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
  # 获取小程序码（无限制）
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
- **Accept**: image/jpeg

