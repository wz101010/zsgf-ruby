# ZSGFClient::AppUserListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 用户ID | [optional] |
| **union_id** | **String** | 用户的联合ID | [optional] |
| **platform** | **String** | 用户所在平台 | [optional] |
| **user_name** | **String** | 用户名 | [optional] |
| **nick_name** | **String** | 用户昵称 | [optional] |
| **email** | **String** | 用户邮箱 | [optional] |
| **phone** | **String** | 用户电话 | [optional] |
| **avatar** | **String** | 用户头像URL | [optional] |
| **role** | **String** | 用户角色 | [optional] |
| **role_id** | **Integer** | 用户角色ID | [optional] |
| **create_date** | **Time** | 用户创建日期 | [optional] |
| **last_update** | **Time** | 用户最后更新日期 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::AppUserListResponse.new(
  id: null,
  union_id: null,
  platform: null,
  user_name: null,
  nick_name: null,
  email: null,
  phone: null,
  avatar: null,
  role: null,
  role_id: null,
  create_date: null,
  last_update: null
)
```

