# ZSGFClient::ServiceGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务功能分组的唯一标识符。 | [optional] |
| **provider_id** | **Integer** | 关联的服务商的唯一标识符。 | [optional] |
| **name** | **String** | 服务功能分组的名称。 | [optional] |
| **code** | **String** | 服务功能分组的唯一代码，用于系统内部标识。 | [optional] |
| **icon** | **String** | 服务功能分组的图标URL或路径。 | [optional] |
| **description** | **String** | 服务功能分组的详细描述信息。 | [optional] |
| **show** | **Boolean** | 指示服务功能分组是否在界面上显示。 | [optional] |
| **show_index** | **Integer** | 服务功能分组在界面上的显示顺序。 | [optional] |
| **create_date** | **Time** | 服务功能分组的创建日期，默认为当前时间。 | [optional] |
| **last_update** | **Time** | 服务功能分组的最后更新日期，默认为当前时间。 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::ServiceGroup.new(
  id: null,
  provider_id: null,
  name: null,
  code: null,
  icon: null,
  description: null,
  show: null,
  show_index: null,
  create_date: null,
  last_update: null
)
```

