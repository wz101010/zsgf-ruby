=begin
#全部  API 文档

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.13.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for ZSGFClient::AuthorizePolicyApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AuthorizePolicyApi' do
  before do
    # run before each test
    @api_instance = ZSGFClient::AuthorizePolicyApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthorizePolicyApi' do
    it 'should create an instance of AuthorizePolicyApi' do
      expect(@api_instance).to be_instance_of(ZSGFClient::AuthorizePolicyApi)
    end
  end

  # unit tests for authorize_policies
  # 获取鉴权策略列表
  # 根据鉴权类型和策略名称获取鉴权策略列表
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :auth_type 鉴权类型（access_token、user、role）
  # @option opts [String] :policy_name 策略名称
  # @return [AuthorizePolicyListApiResponse]
  describe 'authorize_policies test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for authorize_policy
  # 获取鉴权策略详情
  # 根据鉴权策略ID获取鉴权策略详情
  # @param id 鉴权策略ID
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @return [AuthorizePolicyApiResponse]
  describe 'authorize_policy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for authorize_policy_delete
  # 删除鉴权策略
  # 根据鉴权策略ID删除鉴权策略
  # @param id 鉴权策略ID
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @return [BooleanApiResponse]
  describe 'authorize_policy_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for authorize_policy_post
  # 添加鉴权策略
  # 添加新的鉴权策略
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [AuthorizePolicy] :authorize_policy 鉴权策略对象
  # @return [CreatePostResultApiResponse]
  describe 'authorize_policy_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for authorize_policy_put
  # 更新鉴权策略
  # 根据鉴权策略ID更新鉴权策略
  # @param id 鉴权策略ID
  # @param app_key 
  # @param [Hash] opts the optional parameters
  # @option opts [AuthorizePolicy] :authorize_policy 鉴权策略对象
  # @return [BooleanApiResponse]
  describe 'authorize_policy_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
