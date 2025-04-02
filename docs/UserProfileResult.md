# ZSGFClient::UserProfileResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_key** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **union_id** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **create_date** | **Time** |  | [optional] |
| **user_name** | **String** |  | [optional] |
| **phone_is_valid** | **Boolean** |  | [optional] |
| **data** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **email_is_valid** | **Boolean** |  | [optional] |
| **last_update** | **Time** |  | [optional] |
| **nick_name** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **avatar** | **String** |  | [optional] |
| **currencies** | [**Array&lt;UserCurrency&gt;**](UserCurrency.md) |  | [optional] |
| **role** | **String** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::UserProfileResult.new(
  app_key: null,
  platform: null,
  union_id: null,
  phone: null,
  create_date: null,
  user_name: null,
  phone_is_valid: null,
  data: null,
  email: null,
  email_is_valid: null,
  last_update: null,
  nick_name: null,
  id: null,
  avatar: null,
  currencies: null,
  role: null
)
```

