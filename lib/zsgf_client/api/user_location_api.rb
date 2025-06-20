=begin
#用户全部 API 文档

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.13.0-SNAPSHOT

=end

require 'cgi'

module ZSGFClient
  class UserLocationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # 获取位置详情
    # 根据位置ID获取位置详情
    # @param id [Integer] 位置ID
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [GeoLocationModelApiResponse]
    def user_location(id, app_key, opts = {})
      data, _status_code, _headers = user_location_with_http_info(id, app_key, opts)
      data
    end

    # 获取位置详情
    # 根据位置ID获取位置详情
    # @param id [Integer] 位置ID
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GeoLocationModelApiResponse, Integer, Hash)>] GeoLocationModelApiResponse data, response status code and response headers
    def user_location_with_http_info(id, app_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserLocationApi.user_location ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UserLocationApi.user_location"
      end
      # verify the required parameter 'app_key' is set
      if @api_client.config.client_side_validation && app_key.nil?
        fail ArgumentError, "Missing the required parameter 'app_key' when calling UserLocationApi.user_location"
      end
      # resource path
      local_var_path = '/UserLocation/{appKey}/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'appKey' + '}', CGI.escape(app_key.to_s))

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
      return_type = opts[:debug_return_type] || 'GeoLocationModelApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"UserLocationApi.user_location",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserLocationApi#user_location\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 删除位置
    # 根据位置ID删除位置信息
    # @param id [Integer] 位置ID
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [BooleanApiResponse]
    def user_location_delete(id, app_key, opts = {})
      data, _status_code, _headers = user_location_delete_with_http_info(id, app_key, opts)
      data
    end

    # 删除位置
    # 根据位置ID删除位置信息
    # @param id [Integer] 位置ID
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanApiResponse, Integer, Hash)>] BooleanApiResponse data, response status code and response headers
    def user_location_delete_with_http_info(id, app_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserLocationApi.user_location_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UserLocationApi.user_location_delete"
      end
      # verify the required parameter 'app_key' is set
      if @api_client.config.client_side_validation && app_key.nil?
        fail ArgumentError, "Missing the required parameter 'app_key' when calling UserLocationApi.user_location_delete"
      end
      # resource path
      local_var_path = '/UserLocation/{appKey}/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'appKey' + '}', CGI.escape(app_key.to_s))

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
        :operation => :"UserLocationApi.user_location_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserLocationApi#user_location_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 添加位置
    # 添加新的位置信息
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [GeoLocationModel] :geo_location_model 位置信息
    # @return [UserLocationPostResultApiResponse]
    def user_location_post(app_key, opts = {})
      data, _status_code, _headers = user_location_post_with_http_info(app_key, opts)
      data
    end

    # 添加位置
    # 添加新的位置信息
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [GeoLocationModel] :geo_location_model 位置信息
    # @return [Array<(UserLocationPostResultApiResponse, Integer, Hash)>] UserLocationPostResultApiResponse data, response status code and response headers
    def user_location_post_with_http_info(app_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserLocationApi.user_location_post ...'
      end
      # verify the required parameter 'app_key' is set
      if @api_client.config.client_side_validation && app_key.nil?
        fail ArgumentError, "Missing the required parameter 'app_key' when calling UserLocationApi.user_location_post"
      end
      # resource path
      local_var_path = '/UserLocation/{appKey}'.sub('{' + 'appKey' + '}', CGI.escape(app_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'geo_location_model'])

      # return_type
      return_type = opts[:debug_return_type] || 'UserLocationPostResultApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"UserLocationApi.user_location_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserLocationApi#user_location_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 更新位置
    # 此方法用于更新指定位置ID的位置信息。如果位置不存在，则创建一个新的位置。
    # @param id [Integer] 位置ID
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [GeoLocationModel] :geo_location_model 位置信息
    # @return [BooleanApiResponse]
    def user_location_put(id, app_key, opts = {})
      data, _status_code, _headers = user_location_put_with_http_info(id, app_key, opts)
      data
    end

    # 更新位置
    # 此方法用于更新指定位置ID的位置信息。如果位置不存在，则创建一个新的位置。
    # @param id [Integer] 位置ID
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [GeoLocationModel] :geo_location_model 位置信息
    # @return [Array<(BooleanApiResponse, Integer, Hash)>] BooleanApiResponse data, response status code and response headers
    def user_location_put_with_http_info(id, app_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserLocationApi.user_location_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UserLocationApi.user_location_put"
      end
      # verify the required parameter 'app_key' is set
      if @api_client.config.client_side_validation && app_key.nil?
        fail ArgumentError, "Missing the required parameter 'app_key' when calling UserLocationApi.user_location_put"
      end
      # resource path
      local_var_path = '/UserLocation/{appKey}/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'appKey' + '}', CGI.escape(app_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'geo_location_model'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"UserLocationApi.user_location_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserLocationApi#user_location_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 获取位置列表
    # 根据条件获取位置列表
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag 标签
    # @option opts [String] :type 分类
    # @option opts [Float] :x 纬度
    # @option opts [Float] :y 经度
    # @option opts [Integer] :sphere 附近距离，单位：米
    # @option opts [Integer] :skip 跳过的记录数
    # @option opts [Integer] :take 获取的记录数 (default to 10)
    # @return [UserLocationsResultApiResponse]
    def user_locations(app_key, opts = {})
      data, _status_code, _headers = user_locations_with_http_info(app_key, opts)
      data
    end

    # 获取位置列表
    # 根据条件获取位置列表
    # @param app_key [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag 标签
    # @option opts [String] :type 分类
    # @option opts [Float] :x 纬度
    # @option opts [Float] :y 经度
    # @option opts [Integer] :sphere 附近距离，单位：米
    # @option opts [Integer] :skip 跳过的记录数
    # @option opts [Integer] :take 获取的记录数 (default to 10)
    # @return [Array<(UserLocationsResultApiResponse, Integer, Hash)>] UserLocationsResultApiResponse data, response status code and response headers
    def user_locations_with_http_info(app_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserLocationApi.user_locations ...'
      end
      # verify the required parameter 'app_key' is set
      if @api_client.config.client_side_validation && app_key.nil?
        fail ArgumentError, "Missing the required parameter 'app_key' when calling UserLocationApi.user_locations"
      end
      # resource path
      local_var_path = '/UserLocation/{appKey}'.sub('{' + 'appKey' + '}', CGI.escape(app_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'tag'] = opts[:'tag'] if !opts[:'tag'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'x'] = opts[:'x'] if !opts[:'x'].nil?
      query_params[:'y'] = opts[:'y'] if !opts[:'y'].nil?
      query_params[:'sphere'] = opts[:'sphere'] if !opts[:'sphere'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'take'] = opts[:'take'] if !opts[:'take'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserLocationsResultApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"UserLocationApi.user_locations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserLocationApi#user_locations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
