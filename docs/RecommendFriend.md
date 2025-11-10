# ZSGFClient::RecommendFriend

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | 用户ID | [optional] |
| **nick_name** | **String** | 昵称 | [optional] |
| **avatar** | **String** | 头像 | [optional] |
| **gender** | **String** | 性别 | [optional] |
| **age** | **Integer** | 年龄 | [optional] |
| **interest_tags** | **String** | 兴趣标签 | [optional] |
| **location_name** | **String** | 位置名称 | [optional] |
| **latitude** | **Float** | 纬度 | [optional] |
| **longitude** | **Float** | 经度 | [optional] |
| **distance** | **Integer** | 距离 | [optional] |
| **biography** | **String** | 个人简介 | [optional] |
| **country** | **String** | 国家 | [optional] |
| **state** | **String** | 省份 | [optional] |
| **city** | **String** | 城市 | [optional] |
| **district** | **String** | 区县 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::RecommendFriend.new(
  user_id: null,
  nick_name: null,
  avatar: null,
  gender: null,
  age: null,
  interest_tags: null,
  location_name: null,
  latitude: null,
  longitude: null,
  distance: null,
  biography: null,
  country: null,
  state: null,
  city: null,
  district: null
)
```

