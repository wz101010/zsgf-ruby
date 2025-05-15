# ZSGFClient::App

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 唯一标识符 | [optional] |
| **user_id** | **Integer** | 用户 ID | [optional] |
| **project_id** | **Integer** | 项目 ID | [optional] |
| **website** | **String** | 网站默认域名 | [optional] |
| **name** | **String** | 名称 | [optional] |
| **logo** | **String** | Logo | [optional] |
| **description** | **String** | 描述 | [optional] |
| **tags** | **String** | 标签 | [optional] |
| **app_key** | **String** | 应用公钥 | [optional] |
| **app_secret** | **String** | 应用私密密钥 | [optional] |
| **client_secret** | **String** | 客户端密钥 | [optional] |
| **ssh_publickey** | **String** | SSH公钥 | [optional] |
| **share** | **Boolean** | 是否共享 | [optional] |
| **create_date** | **Time** | 创建时间 | [optional] |
| **last_update** | **Time** | 最后更新时间 | [optional] |
| **show** | **Boolean** | 是否显示 | [optional] |
| **show_index** | **Integer** | 显示索引 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::App.new(
  id: null,
  user_id: null,
  project_id: null,
  website: null,
  name: null,
  logo: null,
  description: null,
  tags: null,
  app_key: null,
  app_secret: null,
  client_secret: null,
  ssh_publickey: null,
  share: null,
  create_date: null,
  last_update: null,
  show: null,
  show_index: null
)
```

