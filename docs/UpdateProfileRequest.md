# ZSGFClient::UpdateProfileRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avatar** | **String** | 用户头像的链接或路径 | [optional] |
| **data** | **String** | 用户的其他数据，可以是序列化后的对象或JSON字符串 | [optional] |
| **nick_name** | **String** | 用户的昵称 | [optional] |
| **interest_tags** | **String** | 兴趣标签 | [optional] |
| **biography** | **String** | 个人简介 | [optional] |
| **gender** | **String** | 性别 | [optional] |
| **birthday** | **Time** | 生日 | [optional] |
| **occupation** | **String** | 职业 | [optional] |
| **education** | **String** | 学历 | [optional] |
| **contact** | **String** | 联系方式 | [optional] |
| **languages** | **String** | 语言 | [optional] |
| **social_links** | **String** | 社交网络链接 | [optional] |
| **relationship_status** | **String** | 婚姻状态 | [optional] |
| **company** | **String** | 公司 | [optional] |
| **industry** | **String** | 行业 | [optional] |
| **company_position** | **String** | 行业职位 | [optional] |
| **private_settings** | **String** | 私密设置 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::UpdateProfileRequest.new(
  avatar: null,
  data: null,
  nick_name: null,
  interest_tags: null,
  biography: null,
  gender: null,
  birthday: null,
  occupation: null,
  education: null,
  contact: null,
  languages: null,
  social_links: null,
  relationship_status: null,
  company: null,
  industry: null,
  company_position: null,
  private_settings: null
)
```

