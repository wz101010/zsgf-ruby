# ZSGFClient::AccessTokenPutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | 访问令牌的标题 | [optional][default to &#39;&#39;] |
| **tags** | **String** | 访问令牌的标签 | [optional][default to &#39;&#39;] |
| **description** | **String** | 访问令牌的描述 | [optional][default to &#39;&#39;] |
| **permissions** | **String** | 访问令牌的权限 | [optional][default to &#39;&#39;] |
| **enable** | **Boolean** | 是否启用访问令牌 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::AccessTokenPutRequest.new(
  title: null,
  tags: null,
  description: null,
  permissions: null,
  enable: null
)
```

