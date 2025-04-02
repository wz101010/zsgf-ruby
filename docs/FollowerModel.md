# ZSGFClient::FollowerModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **target_user_id** | **Integer** |  | [optional] |
| **_alias** | **String** |  | [optional] |
| **nick_name** | **String** |  | [optional] |
| **avatar** | **String** |  | [optional] |
| **is_mutual** | **Boolean** |  | [optional] |
| **closeness_score** | **Integer** |  | [optional] |
| **attention_score** | **Integer** |  | [optional] |
| **tags** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **remark** | **String** |  | [optional] |
| **create_date** | **Time** |  | [optional] |

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

