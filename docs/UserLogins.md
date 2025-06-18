# ZSGFClient::UserLogins

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 唯一标识符 | [optional] |
| **user_id** | **Integer** | 关联的用户ID | [optional] |
| **platform_name** | **String** | 第三方平台名称 | [optional] |
| **platform** | **String** | 第三方平台 | [optional] |
| **union_id** | **String** | 第三方平台唯一标识 | [optional] |
| **avatar** | **String** | 用户头像 | [optional] |
| **data** | **String** | 扩展数据 | [optional] |
| **enable** | **Boolean** | 启用 | [optional] |
| **create_date** | **Time** | 创建时间 | [optional] |
| **last_update** | **Time** | 最后更新时间 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::UserLogins.new(
  id: null,
  user_id: null,
  platform_name: null,
  platform: null,
  union_id: null,
  avatar: null,
  data: null,
  enable: null,
  create_date: null,
  last_update: null
)
```

