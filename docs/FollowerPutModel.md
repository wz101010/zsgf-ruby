# ZSGFClient::FollowerPutModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_alias** | **String** | 别名 | [optional] |
| **closeness_score** | **Integer** | 亲密度分数 | [optional] |
| **attention_score** | **Integer** | 关注度分数 | [optional] |
| **tags** | **String** | 标签 | [optional] |
| **status** | **String** | 状态 | [optional] |
| **remark** | **String** | 备注 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::FollowerPutModel.new(
  _alias: null,
  closeness_score: null,
  attention_score: null,
  tags: null,
  status: null,
  remark: null
)
```

