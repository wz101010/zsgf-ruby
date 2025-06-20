=begin
#用户全部 API 文档

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.13.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for ZSGFClient::WechatApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WechatApi' do
  before do
    # run before each test
    @api_instance = ZSGFClient::WechatApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WechatApi' do
    it 'should create an instance of WechatApi' do
      expect(@api_instance).to be_instance_of(ZSGFClient::WechatApi)
    end
  end

  # unit tests for confirm_qr_code_login
  # 确认二维码登录请求
  # 微信小程序用户确认二维码登录并获取访问令牌
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [QRCodeSignInRequest] :qr_code_sign_in_request 登录确认请求参数
  # @return [TokenModelApiResponse]
  describe 'confirm_qr_code_login test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for confirm_qr_code_registration
  # 确认二维码注册请求
  # 微信小程序用户通过二维码完成注册并获取访问令牌
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [QRCodeSignUpRequest] :qr_code_sign_up_request 注册确认请求参数
  # @return [TokenModelApiResponse]
  describe 'confirm_qr_code_registration test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for initiate_qr_auth_session
  # 初始化二维码认证会话
  # 创建用于微信小程序扫码登录/注册的认证会话
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [QRCodePreSignInRequest] :qr_code_pre_sign_in_request 认证会话初始化请求参数
  # @return [Int64ApiResponse]
  describe 'initiate_qr_auth_session test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for scan_qr_code_for_auth
  # 验证二维码扫描结果
  # 微信小程序扫描二维码并获取应用授权信息
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [QRCodeScanRequest] :qr_code_scan_request 二维码扫描请求参数
  # @return [UserQRCodeScanResultApiResponse]
  describe 'scan_qr_code_for_auth test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for wechat_decrypt
  # 解密小程序用户数据
  # 解密小程序加密数据
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :encrypted_data 加密的数据
  # @option opts [String] :iv 加密算法的初始向量
  # @option opts [String] :session_key 会话密钥
  # @return [StringApiResponse]
  describe 'wechat_decrypt test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for wechat_generate_scheme
  # 生成小程序Scheme码
  # 生成小程序的scheme码
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Object>] :request_body scheme码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/OpenApiDoc/qrcode-link/url-scheme/generateScheme.html
  # @return [StringApiResponse]
  describe 'wechat_generate_scheme test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for wechat_js_code2_session
  # 校验小程序登录状态
  # 校验小程序登录凭证
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :js_code 登录凭证，开发参考：https://dwz.cn/icNajFh7
  # @return [StringApiResponse]
  describe 'wechat_js_code2_session test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for wechat_js_config
  # 配置公众号JS SDK
  # 获取公众号H5的JS SDK配置
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :url 当前网页的URL
  # @return [WechatJSConfigResultApiResponse]
  describe 'wechat_js_config test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for wechat_msg_sec_check
  # 小程序内容安全检测
  # 检测消息内容是否含有违法违规信息
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Object>] :request_body 消息内容数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/OpenApiDoc/sec-center/sec-check/msgSecCheck.html
  # @return [Object]
  describe 'wechat_msg_sec_check test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for wechat_subscribe_msg
  # 发送公众号一次性订阅消息
  # 发送公众号H5一次性订阅消息
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Object>] :request_body 订阅消息数据，开发参考：https://dwz.cn/IXptek5n
  # @return [StringApiResponse]
  describe 'wechat_subscribe_msg test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for wechat_subscribe_send
  # 发送小程序订阅消息
  # 发送小程序订阅消息
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Object>] :request_body 订阅消息数据，开发参考：https://dwz.cn/bohXaCnp
  # @return [StringApiResponse]
  describe 'wechat_subscribe_send test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for wechat_url_link_generate
  # 生成小程序URL跳转链接
  # 生成小程序的网页跳转地址
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Object>] :request_body 跳转地址数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/url-link/urllink.generate.html
  # @return [StringApiResponse]
  describe 'wechat_url_link_generate test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for wechat_user_info
  # 获取公众号H5 UnionID
  # 获取公众号H5用户的UnionID
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :openid 用户的OpenID
  # @return [StringApiResponse]
  describe 'wechat_user_info test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for wechat_wxa_code_get
  # 获取小程序码（普通）
  # 获取小程序码
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Object>] :request_body 小程序码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/qr-code/wxacode.get.html
  # @return [File]
  describe 'wechat_wxa_code_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for wechat_wxa_code_get_unlimited
  # 获取小程序码（无限制）
  # 获取无限制的小程序码
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Object>] :request_body 小程序码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/qr-code/wxacode.getUnlimited.html
  # @return [File]
  describe 'wechat_wxa_code_get_unlimited test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
