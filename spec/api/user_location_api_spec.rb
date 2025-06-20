=begin
#用户全部 API 文档

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.13.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for ZSGFClient::UserLocationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UserLocationApi' do
  before do
    # run before each test
    @api_instance = ZSGFClient::UserLocationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserLocationApi' do
    it 'should create an instance of UserLocationApi' do
      expect(@api_instance).to be_instance_of(ZSGFClient::UserLocationApi)
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

end
