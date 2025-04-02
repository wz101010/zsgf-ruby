# ZSGFClient::UserApi

All URIs are relative to *https://api.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**user**](UserApi.md#user) | **GET** /User/{appKey}/{id} | 获取用户详情 |
| [**user_clear**](UserApi.md#user_clear) | **DELETE** /User/{appKey}/Clear | 清空用户数据 |
| [**user_common_interests**](UserApi.md#user_common_interests) | **GET** /User/{appKey}/Friends/CommonInterests | 有共同爱好的用户推荐 |
| [**user_delete**](UserApi.md#user_delete) | **DELETE** /User/{appKey}/{id} | 删除用户 |
| [**user_email_sign_in**](UserApi.md#user_email_sign_in) | **POST** /User/{appKey}/EmailSignIn | 邮箱登录 |
| [**user_email_sign_up**](UserApi.md#user_email_sign_up) | **POST** /User/{appKey}/EmailSignUp | 邮箱注册 |
| [**user_export**](UserApi.md#user_export) | **GET** /User/{appKey}/Export | 导出用户数据 |
| [**user_follow_user**](UserApi.md#user_follow_user) | **POST** /User/{appKey}/Follower/{userId} | 关注用户 |
| [**user_follower_put**](UserApi.md#user_follower_put) | **PUT** /User/{appKey}/Follower/{id} | 更新粉丝 |
| [**user_followers**](UserApi.md#user_followers) | **GET** /User/{appKey}/Followers | 获取我的粉丝列表 |
| [**user_following**](UserApi.md#user_following) | **GET** /User/{appKey}/Following | 获取我的关注列表 |
| [**user_friends_near_by**](UserApi.md#user_friends_near_by) | **GET** /User/{appKey}/Friends/NearBy | 附近的用户推荐 |
| [**user_import**](UserApi.md#user_import) | **POST** /User/{appKey}/Import | 导入用户数据 |
| [**user_location**](UserApi.md#user_location) | **GET** /User/{appKey}/Location/{id} | 获取位置详情 |
| [**user_location_delete**](UserApi.md#user_location_delete) | **DELETE** /User/{appKey}/Location/{id} | 删除位置 |
| [**user_location_post**](UserApi.md#user_location_post) | **POST** /User/{appKey}/Location | 添加位置 |
| [**user_location_put**](UserApi.md#user_location_put) | **PUT** /User/{appKey}/Location/{id} | 更新位置 |
| [**user_locations**](UserApi.md#user_locations) | **GET** /User/{appKey}/Locations | 获取位置列表 |
| [**user_mutual_followers**](UserApi.md#user_mutual_followers) | **GET** /User/{appKey}/Friends/MutualFollowers | 有共同粉丝的用户推荐 |
| [**user_mutual_followings**](UserApi.md#user_mutual_followings) | **GET** /User/{appKey}/Friends/MutualFollowings | 有共同关注的用户推荐 |
| [**user_o_auth_account_bind**](UserApi.md#user_o_auth_account_bind) | **POST** /User/{appKey}/OAuthAccountBind | 外部账号 绑定 |
| [**user_o_auth_account_sign_in**](UserApi.md#user_o_auth_account_sign_in) | **POST** /User/{appKey}/OAuthAccountSignIn | 外部账号 登录 |
| [**user_o_auth_accounts**](UserApi.md#user_o_auth_accounts) | **GET** /User/{appKey}/OAuthAccounts | 外部账号 绑定列表 |
| [**user_o_auth_accounts_put_bind**](UserApi.md#user_o_auth_accounts_put_bind) | **PUT** /User/{appKey}/OAuthAccounts/{id} | 外部账号 更新绑定 |
| [**user_o_auth_accounts_un_bind**](UserApi.md#user_o_auth_accounts_un_bind) | **DELETE** /User/{appKey}/OAuthAccounts/{id} | 外部账号 删除绑定 |
| [**user_phone_sign_in**](UserApi.md#user_phone_sign_in) | **POST** /User/{appKey}/PhoneSignIn | 手机登录 |
| [**user_phone_sign_up**](UserApi.md#user_phone_sign_up) | **POST** /User/{appKey}/PhoneSignUp | 手机注册 |
| [**user_profile**](UserApi.md#user_profile) | **GET** /User/{appKey}/Profile | 获取个人资料 |
| [**user_put**](UserApi.md#user_put) | **PUT** /User/{appKey}/{id} | 更新用户信息 |
| [**user_qr_code_pre_sign_in**](UserApi.md#user_qr_code_pre_sign_in) | **POST** /User/{appKey}/QRCodePreSignIn | 微信小程序 - 预登陆 |
| [**user_qr_code_scan**](UserApi.md#user_qr_code_scan) | **POST** /User/{appKey}/QRCodeScan | 微信小程序 - 扫码 |
| [**user_qr_code_sign_in**](UserApi.md#user_qr_code_sign_in) | **POST** /User/{appKey}/QRCodeSignIn | 微信小程序 - 网页登录 |
| [**user_qr_code_sign_up**](UserApi.md#user_qr_code_sign_up) | **POST** /User/{appKey}/QRCodeSignUp | 微信小程序 - 注册 |
| [**user_reset_pwd**](UserApi.md#user_reset_pwd) | **POST** /User/{appKey}/ResetPwd | 重置密码 |
| [**user_send_email_code**](UserApi.md#user_send_email_code) | **POST** /User/{appKey}/SendEmailCode | 发送邮箱验证码 |
| [**user_send_sms_code**](UserApi.md#user_send_sms_code) | **POST** /User/{appKey}/SendSMSCode | 发送手机验证码 |
| [**user_sign_in**](UserApi.md#user_sign_in) | **POST** /User/{appKey}/SignIn | 账号密码 登录 |
| [**user_sign_up**](UserApi.md#user_sign_up) | **POST** /User/{appKey}/SignUp | 账号密码 注册 |
| [**user_two_factor_auth**](UserApi.md#user_two_factor_auth) | **GET** /User/{appKey}/TwoFactorAuth | 双因素验证 |
| [**user_unfollow_user**](UserApi.md#user_unfollow_user) | **DELETE** /User/{appKey}/Follower/{userId} | 取消关注 |
| [**user_union_id_sign_in**](UserApi.md#user_union_id_sign_in) | **POST** /User/{appKey}/UnionIDSignIn | UnionID登录 |
| [**user_union_id_sign_up**](UserApi.md#user_union_id_sign_up) | **POST** /User/{appKey}/UnionIDSignUp | UnionID注册 |
| [**user_update_profile**](UserApi.md#user_update_profile) | **PUT** /User/{appKey}/Profile | 更新个人资料 |
| [**users**](UserApi.md#users) | **GET** /User/{appKey} | 获取用户列表 |


## user

> <UserApiResponse> user(id, app_key)

获取用户详情

根据用户ID获取用户详情

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
id = 789 # Integer | 用户ID
app_key = 'app_key_example' # String | 

begin
  # 获取用户详情
  result = api_instance.user(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user: #{e}"
end
```

#### Using the user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserApiResponse>, Integer, Hash)> user_with_http_info(id, app_key)

```ruby
begin
  # 获取用户详情
  data, status_code, headers = api_instance.user_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 用户ID |  |
| **app_key** | **String** |  |  |

### Return type

[**UserApiResponse**](UserApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_clear

> <BooleanApiResponse> user_clear(app_key)

清空用户数据

清空用户数据

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
  # 清空用户数据
  result = api_instance.user_clear(app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_clear: #{e}"
end
```

#### Using the user_clear_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_clear_with_http_info(app_key)

```ruby
begin
  # 清空用户数据
  data, status_code, headers = api_instance.user_clear_with_http_info(app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_clear_with_http_info: #{e}"
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


## user_common_interests

> <UserCommonInterestsResultApiResponse> user_common_interests(app_key, opts)

有共同爱好的用户推荐

推荐有共同爱好的用户

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
  tag: 'tag_example', # String | 兴趣标签
  skip: 56, # Integer | 跳过的记录数
  take: 56 # Integer | 获取的记录数
}

begin
  # 有共同爱好的用户推荐
  result = api_instance.user_common_interests(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_common_interests: #{e}"
end
```

#### Using the user_common_interests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserCommonInterestsResultApiResponse>, Integer, Hash)> user_common_interests_with_http_info(app_key, opts)

```ruby
begin
  # 有共同爱好的用户推荐
  data, status_code, headers = api_instance.user_common_interests_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserCommonInterestsResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_common_interests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **tag** | **String** | 兴趣标签 | [optional] |
| **skip** | **Integer** | 跳过的记录数 | [optional][default to 0] |
| **take** | **Integer** | 获取的记录数 | [optional][default to 10] |

### Return type

[**UserCommonInterestsResultApiResponse**](UserCommonInterestsResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_delete

> <BooleanApiResponse> user_delete(id, app_key)

删除用户

根据用户ID删除用户

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
id = 789 # Integer | 用户ID
app_key = 'app_key_example' # String | 

begin
  # 删除用户
  result = api_instance.user_delete(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_delete: #{e}"
end
```

#### Using the user_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_delete_with_http_info(id, app_key)

```ruby
begin
  # 删除用户
  data, status_code, headers = api_instance.user_delete_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 用户ID |  |
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


## user_export

> File user_export(app_key)

导出用户数据

导出所有用户数据为Excel文件

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
  # 导出用户数据
  result = api_instance.user_export(app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_export: #{e}"
end
```

#### Using the user_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> user_export_with_http_info(app_key)

```ruby
begin
  # 导出用户数据
  data, status_code, headers = api_instance.user_export_with_http_info(app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |

### Return type

**File**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet


## user_follow_user

> <BooleanApiResponse> user_follow_user(user_id, app_key)

关注用户

关注指定用户

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
user_id = 789 # Integer | 要关注的用户ID
app_key = 'app_key_example' # String | 

begin
  # 关注用户
  result = api_instance.user_follow_user(user_id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_follow_user: #{e}"
end
```

#### Using the user_follow_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_follow_user_with_http_info(user_id, app_key)

```ruby
begin
  # 关注用户
  data, status_code, headers = api_instance.user_follow_user_with_http_info(user_id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_follow_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | 要关注的用户ID |  |
| **app_key** | **String** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_follower_put

> <BooleanApiResponse> user_follower_put(id, app_key, opts)

更新粉丝

根据粉丝ID更新粉丝信息

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
id = 789 # Integer | 粉丝ID
app_key = 'app_key_example' # String | 
opts = {
  follower_put_model: ZSGFClient::FollowerPutModel.new # FollowerPutModel | 更新粉丝的请求参数
}

begin
  # 更新粉丝
  result = api_instance.user_follower_put(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_follower_put: #{e}"
end
```

#### Using the user_follower_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_follower_put_with_http_info(id, app_key, opts)

```ruby
begin
  # 更新粉丝
  data, status_code, headers = api_instance.user_follower_put_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_follower_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 粉丝ID |  |
| **app_key** | **String** |  |  |
| **follower_put_model** | [**FollowerPutModel**](FollowerPutModel.md) | 更新粉丝的请求参数 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_followers

> <UserFollowersResultApiResponse> user_followers(app_key, opts)

获取我的粉丝列表

根据条件获取我的粉丝列表

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
  tag: 'tag_example', # String | 标签
  status: 'status_example', # String | 状态
  skip: 56, # Integer | 跳过的记录数
  take: 56 # Integer | 获取的记录数
}

begin
  # 获取我的粉丝列表
  result = api_instance.user_followers(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_followers: #{e}"
end
```

#### Using the user_followers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserFollowersResultApiResponse>, Integer, Hash)> user_followers_with_http_info(app_key, opts)

```ruby
begin
  # 获取我的粉丝列表
  data, status_code, headers = api_instance.user_followers_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserFollowersResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_followers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **tag** | **String** | 标签 | [optional] |
| **status** | **String** | 状态 | [optional] |
| **skip** | **Integer** | 跳过的记录数 | [optional][default to 0] |
| **take** | **Integer** | 获取的记录数 | [optional][default to 10] |

### Return type

[**UserFollowersResultApiResponse**](UserFollowersResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_following

> <UserFollowingResultApiResponse> user_following(app_key, opts)

获取我的关注列表

根据条件获取我的关注列表

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
  tag: 'tag_example', # String | 标签
  status: 'status_example', # String | 状态
  skip: 56, # Integer | 跳过的记录数
  take: 56 # Integer | 获取的记录数
}

begin
  # 获取我的关注列表
  result = api_instance.user_following(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_following: #{e}"
end
```

#### Using the user_following_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserFollowingResultApiResponse>, Integer, Hash)> user_following_with_http_info(app_key, opts)

```ruby
begin
  # 获取我的关注列表
  data, status_code, headers = api_instance.user_following_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserFollowingResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_following_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **tag** | **String** | 标签 | [optional] |
| **status** | **String** | 状态 | [optional] |
| **skip** | **Integer** | 跳过的记录数 | [optional][default to 0] |
| **take** | **Integer** | 获取的记录数 | [optional][default to 10] |

### Return type

[**UserFollowingResultApiResponse**](UserFollowingResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_friends_near_by

> <UserFriendsNearByResultApiResponse> user_friends_near_by(x, y, distance, app_key, opts)

附近的用户推荐

推荐附近的用户

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
x = 1.2 # Float | 纬度
y = 1.2 # Float | 经度
distance = 789 # Integer | 附近距离，单位：米
app_key = 'app_key_example' # String | 
opts = {
  gender: 'gender_example', # String | 性别
  age_s: 56, # Integer | 年龄段起始
  age_e: 56, # Integer | 年龄段结束
  tag: 'tag_example', # String | 兴趣标签
  type: 'type_example', # String | 分类
  skip: 56, # Integer | 跳过的记录数
  take: 56 # Integer | 获取的记录数
}

begin
  # 附近的用户推荐
  result = api_instance.user_friends_near_by(x, y, distance, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_friends_near_by: #{e}"
end
```

#### Using the user_friends_near_by_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserFriendsNearByResultApiResponse>, Integer, Hash)> user_friends_near_by_with_http_info(x, y, distance, app_key, opts)

```ruby
begin
  # 附近的用户推荐
  data, status_code, headers = api_instance.user_friends_near_by_with_http_info(x, y, distance, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserFriendsNearByResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_friends_near_by_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x** | **Float** | 纬度 |  |
| **y** | **Float** | 经度 |  |
| **distance** | **Integer** | 附近距离，单位：米 |  |
| **app_key** | **String** |  |  |
| **gender** | **String** | 性别 | [optional] |
| **age_s** | **Integer** | 年龄段起始 | [optional] |
| **age_e** | **Integer** | 年龄段结束 | [optional] |
| **tag** | **String** | 兴趣标签 | [optional] |
| **type** | **String** | 分类 | [optional] |
| **skip** | **Integer** | 跳过的记录数 | [optional][default to 0] |
| **take** | **Integer** | 获取的记录数 | [optional][default to 10] |

### Return type

[**UserFriendsNearByResultApiResponse**](UserFriendsNearByResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_import

> <BooleanApiResponse> user_import(app_key, opts)

导入用户数据

导入用户数据

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
  check: true, # Boolean | 是否进行检查
  file: File.new('/path/to/some/file') # File | 导入的文件
}

begin
  # 导入用户数据
  result = api_instance.user_import(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_import: #{e}"
end
```

#### Using the user_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_import_with_http_info(app_key, opts)

```ruby
begin
  # 导入用户数据
  data, status_code, headers = api_instance.user_import_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_import_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **check** | **Boolean** | 是否进行检查 | [optional] |
| **file** | **File** | 导入的文件 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## user_location

> <GeoLocationModelApiResponse> user_location(id, app_key)

获取位置详情

根据位置ID获取位置详情

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
id = 789 # Integer | 位置ID
app_key = 'app_key_example' # String | 

begin
  # 获取位置详情
  result = api_instance.user_location(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_location: #{e}"
end
```

#### Using the user_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeoLocationModelApiResponse>, Integer, Hash)> user_location_with_http_info(id, app_key)

```ruby
begin
  # 获取位置详情
  data, status_code, headers = api_instance.user_location_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeoLocationModelApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 位置ID |  |
| **app_key** | **String** |  |  |

### Return type

[**GeoLocationModelApiResponse**](GeoLocationModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_location_delete

> <BooleanApiResponse> user_location_delete(id, app_key)

删除位置

根据位置ID删除位置信息

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
id = 789 # Integer | 位置ID
app_key = 'app_key_example' # String | 

begin
  # 删除位置
  result = api_instance.user_location_delete(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_location_delete: #{e}"
end
```

#### Using the user_location_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_location_delete_with_http_info(id, app_key)

```ruby
begin
  # 删除位置
  data, status_code, headers = api_instance.user_location_delete_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_location_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 位置ID |  |
| **app_key** | **String** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_location_post

> <UserLocationPostResultApiResponse> user_location_post(app_key, opts)

添加位置

添加新的位置信息

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
  geo_location_model: ZSGFClient::GeoLocationModel.new # GeoLocationModel | 位置信息
}

begin
  # 添加位置
  result = api_instance.user_location_post(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_location_post: #{e}"
end
```

#### Using the user_location_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserLocationPostResultApiResponse>, Integer, Hash)> user_location_post_with_http_info(app_key, opts)

```ruby
begin
  # 添加位置
  data, status_code, headers = api_instance.user_location_post_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserLocationPostResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_location_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **geo_location_model** | [**GeoLocationModel**](GeoLocationModel.md) | 位置信息 | [optional] |

### Return type

[**UserLocationPostResultApiResponse**](UserLocationPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_location_put

> <BooleanApiResponse> user_location_put(id, app_key, opts)

更新位置

根据位置ID更新位置信息

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
id = 789 # Integer | 位置ID
app_key = 'app_key_example' # String | 
opts = {
  geo_location_model: ZSGFClient::GeoLocationModel.new # GeoLocationModel | 位置信息
}

begin
  # 更新位置
  result = api_instance.user_location_put(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_location_put: #{e}"
end
```

#### Using the user_location_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_location_put_with_http_info(id, app_key, opts)

```ruby
begin
  # 更新位置
  data, status_code, headers = api_instance.user_location_put_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_location_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 位置ID |  |
| **app_key** | **String** |  |  |
| **geo_location_model** | [**GeoLocationModel**](GeoLocationModel.md) | 位置信息 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_locations

> <UserLocationsResultApiResponse> user_locations(app_key, opts)

获取位置列表

根据条件获取位置列表

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
  tag: 'tag_example', # String | 标签
  type: 'type_example', # String | 分类
  x: 1.2, # Float | 纬度
  y: 1.2, # Float | 经度
  sphere: 789, # Integer | 附近距离，单位：米
  skip: 56, # Integer | 跳过的记录数
  take: 56 # Integer | 获取的记录数
}

begin
  # 获取位置列表
  result = api_instance.user_locations(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_locations: #{e}"
end
```

#### Using the user_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserLocationsResultApiResponse>, Integer, Hash)> user_locations_with_http_info(app_key, opts)

```ruby
begin
  # 获取位置列表
  data, status_code, headers = api_instance.user_locations_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserLocationsResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **tag** | **String** | 标签 | [optional] |
| **type** | **String** | 分类 | [optional] |
| **x** | **Float** | 纬度 | [optional] |
| **y** | **Float** | 经度 | [optional] |
| **sphere** | **Integer** | 附近距离，单位：米 | [optional] |
| **skip** | **Integer** | 跳过的记录数 | [optional] |
| **take** | **Integer** | 获取的记录数 | [optional][default to 10] |

### Return type

[**UserLocationsResultApiResponse**](UserLocationsResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_mutual_followers

> <UserMutualFollowersResultApiResponse> user_mutual_followers(app_key, opts)

有共同粉丝的用户推荐

推荐有共同粉丝的用户

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
  skip: 56, # Integer | 跳过的记录数
  take: 56 # Integer | 获取的记录数
}

begin
  # 有共同粉丝的用户推荐
  result = api_instance.user_mutual_followers(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_mutual_followers: #{e}"
end
```

#### Using the user_mutual_followers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserMutualFollowersResultApiResponse>, Integer, Hash)> user_mutual_followers_with_http_info(app_key, opts)

```ruby
begin
  # 有共同粉丝的用户推荐
  data, status_code, headers = api_instance.user_mutual_followers_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserMutualFollowersResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_mutual_followers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **skip** | **Integer** | 跳过的记录数 | [optional][default to 0] |
| **take** | **Integer** | 获取的记录数 | [optional][default to 10] |

### Return type

[**UserMutualFollowersResultApiResponse**](UserMutualFollowersResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_mutual_followings

> <UserMutualFollowingsResultApiResponse> user_mutual_followings(app_key, opts)

有共同关注的用户推荐

推荐有共同关注的用户

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
  skip: 56, # Integer | 跳过的记录数
  take: 56 # Integer | 获取的记录数
}

begin
  # 有共同关注的用户推荐
  result = api_instance.user_mutual_followings(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_mutual_followings: #{e}"
end
```

#### Using the user_mutual_followings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserMutualFollowingsResultApiResponse>, Integer, Hash)> user_mutual_followings_with_http_info(app_key, opts)

```ruby
begin
  # 有共同关注的用户推荐
  data, status_code, headers = api_instance.user_mutual_followings_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserMutualFollowingsResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_mutual_followings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **skip** | **Integer** | 跳过的记录数 | [optional][default to 0] |
| **take** | **Integer** | 获取的记录数 | [optional][default to 10] |

### Return type

[**UserMutualFollowingsResultApiResponse**](UserMutualFollowingsResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_o_auth_account_bind

> <BooleanApiResponse> user_o_auth_account_bind(app_key, opts)

外部账号 绑定

绑定外部账号

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
  o_auth_account_bind_request: ZSGFClient::OAuthAccountBindRequest.new({union_id: 'union_id_example', platform: 'platform_example', platform_name: 'platform_name_example'}) # OAuthAccountBindRequest | 绑定请求参数
}

begin
  # 外部账号 绑定
  result = api_instance.user_o_auth_account_bind(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_o_auth_account_bind: #{e}"
end
```

#### Using the user_o_auth_account_bind_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_o_auth_account_bind_with_http_info(app_key, opts)

```ruby
begin
  # 外部账号 绑定
  data, status_code, headers = api_instance.user_o_auth_account_bind_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_o_auth_account_bind_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **o_auth_account_bind_request** | [**OAuthAccountBindRequest**](OAuthAccountBindRequest.md) | 绑定请求参数 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_o_auth_account_sign_in

> <TokenModelApiResponse> user_o_auth_account_sign_in(app_key, opts)

外部账号 登录

使用外部账号进行登录

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
  o_auth_account_sign_in_request: ZSGFClient::OAuthAccountSignInRequest.new({union_id: 'union_id_example', platform: 'platform_example'}) # OAuthAccountSignInRequest | 登录请求参数
}

begin
  # 外部账号 登录
  result = api_instance.user_o_auth_account_sign_in(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_o_auth_account_sign_in: #{e}"
end
```

#### Using the user_o_auth_account_sign_in_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenModelApiResponse>, Integer, Hash)> user_o_auth_account_sign_in_with_http_info(app_key, opts)

```ruby
begin
  # 外部账号 登录
  data, status_code, headers = api_instance.user_o_auth_account_sign_in_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenModelApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_o_auth_account_sign_in_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **o_auth_account_sign_in_request** | [**OAuthAccountSignInRequest**](OAuthAccountSignInRequest.md) | 登录请求参数 | [optional] |

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_o_auth_accounts

> <UserLoginsListApiResponse> user_o_auth_accounts(app_key)

外部账号 绑定列表

获取外部账号绑定列表

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
  # 外部账号 绑定列表
  result = api_instance.user_o_auth_accounts(app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_o_auth_accounts: #{e}"
end
```

#### Using the user_o_auth_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserLoginsListApiResponse>, Integer, Hash)> user_o_auth_accounts_with_http_info(app_key)

```ruby
begin
  # 外部账号 绑定列表
  data, status_code, headers = api_instance.user_o_auth_accounts_with_http_info(app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserLoginsListApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_o_auth_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |

### Return type

[**UserLoginsListApiResponse**](UserLoginsListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_o_auth_accounts_put_bind

> <BooleanApiResponse> user_o_auth_accounts_put_bind(id, app_key, opts)

外部账号 更新绑定

更新外部账号绑定信息

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
id = 789 # Integer | 绑定ID
app_key = 'app_key_example' # String | 
opts = {
  o_auth_account_put_bind_request: ZSGFClient::OAuthAccountPutBindRequest.new # OAuthAccountPutBindRequest | 更新请求参数
}

begin
  # 外部账号 更新绑定
  result = api_instance.user_o_auth_accounts_put_bind(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_o_auth_accounts_put_bind: #{e}"
end
```

#### Using the user_o_auth_accounts_put_bind_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_o_auth_accounts_put_bind_with_http_info(id, app_key, opts)

```ruby
begin
  # 外部账号 更新绑定
  data, status_code, headers = api_instance.user_o_auth_accounts_put_bind_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_o_auth_accounts_put_bind_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 绑定ID |  |
| **app_key** | **String** |  |  |
| **o_auth_account_put_bind_request** | [**OAuthAccountPutBindRequest**](OAuthAccountPutBindRequest.md) | 更新请求参数 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_o_auth_accounts_un_bind

> <BooleanApiResponse> user_o_auth_accounts_un_bind(id, app_key)

外部账号 删除绑定

删除外部账号绑定

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
id = 789 # Integer | 绑定ID
app_key = 'app_key_example' # String | 

begin
  # 外部账号 删除绑定
  result = api_instance.user_o_auth_accounts_un_bind(id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_o_auth_accounts_un_bind: #{e}"
end
```

#### Using the user_o_auth_accounts_un_bind_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_o_auth_accounts_un_bind_with_http_info(id, app_key)

```ruby
begin
  # 外部账号 删除绑定
  data, status_code, headers = api_instance.user_o_auth_accounts_un_bind_with_http_info(id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_o_auth_accounts_un_bind_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 绑定ID |  |
| **app_key** | **String** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
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


## user_put

> <BooleanApiResponse> user_put(id, app_key, opts)

更新用户信息

根据用户ID更新用户信息

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
id = 789 # Integer | 用户ID
app_key = 'app_key_example' # String | 
opts = {
  user: ZSGFClient::User.new # User | 用户信息
}

begin
  # 更新用户信息
  result = api_instance.user_put(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_put: #{e}"
end
```

#### Using the user_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_put_with_http_info(id, app_key, opts)

```ruby
begin
  # 更新用户信息
  data, status_code, headers = api_instance.user_put_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 用户ID |  |
| **app_key** | **String** |  |  |
| **user** | [**User**](User.md) | 用户信息 | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_qr_code_pre_sign_in

> <Int64ApiResponse> user_qr_code_pre_sign_in(app_key, opts)

微信小程序 - 预登陆

使用微信小程序二维码进行预登陆

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
  qr_code_pre_sign_in_request: ZSGFClient::QRCodePreSignInRequest.new # QRCodePreSignInRequest | 预登陆请求参数
}

begin
  # 微信小程序 - 预登陆
  result = api_instance.user_qr_code_pre_sign_in(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_qr_code_pre_sign_in: #{e}"
end
```

#### Using the user_qr_code_pre_sign_in_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int64ApiResponse>, Integer, Hash)> user_qr_code_pre_sign_in_with_http_info(app_key, opts)

```ruby
begin
  # 微信小程序 - 预登陆
  data, status_code, headers = api_instance.user_qr_code_pre_sign_in_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int64ApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_qr_code_pre_sign_in_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **qr_code_pre_sign_in_request** | [**QRCodePreSignInRequest**](QRCodePreSignInRequest.md) | 预登陆请求参数 | [optional] |

### Return type

[**Int64ApiResponse**](Int64ApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_qr_code_scan

> <UserQRCodeScanResultApiResponse> user_qr_code_scan(app_key, opts)

微信小程序 - 扫码

使用微信小程序二维码进行扫码

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
  qr_code_scan_request: ZSGFClient::QRCodeScanRequest.new({sign_in_key: 3.56}) # QRCodeScanRequest | 扫码请求参数
}

begin
  # 微信小程序 - 扫码
  result = api_instance.user_qr_code_scan(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_qr_code_scan: #{e}"
end
```

#### Using the user_qr_code_scan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserQRCodeScanResultApiResponse>, Integer, Hash)> user_qr_code_scan_with_http_info(app_key, opts)

```ruby
begin
  # 微信小程序 - 扫码
  data, status_code, headers = api_instance.user_qr_code_scan_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserQRCodeScanResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_qr_code_scan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **qr_code_scan_request** | [**QRCodeScanRequest**](QRCodeScanRequest.md) | 扫码请求参数 | [optional] |

### Return type

[**UserQRCodeScanResultApiResponse**](UserQRCodeScanResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_qr_code_sign_in

> <TokenModelApiResponse> user_qr_code_sign_in(app_key, opts)

微信小程序 - 网页登录

使用微信小程序二维码进行网页登录

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
  qr_code_sign_in_request: ZSGFClient::QRCodeSignInRequest.new({sign_in_key: 3.56}) # QRCodeSignInRequest | 登录请求参数
}

begin
  # 微信小程序 - 网页登录
  result = api_instance.user_qr_code_sign_in(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_qr_code_sign_in: #{e}"
end
```

#### Using the user_qr_code_sign_in_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenModelApiResponse>, Integer, Hash)> user_qr_code_sign_in_with_http_info(app_key, opts)

```ruby
begin
  # 微信小程序 - 网页登录
  data, status_code, headers = api_instance.user_qr_code_sign_in_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenModelApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_qr_code_sign_in_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **qr_code_sign_in_request** | [**QRCodeSignInRequest**](QRCodeSignInRequest.md) | 登录请求参数 | [optional] |

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
- **Accept**: application/json


## user_qr_code_sign_up

> <TokenModelApiResponse> user_qr_code_sign_up(app_key, opts)

微信小程序 - 注册

使用微信小程序二维码进行注册

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
  qr_code_sign_up_request: ZSGFClient::QRCodeSignUpRequest.new({union_id: 'union_id_example'}) # QRCodeSignUpRequest | 注册请求参数
}

begin
  # 微信小程序 - 注册
  result = api_instance.user_qr_code_sign_up(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_qr_code_sign_up: #{e}"
end
```

#### Using the user_qr_code_sign_up_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenModelApiResponse>, Integer, Hash)> user_qr_code_sign_up_with_http_info(app_key, opts)

```ruby
begin
  # 微信小程序 - 注册
  data, status_code, headers = api_instance.user_qr_code_sign_up_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenModelApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_qr_code_sign_up_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **qr_code_sign_up_request** | [**QRCodeSignUpRequest**](QRCodeSignUpRequest.md) | 注册请求参数 | [optional] |

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

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
  app_user_reset_pwd_request: ZSGFClient::AppUserResetPwdRequest.new({code: 'code_example', pwd: 'pwd_example'}) # AppUserResetPwdRequest | 重置密码的请求参数
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

账号密码 登录

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
  # 账号密码 登录
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
  # 账号密码 登录
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

账号密码 注册

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
  # 账号密码 注册
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
  # 账号密码 注册
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

双因素验证

获取双因素验证的设置信息

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
  # 双因素验证
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
  # 双因素验证
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


## user_unfollow_user

> <BooleanApiResponse> user_unfollow_user(user_id, app_key)

取消关注

取消关注指定用户

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
user_id = 789 # Integer | 要取消关注的用户ID
app_key = 'app_key_example' # String | 

begin
  # 取消关注
  result = api_instance.user_unfollow_user(user_id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_unfollow_user: #{e}"
end
```

#### Using the user_unfollow_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_unfollow_user_with_http_info(user_id, app_key)

```ruby
begin
  # 取消关注
  data, status_code, headers = api_instance.user_unfollow_user_with_http_info(user_id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->user_unfollow_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | 要取消关注的用户ID |  |
| **app_key** | **String** |  |  |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

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


## users

> <UserListResultApiResponse> users(app_key, opts)

获取用户列表

根据条件获取用户列表

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
  user_name: 'user_name_example', # String | 用户名
  email: 'email_example', # String | 邮箱
  phone: 'phone_example', # String | 电话
  platform: 'platform_example', # String | 平台
  union_id: 'union_id_example', # String | 联合ID
  role: 'role_example', # String | 角色
  skip: 56, # Integer | 跳过的记录数
  take: 56 # Integer | 获取的记录数
}

begin
  # 获取用户列表
  result = api_instance.users(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->users: #{e}"
end
```

#### Using the users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserListResultApiResponse>, Integer, Hash)> users_with_http_info(app_key, opts)

```ruby
begin
  # 获取用户列表
  data, status_code, headers = api_instance.users_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserListResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserApi->users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **user_name** | **String** | 用户名 | [optional] |
| **email** | **String** | 邮箱 | [optional] |
| **phone** | **String** | 电话 | [optional] |
| **platform** | **String** | 平台 | [optional] |
| **union_id** | **String** | 联合ID | [optional] |
| **role** | **String** | 角色 | [optional] |
| **skip** | **Integer** | 跳过的记录数 | [optional] |
| **take** | **Integer** | 获取的记录数 | [optional] |

### Return type

[**UserListResultApiResponse**](UserListResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

