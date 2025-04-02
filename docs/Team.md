# ZSGFClient::Team

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID | [optional] |
| **user_id** | **Integer** | 用户ID | [optional] |
| **channel_code** | **String** | 渠道代码 | [optional] |
| **channel_app_id** | **String** | 渠道应用ID | [optional] |
| **role** | **String** | 角色 | [optional] |
| **permission** | **String** | 权限 | [optional] |
| **show** | **Boolean** | 是否显示 | [optional] |
| **show_index** | **Integer** | 显示顺序 | [optional] |
| **create_date** | **Time** | 创建日期 | [optional] |
| **last_update** | **Time** | 最后更新日期 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::Team.new(
  id: null,
  user_id: null,
  channel_code: null,
  channel_app_id: null,
  role: null,
  permission: null,
  show: null,
  show_index: null,
  create_date: null,
  last_update: null
)
```

