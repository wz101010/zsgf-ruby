# ZSGFClient::FollowerModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 用户ID | [optional] |
| **target_user_id** | **Integer** | 目标用户ID | [optional] |
| **_alias** | **String** | 别名 | [optional] |
| **nick_name** | **String** | 昵称 | [optional] |
| **avatar** | **String** | 头像 | [optional] |
| **is_mutual** | **Boolean** | 是否互相关注 | [optional] |
| **closeness_score** | **Integer** | 亲密度分数 | [optional] |
| **attention_score** | **Integer** | 关注度分数 | [optional] |
| **tags** | **String** | 标签 | [optional] |
| **status** | **String** | 状态 | [optional] |
| **remark** | **String** | 备注 | [optional] |
| **create_date** | **Time** | 创建日期 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::FollowerModel.new(
  id: null,
  target_user_id: null,
  _alias: null,
  nick_name: null,
  avatar: null,
  is_mutual: null,
  closeness_score: null,
  attention_score: null,
  tags: null,
  status: null,
  remark: null,
  create_date: null
)
```

