# ZSGFClient::UserFriendsNearByResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | 符合条件的总记录数 | [optional] |
| **data** | [**Array&lt;RecommendFriend&gt;**](RecommendFriend.md) | 当前分页的用户数据列表 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::UserFriendsNearByResult.new(
  total: null,
  data: null
)
```

