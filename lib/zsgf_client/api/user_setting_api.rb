=begin
#全部  API 文档

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.13.0-SNAPSHOT

=end

require 'cgi'

module ZSGFClient
  class UserSettingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # 获取用户配置项详情
    # 根据配置项ID获取用户配置项详情
    # @param id [Integer] 配置项ID
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [UserSettingApiResponse]
    def user_setting(id, app_key, opts = {})
      data, _status_code, _headers = user_setting_with_http_info(id, app_key, opts)
      data
    end

    # 获取用户配置项详情
    # 根据配置项ID获取用户配置项详情
    # @param id [Integer] 配置项ID
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserSettingApiResponse, Integer, Hash)>] UserSettingApiResponse data, response status code and response headers
    def user_setting_with_http_info(id, app_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserSettingApi.user_setting ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UserSettingApi.user_setting"
      end
      # verify the required parameter 'app_key' is set
      if @api_client.config.client_side_validation && app_key.nil?
        fail ArgumentError, "Missing the required parameter 'app_key' when calling UserSettingApi.user_setting"
      end
      # resource path
      local_var_path = '/UserSetting/{appKey}/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'appKey' + '}', CGI.escape(app_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserSettingApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"UserSettingApi.user_setting",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserSettingApi#user_setting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 删除用户配置项
    # 根据配置项ID删除用户配置项
    # @param id [Integer] 配置项ID
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [BooleanApiResponse]
    def user_setting_delete(id, app_key, opts = {})
      data, _status_code, _headers = user_setting_delete_with_http_info(id, app_key, opts)
      data
    end

    # 删除用户配置项
    # 根据配置项ID删除用户配置项
    # @param id [Integer] 配置项ID
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanApiResponse, Integer, Hash)>] BooleanApiResponse data, response status code and response headers
    def user_setting_delete_with_http_info(id, app_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserSettingApi.user_setting_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UserSettingApi.user_setting_delete"
      end
      # verify the required parameter 'app_key' is set
      if @api_client.config.client_side_validation && app_key.nil?
        fail ArgumentError, "Missing the required parameter 'app_key' when calling UserSettingApi.user_setting_delete"
      end
      # resource path
      local_var_path = '/UserSetting/{appKey}/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'appKey' + '}', CGI.escape(app_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"UserSettingApi.user_setting_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserSettingApi#user_setting_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 添加用户配置项
    # 添加新的用户配置项
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [UserSetting] :user_setting 配置项内容
    # @return [UserSettingPostResultApiResponse]
    def user_setting_post(app_key, opts = {})
      data, _status_code, _headers = user_setting_post_with_http_info(app_key, opts)
      data
    end

    # 添加用户配置项
    # 添加新的用户配置项
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [UserSetting] :user_setting 配置项内容
    # @return [Array<(UserSettingPostResultApiResponse, Integer, Hash)>] UserSettingPostResultApiResponse data, response status code and response headers
    def user_setting_post_with_http_info(app_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserSettingApi.user_setting_post ...'
      end
      # verify the required parameter 'app_key' is set
      if @api_client.config.client_side_validation && app_key.nil?
        fail ArgumentError, "Missing the required parameter 'app_key' when calling UserSettingApi.user_setting_post"
      end
      # resource path
      local_var_path = '/UserSetting/{appKey}'.sub('{' + 'appKey' + '}', CGI.escape(app_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'user_setting'])

      # return_type
      return_type = opts[:debug_return_type] || 'UserSettingPostResultApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"UserSettingApi.user_setting_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserSettingApi#user_setting_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 更新用户配置项
    # 根据配置项ID更新用户配置项内容
    # @param id [Integer] 配置项ID
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [UserSetting] :user_setting 配置项内容
    # @return [BooleanApiResponse]
    def user_setting_put(id, app_key, opts = {})
      data, _status_code, _headers = user_setting_put_with_http_info(id, app_key, opts)
      data
    end

    # 更新用户配置项
    # 根据配置项ID更新用户配置项内容
    # @param id [Integer] 配置项ID
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [UserSetting] :user_setting 配置项内容
    # @return [Array<(BooleanApiResponse, Integer, Hash)>] BooleanApiResponse data, response status code and response headers
    def user_setting_put_with_http_info(id, app_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserSettingApi.user_setting_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UserSettingApi.user_setting_put"
      end
      # verify the required parameter 'app_key' is set
      if @api_client.config.client_side_validation && app_key.nil?
        fail ArgumentError, "Missing the required parameter 'app_key' when calling UserSettingApi.user_setting_put"
      end
      # resource path
      local_var_path = '/UserSetting/{appKey}/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'appKey' + '}', CGI.escape(app_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'user_setting'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"UserSettingApi.user_setting_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserSettingApi#user_setting_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 获取用户配置列表
    # 根据用户ID、配置项代码和标签获取用户配置列表
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :user_id 用户ID
    # @option opts [String] :code 配置项代码
    # @option opts [String] :tag 配置项标签
    # @return [UserSettingListApiResponse]
    def user_settings(app_key, opts = {})
      data, _status_code, _headers = user_settings_with_http_info(app_key, opts)
      data
    end

    # 获取用户配置列表
    # 根据用户ID、配置项代码和标签获取用户配置列表
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :user_id 用户ID
    # @option opts [String] :code 配置项代码
    # @option opts [String] :tag 配置项标签
    # @return [Array<(UserSettingListApiResponse, Integer, Hash)>] UserSettingListApiResponse data, response status code and response headers
    def user_settings_with_http_info(app_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserSettingApi.user_settings ...'
      end
      # verify the required parameter 'app_key' is set
      if @api_client.config.client_side_validation && app_key.nil?
        fail ArgumentError, "Missing the required parameter 'app_key' when calling UserSettingApi.user_settings"
      end
      # resource path
      local_var_path = '/UserSetting/{appKey}'.sub('{' + 'appKey' + '}', CGI.escape(app_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'code'] = opts[:'code'] if !opts[:'code'].nil?
      query_params[:'tag'] = opts[:'tag'] if !opts[:'tag'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserSettingListApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"UserSettingApi.user_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserSettingApi#user_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
