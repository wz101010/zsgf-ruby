# ZSGFClient::StringListApiResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | 状态码 | [optional][default to 200] |
| **data** | **Array&lt;String&gt;** | 响应数据 | [optional] |
| **error** | **String** | 错误信息 | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::StringListApiResponse.new(
  code: null,
  data: null,
  error: null
)
```

