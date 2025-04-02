# ZSGFClient::UserAccessToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 用户令牌的唯一标识符。 | [optional] |
| **user_id** | **Integer** | 与令牌关联的用户ID。 | [optional] |
| **enable** | **Boolean** | 指示令牌是否处于启用状态。 | [optional] |
| **permissions** | **String** | 令牌拥有的权限列表，多个权限以逗号分隔。 | [optional] |
| **title** | **String** | 令牌的标题或名称，用于标识令牌。 | [optional] |
| **access_token** | **String** | 访问令牌的具体值，用于身份验证。 | [optional] |
| **tags** | **String** | 用于分类或标记令牌的标签。 | [optional] |
| **description** | **String** | 令牌的详细描述信息。 | [optional] |
| **expire_time** | **Time** | 令牌的过期时间，超过该时间令牌将失效。 | [optional] |
| **create_date** | **Time** | 令牌的创建日期，默认为当前时间。 | [optional] |
| **last_update** | **Time** | 令牌的最后更新日期，默认为当前时间。 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::UserAccessToken.new(
  id: null,
  user_id: null,
  enable: null,
  permissions: null,
  title: null,
  access_token: null,
  tags: null,
  description: null,
  expire_time: null,
  create_date: null,
  last_update: null
)
```

