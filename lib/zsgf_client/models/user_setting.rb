=begin
#全部  API 文档

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.13.0-SNAPSHOT

=end

require 'date'
require 'time'

module ZSGFClient
  # 用户配置实体，用于存储用户的个性化设置。
  class UserSetting
    # 用户的唯一标识符。
    attr_accessor :id

    # 关联的用户ID，表示该配置属于哪个用户。
    attr_accessor :user_id

    # 提供商的唯一代码，用于标识服务提供者。
    attr_accessor :provider_code

    # 组的唯一代码，用于分类设置项。
    attr_accessor :group_code

    # 设置项的唯一代码或键名，用于标识具体的配置项。
    attr_accessor :code

    # 设置项的具体值或选项。
    attr_accessor :value

    # 用于对设置项进行分类或标记的标签。
    attr_accessor :tags

    # 设置项的详细描述，说明其作用或用途。
    attr_accessor :description

    # 指示该设置项是否在前端界面中可用。
    attr_accessor :frontend_usable

    # 设置项的创建时间。
    attr_accessor :create_date

    # 设置项的最后更新时间。
    attr_accessor :last_update

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'user_id' => :'userID',
        :'provider_code' => :'providerCode',
        :'group_code' => :'groupCode',
        :'code' => :'code',
        :'value' => :'value',
        :'tags' => :'tags',
        :'description' => :'description',
        :'frontend_usable' => :'frontendUsable',
        :'create_date' => :'createDate',
        :'last_update' => :'lastUpdate'
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'user_id' => :'Integer',
        :'provider_code' => :'String',
        :'group_code' => :'String',
        :'code' => :'String',
        :'value' => :'String',
        :'tags' => :'String',
        :'description' => :'String',
        :'frontend_usable' => :'Boolean',
        :'create_date' => :'Time',
        :'last_update' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'provider_code',
        :'group_code',
        :'tags',
        :'description',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ZSGFClient::UserSetting` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ZSGFClient::UserSetting`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      else
        self.user_id = nil
      end

      if attributes.key?(:'provider_code')
        self.provider_code = attributes[:'provider_code']
      end

      if attributes.key?(:'group_code')
        self.group_code = attributes[:'group_code']
      end

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      else
        self.code = nil
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      else
        self.value = nil
      end

      if attributes.key?(:'tags')
        self.tags = attributes[:'tags']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'frontend_usable')
        self.frontend_usable = attributes[:'frontend_usable']
      end

      if attributes.key?(:'create_date')
        self.create_date = attributes[:'create_date']
      end

      if attributes.key?(:'last_update')
        self.last_update = attributes[:'last_update']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @user_id.nil?
        invalid_properties.push('invalid value for "user_id", user_id cannot be nil.')
      end

      if !@provider_code.nil? && @provider_code.to_s.length > 50
        invalid_properties.push('invalid value for "provider_code", the character length must be smaller than or equal to 50.')
      end

      if !@group_code.nil? && @group_code.to_s.length > 50
        invalid_properties.push('invalid value for "group_code", the character length must be smaller than or equal to 50.')
      end

      if @code.nil?
        invalid_properties.push('invalid value for "code", code cannot be nil.')
      end

      if @code.to_s.length > 100
        invalid_properties.push('invalid value for "code", the character length must be smaller than or equal to 100.')
      end

      if @code.to_s.length < 1
        invalid_properties.push('invalid value for "code", the character length must be great than or equal to 1.')
      end

      if @value.nil?
        invalid_properties.push('invalid value for "value", value cannot be nil.')
      end

      if @value.to_s.length < 1
        invalid_properties.push('invalid value for "value", the character length must be great than or equal to 1.')
      end

      if !@tags.nil? && @tags.to_s.length > 100
        invalid_properties.push('invalid value for "tags", the character length must be smaller than or equal to 100.')
      end

      if !@description.nil? && @description.to_s.length > 255
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 255.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @user_id.nil?
      return false if !@provider_code.nil? && @provider_code.to_s.length > 50
      return false if !@group_code.nil? && @group_code.to_s.length > 50
      return false if @code.nil?
      return false if @code.to_s.length > 100
      return false if @code.to_s.length < 1
      return false if @value.nil?
      return false if @value.to_s.length < 1
      return false if !@tags.nil? && @tags.to_s.length > 100
      return false if !@description.nil? && @description.to_s.length > 255
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] user_id Value to be assigned
    def user_id=(user_id)
      if user_id.nil?
        fail ArgumentError, 'user_id cannot be nil'
      end

      @user_id = user_id
    end

    # Custom attribute writer method with validation
    # @param [Object] provider_code Value to be assigned
    def provider_code=(provider_code)
      if !provider_code.nil? && provider_code.to_s.length > 50
        fail ArgumentError, 'invalid value for "provider_code", the character length must be smaller than or equal to 50.'
      end

      @provider_code = provider_code
    end

    # Custom attribute writer method with validation
    # @param [Object] group_code Value to be assigned
    def group_code=(group_code)
      if !group_code.nil? && group_code.to_s.length > 50
        fail ArgumentError, 'invalid value for "group_code", the character length must be smaller than or equal to 50.'
      end

      @group_code = group_code
    end

    # Custom attribute writer method with validation
    # @param [Object] code Value to be assigned
    def code=(code)
      if code.nil?
        fail ArgumentError, 'code cannot be nil'
      end

      if code.to_s.length > 100
        fail ArgumentError, 'invalid value for "code", the character length must be smaller than or equal to 100.'
      end

      if code.to_s.length < 1
        fail ArgumentError, 'invalid value for "code", the character length must be great than or equal to 1.'
      end

      @code = code
    end

    # Custom attribute writer method with validation
    # @param [Object] value Value to be assigned
    def value=(value)
      if value.nil?
        fail ArgumentError, 'value cannot be nil'
      end

      if value.to_s.length < 1
        fail ArgumentError, 'invalid value for "value", the character length must be great than or equal to 1.'
      end

      @value = value
    end

    # Custom attribute writer method with validation
    # @param [Object] tags Value to be assigned
    def tags=(tags)
      if !tags.nil? && tags.to_s.length > 100
        fail ArgumentError, 'invalid value for "tags", the character length must be smaller than or equal to 100.'
      end

      @tags = tags
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 255
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 255.'
      end

      @description = description
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          user_id == o.user_id &&
          provider_code == o.provider_code &&
          group_code == o.group_code &&
          code == o.code &&
          value == o.value &&
          tags == o.tags &&
          description == o.description &&
          frontend_usable == o.frontend_usable &&
          create_date == o.create_date &&
          last_update == o.last_update
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, user_id, provider_code, group_code, code, value, tags, description, frontend_usable, create_date, last_update].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = ZSGFClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
