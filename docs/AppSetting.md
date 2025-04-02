# ZSGFClient::AppSetting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 唯一标识 | [optional] |
| **provider_code** | **String** | 提供商代码 | [optional] |
| **group_code** | **String** | 分组代码 | [optional] |
| **code** | **String** | 设置项代码 |  |
| **value** | **String** | 设置值 |  |
| **tags** | **String** | 标签 | [optional] |
| **description** | **String** | 描述 | [optional] |
| **frontend_usable** | **Boolean** | 是否在前端可用 | [optional] |
| **create_date** | **Time** | 创建时间 | [optional] |
| **last_update** | **Time** | 最后更新时间 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::AppSetting.new(
  id: null,
  provider_code: null,
  group_code: null,
  code: null,
  value: null,
  tags: null,
  description: null,
  frontend_usable: null,
  create_date: null,
  last_update: null
)
```

