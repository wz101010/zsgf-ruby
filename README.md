# zsgf_client

![Gem Version](https://img.shields.io/gem/v/zsgf_client)

## 安装

```shell
gem install zsgf_client
```

## 入门

```ruby
# 加载gem
require 'zsgf_client'

# 设置授权
ZSGFClient.configure do |config|
  # 配置Bearer授权：Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
  # 配置一个proc来获取访问令牌，代替静态access_token配置
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 
end

api_instance = ZSGFClient::AppApi.new
app_key = 'app_key_example' # String | 

begin
  #应用详情
  result = api_instance.app(app_key)
  p result
rescue ZSGFClient::ApiError => e
  puts "Exception when calling AppApi->app: #{e}"
end

```

## API端点文档

所有URI都是相对于*https://api.zashigaofa.cn*的

类 | 方法 | HTTP请求 | 描述
------------ | ------------- | ------------- | -------------
*ZSGFClient::AccessTokenApi* | [**access_token_delete**](docs/AccessTokenApi.md#access_token_delete) | **DELETE** /AccessToken/{appKey}/{id} | 删除令牌
*ZSGFClient::AccessTokenApi* | [**access_token_post**](docs/AccessTokenApi.md#access_token_post) | **POST** /AccessToken/{appKey} | 创建令牌
*ZSGFClient::AccessTokenApi* | [**access_token_put**](docs/AccessTokenApi.md#access_token_put) | **PUT** /AccessToken/{appKey}/{id} | 更新令牌
*ZSGFClient::AccessTokenApi* | [**access_tokens**](docs/AccessTokenApi.md#access_tokens) | **GET** /AccessToken/{appKey} | 令牌列表
*ZSGFClient::AlipayApi* | [**alipay_create_order**](docs/AlipayApi.md#alipay_create_order) | **POST** /Alipay/{appKey}/CreateOrder | 创建订单 - 当面付
*ZSGFClient::AlipayApi* | [**alipay_create_order_page_pay**](docs/AlipayApi.md#alipay_create_order_page_pay) | **POST** /Alipay/{appKey}/CreateOrderPagePay | 创建订单 - PC支付
*ZSGFClient::AlipayApi* | [**alipay_create_order_wap_pay**](docs/AlipayApi.md#alipay_create_order_wap_pay) | **POST** /Alipay/{appKey}/CreateOrderWapPay | 创建订单 - WAP支付
*ZSGFClient::AlipayApi* | [**alipay_order_detail**](docs/AlipayApi.md#alipay_order_detail) | **GET** /Alipay/{appKey}/OrderDetail | 订单详情
*ZSGFClient::AlipayApi* | [**alipay_order_refund**](docs/AlipayApi.md#alipay_order_refund) | **POST** /Alipay/{appKey}/OrderRefund | 订单退款
*ZSGFClient::AlipayApi* | [**alipay_return_page_notify**](docs/AlipayApi.md#alipay_return_page_notify) | **POST** /Alipay/{appKey}/ReturnPageNotify | 支付成功同步通知
*ZSGFClient::AppApi* | [**app**](docs/AppApi.md#app) | **GET** /App/{appKey} | 应用详情
*ZSGFClient::AppApi* | [**app2_fa**](docs/AppApi.md#app2_fa) | **GET** /App/{appKey}/2FA | 双因素验证 获取
*ZSGFClient::AppApi* | [**app2_fa_check**](docs/AppApi.md#app2_fa_check) | **GET** /App/{appKey}/2FACheck | 双因素验证 验证
*ZSGFClient::AppApi* | [**app_check_version**](docs/AppApi.md#app_check_version) | **GET** /App/{appKey}/CheckVersion | 更新应用数据库
*ZSGFClient::AppApi* | [**app_delete**](docs/AppApi.md#app_delete) | **DELETE** /App/{appKey} | 删除应用
*ZSGFClient::AppApi* | [**app_info**](docs/AppApi.md#app_info) | **GET** /App/{appKey}/Info | 应用详情
*ZSGFClient::AppApi* | [**app_post**](docs/AppApi.md#app_post) | **POST** /App | 创建应用
*ZSGFClient::AppApi* | [**app_put**](docs/AppApi.md#app_put) | **PUT** /App/{appKey} | 更新应用
*ZSGFClient::AppApi* | [**app_transfer**](docs/AppApi.md#app_transfer) | **GET** /App/{appKey}/Transfer | 转移应用
*ZSGFClient::AppApi* | [**apps**](docs/AppApi.md#apps) | **GET** /App | 应用列表
*ZSGFClient::AppSettingApi* | [**app_service_setting_group**](docs/AppSettingApi.md#app_service_setting_group) | **GET** /AppSetting/{appKey}/Groups/{id} | 获取服务分组详情
*ZSGFClient::AppSettingApi* | [**app_service_setting_group_delete**](docs/AppSettingApi.md#app_service_setting_group_delete) | **DELETE** /AppSetting/{appKey}/Groups/{id} | 删除服务分组
*ZSGFClient::AppSettingApi* | [**app_service_setting_group_post**](docs/AppSettingApi.md#app_service_setting_group_post) | **POST** /AppSetting/{appKey}/Groups | 添加服务分组
*ZSGFClient::AppSettingApi* | [**app_service_setting_group_put**](docs/AppSettingApi.md#app_service_setting_group_put) | **PUT** /AppSetting/{appKey}/Groups/{id} | 更新服务分组
*ZSGFClient::AppSettingApi* | [**app_service_setting_groups**](docs/AppSettingApi.md#app_service_setting_groups) | **GET** /AppSetting/{appKey}/Groups | 获取服务分组列表
*ZSGFClient::AppSettingApi* | [**app_service_setting_item**](docs/AppSettingApi.md#app_service_setting_item) | **GET** /AppSetting/{appKey}/Items/{id} | 服务配置项详情
*ZSGFClient::AppSettingApi* | [**app_service_setting_item_delete**](docs/AppSettingApi.md#app_service_setting_item_delete) | **DELETE** /AppSetting/{appKey}/Items/{id} | 删除服务配置项
*ZSGFClient::AppSettingApi* | [**app_service_setting_item_post**](docs/AppSettingApi.md#app_service_setting_item_post) | **POST** /AppSetting/{appKey}/Items | 添加服务配置项
*ZSGFClient::AppSettingApi* | [**app_service_setting_item_put**](docs/AppSettingApi.md#app_service_setting_item_put) | **PUT** /AppSetting/{appKey}/Items/{id} | 更新服务配置项
*ZSGFClient::AppSettingApi* | [**app_service_setting_items**](docs/AppSettingApi.md#app_service_setting_items) | **GET** /AppSetting/{appKey}/Items | 服务配置项列表
*ZSGFClient::AppSettingApi* | [**app_service_setting_provider**](docs/AppSettingApi.md#app_service_setting_provider) | **GET** /AppSetting/{appKey}/Providers/{id} | 获取服务商详情
*ZSGFClient::AppSettingApi* | [**app_service_setting_provider_delete**](docs/AppSettingApi.md#app_service_setting_provider_delete) | **DELETE** /AppSetting/{appKey}/Providers/{id} | 删除服务商
*ZSGFClient::AppSettingApi* | [**app_service_setting_provider_post**](docs/AppSettingApi.md#app_service_setting_provider_post) | **POST** /AppSetting/{appKey}/Providers | 添加服务商
*ZSGFClient::AppSettingApi* | [**app_service_setting_provider_put**](docs/AppSettingApi.md#app_service_setting_provider_put) | **PUT** /AppSetting/{appKey}/Providers/{id} | 更新服务商
*ZSGFClient::AppSettingApi* | [**app_service_setting_providers**](docs/AppSettingApi.md#app_service_setting_providers) | **GET** /AppSetting/{appKey}/Providers | 获取服务商列表
*ZSGFClient::AppSettingApi* | [**app_setting**](docs/AppSettingApi.md#app_setting) | **GET** /AppSetting/{appKey}/{id} | 配置详情
*ZSGFClient::AppSettingApi* | [**app_setting_delete**](docs/AppSettingApi.md#app_setting_delete) | **DELETE** /AppSetting/{appKey}/{id} | 删除配置
*ZSGFClient::AppSettingApi* | [**app_setting_post**](docs/AppSettingApi.md#app_setting_post) | **POST** /AppSetting/{appKey} | 增加配置
*ZSGFClient::AppSettingApi* | [**app_setting_put**](docs/AppSettingApi.md#app_setting_put) | **PUT** /AppSetting/{appKey}/{id} | 更新配置
*ZSGFClient::AppSettingApi* | [**app_settings**](docs/AppSettingApi.md#app_settings) | **GET** /AppSetting/{appKey} | 配置列表
*ZSGFClient::AuthorizePolicyApi* | [**authorize_policies**](docs/AuthorizePolicyApi.md#authorize_policies) | **GET** /AuthorizePolicy/{appKey} | 获取鉴权策略列表
*ZSGFClient::AuthorizePolicyApi* | [**authorize_policy**](docs/AuthorizePolicyApi.md#authorize_policy) | **GET** /AuthorizePolicy/{appKey}/{id} | 获取鉴权策略详情
*ZSGFClient::AuthorizePolicyApi* | [**authorize_policy_delete**](docs/AuthorizePolicyApi.md#authorize_policy_delete) | **DELETE** /AuthorizePolicy/{appKey}/{id} | 删除鉴权策略
*ZSGFClient::AuthorizePolicyApi* | [**authorize_policy_post**](docs/AuthorizePolicyApi.md#authorize_policy_post) | **POST** /AuthorizePolicy/{appKey} | 添加鉴权策略
*ZSGFClient::AuthorizePolicyApi* | [**authorize_policy_put**](docs/AuthorizePolicyApi.md#authorize_policy_put) | **PUT** /AuthorizePolicy/{appKey}/{id} | 更新鉴权策略
*ZSGFClient::CurrencyApi* | [**currencies**](docs/CurrencyApi.md#currencies) | **GET** /Currency/{appKey} | 获取货币列表
*ZSGFClient::CurrencyApi* | [**currency**](docs/CurrencyApi.md#currency) | **GET** /Currency/{appKey}/{id} | 获取货币详情
*ZSGFClient::CurrencyApi* | [**currency_delete**](docs/CurrencyApi.md#currency_delete) | **DELETE** /Currency/{appKey}/{id} | 删除货币
*ZSGFClient::CurrencyApi* | [**currency_exchange_rate_delete**](docs/CurrencyApi.md#currency_exchange_rate_delete) | **DELETE** /Currency/{appKey}/ExchangeRates/{id} | 删除汇率
*ZSGFClient::CurrencyApi* | [**currency_exchange_rate_put**](docs/CurrencyApi.md#currency_exchange_rate_put) | **PUT** /Currency/{appKey}/ExchangeRates/{code} | 更新汇率
*ZSGFClient::CurrencyApi* | [**currency_exchange_rates**](docs/CurrencyApi.md#currency_exchange_rates) | **GET** /Currency/{appKey}/ExchangeRates/{code} | 获取汇率列表
*ZSGFClient::CurrencyApi* | [**currency_post**](docs/CurrencyApi.md#currency_post) | **POST** /Currency/{appKey} | 创建新货币
*ZSGFClient::CurrencyApi* | [**currency_put**](docs/CurrencyApi.md#currency_put) | **PUT** /Currency/{appKey}/{id} | 更新货币信息
*ZSGFClient::CurrencyApi* | [**currency_transactions**](docs/CurrencyApi.md#currency_transactions) | **GET** /Currency/{appKey}/Transactions | 获取货币交易记录
*ZSGFClient::DingTalkApi* | [**ding_talk_user_info**](docs/DingTalkApi.md#ding_talk_user_info) | **GET** /DingTalk/{appKey}/UserInfo | 获取用户资料
*ZSGFClient::FileApi* | [**file_create_folder**](docs/FileApi.md#file_create_folder) | **POST** /File/{appKey}/CreateFolder | 创建文件夹
*ZSGFClient::FileApi* | [**file_delete**](docs/FileApi.md#file_delete) | **DELETE** /File/{appKey} | 删除文件或文件夹
*ZSGFClient::FileApi* | [**file_rename**](docs/FileApi.md#file_rename) | **POST** /File/{appKey}/Rename | 重命名文件或文件夹
*ZSGFClient::FileApi* | [**file_upload**](docs/FileApi.md#file_upload) | **POST** /File/{appKey}/Upload | 上传文件
*ZSGFClient::FileApi* | [**files**](docs/FileApi.md#files) | **GET** /File/{appKey} | 获取文件列表
*ZSGFClient::OAuthApi* | [**o_auth_authorize**](docs/OAuthApi.md#o_auth_authorize) | **POST** /OAuth/{appKey}/Authorize | 获取access_token
*ZSGFClient::OAuthApi* | [**o_auth_consents**](docs/OAuthApi.md#o_auth_consents) | **GET** /OAuth/{appKey}/Consents | 授权记录
*ZSGFClient::OAuthApi* | [**o_auth_delete_consent**](docs/OAuthApi.md#o_auth_delete_consent) | **DELETE** /OAuth/{appKey}/Consents/{id} | 删除授权记录
*ZSGFClient::OAuthApi* | [**o_auth_grant_code**](docs/OAuthApi.md#o_auth_grant_code) | **POST** /OAuth/{appKey}/GrantCode | 申请授权码
*ZSGFClient::OAuthApi* | [**o_auth_profile**](docs/OAuthApi.md#o_auth_profile) | **GET** /OAuth/{appKey}/Profile | 获取个人资料
*ZSGFClient::OrderApi* | [**order**](docs/OrderApi.md#order) | **GET** /Order/{appKey}/{id} | 获取订单详情
*ZSGFClient::OrderApi* | [**order_create**](docs/OrderApi.md#order_create) | **POST** /Order/{appKey}/Create | 创建订单
*ZSGFClient::OrderApi* | [**orders**](docs/OrderApi.md#orders) | **GET** /Order/{appKey} | 获取订单列表
*ZSGFClient::ProjectApi* | [**project**](docs/ProjectApi.md#project) | **GET** /Project/{id} | 项目详情
*ZSGFClient::ProjectApi* | [**project_delete**](docs/ProjectApi.md#project_delete) | **DELETE** /Project/{id} | 删除项目
*ZSGFClient::ProjectApi* | [**project_post**](docs/ProjectApi.md#project_post) | **POST** /Project | 创建项目
*ZSGFClient::ProjectApi* | [**project_put**](docs/ProjectApi.md#project_put) | **PUT** /Project/{id} | 更新项目
*ZSGFClient::ProjectApi* | [**projects**](docs/ProjectApi.md#projects) | **GET** /Project | 项目列表
*ZSGFClient::ServiceSettingApi* | [**service_setting**](docs/ServiceSettingApi.md#service_setting) | **GET** /ServiceSetting/{id} | 获取配置详情
*ZSGFClient::ServiceSettingApi* | [**service_setting_delete**](docs/ServiceSettingApi.md#service_setting_delete) | **DELETE** /ServiceSetting/{id} | 删除配置
*ZSGFClient::ServiceSettingApi* | [**service_setting_group**](docs/ServiceSettingApi.md#service_setting_group) | **GET** /ServiceSetting/Groups/{id} | 获取服务分组详情
*ZSGFClient::ServiceSettingApi* | [**service_setting_group_delete**](docs/ServiceSettingApi.md#service_setting_group_delete) | **DELETE** /ServiceSetting/Groups/{id} | 删除服务分组
*ZSGFClient::ServiceSettingApi* | [**service_setting_group_post**](docs/ServiceSettingApi.md#service_setting_group_post) | **POST** /ServiceSetting/Groups | 添加服务分组
*ZSGFClient::ServiceSettingApi* | [**service_setting_group_put**](docs/ServiceSettingApi.md#service_setting_group_put) | **PUT** /ServiceSetting/Groups/{id} | 更新服务分组
*ZSGFClient::ServiceSettingApi* | [**service_setting_groups**](docs/ServiceSettingApi.md#service_setting_groups) | **GET** /ServiceSetting/Groups | 获取服务分组列表
*ZSGFClient::ServiceSettingApi* | [**service_setting_item**](docs/ServiceSettingApi.md#service_setting_item) | **GET** /ServiceSetting/Items/{id} | 服务配置详情
*ZSGFClient::ServiceSettingApi* | [**service_setting_item_delete**](docs/ServiceSettingApi.md#service_setting_item_delete) | **DELETE** /ServiceSetting/Items/{id} | 删除服务配置
*ZSGFClient::ServiceSettingApi* | [**service_setting_item_post**](docs/ServiceSettingApi.md#service_setting_item_post) | **POST** /ServiceSetting/Items | 添加服务配置
*ZSGFClient::ServiceSettingApi* | [**service_setting_item_put**](docs/ServiceSettingApi.md#service_setting_item_put) | **PUT** /ServiceSetting/Items/{id} | 更新服务配置
*ZSGFClient::ServiceSettingApi* | [**service_setting_items**](docs/ServiceSettingApi.md#service_setting_items) | **GET** /ServiceSetting/Items | 服务配置列表
*ZSGFClient::ServiceSettingApi* | [**service_setting_post**](docs/ServiceSettingApi.md#service_setting_post) | **POST** /ServiceSetting | 增加配置
*ZSGFClient::ServiceSettingApi* | [**service_setting_provider**](docs/ServiceSettingApi.md#service_setting_provider) | **GET** /ServiceSetting/Providers/{id} | 获取服务商详情
*ZSGFClient::ServiceSettingApi* | [**service_setting_provider_delete**](docs/ServiceSettingApi.md#service_setting_provider_delete) | **DELETE** /ServiceSetting/Providers/{id} | 删除服务商
*ZSGFClient::ServiceSettingApi* | [**service_setting_provider_post**](docs/ServiceSettingApi.md#service_setting_provider_post) | **POST** /ServiceSetting/Providers | 添加服务商
*ZSGFClient::ServiceSettingApi* | [**service_setting_provider_put**](docs/ServiceSettingApi.md#service_setting_provider_put) | **PUT** /ServiceSetting/Providers/{id} | 更新服务商
*ZSGFClient::ServiceSettingApi* | [**service_setting_providers**](docs/ServiceSettingApi.md#service_setting_providers) | **GET** /ServiceSetting/Providers | 获取服务商列表
*ZSGFClient::ServiceSettingApi* | [**service_setting_put**](docs/ServiceSettingApi.md#service_setting_put) | **PUT** /ServiceSetting/{id} | 更新配置
*ZSGFClient::ServiceSettingApi* | [**service_settings**](docs/ServiceSettingApi.md#service_settings) | **GET** /ServiceSetting | 获取配置列表
*ZSGFClient::StorageApi* | [**storage_aggregate**](docs/StorageApi.md#storage_aggregate) | **GET** /Storage/{appKey}/{table}/Aggregate | 聚合查询
*ZSGFClient::StorageApi* | [**storage_clear**](docs/StorageApi.md#storage_clear) | **DELETE** /Storage/{appKey}/{table}/Clear | 清空表数据
*ZSGFClient::StorageApi* | [**storage_delete**](docs/StorageApi.md#storage_delete) | **DELETE** /Storage/{appKey}/{table}/{id} | 删除数据
*ZSGFClient::StorageApi* | [**storage_delete_index**](docs/StorageApi.md#storage_delete_index) | **DELETE** /Storage/{appKey}/{table}/indexes | 删除索引
*ZSGFClient::StorageApi* | [**storage_detail**](docs/StorageApi.md#storage_detail) | **GET** /Storage/{appKey}/{table}/{id} | 数据详情
*ZSGFClient::StorageApi* | [**storage_execute_function**](docs/StorageApi.md#storage_execute_function) | **GET** /Storage/{appKey}/ExecuteFunction | 执行函数
*ZSGFClient::StorageApi* | [**storage_export**](docs/StorageApi.md#storage_export) | **GET** /Storage/{appKey}/{table}/Export | 导出数据
*ZSGFClient::StorageApi* | [**storage_import**](docs/StorageApi.md#storage_import) | **POST** /Storage/{appKey}/{table}/Import | 导入数据
*ZSGFClient::StorageApi* | [**storage_indexes**](docs/StorageApi.md#storage_indexes) | **GET** /Storage/{appKey}/{table}/Indexes | 获取索引
*ZSGFClient::StorageApi* | [**storage_list**](docs/StorageApi.md#storage_list) | **GET** /Storage/{appKey}/{table} | 查询数据
*ZSGFClient::StorageApi* | [**storage_post**](docs/StorageApi.md#storage_post) | **POST** /Storage/{appKey}/{table} | 添加数据
*ZSGFClient::StorageApi* | [**storage_post_index**](docs/StorageApi.md#storage_post_index) | **POST** /Storage/{appKey}/{table}/indexes | 添加索引
*ZSGFClient::StorageApi* | [**storage_put**](docs/StorageApi.md#storage_put) | **PUT** /Storage/{appKey}/{table}/{id} | 更新数据
*ZSGFClient::StorageApi* | [**storage_remove**](docs/StorageApi.md#storage_remove) | **DELETE** /Storage/{appKey}/{table}/Remove | 删除表
*ZSGFClient::StorageApi* | [**storage_stats**](docs/StorageApi.md#storage_stats) | **GET** /Storage/{appKey}/{table}/Stats | 数据表统计
*ZSGFClient::StorageApi* | [**storage_tables**](docs/StorageApi.md#storage_tables) | **GET** /Storage/{appKey}/Tables | 获取数据表
*ZSGFClient::SystemFileApi* | [**system_file_create_folder**](docs/SystemFileApi.md#system_file_create_folder) | **POST** /SystemFile/CreateFolder | 创建文件夹
*ZSGFClient::SystemFileApi* | [**system_file_delete**](docs/SystemFileApi.md#system_file_delete) | **DELETE** /SystemFile | 删除文件
*ZSGFClient::SystemFileApi* | [**system_file_rename**](docs/SystemFileApi.md#system_file_rename) | **POST** /SystemFile/Rename | 重命名文件
*ZSGFClient::SystemFileApi* | [**system_file_upload**](docs/SystemFileApi.md#system_file_upload) | **POST** /SystemFile | 上传文件
*ZSGFClient::SystemFileApi* | [**system_files**](docs/SystemFileApi.md#system_files) | **GET** /SystemFile | 获取文件列表
*ZSGFClient::TeamApi* | [**team_delete**](docs/TeamApi.md#team_delete) | **DELETE** /Team/{id} | 删除团队
*ZSGFClient::TeamApi* | [**team_post**](docs/TeamApi.md#team_post) | **POST** /Team | 创建团队
*ZSGFClient::TeamApi* | [**team_put**](docs/TeamApi.md#team_put) | **PUT** /Team/{id} | 更新团队信息
*ZSGFClient::TeamApi* | [**teams**](docs/TeamApi.md#teams) | **GET** /Team | 获取团队列表
*ZSGFClient::UserApi* | [**user**](docs/UserApi.md#user) | **GET** /User/{appKey}/{id} | 获取用户详情
*ZSGFClient::UserApi* | [**user_clear**](docs/UserApi.md#user_clear) | **DELETE** /User/{appKey}/Clear | 清空用户数据
*ZSGFClient::UserApi* | [**user_common_interests**](docs/UserApi.md#user_common_interests) | **GET** /User/{appKey}/Friends/CommonInterests | 有共同爱好的用户推荐
*ZSGFClient::UserApi* | [**user_delete**](docs/UserApi.md#user_delete) | **DELETE** /User/{appKey}/{id} | 删除用户
*ZSGFClient::UserApi* | [**user_email_sign_in**](docs/UserApi.md#user_email_sign_in) | **POST** /User/{appKey}/EmailSignIn | 邮箱登录
*ZSGFClient::UserApi* | [**user_email_sign_up**](docs/UserApi.md#user_email_sign_up) | **POST** /User/{appKey}/EmailSignUp | 邮箱注册
*ZSGFClient::UserApi* | [**user_export**](docs/UserApi.md#user_export) | **GET** /User/{appKey}/Export | 导出用户数据
*ZSGFClient::UserApi* | [**user_follow_user**](docs/UserApi.md#user_follow_user) | **POST** /User/{appKey}/Follower/{userId} | 关注用户
*ZSGFClient::UserApi* | [**user_follower_put**](docs/UserApi.md#user_follower_put) | **PUT** /User/{appKey}/Follower/{id} | 更新粉丝
*ZSGFClient::UserApi* | [**user_followers**](docs/UserApi.md#user_followers) | **GET** /User/{appKey}/Followers | 获取我的粉丝列表
*ZSGFClient::UserApi* | [**user_following**](docs/UserApi.md#user_following) | **GET** /User/{appKey}/Following | 获取我的关注列表
*ZSGFClient::UserApi* | [**user_friends_near_by**](docs/UserApi.md#user_friends_near_by) | **GET** /User/{appKey}/Friends/NearBy | 附近的用户推荐
*ZSGFClient::UserApi* | [**user_import**](docs/UserApi.md#user_import) | **POST** /User/{appKey}/Import | 导入用户数据
*ZSGFClient::UserApi* | [**user_location**](docs/UserApi.md#user_location) | **GET** /User/{appKey}/Location/{id} | 获取位置详情
*ZSGFClient::UserApi* | [**user_location_delete**](docs/UserApi.md#user_location_delete) | **DELETE** /User/{appKey}/Location/{id} | 删除位置
*ZSGFClient::UserApi* | [**user_location_post**](docs/UserApi.md#user_location_post) | **POST** /User/{appKey}/Location | 添加位置
*ZSGFClient::UserApi* | [**user_location_put**](docs/UserApi.md#user_location_put) | **PUT** /User/{appKey}/Location/{id} | 更新位置
*ZSGFClient::UserApi* | [**user_locations**](docs/UserApi.md#user_locations) | **GET** /User/{appKey}/Locations | 获取位置列表
*ZSGFClient::UserApi* | [**user_mutual_followers**](docs/UserApi.md#user_mutual_followers) | **GET** /User/{appKey}/Friends/MutualFollowers | 有共同粉丝的用户推荐
*ZSGFClient::UserApi* | [**user_mutual_followings**](docs/UserApi.md#user_mutual_followings) | **GET** /User/{appKey}/Friends/MutualFollowings | 有共同关注的用户推荐
*ZSGFClient::UserApi* | [**user_o_auth_account_bind**](docs/UserApi.md#user_o_auth_account_bind) | **POST** /User/{appKey}/OAuthAccountBind | 外部账号 绑定
*ZSGFClient::UserApi* | [**user_o_auth_account_sign_in**](docs/UserApi.md#user_o_auth_account_sign_in) | **POST** /User/{appKey}/OAuthAccountSignIn | 外部账号 登录
*ZSGFClient::UserApi* | [**user_o_auth_accounts**](docs/UserApi.md#user_o_auth_accounts) | **GET** /User/{appKey}/OAuthAccounts | 外部账号 绑定列表
*ZSGFClient::UserApi* | [**user_o_auth_accounts_put_bind**](docs/UserApi.md#user_o_auth_accounts_put_bind) | **PUT** /User/{appKey}/OAuthAccounts/{id} | 外部账号 更新绑定
*ZSGFClient::UserApi* | [**user_o_auth_accounts_un_bind**](docs/UserApi.md#user_o_auth_accounts_un_bind) | **DELETE** /User/{appKey}/OAuthAccounts/{id} | 外部账号 删除绑定
*ZSGFClient::UserApi* | [**user_phone_sign_in**](docs/UserApi.md#user_phone_sign_in) | **POST** /User/{appKey}/PhoneSignIn | 手机登录
*ZSGFClient::UserApi* | [**user_phone_sign_up**](docs/UserApi.md#user_phone_sign_up) | **POST** /User/{appKey}/PhoneSignUp | 手机注册
*ZSGFClient::UserApi* | [**user_profile**](docs/UserApi.md#user_profile) | **GET** /User/{appKey}/Profile | 获取个人资料
*ZSGFClient::UserApi* | [**user_put**](docs/UserApi.md#user_put) | **PUT** /User/{appKey}/{id} | 更新用户信息
*ZSGFClient::UserApi* | [**user_qr_code_pre_sign_in**](docs/UserApi.md#user_qr_code_pre_sign_in) | **POST** /User/{appKey}/QRCodePreSignIn | 微信小程序 - 预登陆
*ZSGFClient::UserApi* | [**user_qr_code_scan**](docs/UserApi.md#user_qr_code_scan) | **POST** /User/{appKey}/QRCodeScan | 微信小程序 - 扫码
*ZSGFClient::UserApi* | [**user_qr_code_sign_in**](docs/UserApi.md#user_qr_code_sign_in) | **POST** /User/{appKey}/QRCodeSignIn | 微信小程序 - 网页登录
*ZSGFClient::UserApi* | [**user_qr_code_sign_up**](docs/UserApi.md#user_qr_code_sign_up) | **POST** /User/{appKey}/QRCodeSignUp | 微信小程序 - 注册
*ZSGFClient::UserApi* | [**user_reset_pwd**](docs/UserApi.md#user_reset_pwd) | **POST** /User/{appKey}/ResetPwd | 重置密码
*ZSGFClient::UserApi* | [**user_send_email_code**](docs/UserApi.md#user_send_email_code) | **POST** /User/{appKey}/SendEmailCode | 发送邮箱验证码
*ZSGFClient::UserApi* | [**user_send_sms_code**](docs/UserApi.md#user_send_sms_code) | **POST** /User/{appKey}/SendSMSCode | 发送手机验证码
*ZSGFClient::UserApi* | [**user_sign_in**](docs/UserApi.md#user_sign_in) | **POST** /User/{appKey}/SignIn | 账号密码 登录
*ZSGFClient::UserApi* | [**user_sign_up**](docs/UserApi.md#user_sign_up) | **POST** /User/{appKey}/SignUp | 账号密码 注册
*ZSGFClient::UserApi* | [**user_two_factor_auth**](docs/UserApi.md#user_two_factor_auth) | **GET** /User/{appKey}/TwoFactorAuth | 双因素验证
*ZSGFClient::UserApi* | [**user_unfollow_user**](docs/UserApi.md#user_unfollow_user) | **DELETE** /User/{appKey}/Follower/{userId} | 取消关注
*ZSGFClient::UserApi* | [**user_union_id_sign_in**](docs/UserApi.md#user_union_id_sign_in) | **POST** /User/{appKey}/UnionIDSignIn | UnionID登录
*ZSGFClient::UserApi* | [**user_union_id_sign_up**](docs/UserApi.md#user_union_id_sign_up) | **POST** /User/{appKey}/UnionIDSignUp | UnionID注册
*ZSGFClient::UserApi* | [**user_update_profile**](docs/UserApi.md#user_update_profile) | **PUT** /User/{appKey}/Profile | 更新个人资料
*ZSGFClient::UserApi* | [**users**](docs/UserApi.md#users) | **GET** /User/{appKey} | 获取用户列表
*ZSGFClient::UserCurrencyApi* | [**user_currencies**](docs/UserCurrencyApi.md#user_currencies) | **GET** /UserCurrency/{appKey}/{id} | 获取用户资产
*ZSGFClient::UserCurrencyApi* | [**user_currency_consume**](docs/UserCurrencyApi.md#user_currency_consume) | **POST** /UserCurrency/{appKey}/CurrencyConsume | 消费虚拟币
*ZSGFClient::UserCurrencyApi* | [**user_currency_exchange**](docs/UserCurrencyApi.md#user_currency_exchange) | **POST** /UserCurrency/{appKey}/CurrencyExchange | 兑换虚拟币
*ZSGFClient::UserCurrencyApi* | [**user_currency_recharge**](docs/UserCurrencyApi.md#user_currency_recharge) | **POST** /UserCurrency/{appKey}/CurrencyRecharge | 充值虚拟币
*ZSGFClient::UserCurrencyApi* | [**user_currency_transactions**](docs/UserCurrencyApi.md#user_currency_transactions) | **GET** /UserCurrency/{appKey}/CurrencyTransactions | 虚拟币交易记录
*ZSGFClient::UserSettingApi* | [**user_setting**](docs/UserSettingApi.md#user_setting) | **GET** /UserSetting/{appKey}/{id} | 获取用户配置项详情
*ZSGFClient::UserSettingApi* | [**user_setting_delete**](docs/UserSettingApi.md#user_setting_delete) | **DELETE** /UserSetting/{appKey}/{id} | 删除用户配置项
*ZSGFClient::UserSettingApi* | [**user_setting_post**](docs/UserSettingApi.md#user_setting_post) | **POST** /UserSetting/{appKey} | 添加用户配置项
*ZSGFClient::UserSettingApi* | [**user_setting_put**](docs/UserSettingApi.md#user_setting_put) | **PUT** /UserSetting/{appKey}/{id} | 更新用户配置项
*ZSGFClient::UserSettingApi* | [**user_settings**](docs/UserSettingApi.md#user_settings) | **GET** /UserSetting/{appKey} | 获取用户配置列表
*ZSGFClient::WechatApi* | [**wechat_decrypt**](docs/WechatApi.md#wechat_decrypt) | **GET** /Wechat/{appKey}/Decrypt | 小程序-解密数据
*ZSGFClient::WechatApi* | [**wechat_generate_scheme**](docs/WechatApi.md#wechat_generate_scheme) | **POST** /Wechat/{appKey}/GenerateScheme | 小程序-生成scheme码(该接口用于获取小程序 scheme 码，适用于短信、邮件、外部网页、微信内等拉起小程序的业务场景)
*ZSGFClient::WechatApi* | [**wechat_js_code2_session**](docs/WechatApi.md#wechat_js_code2_session) | **GET** /Wechat/{appKey}/JSCode2Session | 小程序-登录凭证校验
*ZSGFClient::WechatApi* | [**wechat_js_config**](docs/WechatApi.md#wechat_js_config) | **GET** /Wechat/{appKey}/JSConfig | 公众号H5-JS SDK Config
*ZSGFClient::WechatApi* | [**wechat_subscribe_msg**](docs/WechatApi.md#wechat_subscribe_msg) | **POST** /Wechat/{appKey}/SubscribeMSG | 公众号H5-发送一次性订阅消息
*ZSGFClient::WechatApi* | [**wechat_subscribe_send**](docs/WechatApi.md#wechat_subscribe_send) | **POST** /Wechat/{appKey}/SubscribeSend | 小程序-发送订阅消息
*ZSGFClient::WechatApi* | [**wechat_url_link_generate**](docs/WechatApi.md#wechat_url_link_generate) | **POST** /Wechat/{appKey}/UrlLinkGenerate | 小程序-生成网页跳转地址(获取小程序 URL Link，适用于短信、邮件、网页、微信内等拉起小程序的业务场景)
*ZSGFClient::WechatApi* | [**wechat_user_info**](docs/WechatApi.md#wechat_user_info) | **GET** /Wechat/{appKey}/UserInfo | 公众号H5-获取用户UnionID
*ZSGFClient::WechatApi* | [**wechat_wxa_code_get**](docs/WechatApi.md#wechat_wxa_code_get) | **POST** /Wechat/{appKey}/WXACodeGet | 小程序-获取小程序码
*ZSGFClient::WechatApi* | [**wechat_wxa_code_get_unlimited**](docs/WechatApi.md#wechat_wxa_code_get_unlimited) | **POST** /Wechat/{appKey}/WXACodeGetUnlimited | 小程序-获取小程序码(无限制)


## 模型文档

 - [ZSGFClient::AccessTokenListResult](docs/AccessTokenListResult.md)
 - [ZSGFClient::AccessTokenListResultApiResponse](docs/AccessTokenListResultApiResponse.md)
 - [ZSGFClient::AccessTokenPostRequest](docs/AccessTokenPostRequest.md)
 - [ZSGFClient::AccessTokenPutRequest](docs/AccessTokenPutRequest.md)
 - [ZSGFClient::AlipayCreateOrderPagePayRequest](docs/AlipayCreateOrderPagePayRequest.md)
 - [ZSGFClient::AlipayCreateOrderRequest](docs/AlipayCreateOrderRequest.md)
 - [ZSGFClient::AlipayCreateOrderWapPayRequest](docs/AlipayCreateOrderWapPayRequest.md)
 - [ZSGFClient::AlipayTradeQueryResponse](docs/AlipayTradeQueryResponse.md)
 - [ZSGFClient::AlipayTradeQueryResponseApiResponse](docs/AlipayTradeQueryResponseApiResponse.md)
 - [ZSGFClient::AlipayTradeRefundResponse](docs/AlipayTradeRefundResponse.md)
 - [ZSGFClient::AlipayTradeRefundResponseApiResponse](docs/AlipayTradeRefundResponseApiResponse.md)
 - [ZSGFClient::App](docs/App.md)
 - [ZSGFClient::AppApiResponse](docs/AppApiResponse.md)
 - [ZSGFClient::AppCheckVersionResult](docs/AppCheckVersionResult.md)
 - [ZSGFClient::AppCheckVersionResultApiResponse](docs/AppCheckVersionResultApiResponse.md)
 - [ZSGFClient::AppInfoItem](docs/AppInfoItem.md)
 - [ZSGFClient::AppInfoResult](docs/AppInfoResult.md)
 - [ZSGFClient::AppInfoResultApiResponse](docs/AppInfoResultApiResponse.md)
 - [ZSGFClient::AppListResult](docs/AppListResult.md)
 - [ZSGFClient::AppListResultApiResponse](docs/AppListResultApiResponse.md)
 - [ZSGFClient::AppPostResult](docs/AppPostResult.md)
 - [ZSGFClient::AppPostResultApiResponse](docs/AppPostResultApiResponse.md)
 - [ZSGFClient::AppProperty](docs/AppProperty.md)
 - [ZSGFClient::AppSetting](docs/AppSetting.md)
 - [ZSGFClient::AppSettingApiResponse](docs/AppSettingApiResponse.md)
 - [ZSGFClient::AppSettingGroupPostResult](docs/AppSettingGroupPostResult.md)
 - [ZSGFClient::AppSettingGroupPostResultApiResponse](docs/AppSettingGroupPostResultApiResponse.md)
 - [ZSGFClient::AppSettingItemPostResult](docs/AppSettingItemPostResult.md)
 - [ZSGFClient::AppSettingItemPostResultApiResponse](docs/AppSettingItemPostResultApiResponse.md)
 - [ZSGFClient::AppSettingListApiResponse](docs/AppSettingListApiResponse.md)
 - [ZSGFClient::AppSettingProviderPostResult](docs/AppSettingProviderPostResult.md)
 - [ZSGFClient::AppSettingProviderPostResultApiResponse](docs/AppSettingProviderPostResultApiResponse.md)
 - [ZSGFClient::AppSettingSettingPostResult](docs/AppSettingSettingPostResult.md)
 - [ZSGFClient::AppSettingSettingPostResultApiResponse](docs/AppSettingSettingPostResultApiResponse.md)
 - [ZSGFClient::AppUserConsentModel](docs/AppUserConsentModel.md)
 - [ZSGFClient::AppUserConsentModelListApiResponse](docs/AppUserConsentModelListApiResponse.md)
 - [ZSGFClient::AppUserListResponse](docs/AppUserListResponse.md)
 - [ZSGFClient::AppUserResetPwdRequest](docs/AppUserResetPwdRequest.md)
 - [ZSGFClient::AuthorizePolicy](docs/AuthorizePolicy.md)
 - [ZSGFClient::AuthorizePolicyApiResponse](docs/AuthorizePolicyApiResponse.md)
 - [ZSGFClient::AuthorizePolicyListApiResponse](docs/AuthorizePolicyListApiResponse.md)
 - [ZSGFClient::AuthorizeResult](docs/AuthorizeResult.md)
 - [ZSGFClient::AuthorizeResultApiResponse](docs/AuthorizeResultApiResponse.md)
 - [ZSGFClient::BkAgentRespInfo](docs/BkAgentRespInfo.md)
 - [ZSGFClient::BooleanApiResponse](docs/BooleanApiResponse.md)
 - [ZSGFClient::ChargeInfo](docs/ChargeInfo.md)
 - [ZSGFClient::CommonFriendModel](docs/CommonFriendModel.md)
 - [ZSGFClient::ContributeDetail](docs/ContributeDetail.md)
 - [ZSGFClient::CreateOrderRequest](docs/CreateOrderRequest.md)
 - [ZSGFClient::CreateOrderResult](docs/CreateOrderResult.md)
 - [ZSGFClient::CreateOrderResultApiResponse](docs/CreateOrderResultApiResponse.md)
 - [ZSGFClient::CreatePostResult](docs/CreatePostResult.md)
 - [ZSGFClient::CreatePostResultApiResponse](docs/CreatePostResultApiResponse.md)
 - [ZSGFClient::Currency](docs/Currency.md)
 - [ZSGFClient::CurrencyApiResponse](docs/CurrencyApiResponse.md)
 - [ZSGFClient::CurrencyConsumeRequest](docs/CurrencyConsumeRequest.md)
 - [ZSGFClient::CurrencyExchangeRate](docs/CurrencyExchangeRate.md)
 - [ZSGFClient::CurrencyExchangeRateApiResponse](docs/CurrencyExchangeRateApiResponse.md)
 - [ZSGFClient::CurrencyListApiResponse](docs/CurrencyListApiResponse.md)
 - [ZSGFClient::CurrencyTransaction](docs/CurrencyTransaction.md)
 - [ZSGFClient::CurrencyTransactionListApiResponse](docs/CurrencyTransactionListApiResponse.md)
 - [ZSGFClient::DirectoryItem](docs/DirectoryItem.md)
 - [ZSGFClient::EmailSignInRequest](docs/EmailSignInRequest.md)
 - [ZSGFClient::EmailSignUpRequest](docs/EmailSignUpRequest.md)
 - [ZSGFClient::EnterprisePayInfo](docs/EnterprisePayInfo.md)
 - [ZSGFClient::ExchangeCurrencyRequest](docs/ExchangeCurrencyRequest.md)
 - [ZSGFClient::ExchangeRatePutRequest](docs/ExchangeRatePutRequest.md)
 - [ZSGFClient::ExecuteFunctionRequest](docs/ExecuteFunctionRequest.md)
 - [ZSGFClient::FileItem](docs/FileItem.md)
 - [ZSGFClient::FileListResult](docs/FileListResult.md)
 - [ZSGFClient::FileListResultApiResponse](docs/FileListResultApiResponse.md)
 - [ZSGFClient::FollowerModel](docs/FollowerModel.md)
 - [ZSGFClient::FollowerPutModel](docs/FollowerPutModel.md)
 - [ZSGFClient::FulfillmentDetail](docs/FulfillmentDetail.md)
 - [ZSGFClient::GeoLocationModel](docs/GeoLocationModel.md)
 - [ZSGFClient::GeoLocationModelApiResponse](docs/GeoLocationModelApiResponse.md)
 - [ZSGFClient::GeoLocationResponseModel](docs/GeoLocationResponseModel.md)
 - [ZSGFClient::GoodsDetail](docs/GoodsDetail.md)
 - [ZSGFClient::GrantRequest](docs/GrantRequest.md)
 - [ZSGFClient::GrantResult](docs/GrantResult.md)
 - [ZSGFClient::GrantResultApiResponse](docs/GrantResultApiResponse.md)
 - [ZSGFClient::HbFqPayInfo](docs/HbFqPayInfo.md)
 - [ZSGFClient::Int64ApiResponse](docs/Int64ApiResponse.md)
 - [ZSGFClient::IntactChargeInfo](docs/IntactChargeInfo.md)
 - [ZSGFClient::ListResponseItem](docs/ListResponseItem.md)
 - [ZSGFClient::ListResponseItemListApiResponse](docs/ListResponseItemListApiResponse.md)
 - [ZSGFClient::OAuthAccountBindRequest](docs/OAuthAccountBindRequest.md)
 - [ZSGFClient::OAuthAccountPutBindRequest](docs/OAuthAccountPutBindRequest.md)
 - [ZSGFClient::OAuthAccountSignInRequest](docs/OAuthAccountSignInRequest.md)
 - [ZSGFClient::ObjectApiResponse](docs/ObjectApiResponse.md)
 - [ZSGFClient::ObjectListApiResponse](docs/ObjectListApiResponse.md)
 - [ZSGFClient::Order](docs/Order.md)
 - [ZSGFClient::OrderApiResponse](docs/OrderApiResponse.md)
 - [ZSGFClient::OrderListResult](docs/OrderListResult.md)
 - [ZSGFClient::OrderListResultApiResponse](docs/OrderListResultApiResponse.md)
 - [ZSGFClient::PaymentInfoWithId](docs/PaymentInfoWithId.md)
 - [ZSGFClient::PhoneSignInRequest](docs/PhoneSignInRequest.md)
 - [ZSGFClient::PhoneSignUpRequest](docs/PhoneSignUpRequest.md)
 - [ZSGFClient::PostIndexRequest](docs/PostIndexRequest.md)
 - [ZSGFClient::PostResult](docs/PostResult.md)
 - [ZSGFClient::PostResultApiResponse](docs/PostResultApiResponse.md)
 - [ZSGFClient::PresetPayToolInfo](docs/PresetPayToolInfo.md)
 - [ZSGFClient::ProfileResult](docs/ProfileResult.md)
 - [ZSGFClient::ProfileResultApiResponse](docs/ProfileResultApiResponse.md)
 - [ZSGFClient::Project](docs/Project.md)
 - [ZSGFClient::ProjectApiResponse](docs/ProjectApiResponse.md)
 - [ZSGFClient::ProjectListResult](docs/ProjectListResult.md)
 - [ZSGFClient::ProjectListResultApiResponse](docs/ProjectListResultApiResponse.md)
 - [ZSGFClient::QRCodePreSignInRequest](docs/QRCodePreSignInRequest.md)
 - [ZSGFClient::QRCodeScanRequest](docs/QRCodeScanRequest.md)
 - [ZSGFClient::QRCodeSignInRequest](docs/QRCodeSignInRequest.md)
 - [ZSGFClient::QRCodeSignUpRequest](docs/QRCodeSignUpRequest.md)
 - [ZSGFClient::RechargePointRequest](docs/RechargePointRequest.md)
 - [ZSGFClient::RecommendFriend](docs/RecommendFriend.md)
 - [ZSGFClient::RefundChargeInfo](docs/RefundChargeInfo.md)
 - [ZSGFClient::RefundSubFee](docs/RefundSubFee.md)
 - [ZSGFClient::ReturnPageNotifyRequest](docs/ReturnPageNotifyRequest.md)
 - [ZSGFClient::SendEmailCodeRequest](docs/SendEmailCodeRequest.md)
 - [ZSGFClient::SendSMSCodeRequest](docs/SendSMSCodeRequest.md)
 - [ZSGFClient::ServiceGroup](docs/ServiceGroup.md)
 - [ZSGFClient::ServiceGroupApiResponse](docs/ServiceGroupApiResponse.md)
 - [ZSGFClient::ServiceGroupListApiResponse](docs/ServiceGroupListApiResponse.md)
 - [ZSGFClient::ServiceItem](docs/ServiceItem.md)
 - [ZSGFClient::ServiceItemApiResponse](docs/ServiceItemApiResponse.md)
 - [ZSGFClient::ServiceItemListApiResponse](docs/ServiceItemListApiResponse.md)
 - [ZSGFClient::ServiceProvider](docs/ServiceProvider.md)
 - [ZSGFClient::ServiceProviderApiResponse](docs/ServiceProviderApiResponse.md)
 - [ZSGFClient::ServiceProviderListApiResponse](docs/ServiceProviderListApiResponse.md)
 - [ZSGFClient::ServiceSettingGroupPostResult](docs/ServiceSettingGroupPostResult.md)
 - [ZSGFClient::ServiceSettingGroupPostResultApiResponse](docs/ServiceSettingGroupPostResultApiResponse.md)
 - [ZSGFClient::ServiceSettingItemPostResult](docs/ServiceSettingItemPostResult.md)
 - [ZSGFClient::ServiceSettingItemPostResultApiResponse](docs/ServiceSettingItemPostResultApiResponse.md)
 - [ZSGFClient::ServiceSettingProviderPostResult](docs/ServiceSettingProviderPostResult.md)
 - [ZSGFClient::ServiceSettingProviderPostResultApiResponse](docs/ServiceSettingProviderPostResultApiResponse.md)
 - [ZSGFClient::ServiceSettingSettingPostResult](docs/ServiceSettingSettingPostResult.md)
 - [ZSGFClient::ServiceSettingSettingPostResultApiResponse](docs/ServiceSettingSettingPostResultApiResponse.md)
 - [ZSGFClient::Settings](docs/Settings.md)
 - [ZSGFClient::SettingsApiResponse](docs/SettingsApiResponse.md)
 - [ZSGFClient::SettingsListApiResponse](docs/SettingsListApiResponse.md)
 - [ZSGFClient::SetupCode](docs/SetupCode.md)
 - [ZSGFClient::SetupCodeApiResponse](docs/SetupCodeApiResponse.md)
 - [ZSGFClient::SignInRequest](docs/SignInRequest.md)
 - [ZSGFClient::SignUpRequest](docs/SignUpRequest.md)
 - [ZSGFClient::StorageListResult](docs/StorageListResult.md)
 - [ZSGFClient::StorageListResultApiResponse](docs/StorageListResultApiResponse.md)
 - [ZSGFClient::StringApiResponse](docs/StringApiResponse.md)
 - [ZSGFClient::StringListApiResponse](docs/StringListApiResponse.md)
 - [ZSGFClient::SubFee](docs/SubFee.md)
 - [ZSGFClient::SystemDirectoryItem](docs/SystemDirectoryItem.md)
 - [ZSGFClient::SystemFileItem](docs/SystemFileItem.md)
 - [ZSGFClient::SystemFileListResult](docs/SystemFileListResult.md)
 - [ZSGFClient::SystemFileListResultApiResponse](docs/SystemFileListResultApiResponse.md)
 - [ZSGFClient::TapPayInfo](docs/TapPayInfo.md)
 - [ZSGFClient::Team](docs/Team.md)
 - [ZSGFClient::TokenModel](docs/TokenModel.md)
 - [ZSGFClient::TokenModelApiResponse](docs/TokenModelApiResponse.md)
 - [ZSGFClient::TradeFundBill](docs/TradeFundBill.md)
 - [ZSGFClient::TradeSettleDetail](docs/TradeSettleDetail.md)
 - [ZSGFClient::TradeSettleInfo](docs/TradeSettleInfo.md)
 - [ZSGFClient::UnionIDSignInRequest](docs/UnionIDSignInRequest.md)
 - [ZSGFClient::UnionIDSignUpRequest](docs/UnionIDSignUpRequest.md)
 - [ZSGFClient::UpdateProfileRequest](docs/UpdateProfileRequest.md)
 - [ZSGFClient::User](docs/User.md)
 - [ZSGFClient::UserAccessToken](docs/UserAccessToken.md)
 - [ZSGFClient::UserApiResponse](docs/UserApiResponse.md)
 - [ZSGFClient::UserCommonInterestsResult](docs/UserCommonInterestsResult.md)
 - [ZSGFClient::UserCommonInterestsResultApiResponse](docs/UserCommonInterestsResultApiResponse.md)
 - [ZSGFClient::UserCurrency](docs/UserCurrency.md)
 - [ZSGFClient::UserCurrencyCurrencyTransResult](docs/UserCurrencyCurrencyTransResult.md)
 - [ZSGFClient::UserCurrencyCurrencyTransResultApiResponse](docs/UserCurrencyCurrencyTransResultApiResponse.md)
 - [ZSGFClient::UserCurrencyListApiResponse](docs/UserCurrencyListApiResponse.md)
 - [ZSGFClient::UserFollowersResult](docs/UserFollowersResult.md)
 - [ZSGFClient::UserFollowersResultApiResponse](docs/UserFollowersResultApiResponse.md)
 - [ZSGFClient::UserFollowingResult](docs/UserFollowingResult.md)
 - [ZSGFClient::UserFollowingResultApiResponse](docs/UserFollowingResultApiResponse.md)
 - [ZSGFClient::UserFriendsNearByResult](docs/UserFriendsNearByResult.md)
 - [ZSGFClient::UserFriendsNearByResultApiResponse](docs/UserFriendsNearByResultApiResponse.md)
 - [ZSGFClient::UserListResult](docs/UserListResult.md)
 - [ZSGFClient::UserListResultApiResponse](docs/UserListResultApiResponse.md)
 - [ZSGFClient::UserLocationPostResult](docs/UserLocationPostResult.md)
 - [ZSGFClient::UserLocationPostResultApiResponse](docs/UserLocationPostResultApiResponse.md)
 - [ZSGFClient::UserLocationsResult](docs/UserLocationsResult.md)
 - [ZSGFClient::UserLocationsResultApiResponse](docs/UserLocationsResultApiResponse.md)
 - [ZSGFClient::UserLogins](docs/UserLogins.md)
 - [ZSGFClient::UserLoginsListApiResponse](docs/UserLoginsListApiResponse.md)
 - [ZSGFClient::UserMutualFollowersResult](docs/UserMutualFollowersResult.md)
 - [ZSGFClient::UserMutualFollowersResultApiResponse](docs/UserMutualFollowersResultApiResponse.md)
 - [ZSGFClient::UserMutualFollowingsResult](docs/UserMutualFollowingsResult.md)
 - [ZSGFClient::UserMutualFollowingsResultApiResponse](docs/UserMutualFollowingsResultApiResponse.md)
 - [ZSGFClient::UserProfileResult](docs/UserProfileResult.md)
 - [ZSGFClient::UserProfileResultApiResponse](docs/UserProfileResultApiResponse.md)
 - [ZSGFClient::UserQRCodeScanResult](docs/UserQRCodeScanResult.md)
 - [ZSGFClient::UserQRCodeScanResultApiResponse](docs/UserQRCodeScanResultApiResponse.md)
 - [ZSGFClient::UserSetting](docs/UserSetting.md)
 - [ZSGFClient::UserSettingApiResponse](docs/UserSettingApiResponse.md)
 - [ZSGFClient::UserSettingListApiResponse](docs/UserSettingListApiResponse.md)
 - [ZSGFClient::UserSettingPostResult](docs/UserSettingPostResult.md)
 - [ZSGFClient::UserSettingPostResultApiResponse](docs/UserSettingPostResultApiResponse.md)
 - [ZSGFClient::VoucherDetail](docs/VoucherDetail.md)
 - [ZSGFClient::WechatJSConfigResult](docs/WechatJSConfigResult.md)
 - [ZSGFClient::WechatJSConfigResultApiResponse](docs/WechatJSConfigResultApiResponse.md)