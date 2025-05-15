# ZSGFClient::Project

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 状态码 | [optional] |
| **user_id** | **Integer** | 用户 ID | [optional] |
| **name** | **String** | 名称 | [optional] |
| **logo** | **String** | Logo | [optional] |
| **description** | **String** | 描述 | [optional] |
| **show** | **Boolean** | 是否显示 | [optional] |
| **show_index** | **Integer** | 显示索引 | [optional] |
| **create_date** | **Time** | 创建时间 | [optional] |
| **last_update** | **Time** | 最后更新时间 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::Project.new(
  id: null,
  user_id: null,
  name: null,
  logo: null,
  description: null,
  show: null,
  show_index: null,
  create_date: null,
  last_update: null
)
```

