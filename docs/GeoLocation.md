# ZSGFClient::GeoLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 唯一标识 | [optional] |
| **biz_code** | **String** | 业务代码 |  |
| **biz_id** | **Integer** | 业务ID |  |
| **coordinates** | [**MySqlGeometry**](MySqlGeometry.md) |  |  |
| **location_name** | **String** | 地点的名称 | [optional] |
| **location_type** | **String** | 地点类型 | [optional] |
| **recipient_name** | **String** | 收货人姓名 | [optional] |
| **phone_number** | **String** | 收货人联系电话 | [optional] |
| **email** | **String** | 收货人电子邮件 | [optional] |
| **country** | **String** | 国家 | [optional] |
| **state** | **String** | 州/省 | [optional] |
| **city** | **String** | 城市 | [optional] |
| **district** | **String** | 区/县 | [optional] |
| **street** | **String** | 街道 | [optional] |
| **zip_code** | **String** | 邮政编码 | [optional] |
| **address** | **String** | 详细的地址信息 | [optional] |
| **map_type** | **String** | 地址类型 | [optional] |
| **remark** | **String** | 备注 | [optional] |
| **tags** | **String** | 标签 | [optional] |
| **enable** | **Boolean** | 是否启用 | [optional] |
| **show_index** | **Integer** | 排序索引 | [optional] |
| **create_date** | **Time** | 创建时间 | [optional] |
| **last_update** | **Time** | 最后更新时间 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::GeoLocation.new(
  id: null,
  biz_code: null,
  biz_id: null,
  coordinates: null,
  location_name: null,
  location_type: null,
  recipient_name: null,
  phone_number: null,
  email: null,
  country: null,
  state: null,
  city: null,
  district: null,
  street: null,
  zip_code: null,
  address: null,
  map_type: null,
  remark: null,
  tags: null,
  enable: null,
  show_index: null,
  create_date: null,
  last_update: null
)
```

