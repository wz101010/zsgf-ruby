=begin
#全部  API 文档

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.13.0-SNAPSHOT

=end

require 'cgi'

module ZSGFClient
  class ProjectApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # 项目详情
    # 根据项目ID获取项目详情
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [ProjectApiResponse]
    def project(id, opts = {})
      data, _status_code, _headers = project_with_http_info(id, opts)
      data
    end

    # 项目详情
    # 根据项目ID获取项目详情
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProjectApiResponse, Integer, Hash)>] ProjectApiResponse data, response status code and response headers
    def project_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectApi.project ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectApi.project"
      end
      # resource path
      local_var_path = '/Project/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'ProjectApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"ProjectApi.project",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectApi#project\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 删除项目
    # 根据项目ID删除项目
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [BooleanApiResponse]
    def project_delete(id, opts = {})
      data, _status_code, _headers = project_delete_with_http_info(id, opts)
      data
    end

    # 删除项目
    # 根据项目ID删除项目
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanApiResponse, Integer, Hash)>] BooleanApiResponse data, response status code and response headers
    def project_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectApi.project_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectApi.project_delete"
      end
      # resource path
      local_var_path = '/Project/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"ProjectApi.project_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectApi#project_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 创建项目
    # 创建一个新项目
    # @param [Hash] opts the optional parameters
    # @option opts [Project] :project 
    # @return [PostResultApiResponse]
    def project_post(opts = {})
      data, _status_code, _headers = project_post_with_http_info(opts)
      data
    end

    # 创建项目
    # 创建一个新项目
    # @param [Hash] opts the optional parameters
    # @option opts [Project] :project 
    # @return [Array<(PostResultApiResponse, Integer, Hash)>] PostResultApiResponse data, response status code and response headers
    def project_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectApi.project_post ...'
      end
      # resource path
      local_var_path = '/Project'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'project'])

      # return_type
      return_type = opts[:debug_return_type] || 'PostResultApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"ProjectApi.project_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectApi#project_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 更新项目
    # 根据项目ID更新项目
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Project] :project 
    # @return [BooleanApiResponse]
    def project_put(id, opts = {})
      data, _status_code, _headers = project_put_with_http_info(id, opts)
      data
    end

    # 更新项目
    # 根据项目ID更新项目
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Project] :project 
    # @return [Array<(BooleanApiResponse, Integer, Hash)>] BooleanApiResponse data, response status code and response headers
    def project_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectApi.project_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectApi.project_put"
      end
      # resource path
      local_var_path = '/Project/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'project'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"ProjectApi.project_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectApi#project_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 项目列表
    # 获取项目列表，支持分页
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip 
    # @option opts [Integer] :take 
    # @return [ProjectListResultApiResponse]
    def projects(opts = {})
      data, _status_code, _headers = projects_with_http_info(opts)
      data
    end

    # 项目列表
    # 获取项目列表，支持分页
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip 
    # @option opts [Integer] :take 
    # @return [Array<(ProjectListResultApiResponse, Integer, Hash)>] ProjectListResultApiResponse data, response status code and response headers
    def projects_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectApi.projects ...'
      end
      # resource path
      local_var_path = '/Project'

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'ProjectListResultApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"ProjectApi.projects",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectApi#projects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
