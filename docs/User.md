# ZSGFClient::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 用户唯一标识 | [optional] |
| **platform** | **String** | 用户所在平台 | [optional] |
| **union_id** | **String** | 用户所在平台的唯一标识 | [optional] |
| **nick_name** | **String** | 昵称 | [optional] |
| **avatar** | **String** | 头像 | [optional] |
| **data** | **String** | 其他数据 | [optional] |
| **user_name** | **String** | 用户名 | [optional] |
| **pwd** | **String** | 用户密码 | [optional] |
| **email** | **String** | 邮箱地址 | [optional] |
| **email_is_valid** | **Boolean** | 邮箱已验证 | [optional] |
| **phone** | **String** | 手机号码 | [optional] |
| **phone_is_valid** | **Boolean** | 手机号码已验证 | [optional] |
| **relation_chain** | **String** | 关系链 | [optional] |
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
| **is_lock** | **Boolean** | 账户是否锁定 | [optional] |
| **lock_until** | **Time** | 账户锁定截止时间 | [optional] |
| **enable_user_name_sign_in** | **Boolean** | 能使用用户名登录 | [optional] |
| **enable_email_sign_in** | **Boolean** | 能使用邮箱登录 | [optional] |
| **enable_phone_sign_in** | **Boolean** | 能使用电话号码登录 | [optional] |
| **enable_union_id_sign_in** | **Boolean** | 能使用联合身份标识登录 | [optional] |
| **enable_o_auth** | **Boolean** | 能使用OAuth认证方式登录 | [optional] |
| **enable2_fa_auth** | **Boolean** | 启用双因素认证登录 | [optional] |
| **create_date** | **Time** | 创建时间 | [optional] |
| **last_update** | **Time** | 最后更新时间 | [optional] |

## Example

```ruby
require 'zsgf_client'

instance = ZSGFClient::User.new(
  id: null,
  platform: null,
  union_id: null,
  nick_name: null,
  avatar: null,
  data: null,
  user_name: null,
  pwd: null,
  email: null,
  email_is_valid: null,
  phone: null,
  phone_is_valid: null,
  relation_chain: null,
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
  is_lock: null,
  lock_until: null,
  enable_user_name_sign_in: null,
  enable_email_sign_in: null,
  enable_phone_sign_in: null,
  enable_union_id_sign_in: null,
  enable_o_auth: null,
  enable2_fa_auth: null,
  create_date: null,
  last_update: null
)
```

