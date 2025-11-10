# ZSGFClient::UserApi

All URIs are relative to *https://api-dev.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**user_deactivate_hard**](UserApi.md#user_deactivate_hard) | **DELETE** /User/{appKey}/DeactivateHard | 注销账号 |
| [**user_email_sign_in**](UserApi.md#user_email_sign_in) | **POST** /User/{appKey}/EmailSignIn | 邮箱登录 |
| [**user_email_sign_up**](UserApi.md#user_email_sign_up) | **POST** /User/{appKey}/EmailSignUp | 邮箱注册 |
| [**user_phone_sign_in**](UserApi.md#user_phone_sign_in) | **POST** /User/{appKey}/PhoneSignIn | 手机登录 |
| [**user_phone_sign_up**](UserApi.md#user_phone_sign_up) | **POST** /User/{appKey}/PhoneSignUp | 手机注册 |
| [**user_profile**](UserApi.md#user_profile) | **GET** /User/{appKey}/Profile | 获取个人资料 |
| [**user_reset_email**](UserApi.md#user_reset_email) | **PUT** /User/{appKey}/ResetEmail | 重置邮箱 |
| [**user_reset_phone**](UserApi.md#user_reset_phone) | **PUT** /User/{appKey}/ResetPhone | 重置手机号 |
| [**user_reset_pwd**](UserApi.md#user_reset_pwd) | **POST** /User/{appKey}/ResetPwd | 重置密码 |
| [**user_send_email_code**](UserApi.md#user_send_email_code) | **POST** /User/{appKey}/SendEmailCode | 发送邮箱验证码 |
| [**user_send_sms_code**](UserApi.md#user_send_sms_code) | **POST** /User/{appKey}/SendSMSCode | 发送手机验证码 |
| [**user_sign_in**](UserApi.md#user_sign_in) | **POST** /User/{appKey}/SignIn | 密码登录 |
| [**user_sign_up**](UserApi.md#user_sign_up) | **POST** /User/{appKey}/SignUp | 账号注册 |
| [**user_two_factor_auth**](UserApi.md#user_two_factor_auth) | **GET** /User/{appKey}/TwoFactorAuth | 二次验证 |
| [**user_union_id_sign_in**](UserApi.md#user_union_id_sign_in) | **POST** /User/{appKey}/UnionIDSignIn | UnionID登录 |
| [**user_union_id_sign_up**](UserApi.md#user_union_id_sign_up) | **POST** /User/{appKey}/UnionIDSignUp | UnionID注册 |
| [**user_update_profile**](UserApi.md#user_update_profile) | **PUT** /User/{appKey}/Profile | 更新个人资料 |


## user_deactivate_hard

> <BooleanApiResponse> user_deactivate_hard(app_key)

注销账号

清除用户所有附属数据，并注销账号

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserApi.new
app_key = 'app_key_example' # String | 

begin
  # 注销账号
  result = api_instance.user_deactivate_hard(app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_deactivate_hard: #{e}"
end
```

#### Using the user_deactivate_hard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_deactivate_hard_with_http_info(app_key)

```ruby
begin
  # 注销账号
  data, status_code, headers = api_instance.user_deactivate_hard_with_http_info(app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_deactivate_hard_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_email_sign_in

> <TokenModelApiResponse> user_email_sign_in(app_key, opts)

邮箱登录

使用邮箱进行登录

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserApi.new
app_key = 'app_key_example' # String | 
opts = {
  email_sign_in_request: ZSGFClient::EmailSignInRequest.new({email: 'email_example', verify_code: 'verify_code_example'}) # EmailSignInRequest | 登录请求参数
}

begin
  # 邮箱登录
  result = api_instance.user_email_sign_in(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_email_sign_in: #{e}"
end
```

#### Using the user_email_sign_in_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenModelApiResponse>, Integer, Hash)> user_email_sign_in_with_http_info(app_key, opts)

```ruby
begin
  # 邮箱登录
  data, status_code, headers = api_instance.user_email_sign_in_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenModelApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_email_sign_in_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **email_sign_in_request** | [**EmailSignInRequest**](EmailSignInRequest.md) | 登录请求参数 | [optional] |

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_email_sign_up

> <TokenModelApiResponse> user_email_sign_up(app_key, opts)

邮箱注册

使用邮箱进行注册

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserApi.new
app_key = 'app_key_example' # String | 
opts = {
  email_sign_up_request: ZSGFClient::EmailSignUpRequest.new({email: 'email_example', pwd: 'pwd_example'}) # EmailSignUpRequest | 注册请求参数
}

begin
  # 邮箱注册
  result = api_instance.user_email_sign_up(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_email_sign_up: #{e}"
end
```

#### Using the user_email_sign_up_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenModelApiResponse>, Integer, Hash)> user_email_sign_up_with_http_info(app_key, opts)

```ruby
begin
  # 邮箱注册
  data, status_code, headers = api_instance.user_email_sign_up_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenModelApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_email_sign_up_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **email_sign_up_request** | [**EmailSignUpRequest**](EmailSignUpRequest.md) | 注册请求参数 | [optional] |

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_phone_sign_in

> <TokenModelApiResponse> user_phone_sign_in(app_key, opts)

手机登录

使用手机号码进行登录

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserApi.new
app_key = 'app_key_example' # String | 
opts = {
  phone_sign_in_request: ZSGFClient::PhoneSignInRequest.new({phone: 'phone_example', verify_code: 'verify_code_example'}) # PhoneSignInRequest | 登录请求参数
}

begin
  # 手机登录
  result = api_instance.user_phone_sign_in(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_phone_sign_in: #{e}"
end
```

#### Using the user_phone_sign_in_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenModelApiResponse>, Integer, Hash)> user_phone_sign_in_with_http_info(app_key, opts)

```ruby
begin
  # 手机登录
  data, status_code, headers = api_instance.user_phone_sign_in_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenModelApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_phone_sign_in_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **phone_sign_in_request** | [**PhoneSignInRequest**](PhoneSignInRequest.md) | 登录请求参数 | [optional] |

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_phone_sign_up

> <TokenModelApiResponse> user_phone_sign_up(app_key, opts)

手机注册

使用手机号码进行注册

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserApi.new
app_key = 'app_key_example' # String | 
opts = {
  phone_sign_up_request: ZSGFClient::PhoneSignUpRequest.new({phone: 'phone_example', phone_code: 'phone_code_example', pwd: 'pwd_example'}) # PhoneSignUpRequest | 注册请求参数
}

begin
  # 手机注册
  result = api_instance.user_phone_sign_up(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_phone_sign_up: #{e}"
end
```

#### Using the user_phone_sign_up_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenModelApiResponse>, Integer, Hash)> user_phone_sign_up_with_http_info(app_key, opts)

```ruby
begin
  # 手机注册
  data, status_code, headers = api_instance.user_phone_sign_up_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenModelApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_phone_sign_up_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **phone_sign_up_request** | [**PhoneSignUpRequest**](PhoneSignUpRequest.md) | 注册请求参数 | [optional] |

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_profile

> <UserProfileResultApiResponse> user_profile(app_key)

获取个人资料

获取当前用户的个人资料

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserApi.new
app_key = 'app_key_example' # String | 

begin
  # 获取个人资料
  result = api_instance.user_profile(app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_profile: #{e}"
end
```

#### Using the user_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserProfileResultApiResponse>, Integer, Hash)> user_profile_with_http_info(app_key)

```ruby
begin
  # 获取个人资料
  data, status_code, headers = api_instance.user_profile_with_http_info(app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserProfileResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |

### Return type

[**UserProfileResultApiResponse**](UserProfileResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_reset_email

> <BooleanApiResponse> user_reset_email(app_key, opts)

重置邮箱

通过邮箱验证码重置邮箱

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserApi.new
app_key = 'app_key_example' # String | 
opts = {
  app_user_reset_email_request: ZSGFClient::AppUserResetEmailRequest.new({code: 'code_example'}) # AppUserResetEmailRequest | 重置邮箱的请求参数
}

begin
  # 重置邮箱
  result = api_instance.user_reset_email(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_reset_email: #{e}"
end
```

#### Using the user_reset_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_reset_email_with_http_info(app_key, opts)

```ruby
begin
  # 重置邮箱
  data, status_code, headers = api_instance.user_reset_email_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_reset_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **app_user_reset_email_request** | [**AppUserResetEmailRequest**](AppUserResetEmailRequest.md) | 重置邮箱的请求参数 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_reset_phone

> <BooleanApiResponse> user_reset_phone(app_key, opts)

重置手机号

通过手机号验证码重置手机号

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserApi.new
app_key = 'app_key_example' # String | 
opts = {
  app_user_reset_phone_request: ZSGFClient::AppUserResetPhoneRequest.new({code: 'code_example'}) # AppUserResetPhoneRequest | 重置手机号的请求参数
}

begin
  # 重置手机号
  result = api_instance.user_reset_phone(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_reset_phone: #{e}"
end
```

#### Using the user_reset_phone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_reset_phone_with_http_info(app_key, opts)

```ruby
begin
  # 重置手机号
  data, status_code, headers = api_instance.user_reset_phone_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_reset_phone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **app_user_reset_phone_request** | [**AppUserResetPhoneRequest**](AppUserResetPhoneRequest.md) | 重置手机号的请求参数 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_reset_pwd

> <BooleanApiResponse> user_reset_pwd(app_key, opts)

重置密码

通过手机号或邮箱重置密码

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserApi.new
app_key = 'app_key_example' # String | 
opts = {
  app_user_reset_pwd_request: ZSGFClient::AppUserResetPwdRequest.new({pwd: 'pwd_example', oldpwd: 'oldpwd_example'}) # AppUserResetPwdRequest | 重置密码的请求参数
}

begin
  # 重置密码
  result = api_instance.user_reset_pwd(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_reset_pwd: #{e}"
end
```

#### Using the user_reset_pwd_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_reset_pwd_with_http_info(app_key, opts)

```ruby
begin
  # 重置密码
  data, status_code, headers = api_instance.user_reset_pwd_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_reset_pwd_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **app_user_reset_pwd_request** | [**AppUserResetPwdRequest**](AppUserResetPwdRequest.md) | 重置密码的请求参数 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_send_email_code

> <BooleanApiResponse> user_send_email_code(app_key, opts)

发送邮箱验证码

发送邮箱验证码用于注册或找回密码

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserApi.new
app_key = 'app_key_example' # String | 
opts = {
  send_email_code_request: ZSGFClient::SendEmailCodeRequest.new({email: 'email_example', type: 'type_example'}) # SendEmailCodeRequest | 发送邮箱验证码的请求参数
}

begin
  # 发送邮箱验证码
  result = api_instance.user_send_email_code(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_send_email_code: #{e}"
end
```

#### Using the user_send_email_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_send_email_code_with_http_info(app_key, opts)

```ruby
begin
  # 发送邮箱验证码
  data, status_code, headers = api_instance.user_send_email_code_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_send_email_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **send_email_code_request** | [**SendEmailCodeRequest**](SendEmailCodeRequest.md) | 发送邮箱验证码的请求参数 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_send_sms_code

> <BooleanApiResponse> user_send_sms_code(app_key, opts)

发送手机验证码

发送手机验证码用于注册或找回密码

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserApi.new
app_key = 'app_key_example' # String | 
opts = {
  send_sms_code_request: ZSGFClient::SendSMSCodeRequest.new({phone: 'phone_example', type: 'type_example'}) # SendSMSCodeRequest | 发送手机验证码的请求参数
}

begin
  # 发送手机验证码
  result = api_instance.user_send_sms_code(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_send_sms_code: #{e}"
end
```

#### Using the user_send_sms_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_send_sms_code_with_http_info(app_key, opts)

```ruby
begin
  # 发送手机验证码
  data, status_code, headers = api_instance.user_send_sms_code_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_send_sms_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **send_sms_code_request** | [**SendSMSCodeRequest**](SendSMSCodeRequest.md) | 发送手机验证码的请求参数 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_sign_in

> <TokenModelApiResponse> user_sign_in(app_key, opts)

密码登录

使用账号密码进行登录

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserApi.new
app_key = 'app_key_example' # String | 
opts = {
  sign_in_request: ZSGFClient::SignInRequest.new({user_name: 'user_name_example', pwd: 'pwd_example'}) # SignInRequest | 登录请求参数
}

begin
  # 密码登录
  result = api_instance.user_sign_in(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_sign_in: #{e}"
end
```

#### Using the user_sign_in_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenModelApiResponse>, Integer, Hash)> user_sign_in_with_http_info(app_key, opts)

```ruby
begin
  # 密码登录
  data, status_code, headers = api_instance.user_sign_in_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenModelApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_sign_in_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **sign_in_request** | [**SignInRequest**](SignInRequest.md) | 登录请求参数 | [optional] |

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_sign_up

> <TokenModelApiResponse> user_sign_up(app_key, opts)

账号注册

使用账号密码进行注册

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserApi.new
app_key = 'app_key_example' # String | 
opts = {
  sign_up_request: ZSGFClient::SignUpRequest.new({user_name: 'user_name_example', pwd: 'pwd_example'}) # SignUpRequest | 注册请求参数
}

begin
  # 账号注册
  result = api_instance.user_sign_up(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_sign_up: #{e}"
end
```

#### Using the user_sign_up_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenModelApiResponse>, Integer, Hash)> user_sign_up_with_http_info(app_key, opts)

```ruby
begin
  # 账号注册
  data, status_code, headers = api_instance.user_sign_up_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenModelApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_sign_up_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **sign_up_request** | [**SignUpRequest**](SignUpRequest.md) | 注册请求参数 | [optional] |

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_two_factor_auth

> <SetupCodeApiResponse> user_two_factor_auth(app_key)

二次验证

获取当前用户在指定应用下启用二次验证（2FA）所需的设置信息，主要包括二维码链接和手动密钥，用户可以将其录入在 Google Authenticator 等 TOTP 应用中，用于后续动态验证码验证。

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserApi.new
app_key = 'app_key_example' # String | 

begin
  # 二次验证
  result = api_instance.user_two_factor_auth(app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_two_factor_auth: #{e}"
end
```

#### Using the user_two_factor_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupCodeApiResponse>, Integer, Hash)> user_two_factor_auth_with_http_info(app_key)

```ruby
begin
  # 二次验证
  data, status_code, headers = api_instance.user_two_factor_auth_with_http_info(app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupCodeApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_two_factor_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |

### Return type

[**SetupCodeApiResponse**](SetupCodeApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_union_id_sign_in

> <TokenModelApiResponse> user_union_id_sign_in(app_key, opts)

UnionID登录

使用UnionID进行登录

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserApi.new
app_key = 'app_key_example' # String | 
opts = {
  union_id_sign_in_request: ZSGFClient::UnionIDSignInRequest.new({union_id: 'union_id_example', platform: 'platform_example'}) # UnionIDSignInRequest | 登录请求参数
}

begin
  # UnionID登录
  result = api_instance.user_union_id_sign_in(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_union_id_sign_in: #{e}"
end
```

#### Using the user_union_id_sign_in_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenModelApiResponse>, Integer, Hash)> user_union_id_sign_in_with_http_info(app_key, opts)

```ruby
begin
  # UnionID登录
  data, status_code, headers = api_instance.user_union_id_sign_in_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenModelApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_union_id_sign_in_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **union_id_sign_in_request** | [**UnionIDSignInRequest**](UnionIDSignInRequest.md) | 登录请求参数 | [optional] |

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_union_id_sign_up

> <TokenModelApiResponse> user_union_id_sign_up(app_key, opts)

UnionID注册

使用UnionID进行注册

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserApi.new
app_key = 'app_key_example' # String | 
opts = {
  union_id_sign_up_request: ZSGFClient::UnionIDSignUpRequest.new({union_id: 'union_id_example', platform: 'platform_example', pwd: 'pwd_example'}) # UnionIDSignUpRequest | 注册请求参数
}

begin
  # UnionID注册
  result = api_instance.user_union_id_sign_up(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_union_id_sign_up: #{e}"
end
```

#### Using the user_union_id_sign_up_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenModelApiResponse>, Integer, Hash)> user_union_id_sign_up_with_http_info(app_key, opts)

```ruby
begin
  # UnionID注册
  data, status_code, headers = api_instance.user_union_id_sign_up_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenModelApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_union_id_sign_up_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **union_id_sign_up_request** | [**UnionIDSignUpRequest**](UnionIDSignUpRequest.md) | 注册请求参数 | [optional] |

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_update_profile

> <BooleanApiResponse> user_update_profile(app_key, opts)

更新个人资料

更新当前用户的个人资料

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserApi.new
app_key = 'app_key_example' # String | 
opts = {
  update_profile_request: ZSGFClient::UpdateProfileRequest.new # UpdateProfileRequest | 更新个人资料的请求参数
}

begin
  # 更新个人资料
  result = api_instance.user_update_profile(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_update_profile: #{e}"
end
```

#### Using the user_update_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_update_profile_with_http_info(app_key, opts)

```ruby
begin
  # 更新个人资料
  data, status_code, headers = api_instance.user_update_profile_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_update_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **update_profile_request** | [**UpdateProfileRequest**](UpdateProfileRequest.md) | 更新个人资料的请求参数 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json

