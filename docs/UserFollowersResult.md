# ZSGFClient::UserFollowersResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_followers** | **Integer** |  | [optional] |
| **data** | [**Array&lt;FollowerModel&gt;**](FollowerModel.md) |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::UserFollowersResult.new(
  total_followers: null,
  data: null
)
```

