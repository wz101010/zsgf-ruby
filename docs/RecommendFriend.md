# ZSGFClient::RecommendFriend

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** |  | [optional] |
| **nick_name** | **String** |  | [optional] |
| **avatar** | **String** |  | [optional] |
| **gender** | **String** |  | [optional] |
| **age** | **Integer** |  | [optional] |
| **interest_tags** | **String** |  | [optional] |
| **location_name** | **String** |  | [optional] |
| **latitude** | **Float** |  | [optional] |
| **longitude** | **Float** |  | [optional] |
| **distance** | **Integer** |  | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::RecommendFriend.new(
  user_id: null,
  nick_name: null,
  avatar: null,
  gender: null,
  age: null,
  interest_tags: null,
  location_name: null,
  latitude: null,
  longitude: null,
  distance: null
)
```

