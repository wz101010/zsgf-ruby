# ZSGFClient::ServiceItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 服务配置项的唯一标识符。 | [optional] |
| **biz_code** | **String** | 服务配置项所属的业务代码，用于分类管理。 | [optional] |
| **provider_code** | **String** | 关联的服务商代码，用于标识提供该配置项的服务商。 | [optional] |
| **group_code** | **String** | 服务配置项所属的功能分组代码，用于组织和管理相关配置项。 | [optional] |
| **name** | **String** | 服务配置项的名称，用于描述其功能或用途。 | [optional] |
| **code** | **String** | 服务配置项的唯一代码，用于系统内部标识。 | [optional] |
| **value_type** | **String** | 服务配置项的值类型，例如 &#39;text&#39;, &#39;number&#39;, &#39;boolean&#39; 等。默认为 &#39;text&#39;。 | [optional] |
| **icon** | **String** | 服务配置项的图标URL或路径，用于在界面上显示。 | [optional] |
| **value_defaults** | **String** | 服务配置项的默认值，当未设置具体值时使用。 | [optional] |
| **description** | **String** | 服务配置项的详细描述信息，用于说明其用途和配置方法。 | [optional] |
| **tags** | **String** | 用于分类或标记服务配置项的标签。 | [optional] |
| **is_system** | **Boolean** | 指示该配置项是否为系统级别的配置项，默认为 false。 | [optional] |
| **show** | **Boolean** | 指示服务配置项是否在界面上显示，默认为 true。 | [optional] |
| **show_index** | **Integer** | 服务配置项在界面上的显示顺序。 | [optional] |
| **create_date** | **Time** | 服务配置项的创建日期，默认为当前时间。 | [optional] |
| **last_update** | **Time** | 服务配置项的最后更新日期，默认为当前时间。 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::ServiceItem.new(
  id: null,
  biz_code: null,
  provider_code: null,
  group_code: null,
  name: null,
  code: null,
  value_type: null,
  icon: null,
  value_defaults: null,
  description: null,
  tags: null,
  is_system: null,
  show: null,
  show_index: null,
  create_date: null,
  last_update: null
)
```

