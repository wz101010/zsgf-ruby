# ZSGFClient::AuthorizePolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 鉴权策略的唯一标识符。 | [optional] |
| **policy_name** | **String** | 鉴权策略的名称。根据鉴权类型填写不同的名称：角色类型填写角色名称，用户类型填写用户ID，访问令牌类型填写令牌ID。 | [optional] |
| **authorize_type** | **String** | 鉴权策略的类型，可选值为 &#39;access_token&#39;, &#39;user&#39;, 或 &#39;role&#39;。 | [optional] |
| **policy_value** | **String** | 与鉴权策略关联的权限集合，多个权限可以用逗号分隔。 | [optional] |
| **create_date** | **Time** | 鉴权策略的创建日期，默认为当前时间。 | [optional] |
| **last_update** | **Time** | 鉴权策略的最后更新日期，默认为当前时间。 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::AuthorizePolicy.new(
  id: null,
  policy_name: null,
  authorize_type: null,
  policy_value: null,
  create_date: null,
  last_update: null
)
```

