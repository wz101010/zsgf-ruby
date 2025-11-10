# ZSGFClient::UpdateProfileRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avatar** | **String** | 用户头像的链接或路径，长度不能超过255个字符 | [optional] |
| **data** | **String** | 用户的其他数据，可以是序列化后的对象或JSON字符串 | [optional] |
| **nick_name** | **String** | 用户的昵称，长度不能超过50个字符 | [optional] |
| **interest_tags** | **String** | 兴趣标签 | [optional] |
| **biography** | **String** | 个人简介，长度不能超过500个字符 | [optional] |
| **gender** | **String** | 性别，长度不能超过15个字符 | [optional] |
| **birthday** | **Time** | 生日 | [optional] |
| **occupation** | **String** | 职业，长度不能超过50个字符 | [optional] |
| **education** | **String** | 学历，长度不能超过50个字符 | [optional] |
| **contact** | **String** | 联系方式，长度不能超过255个字符 | [optional] |
| **languages** | **String** | 语言，长度不能超过50个字符 | [optional] |
| **social_links** | **String** | 社交网络链接，长度不能超过255个字符 | [optional] |
| **relationship_status** | **String** | 婚姻状态，长度不能超过20个字符 | [optional] |
| **company** | **String** | 公司，长度不能超过100个字符 | [optional] |
| **industry** | **String** | 行业，长度不能超过50个字符 | [optional] |
| **company_position** | **String** | 行业职位，长度不能超过50个字符 | [optional] |
| **private_settings** | **String** | 私密设置，长度不能超过500个字符 | [optional] |
| **enable2_fa_auth** | **Boolean** | 是否启用二步验证 | [optional] |
| **enable_user_name_sign_in** | **Boolean** | 是否启用账号登录 | [optional] |
| **enable_email_sign_in** | **Boolean** | 是否启用邮箱登录 | [optional] |
| **enable_phone_sign_in** | **Boolean** | 是否启用手机登录 | [optional] |
| **enable_union_id_sign_in** | **Boolean** | 是否启用UnionID登录 | [optional] |
| **enable_o_auth** | **Boolean** | 是否启用OAuth2登录 | [optional] |

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
  private_settings: null,
  enable2_fa_auth: null,
  enable_user_name_sign_in: null,
  enable_email_sign_in: null,
  enable_phone_sign_in: null,
  enable_union_id_sign_in: null,
  enable_o_auth: null
)
```

