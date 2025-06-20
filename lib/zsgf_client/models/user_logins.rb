=begin
#用户全部 API 文档

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.13.0-SNAPSHOT

=end

require 'date'
require 'time'

module ZSGFClient
  # 用户外部账号
  class UserLogins
    # 唯一标识符
    attr_accessor :id

    # 关联的用户ID
    attr_accessor :user_id

    # 第三方平台名称
    attr_accessor :platform_name

    # 第三方平台
    attr_accessor :platform

    # 第三方平台唯一标识
    attr_accessor :union_id

    # 用户头像
    attr_accessor :avatar

    # 扩展数据
    attr_accessor :data

    # 启用
    attr_accessor :enable

    # 创建时间
    attr_accessor :create_date

    # 最后更新时间
    attr_accessor :last_update

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'user_id' => :'userID',
        :'platform_name' => :'platformName',
        :'platform' => :'platform',
        :'union_id' => :'unionID',
        :'avatar' => :'avatar',
        :'data' => :'data',
        :'enable' => :'enable',
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
        :'platform_name' => :'String',
        :'platform' => :'String',
        :'union_id' => :'String',
        :'avatar' => :'String',
        :'data' => :'String',
        :'enable' => :'Boolean',
        :'create_date' => :'Time',
        :'last_update' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'platform_name',
        :'platform',
        :'union_id',
        :'avatar',
        :'data',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ZSGFClient::UserLogins` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ZSGFClient::UserLogins`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'platform_name')
        self.platform_name = attributes[:'platform_name']
      end

      if attributes.key?(:'platform')
        self.platform = attributes[:'platform']
      end

      if attributes.key?(:'union_id')
        self.union_id = attributes[:'union_id']
      end

      if attributes.key?(:'avatar')
        self.avatar = attributes[:'avatar']
      end

      if attributes.key?(:'data')
        self.data = attributes[:'data']
      end

      if attributes.key?(:'enable')
        self.enable = attributes[:'enable']
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
      if !@platform_name.nil? && @platform_name.to_s.length > 50
        invalid_properties.push('invalid value for "platform_name", the character length must be smaller than or equal to 50.')
      end

      if !@platform.nil? && @platform.to_s.length > 50
        invalid_properties.push('invalid value for "platform", the character length must be smaller than or equal to 50.')
      end

      if !@union_id.nil? && @union_id.to_s.length > 100
        invalid_properties.push('invalid value for "union_id", the character length must be smaller than or equal to 100.')
      end

      if !@avatar.nil? && @avatar.to_s.length > 255
        invalid_properties.push('invalid value for "avatar", the character length must be smaller than or equal to 255.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@platform_name.nil? && @platform_name.to_s.length > 50
      return false if !@platform.nil? && @platform.to_s.length > 50
      return false if !@union_id.nil? && @union_id.to_s.length > 100
      return false if !@avatar.nil? && @avatar.to_s.length > 255
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] platform_name Value to be assigned
    def platform_name=(platform_name)
      if !platform_name.nil? && platform_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "platform_name", the character length must be smaller than or equal to 50.'
      end

      @platform_name = platform_name
    end

    # Custom attribute writer method with validation
    # @param [Object] platform Value to be assigned
    def platform=(platform)
      if !platform.nil? && platform.to_s.length > 50
        fail ArgumentError, 'invalid value for "platform", the character length must be smaller than or equal to 50.'
      end

      @platform = platform
    end

    # Custom attribute writer method with validation
    # @param [Object] union_id Value to be assigned
    def union_id=(union_id)
      if !union_id.nil? && union_id.to_s.length > 100
        fail ArgumentError, 'invalid value for "union_id", the character length must be smaller than or equal to 100.'
      end

      @union_id = union_id
    end

    # Custom attribute writer method with validation
    # @param [Object] avatar Value to be assigned
    def avatar=(avatar)
      if !avatar.nil? && avatar.to_s.length > 255
        fail ArgumentError, 'invalid value for "avatar", the character length must be smaller than or equal to 255.'
      end

      @avatar = avatar
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          user_id == o.user_id &&
          platform_name == o.platform_name &&
          platform == o.platform &&
          union_id == o.union_id &&
          avatar == o.avatar &&
          data == o.data &&
          enable == o.enable &&
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
      [id, user_id, platform_name, platform, union_id, avatar, data, enable, create_date, last_update].hash
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
