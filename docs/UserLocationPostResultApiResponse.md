# ZSGFClient::UserLocationPostResultApiResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | 状态码 | [optional][default to 200] |
| **data** | [**UserLocationPostResult**](UserLocationPostResult.md) |  | [optional] |
| **error** | **String** | 错误信息 | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::UserLocationPostResultApiResponse.new(
  code: null,
  data: null,
  error: null
)
```

