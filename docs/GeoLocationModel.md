# ZSGFClient::GeoLocationModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location_name** | **String** | 地点的名称 | [optional] |
| **latitude** | **Float** | 纬度 |  |
| **longitude** | **Float** | 经度 |  |
| **location_type** | **String** | 地点的类型，如家庭、工作、学校等 |  |
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
| **map_type** | **String** | 地址类型，百度、高德、谷歌 | [optional] |
| **remark** | **String** | 备注 | [optional] |
| **tags** | **String** | 标签 | [optional] |
| **enable** | **Boolean** | 启用 | [optional] |
| **show_index** | **Integer** | 排序 | [optional] |
| **create_date** | **Time** | 创建时间 | [optional] |
| **last_update** | **Time** | 最后更新的时间 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::GeoLocationModel.new(
  location_name: null,
  latitude: null,
  longitude: null,
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

