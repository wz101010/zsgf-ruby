# ZSGFClient::Settings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 配置项的唯一标识符。 | [optional] |
| **biz_code** | **String** | 配置项所属的业务代码，用于分类管理。 | [optional] |
| **biz_identity** | **String** | 配置项所属的业务标识，用于唯一标识业务。 | [optional] |
| **provider_code** | **String** | 配置项的提供者代码，用于标识配置来源。 | [optional] |
| **group_code** | **String** | 配置项的分组代码，用于组织和管理相关配置。 | [optional] |
| **code** | **String** | 配置项的唯一代码，用于标识具体的配置项。 | [optional] |
| **value** | **String** | 配置项的具体值，存储配置内容。 | [optional] |
| **tags** | **String** | 用于分类或标记配置项的标签。 | [optional] |
| **description** | **String** | 配置项的详细描述，说明其用途和作用。 | [optional] |
| **frontend_usable** | **Boolean** | 指示该配置项是否可供前端使用。 | [optional] |
| **create_date** | **Time** | 配置项的创建日期，默认为当前时间。 | [optional] |
| **last_update** | **Time** | 配置项的最后更新日期，默认为当前时间。 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::Settings.new(
  id: null,
  biz_code: null,
  biz_identity: null,
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

