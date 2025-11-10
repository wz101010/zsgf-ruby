# ZSGF Client Ruby SDK

![Gem Version](https://img.shields.io/gem/v/zsgf_client)

掌事高发（ZSGF）Ruby SDK，为开发者提供便捷的API访问接口。

## 📦 安装

### 使用 gem 安装

```shell
gem install zsgf_client
```

### 使用 Bundler

在您的 `Gemfile` 中添加：

```ruby
gem 'zsgf_client'
```

然后执行：

```shell
bundle install
```

## 🚀 快速开始

### 基础配置

```ruby
require 'zsgf_client'

# 配置SDK
ZSGFClient.configure do |config|
  # 方式1：直接设置访问令牌
  config.access_token = 'YOUR_BEARER_TOKEN'
  
  # 方式2：动态获取访问令牌（推荐）
  config.access_token_getter = -> { 
    # 这里可以实现您的令牌获取逻辑
    # 例如从数据库、缓存或其他服务获取
    get_token_from_database()
  }
end
```

### 简单示例

```ruby
# 获取应用信息
api_instance = ZSGFClient::AppApi.new
app_key = 'your_app_key'

begin
  result = api_instance.app_info(app_key)
  puts "应用名称: #{result.data.name}"
  puts "应用描述: #{result.data.description}"
rescue ZSGFClient::ApiError => e
  puts "API调用失败: #{e.message}"
  puts "错误代码: #{e.code}"
end
```

## 📚 核心功能模块

### 🔐 用户认证与管理

#### 用户注册与登录

```ruby
user_api = ZSGFClient::UserApi.new

# 邮箱注册
signup_request = ZSGFClient::EmailSignUpRequest.new(
  email: 'user@example.com',
  password: 'secure_password',
  code: 'verification_code'
)

begin
  result = user_api.user_email_sign_up(app_key, signup_request)
  puts "注册成功，用户ID: #{result.data.user_id}"
rescue ZSGFClient::ApiError => e
  puts "注册失败: #{e.message}"
end

# 邮箱登录
signin_request = ZSGFClient::EmailSignInRequest.new(
  email: 'user@example.com',
  password: 'secure_password'
)

result = user_api.user_email_sign_in(app_key, signin_request)
access_token = result.data.access_token
```

#### 用户资料管理

```ruby
# 获取用户资料
profile = user_api.user_profile(app_key)
puts "用户昵称: #{profile.data.nickname}"

# 更新用户资料
update_request = ZSGFClient::UpdateProfileRequest.new(
  nickname: '新昵称',
  avatar: 'https://example.com/avatar.jpg'
)

user_api.user_update_profile(app_key, update_request)
```

### 💰 虚拟货币系统

```ruby
currency_api = ZSGFClient::UserCurrencyApi.new

# 查询用户资产
currencies = currency_api.user_currencies(app_key, user_id)
currencies.data.each do |currency|
  puts "货币: #{currency.name}, 余额: #{currency.balance}"
end

# 充值虚拟币
recharge_request = ZSGFClient::RechargePointRequest.new(
  currency_id: 1,
  amount: 100,
  reason: '充值'
)

currency_api.user_currency_recharge(app_key, recharge_request)

# 消费虚拟币
consume_request = ZSGFClient::CurrencyConsumeRequest.new(
  currency_id: 1,
  amount: 50,
  reason: '购买商品'
)

currency_api.user_currency_consume(app_key, consume_request)
```

### 📂 文件存储

```ruby
file_api = ZSGFClient::FileApi.new

# 获取文件列表
files = file_api.files(app_key, path: '/')
files.data.each do |file|
  puts "文件名: #{file.name}, 大小: #{file.size}"
end

# 创建文件夹
file_api.file_create_folder(app_key, {
  path: '/新文件夹',
  name: '我的文件夹'
})

# 上传文件
File.open('local_file.txt', 'rb') do |file|
  file_api.file_upload(app_key, {
    path: '/',
    file: file
  })
end
```

### 🗄️ 数据存储

```ruby
storage_api = ZSGFClient::StorageApi.new
table_name = 'users'

# 添加数据
data = {
  name: '张三',
  age: 25,
  email: 'zhangsan@example.com'
}

result = storage_api.storage_post(app_key, table_name, data)
record_id = result.data.id

# 查询数据
records = storage_api.storage_list(app_key, table_name, {
  filter: 'age > 20',
  limit: 10
})

# 更新数据
update_data = { age: 26 }
storage_api.storage_put(app_key, table_name, record_id, update_data)

# 删除数据
storage_api.storage_delete(app_key, table_name, record_id)
```

### 💳 支付功能

```ruby
# 支付宝支付
alipay_api = ZSGFClient::AlipayApi.new

# 创建当面付订单
order_request = ZSGFClient::AlipayCreateOrderRequest.new(
  out_trade_no: "ORDER_#{Time.now.to_i}",
  total_amount: '99.00',
  subject: '商品标题',
  body: '商品描述'
)

result = alipay_api.alipay_create_order(app_key, order_request)
puts "支付二维码: #{result.data.qr_code}"

# 查询订单状态
order_detail = alipay_api.alipay_order_detail(app_key, {
  out_trade_no: order_request.out_trade_no
})
puts "订单状态: #{order_detail.data.trade_status}"
```

### 📱 微信功能

```ruby
wechat_api = ZSGFClient::WechatApi.new

# 小程序登录
js_code = 'wx_js_code_from_frontend'
session_result = wechat_api.wechat_js_code2_session(app_key, {
  js_code: js_code
})

openid = session_result.data.openid
session_key = session_result.data.session_key

# 发送订阅消息
subscribe_msg = {
  touser: openid,
  template_id: 'template_id',
  data: {
    thing1: { value: '消息内容' },
    time2: { value: Time.now.strftime('%Y-%m-%d %H:%M:%S') }
  }
}

wechat_api.wechat_subscribe_send(app_key, subscribe_msg)
```

## 🔧 高级配置

### 错误处理

```ruby
begin
  result = api_instance.some_method(params)
rescue ZSGFClient::ApiError => e
  case e.code
  when 401
    puts "认证失败，请检查访问令牌"
  when 403
    puts "权限不足"
  when 404
    puts "资源不存在"
  when 429
    puts "请求过于频繁，请稍后再试"
  else
    puts "API错误: #{e.message}"
  end
rescue StandardError => e
  puts "系统错误: #{e.message}"
end
```

### 自定义配置

```ruby
ZSGFClient.configure do |config|
  # API基础URL（通常不需要修改）
  config.host = 'api.zashigaofa.cn'
  
  # 超时设置
  config.timeout = 30
  
  # 调试模式
  config.debugging = true
  
  # 自定义用户代理
  config.user_agent = 'MyApp/1.0'
end
```

## 📖 API端点分类

### 🏢 应用管理
- **应用信息**: 获取应用详情和配置

### 👥 用户系统
- **认证注册**: 邮箱注册、手机注册、第三方登录
- **用户管理**: 资料管理、密码重置、账号注销
- **社交功能**: 关注/粉丝、好友推荐、位置服务

### 💳 支付系统  
- **支付宝**: 当面付、网页支付、手机支付
- **订单管理**: 订单创建、查询、退款

### 📁 数据服务
- **文件存储**: 文件上传、下载、管理
- **数据存储**: CRUD操作、聚合查询
- **虚拟货币**: 充值、消费、交易记录

### 🔗 第三方集成
- **微信服务**: 小程序、公众号、支付
- **钉钉集成**: 用户信息获取
- **OAuth**: 授权码、访问令牌

### ⚙️ 系统功能
- **访问令牌**: 令牌管理、权限控制

## 📝 完整API列表

### 应用管理 (AppApi)
| 方法 | HTTP请求 | 描述 |
|------|----------|------|
| `app_info` | GET /App/{appKey}/Info | 获取应用详情 |

### 用户管理 (UserApi)
| 方法 | HTTP请求 | 描述 |
|------|----------|------|
| `user_email_sign_up` | POST /User/{appKey}/EmailSignUp | 邮箱注册 |
| `user_email_sign_in` | POST /User/{appKey}/EmailSignIn | 邮箱登录 |
| `user_phone_sign_up` | POST /User/{appKey}/PhoneSignUp | 手机注册 |
| `user_phone_sign_in` | POST /User/{appKey}/PhoneSignIn | 手机登录 |
| `user_sign_up` | POST /User/{appKey}/SignUp | 通用注册 |
| `user_sign_in` | POST /User/{appKey}/SignIn | 密码登录 |
| `user_profile` | GET /User/{appKey}/Profile | 获取个人资料 |
| `user_update_profile` | PUT /User/{appKey}/Profile | 更新个人资料 |
| `user_reset_pwd` | POST /User/{appKey}/ResetPwd | 重置密码 |
| `user_reset_email` | PUT /User/{appKey}/ResetEmail | 重置邮箱 |
| `user_reset_phone` | PUT /User/{appKey}/ResetPhone | 重置手机号 |
| `user_send_email_code` | POST /User/{appKey}/SendEmailCode | 发送邮箱验证码 |
| `user_send_sms_code` | POST /User/{appKey}/SendSMSCode | 发送手机验证码 |
| `user_union_id_sign_up` | POST /User/{appKey}/UnionIDSignUp | UnionID注册 |
| `user_union_id_sign_in` | POST /User/{appKey}/UnionIDSignIn | UnionID登录 |
| `user_two_factor_auth` | GET /User/{appKey}/TwoFactorAuth | 二次验证 |
| `user_deactivate_hard` | DELETE /User/{appKey}/DeactivateHard | 注销账号 |

### 虚拟货币 (UserCurrencyApi)
| 方法 | HTTP请求 | 描述 |
|------|----------|------|
| `user_currencies` | GET /UserCurrency/{appKey}/{id} | 获取用户资产 |
| `user_currency_recharge` | POST /UserCurrency/{appKey}/CurrencyRecharge | 充值虚拟币 |
| `user_currency_consume` | POST /UserCurrency/{appKey}/CurrencyConsume | 消费虚拟币 |
| `user_currency_exchange` | POST /UserCurrency/{appKey}/CurrencyExchange | 兑换虚拟币 |
| `user_currency_transactions` | GET /UserCurrency/{appKey}/CurrencyTransactions | 交易记录 |

### 社交功能 (UserFriendsApi)
| 方法 | HTTP请求 | 描述 |
|------|----------|------|
| `user_follow_user` | POST /UserFriends/{appKey}/Follower/{userId} | 添加关注 |
| `user_unfollow_user` | DELETE /UserFriends/{appKey}/Follower/{userId} | 取消关注 |
| `user_followers` | GET /UserFriends/{appKey}/Followers | 获取粉丝列表 |
| `user_following` | GET /UserFriends/{appKey}/Following | 获取关注列表 |
| `user_mutual_followers` | GET /UserFriends/{appKey}/MutualFollowers | 共同粉丝 |
| `user_mutual_followings` | GET /UserFriends/{appKey}/MutualFollowings | 共同关注 |
| `user_common_interests` | GET /UserFriends/{appKey}/CommonInterests | 相似兴趣用户 |
| `user_friends_near_by` | GET /UserFriends/{appKey}/NearBy | 附近用户 |
| `user_profile_by_id` | GET /UserFriends/{appKey}/Profile/{userId} | 获取用户资料 |
| `user_follower_put` | PUT /UserFriends/{appKey}/Follower/{id} | 刷新粉丝数据 |

### 位置服务 (UserLocationApi)
| 方法 | HTTP请求 | 描述 |
|------|----------|------|
| `user_locations` | GET /UserLocation/{appKey} | 获取位置列表 |
| `user_location` | GET /UserLocation/{appKey}/{id} | 获取位置详情 |
| `user_location_post` | POST /UserLocation/{appKey} | 添加位置 |
| `user_location_put` | PUT /UserLocation/{appKey}/{id} | 更新位置 |
| `user_location_delete` | DELETE /UserLocation/{appKey}/{id} | 删除位置 |

### 文件存储 (FileApi)
| 方法 | HTTP请求 | 描述 |
|------|----------|------|
| `files` | GET /File/{appKey} | 获取文件列表 |
| `file_upload` | POST /File/{appKey}/Upload | 上传文件 |
| `file_create_folder` | POST /File/{appKey}/CreateFolder | 创建文件夹 |
| `file_rename` | POST /File/{appKey}/Rename | 重命名文件/文件夹 |
| `file_delete` | DELETE /File/{appKey} | 删除文件/文件夹 |

### 数据存储 (StorageApi)
| 方法 | HTTP请求 | 描述 |
|------|----------|------|
| `storage_list` | GET /Storage/{appKey}/{table} | 查询数据 |
| `storage_detail` | GET /Storage/{appKey}/{table}/{id} | 数据详情 |
| `storage_post` | POST /Storage/{appKey}/{table} | 添加数据 |
| `storage_put` | PUT /Storage/{appKey}/{table}/{id} | 更新数据 |
| `storage_delete` | DELETE /Storage/{appKey}/{table}/{id} | 删除数据 |
| `storage_aggregate` | GET /Storage/{appKey}/{table}/Aggregate | 聚合查询 |

### 支付宝支付 (AlipayApi)
| 方法 | HTTP请求 | 描述 |
|------|----------|------|
| `alipay_create_order` | POST /Alipay/{appKey}/CreateOrder | 创建当面付订单 |
| `alipay_create_order_page_pay` | POST /Alipay/{appKey}/CreateOrderPagePay | 创建PC支付订单 |
| `alipay_create_order_wap_pay` | POST /Alipay/{appKey}/CreateOrderWapPay | 创建WAP支付订单 |
| `alipay_order_detail` | GET /Alipay/{appKey}/OrderDetail | 获取订单详情 |
| `alipay_order_refund` | POST /Alipay/{appKey}/OrderRefund | 发起订单退款 |
| `alipay_return_page_notify` | POST /Alipay/{appKey}/ReturnPageNotify | 支付回调通知 |

### 订单管理 (OrderApi)
| 方法 | HTTP请求 | 描述 |
|------|----------|------|
| `orders` | GET /Order/{appKey} | 获取订单列表 |
| `order` | GET /Order/{appKey}/{id} | 获取订单详情 |
| `order_create` | POST /Order/{appKey}/Create | 创建订单 |

### 微信服务 (WechatApi)
| 方法 | HTTP请求 | 描述 |
|------|----------|------|
| `wechat_js_code2_session` | GET /Wechat/{appKey}/JSCode2Session | 小程序登录 |
| `wechat_decrypt` | GET /Wechat/{appKey}/Decrypt | 解密用户数据 |
| `wechat_subscribe_send` | POST /Wechat/{appKey}/SubscribeSend | 发送订阅消息 |
| `wechat_subscribe_msg` | POST /Wechat/{appKey}/SubscribeMSG | 发送一次性订阅消息 |
| `wechat_user_info` | GET /Wechat/{appKey}/UserInfo | 获取公众号用户信息 |
| `wechat_js_config` | GET /Wechat/{appKey}/JSConfig | 配置JS SDK |
| `wechat_wxa_code_get` | POST /Wechat/{appKey}/WXACodeGet | 获取小程序码 |
| `wechat_wxa_code_get_unlimited` | POST /Wechat/{appKey}/WXACodeGetUnlimited | 获取小程序码(无限制) |
| `wechat_generate_scheme` | POST /Wechat/{appKey}/GenerateScheme | 生成Scheme码 |
| `wechat_url_link_generate` | POST /Wechat/{appKey}/UrlLinkGenerate | 生成URL跳转链接 |
| `wechat_msg_sec_check` | POST /Wechat/{appKey}/MsgSecCheck | 内容安全检测 |
| `initiate_qr_auth_session` | POST /Wechat/{appKey}/QR-Auth/Initiate | 初始化二维码认证 |
| `scan_qr_code_for_auth` | POST /Wechat/{appKey}/QR-Auth/Scan | 验证二维码扫描 |
| `confirm_qr_code_login` | POST /Wechat/{appKey}/QR-Auth/Confirm-Login | 确认二维码登录 |
| `confirm_qr_code_registration` | POST /Wechat/{appKey}/QR-Auth/Confirm-Register | 确认二维码注册 |

### OAuth授权 (OAuthApi)
| 方法 | HTTP请求 | 描述 |
|------|----------|------|
| `o_auth_grant_code` | POST /OAuth/{appKey}/GrantCode | 获取授权码 |
| `o_auth_authorize` | POST /OAuth/{appKey}/Authorize | 获取访问令牌 |
| `o_auth_profile` | GET /OAuth/{appKey}/Profile | 获取用户资料 |
| `o_auth_consents` | GET /OAuth/{appKey}/Consents | 获取授权记录 |
| `o_auth_delete_consent` | DELETE /OAuth/{appKey}/Consents/{id} | 删除授权记录 |

### 外部账号 (ExternalAccountApi)
| 方法 | HTTP请求 | 描述 |
|------|----------|------|
| `external_account_sign_in` | POST /ExternalAccount/{appKey}/SignIn | 外部账号登录 |
| `user_external_account_bind` | POST /ExternalAccount/{appKey} | 绑定外部账号 |
| `user_o_auth_accounts` | GET /ExternalAccount/{appKey} | 外部账号列表 |
| `user_o_auth_accounts_put_bind` | PUT /ExternalAccount/{appKey}/{id} | 更新绑定账号 |
| `user_o_auth_accounts_un_bind` | DELETE /ExternalAccount/{appKey}/{id} | 删除绑定账号 |

### 访问令牌 (AccessTokenApi)
| 方法 | HTTP请求 | 描述 |
|------|----------|------|
| `access_tokens` | GET /AccessToken/{appKey} | 令牌列表 |
| `access_token_post` | POST /AccessToken/{appKey} | 创建令牌 |
| `access_token_put` | PUT /AccessToken/{appKey}/{id} | 更新令牌 |
| `access_token_delete` | DELETE /AccessToken/{appKey}/{id} | 删除令牌 |

### 钉钉集成 (DingTalkApi)
| 方法 | HTTP请求 | 描述 |
|------|----------|------|
| `ding_talk_user_info` | GET /DingTalk/{appKey}/UserInfo | 获取钉钉用户资料 |

## 🛠️ 开发指南

### 最佳实践

1. **令牌管理**: 建议使用动态令牌获取方式，确保令牌安全性
2. **错误处理**: 始终包装API调用在异常处理块中
3. **分页查询**: 对于列表类接口，合理使用分页参数
4. **缓存策略**: 对于不经常变化的数据，考虑实现缓存机制

### 测试环境

```ruby
# 测试环境配置
ZSGFClient.configure do |config|
  config.host = 'test-api.zashigaofa.cn'  # 测试环境地址
  config.access_token = 'test_token'
  config.debugging = true
end
```

### 常见问题

#### Q: 如何处理令牌过期？

```ruby
ZSGFClient.configure do |config|
  config.access_token_getter = -> { 
    # 实现自动刷新令牌的逻辑
    token = get_cached_token()
    if token_expired?(token)
      token = refresh_token()
      cache_token(token)
    end
    token
  }
end
```

#### Q: 如何实现请求重试？

```ruby
def api_call_with_retry(api_method, *args, max_retries: 3)
  retries = 0
  begin
    api_method.call(*args)
  rescue ZSGFClient::ApiError => e
    retries += 1
    if retries <= max_retries && [429, 500, 502, 503].include?(e.code)
      sleep(2 ** retries) # 指数退避
      retry
    else
      raise e
    end
  end
end
```

## 📚 数据模型

### 核心模型

- **User**: 用户信息模型
- **Order**: 订单信息模型  
- **FileItem**: 文件信息模型
- **UserCurrency**: 用户虚拟货币模型
- **GeoLocation**: 地理位置模型

### 请求模型

- **EmailSignUpRequest**: 邮箱注册请求
- **CreateOrderRequest**: 创建订单请求
- **UpdateProfileRequest**: 更新资料请求

### 响应模型

- **ApiResponse**: 标准API响应格式
- **ProfileResult**: 用户资料响应
- **OrderListResult**: 订单列表响应

详细的模型文档请参考 [docs/](docs/) 目录。

## 📞 技术支持

- **官方文档**: [https://doc.zashigaofa.com](https://api.zashigaofa.cn)

## 📄 许可证

请参考相关许可证条款。

---

*此文档持续更新中，如有疑问请联系技术支持。* 