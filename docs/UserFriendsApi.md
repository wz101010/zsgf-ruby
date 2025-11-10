# ZSGFClient::UserFriendsApi

All URIs are relative to *https://api-dev.zashigaofa.cn*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**user_common_interests**](UserFriendsApi.md#user_common_interests) | **GET** /UserFriends/{appKey}/CommonInterests | 推荐相似兴趣用户 |
| [**user_follow_user**](UserFriendsApi.md#user_follow_user) | **POST** /UserFriends/{appKey}/Follower/{userId} | 添加关注 |
| [**user_follower_put**](UserFriendsApi.md#user_follower_put) | **PUT** /UserFriends/{appKey}/Follower/{id} | 刷新粉丝数据 |
| [**user_followers**](UserFriendsApi.md#user_followers) | **GET** /UserFriends/{appKey}/Followers | 获取粉丝列表 |
| [**user_following**](UserFriendsApi.md#user_following) | **GET** /UserFriends/{appKey}/Following | 获取关注列表 / 判断是否关注 |
| [**user_friends_near_by**](UserFriendsApi.md#user_friends_near_by) | **GET** /UserFriends/{appKey}/NearBy | 推荐附近用户 |
| [**user_mutual_followers**](UserFriendsApi.md#user_mutual_followers) | **GET** /UserFriends/{appKey}/MutualFollowers | 推荐共同粉丝用户 |
| [**user_mutual_followings**](UserFriendsApi.md#user_mutual_followings) | **GET** /UserFriends/{appKey}/MutualFollowings | 推荐共同关注用户 |
| [**user_profile_by_id**](UserFriendsApi.md#user_profile_by_id) | **GET** /UserFriends/{appKey}/Profile/{userId} | 获取用户资料 |
| [**user_unfollow_user**](UserFriendsApi.md#user_unfollow_user) | **DELETE** /UserFriends/{appKey}/Follower/{userId} | 取消关注 |


## user_common_interests

> <UserCommonInterestsResultApiResponse> user_common_interests(app_key, opts)

推荐相似兴趣用户

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

api_instance = ZSGFClient::UserFriendsApi.new
app_key = 'app_key_example' # String | 
opts = {
  tag: 'tag_example', # String | 兴趣标签
  skip: 56, # Integer | 跳过的记录数
  take: 56, # Integer | 获取的记录数
  user_id: 'user_id_example' # String | 
}

begin
  # 推荐相似兴趣用户
  result = api_instance.user_common_interests(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_common_interests: #{e}"
end
```

#### Using the user_common_interests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserCommonInterestsResultApiResponse>, Integer, Hash)> user_common_interests_with_http_info(app_key, opts)

```ruby
begin
  # 推荐相似兴趣用户
  data, status_code, headers = api_instance.user_common_interests_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserCommonInterestsResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_common_interests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **tag** | **String** | 兴趣标签 | [optional] |
| **skip** | **Integer** | 跳过的记录数 | [optional][default to 0] |
| **take** | **Integer** | 获取的记录数 | [optional][default to 10] |
| **user_id** | **String** |  | [optional][default to &#39;&#39;] |

### Return type

[**UserCommonInterestsResultApiResponse**](UserCommonInterestsResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_follow_user

> <BooleanApiResponse> user_follow_user(user_id, app_key, opts)

添加关注

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

api_instance = ZSGFClient::UserFriendsApi.new
user_id = 789 # Integer | 要关注的用户ID
app_key = 'app_key_example' # String | 
opts = {
  from_user_id: 'from_user_id_example' # String | 
}

begin
  # 添加关注
  result = api_instance.user_follow_user(user_id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_follow_user: #{e}"
end
```

#### Using the user_follow_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_follow_user_with_http_info(user_id, app_key, opts)

```ruby
begin
  # 添加关注
  data, status_code, headers = api_instance.user_follow_user_with_http_info(user_id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_follow_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | 要关注的用户ID |  |
| **app_key** | **String** |  |  |
| **from_user_id** | **String** |  | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_follower_put

> <BooleanApiResponse> user_follower_put(id, app_key, opts)

刷新粉丝数据

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

api_instance = ZSGFClient::UserFriendsApi.new
id = 789 # Integer | 粉丝ID
app_key = 'app_key_example' # String | 
opts = {
  follower_put_model: ZSGFClient::FollowerPutModel.new # FollowerPutModel | 更新粉丝的请求参数
}

begin
  # 刷新粉丝数据
  result = api_instance.user_follower_put(id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_follower_put: #{e}"
end
```

#### Using the user_follower_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_follower_put_with_http_info(id, app_key, opts)

```ruby
begin
  # 刷新粉丝数据
  data, status_code, headers = api_instance.user_follower_put_with_http_info(id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_follower_put_with_http_info: #{e}"
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

获取粉丝列表

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

api_instance = ZSGFClient::UserFriendsApi.new
app_key = 'app_key_example' # String | 
opts = {
  tag: 'tag_example', # String | 标签
  status: 'status_example', # String | 状态
  target_user_id: 789, # Integer | 指定用户的粉丝
  skip: 56, # Integer | 跳过的记录数
  take: 56, # Integer | 获取的记录数
  user_id: 'user_id_example' # String | 
}

begin
  # 获取粉丝列表
  result = api_instance.user_followers(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_followers: #{e}"
end
```

#### Using the user_followers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserFollowersResultApiResponse>, Integer, Hash)> user_followers_with_http_info(app_key, opts)

```ruby
begin
  # 获取粉丝列表
  data, status_code, headers = api_instance.user_followers_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserFollowersResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_followers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **tag** | **String** | 标签 | [optional] |
| **status** | **String** | 状态 | [optional] |
| **target_user_id** | **Integer** | 指定用户的粉丝 | [optional][default to 0] |
| **skip** | **Integer** | 跳过的记录数 | [optional][default to 0] |
| **take** | **Integer** | 获取的记录数 | [optional][default to 10] |
| **user_id** | **String** |  | [optional][default to &#39;&#39;] |

### Return type

[**UserFollowersResultApiResponse**](UserFollowersResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_following

> <BooleanApiResponse> user_following(app_key, opts)

获取关注列表 / 判断是否关注

根据条件获取我的关注列表，或判断是否关注某个用户

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserFriendsApi.new
app_key = 'app_key_example' # String | 
opts = {
  tag: 'tag_example', # String | 用于过滤关注列表的标签（可选）。
  status: 'status_example', # String | 用于过滤关注列表的状态（可选）。
  target_user_id: 789, # Integer | 指定用户的关注记录，如果不提供则默认为当前用户的关注。
  skip: 56, # Integer | 跳过的记录数，用于分页（默认0）。
  take: 56, # Integer | 获取的记录数，用于分页（默认10）。
  check_user_id: 789, # Integer | 要判断是否关注的目标用户ID。如果提供此参数，方法将返回一个布尔值，表示当前用户是否关注该目标用户。
  only_ids: true, # Boolean | 是否只返回关注用户的ID集合，默认为false（即返回完整的关注用户信息）。
  user_id: 'user_id_example' # String | 
}

begin
  # 获取关注列表 / 判断是否关注
  result = api_instance.user_following(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_following: #{e}"
end
```

#### Using the user_following_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_following_with_http_info(app_key, opts)

```ruby
begin
  # 获取关注列表 / 判断是否关注
  data, status_code, headers = api_instance.user_following_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_following_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **tag** | **String** | 用于过滤关注列表的标签（可选）。 | [optional] |
| **status** | **String** | 用于过滤关注列表的状态（可选）。 | [optional] |
| **target_user_id** | **Integer** | 指定用户的关注记录，如果不提供则默认为当前用户的关注。 | [optional][default to 0] |
| **skip** | **Integer** | 跳过的记录数，用于分页（默认0）。 | [optional][default to 0] |
| **take** | **Integer** | 获取的记录数，用于分页（默认10）。 | [optional][default to 10] |
| **check_user_id** | **Integer** | 要判断是否关注的目标用户ID。如果提供此参数，方法将返回一个布尔值，表示当前用户是否关注该目标用户。 | [optional] |
| **only_ids** | **Boolean** | 是否只返回关注用户的ID集合，默认为false（即返回完整的关注用户信息）。 | [optional][default to false] |
| **user_id** | **String** |  | [optional][default to &#39;&#39;] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_friends_near_by

> <UserFriendsNearByResultApiResponse> user_friends_near_by(longitude, latitude, app_key, opts)

推荐附近用户

根据地理位置坐标和多种筛选条件，查询附近满足条件的用户列表，支持分页和按距离排序。 地理位置查询使用MySQL的ST_Distance_Sphere函数计算球面距离。 注意：longitude为经度(X轴)，latitude为纬度(Y轴)，参数顺序与常规坐标系一致

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserFriendsApi.new
longitude = 1.2 # Float | 当前用户经度坐标(WGS84坐标系)
latitude = 1.2 # Float | 当前用户纬度坐标(WGS84坐标系)
app_key = 'app_key_example' # String | 
opts = {
  country: 'country_example', # String | 国家过滤条件（精确匹配）
  state: 'state_example', # String | 省份过滤条件（精确匹配）
  city: 'city_example', # String | 城市过滤条件（精确匹配）
  district: 'district_example', # String | 区县过滤条件（精确匹配）
  gender: 'gender_example', # String | 性别过滤条件（可选值示例：Male/Female/Other）
  age_s: 56, # Integer | 年龄起始范围（包含，0表示不限制）
  age_e: 56, # Integer | 年龄结束范围（包含，0表示不限制）
  tag: 'tag_example', # String | 兴趣标签过滤（支持模糊匹配，如：\"运动\"）
  distance: 789, # Integer | 搜索半径（单位：米，0表示不限制距离）
  skip: 56, # Integer | 跳过的记录数（分页起始位置，默认0）
  take: 56, # Integer | 获取的记录数（分页大小，默认10，最大100）
  user_id: 'user_id_example' # String | 
}

begin
  # 推荐附近用户
  result = api_instance.user_friends_near_by(longitude, latitude, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_friends_near_by: #{e}"
end
```

#### Using the user_friends_near_by_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserFriendsNearByResultApiResponse>, Integer, Hash)> user_friends_near_by_with_http_info(longitude, latitude, app_key, opts)

```ruby
begin
  # 推荐附近用户
  data, status_code, headers = api_instance.user_friends_near_by_with_http_info(longitude, latitude, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserFriendsNearByResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_friends_near_by_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **longitude** | **Float** | 当前用户经度坐标(WGS84坐标系) |  |
| **latitude** | **Float** | 当前用户纬度坐标(WGS84坐标系) |  |
| **app_key** | **String** |  |  |
| **country** | **String** | 国家过滤条件（精确匹配） | [optional] |
| **state** | **String** | 省份过滤条件（精确匹配） | [optional] |
| **city** | **String** | 城市过滤条件（精确匹配） | [optional] |
| **district** | **String** | 区县过滤条件（精确匹配） | [optional] |
| **gender** | **String** | 性别过滤条件（可选值示例：Male/Female/Other） | [optional] |
| **age_s** | **Integer** | 年龄起始范围（包含，0表示不限制） | [optional] |
| **age_e** | **Integer** | 年龄结束范围（包含，0表示不限制） | [optional] |
| **tag** | **String** | 兴趣标签过滤（支持模糊匹配，如：\&quot;运动\&quot;） | [optional] |
| **distance** | **Integer** | 搜索半径（单位：米，0表示不限制距离） | [optional][default to 0] |
| **skip** | **Integer** | 跳过的记录数（分页起始位置，默认0） | [optional][default to 0] |
| **take** | **Integer** | 获取的记录数（分页大小，默认10，最大100） | [optional][default to 10] |
| **user_id** | **String** |  | [optional][default to &#39;&#39;] |

### Return type

[**UserFriendsNearByResultApiResponse**](UserFriendsNearByResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_mutual_followers

> <UserMutualFollowersResultApiResponse> user_mutual_followers(app_key, opts)

推荐共同粉丝用户

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

api_instance = ZSGFClient::UserFriendsApi.new
app_key = 'app_key_example' # String | 
opts = {
  skip: 56, # Integer | 跳过的记录数
  take: 56, # Integer | 获取的记录数
  user_id: 'user_id_example' # String | 
}

begin
  # 推荐共同粉丝用户
  result = api_instance.user_mutual_followers(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_mutual_followers: #{e}"
end
```

#### Using the user_mutual_followers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserMutualFollowersResultApiResponse>, Integer, Hash)> user_mutual_followers_with_http_info(app_key, opts)

```ruby
begin
  # 推荐共同粉丝用户
  data, status_code, headers = api_instance.user_mutual_followers_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserMutualFollowersResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_mutual_followers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **skip** | **Integer** | 跳过的记录数 | [optional][default to 0] |
| **take** | **Integer** | 获取的记录数 | [optional][default to 10] |
| **user_id** | **String** |  | [optional][default to &#39;&#39;] |

### Return type

[**UserMutualFollowersResultApiResponse**](UserMutualFollowersResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_mutual_followings

> <UserMutualFollowingsResultApiResponse> user_mutual_followings(app_key, opts)

推荐共同关注用户

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

api_instance = ZSGFClient::UserFriendsApi.new
app_key = 'app_key_example' # String | 
opts = {
  skip: 56, # Integer | 跳过的记录数
  take: 56, # Integer | 获取的记录数
  user_id: 'user_id_example' # String | 
}

begin
  # 推荐共同关注用户
  result = api_instance.user_mutual_followings(app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_mutual_followings: #{e}"
end
```

#### Using the user_mutual_followings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserMutualFollowingsResultApiResponse>, Integer, Hash)> user_mutual_followings_with_http_info(app_key, opts)

```ruby
begin
  # 推荐共同关注用户
  data, status_code, headers = api_instance.user_mutual_followings_with_http_info(app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserMutualFollowingsResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_mutual_followings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  |  |
| **skip** | **Integer** | 跳过的记录数 | [optional][default to 0] |
| **take** | **Integer** | 获取的记录数 | [optional][default to 10] |
| **user_id** | **String** |  | [optional][default to &#39;&#39;] |

### Return type

[**UserMutualFollowingsResultApiResponse**](UserMutualFollowingsResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_profile_by_id

> <GetUserProfileResultApiResponse> user_profile_by_id(user_id, app_key)

获取用户资料

用于他人主页展示

### Examples

```ruby
require 'time'
require 'zsgf_client'
# setup authorization
ZSGFClient.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ZSGFClient::UserFriendsApi.new
user_id = 789 # Integer | 用户ID
app_key = 'app_key_example' # String | 

begin
  # 获取用户资料
  result = api_instance.user_profile_by_id(user_id, app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_profile_by_id: #{e}"
end
```

#### Using the user_profile_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserProfileResultApiResponse>, Integer, Hash)> user_profile_by_id_with_http_info(user_id, app_key)

```ruby
begin
  # 获取用户资料
  data, status_code, headers = api_instance.user_profile_by_id_with_http_info(user_id, app_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserProfileResultApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_profile_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | 用户ID |  |
| **app_key** | **String** |  |  |

### Return type

[**GetUserProfileResultApiResponse**](GetUserProfileResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_unfollow_user

> <BooleanApiResponse> user_unfollow_user(user_id, app_key, opts)

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

api_instance = ZSGFClient::UserFriendsApi.new
user_id = 789 # Integer | 要取消关注的用户ID
app_key = 'app_key_example' # String | 
opts = {
  from_user_id: 'from_user_id_example' # String | 
}

begin
  # 取消关注
  result = api_instance.user_unfollow_user(user_id, app_key, opts)
  p result
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_unfollow_user: #{e}"
end
```

#### Using the user_unfollow_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanApiResponse>, Integer, Hash)> user_unfollow_user_with_http_info(user_id, app_key, opts)

```ruby
begin
  # 取消关注
  data, status_code, headers = api_instance.user_unfollow_user_with_http_info(user_id, app_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanApiResponse>
rescue ZSGFClient::ApiError => e
  puts "Error when calling UserFriendsApi->user_unfollow_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | 要取消关注的用户ID |  |
| **app_key** | **String** |  |  |
| **from_user_id** | **String** |  | [optional] |

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

