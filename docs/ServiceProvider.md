# ZSGFClient::ServiceProvider

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务商的唯一标识符。 | [optional] |
| **biz_code** | **String** | 服务商的业务代码，用于标识其所属业务领域。 | [optional] |
| **name** | **String** | 服务商的名称。 | [optional] |
| **code** | **String** | 服务商的唯一代码，用于系统内部标识。 | [optional] |
| **icon** | **String** | 服务商图标的URL或路径。 | [optional] |
| **description** | **String** | 服务商的详细描述信息。 | [optional] |
| **tags** | **String** | 用于分类或标记服务商的标签。 | [optional] |
| **show** | **Boolean** | 指示服务商是否在界面上显示。 | [optional] |
| **show_index** | **Integer** | 服务商在界面上的显示顺序。 | [optional] |
| **create_date** | **Time** | 服务商记录的创建日期，默认为当前时间。 | [optional] |
| **last_update** | **Time** | 服务商记录的最后更新日期，默认为当前时间。 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::ServiceProvider.new(
  id: null,
  biz_code: null,
  name: null,
  code: null,
  icon: null,
  description: null,
  tags: null,
  show: null,
  show_index: null,
  create_date: null,
  last_update: null
)
```

