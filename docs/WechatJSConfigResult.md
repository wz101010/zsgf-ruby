# ZSGFClient::WechatJSConfigResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **noncestr** | **String** |  | [optional] |
| **timestamp** | **String** |  | [optional] |
| **signature** | **String** |  | [optional] |
| **app_key** | **String** |  | [optional] |
| **js_api_list** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::WechatJSConfigResult.new(
  noncestr: null,
  timestamp: null,
  signature: null,
  app_key: null,
  js_api_list: null
)
```

