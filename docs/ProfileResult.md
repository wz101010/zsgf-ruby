# ZSGFClient::ProfileResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
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
| **avatar** | **String** |  | [optional] |
| **role** | **String** |  | [optional] |
| **permission** | **String** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::ProfileResult.new(
  id: null,
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
  avatar: null,
  role: null,
  permission: null
)
```

