# ZSGFClient::UserFriendsNearByResultApiResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | 状态码 | [optional][default to 200] |
| **data** | [**UserFriendsNearByResult**](UserFriendsNearByResult.md) |  | [optional] |
| **error** | **String** | 错误信息 | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::UserFriendsNearByResultApiResponse.new(
  code: null,
  data: null,
  error: null
)
```

