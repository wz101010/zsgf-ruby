# ZSGFClient::AppUserListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **union_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **user_name** | **String** |  | [optional] |
| **nick_name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **avatar** | **String** |  | [optional] |
| **role** | **String** |  | [optional] |
| **role_id** | **Integer** |  | [optional] |
| **create_date** | **Time** |  | [optional] |
| **last_update** | **Time** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::AppUserListResponse.new(
  id: null,
  union_id: null,
  platform: null,
  user_name: null,
  nick_name: null,
  email: null,
  phone: null,
  avatar: null,
  role: null,
  role_id: null,
  create_date: null,
  last_update: null
)
```

