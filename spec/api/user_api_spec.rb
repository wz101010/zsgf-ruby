=begin
#全部  API 文档

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.13.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for ZSGFClient::UserApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UserApi' do
  before do
    # run before each test
    @api_instance = ZSGFClient::UserApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserApi' do
    it 'should create an instance of UserApi' do
      expect(@api_instance).to be_instance_of(ZSGFClient::UserApi)
    end
  end

  # unit tests for user
  # 获取用户详情
  # 根据用户ID获取用户详情
  # @param id 用户ID
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @return [UserApiResponse]
  describe 'user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_clear
  # 清空用户数据
  # 清空用户数据
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @return [BooleanApiResponse]
  describe 'user_clear test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_common_interests
  # 有共同爱好的用户推荐
  # 推荐有共同爱好的用户
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tag 兴趣标签
  # @option opts [Integer] :skip 跳过的记录数
  # @option opts [Integer] :take 获取的记录数
  # @return [UserCommonInterestsResultApiResponse]
  describe 'user_common_interests test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_deactivate_hard
  # 注销账号
  # 清除用户所有附属数据，并注销账号
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @return [BooleanApiResponse]
  describe 'user_deactivate_hard test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_delete
  # 删除用户
  # 根据用户ID删除用户
  # @param id 用户ID
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @return [BooleanApiResponse]
  describe 'user_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_email_sign_in
  # 邮箱登录
  # 使用邮箱进行登录
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [EmailSignInRequest] :email_sign_in_request 登录请求参数
  # @return [TokenModelApiResponse]
  describe 'user_email_sign_in test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_email_sign_up
  # 邮箱注册
  # 使用邮箱进行注册
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [EmailSignUpRequest] :email_sign_up_request 注册请求参数
  # @return [TokenModelApiResponse]
  describe 'user_email_sign_up test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_export
  # 导出用户数据
  # 导出所有用户数据为Excel文件
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'user_export test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_follow_user
  # 关注用户
  # 关注指定用户
  # @param user_id 要关注的用户ID
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @return [BooleanApiResponse]
  describe 'user_follow_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_follower_put
  # 更新粉丝
  # 根据粉丝ID更新粉丝信息
  # @param id 粉丝ID
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [FollowerPutModel] :follower_put_model 更新粉丝的请求参数
  # @return [BooleanApiResponse]
  describe 'user_follower_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_followers
  # 获取我的粉丝列表
  # 根据条件获取我的粉丝列表
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tag 标签
  # @option opts [String] :status 状态
  # @option opts [Integer] :target_user_id 指定用户的粉丝
  # @option opts [Integer] :skip 跳过的记录数
  # @option opts [Integer] :take 获取的记录数
  # @return [UserFollowersResultApiResponse]
  describe 'user_followers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_following
  # 获取当前用户的关注列表，或者判断是否关注某个特定用户。
  # 根据条件获取我的关注列表，或判断是否关注某个用户
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tag 用于过滤关注列表的标签（可选）。
  # @option opts [String] :status 用于过滤关注列表的状态（可选）。
  # @option opts [Integer] :target_user_id 指定用户的关注记录，如果不提供则默认为当前用户的关注。
  # @option opts [Integer] :skip 跳过的记录数，用于分页（默认0）。
  # @option opts [Integer] :take 获取的记录数，用于分页（默认10）。
  # @option opts [Integer] :check_user_id 要判断是否关注的目标用户ID。如果提供此参数，方法将返回一个布尔值，表示当前用户是否关注该目标用户。
  # @option opts [Boolean] :only_ids 是否只返回关注用户的ID集合，默认为false（即返回完整的关注用户信息）。
  # @return [BooleanApiResponse]
  describe 'user_following test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_friends_near_by
  # 获取附近的用户推荐列表
  # 根据地理位置坐标和多种筛选条件，查询附近满足条件的用户列表，支持分页和按距离排序。 地理位置查询使用MySQL的ST_Distance_Sphere函数计算球面距离。 注意：longitude为经度(X轴)，latitude为纬度(Y轴)，参数顺序与常规坐标系一致
  # @param longitude 当前用户经度坐标(WGS84坐标系)
  # @param latitude 当前用户纬度坐标(WGS84坐标系)
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :country 国家过滤条件（精确匹配）
  # @option opts [String] :state 省份过滤条件（精确匹配）
  # @option opts [String] :city 城市过滤条件（精确匹配）
  # @option opts [String] :district 区县过滤条件（精确匹配）
  # @option opts [String] :gender 性别过滤条件（可选值示例：Male/Female/Other）
  # @option opts [Integer] :age_s 年龄起始范围（包含，0表示不限制）
  # @option opts [Integer] :age_e 年龄结束范围（包含，0表示不限制）
  # @option opts [String] :tag 兴趣标签过滤（支持模糊匹配，如：\&quot;运动\&quot;）
  # @option opts [Integer] :distance 搜索半径（单位：米，0表示不限制距离）
  # @option opts [Integer] :skip 跳过的记录数（分页起始位置，默认0）
  # @option opts [Integer] :take 获取的记录数（分页大小，默认10，最大100）
  # @return [UserFriendsNearByResultApiResponse]
  describe 'user_friends_near_by test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_import
  # 导入用户数据
  # 导入用户数据
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :check 是否进行检查
  # @option opts [File] :file 导入的文件
  # @return [BooleanApiResponse]
  describe 'user_import test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_location
  # 获取位置详情
  # 根据位置ID获取位置详情
  # @param id 位置ID
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @return [GeoLocationModelApiResponse]
  describe 'user_location test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_location_delete
  # 删除位置
  # 根据位置ID删除位置信息
  # @param id 位置ID
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @return [BooleanApiResponse]
  describe 'user_location_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_location_post
  # 添加位置
  # 添加新的位置信息
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [GeoLocationModel] :geo_location_model 位置信息
  # @return [UserLocationPostResultApiResponse]
  describe 'user_location_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_location_put
  # 更新位置
  # 此方法用于更新指定位置ID的位置信息。如果位置不存在，则创建一个新的位置。
  # @param id 位置ID
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [GeoLocationModel] :geo_location_model 位置信息
  # @return [BooleanApiResponse]
  describe 'user_location_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_locations
  # 获取位置列表
  # 根据条件获取位置列表
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tag 标签
  # @option opts [String] :type 分类
  # @option opts [Float] :x 纬度
  # @option opts [Float] :y 经度
  # @option opts [Integer] :sphere 附近距离，单位：米
  # @option opts [Integer] :skip 跳过的记录数
  # @option opts [Integer] :take 获取的记录数
  # @return [UserLocationsResultApiResponse]
  describe 'user_locations test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_mutual_followers
  # 有共同粉丝的用户推荐
  # 推荐有共同粉丝的用户
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip 跳过的记录数
  # @option opts [Integer] :take 获取的记录数
  # @return [UserMutualFollowersResultApiResponse]
  describe 'user_mutual_followers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_mutual_followings
  # 有共同关注的用户推荐
  # 推荐有共同关注的用户
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip 跳过的记录数
  # @option opts [Integer] :take 获取的记录数
  # @return [UserMutualFollowingsResultApiResponse]
  describe 'user_mutual_followings test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_o_auth_account_bind
  # 外部账号 绑定，如果已存在绑定则直接返回成功
  # 绑定外部账号
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [OAuthAccountBindRequest] :o_auth_account_bind_request 绑定请求参数
  # @return [BooleanApiResponse]
  describe 'user_o_auth_account_bind test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_o_auth_account_sign_in
  # 外部账号 登录
  # 使用外部账号进行登录
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [OAuthAccountSignInRequest] :o_auth_account_sign_in_request 登录请求参数
  # @return [TokenModelApiResponse]
  describe 'user_o_auth_account_sign_in test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_o_auth_accounts
  # 外部账号 绑定列表
  # 获取外部账号绑定列表
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @return [UserLoginsListApiResponse]
  describe 'user_o_auth_accounts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_o_auth_accounts_put_bind
  # 外部账号 更新绑定
  # 更新外部账号绑定信息
  # @param id 绑定ID
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [OAuthAccountPutBindRequest] :o_auth_account_put_bind_request 更新请求参数
  # @return [BooleanApiResponse]
  describe 'user_o_auth_accounts_put_bind test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_o_auth_accounts_un_bind
  # 外部账号 删除绑定
  # 删除外部账号绑定
  # @param id 绑定ID
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @return [BooleanApiResponse]
  describe 'user_o_auth_accounts_un_bind test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_phone_sign_in
  # 手机登录
  # 使用手机号码进行登录
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [PhoneSignInRequest] :phone_sign_in_request 登录请求参数
  # @return [TokenModelApiResponse]
  describe 'user_phone_sign_in test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_phone_sign_up
  # 手机注册
  # 使用手机号码进行注册
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [PhoneSignUpRequest] :phone_sign_up_request 注册请求参数
  # @return [TokenModelApiResponse]
  describe 'user_phone_sign_up test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_profile
  # 获取个人资料
  # 获取当前用户的个人资料
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @return [UserProfileResultApiResponse]
  describe 'user_profile test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_profile_by_id
  # 获取指定用户资料
  # 用于他人主页展示
  # @param user_id 用户ID
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @return [GetUserProfileResultApiResponse]
  describe 'user_profile_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_put
  # 更新用户信息
  # 根据用户ID更新用户信息
  # @param id 用户ID
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [User] :user 用户信息
  # @return [BooleanApiResponse]
  describe 'user_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_qr_code_pre_sign_in
  # 微信小程序 - 预登陆
  # 使用微信小程序二维码进行预登陆
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [QRCodePreSignInRequest] :qr_code_pre_sign_in_request 预登陆请求参数
  # @return [Int64ApiResponse]
  describe 'user_qr_code_pre_sign_in test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_qr_code_scan
  # 微信小程序 - 扫码
  # 使用微信小程序二维码进行扫码
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [QRCodeScanRequest] :qr_code_scan_request 扫码请求参数
  # @return [UserQRCodeScanResultApiResponse]
  describe 'user_qr_code_scan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_qr_code_sign_in
  # 微信小程序 - 网页登录
  # 使用微信小程序二维码进行网页登录
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [QRCodeSignInRequest] :qr_code_sign_in_request 登录请求参数
  # @return [TokenModelApiResponse]
  describe 'user_qr_code_sign_in test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_qr_code_sign_up
  # 微信小程序 - 注册
  # 使用微信小程序二维码进行注册
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [QRCodeSignUpRequest] :qr_code_sign_up_request 注册请求参数
  # @return [TokenModelApiResponse]
  describe 'user_qr_code_sign_up test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_reset_email
  # 重置邮箱
  # 通过邮箱验证码重置邮箱
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [AppUserResetEmailRequest] :app_user_reset_email_request 重置邮箱的请求参数
  # @return [BooleanApiResponse]
  describe 'user_reset_email test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_reset_phone
  # 重置手机号
  # 通过手机号验证码重置手机号
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [AppUserResetPhoneRequest] :app_user_reset_phone_request 重置手机号的请求参数
  # @return [BooleanApiResponse]
  describe 'user_reset_phone test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_reset_pwd
  # 重置密码
  # 通过手机号或邮箱重置密码
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [AppUserResetPwdRequest] :app_user_reset_pwd_request 重置密码的请求参数
  # @return [BooleanApiResponse]
  describe 'user_reset_pwd test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_send_email_code
  # 发送邮箱验证码
  # 发送邮箱验证码用于注册或找回密码
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [SendEmailCodeRequest] :send_email_code_request 发送邮箱验证码的请求参数
  # @return [BooleanApiResponse]
  describe 'user_send_email_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_send_sms_code
  # 发送手机验证码
  # 发送手机验证码用于注册或找回密码
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [SendSMSCodeRequest] :send_sms_code_request 发送手机验证码的请求参数
  # @return [BooleanApiResponse]
  describe 'user_send_sms_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_sign_in
  # 账号密码 登录
  # 使用账号密码进行登录
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [SignInRequest] :sign_in_request 登录请求参数
  # @return [TokenModelApiResponse]
  describe 'user_sign_in test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_sign_up
  # 账号密码 注册
  # 使用账号密码进行注册
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [SignUpRequest] :sign_up_request 注册请求参数
  # @return [TokenModelApiResponse]
  describe 'user_sign_up test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_two_factor_auth
  # 双因素验证
  # 获取双因素验证的设置信息
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @return [SetupCodeApiResponse]
  describe 'user_two_factor_auth test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_unfollow_user
  # 取消关注
  # 取消关注指定用户
  # @param user_id 要取消关注的用户ID
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @return [BooleanApiResponse]
  describe 'user_unfollow_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_union_id_sign_in
  # UnionID登录
  # 使用UnionID进行登录
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [UnionIDSignInRequest] :union_id_sign_in_request 登录请求参数
  # @return [TokenModelApiResponse]
  describe 'user_union_id_sign_in test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_union_id_sign_up
  # UnionID注册
  # 使用UnionID进行注册
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [UnionIDSignUpRequest] :union_id_sign_up_request 注册请求参数
  # @return [TokenModelApiResponse]
  describe 'user_union_id_sign_up test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for user_update_profile
  # 更新个人资料
  # 更新当前用户的个人资料
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateProfileRequest] :update_profile_request 更新个人资料的请求参数
  # @return [BooleanApiResponse]
  describe 'user_update_profile test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for users
  # 获取用户列表
  # 根据条件获取用户列表
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :user_name 用户名
  # @option opts [String] :email 邮箱
  # @option opts [String] :phone 电话
  # @option opts [String] :platform 平台
  # @option opts [String] :union_id 联合ID
  # @option opts [String] :role 角色
  # @option opts [Integer] :skip 跳过的记录数
  # @option opts [Integer] :take 获取的记录数
  # @return [UserListResultApiResponse]
  describe 'users test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
