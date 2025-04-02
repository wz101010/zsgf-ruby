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
  class SignUpRequest
    # 登录账号，4~18位
    attr_accessor :user_name

    # 登录密码，6~32位
    attr_accessor :pwd

    # 昵称
    attr_accessor :nick_name

    # 头像
    attr_accessor :avatar

    # 自定义数据
    attr_accessor :data

    # 邮箱
    attr_accessor :email

    # 邮箱验证码（只有启用的邮箱验证码功能时，才需要传入）
    attr_accessor :email_code

    # 手机号
    attr_accessor :phone

    # 手机验证码（只有启用的手机验证码功能时，才需要传入）
    attr_accessor :phone_code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'user_name' => :'userName',
        :'pwd' => :'pwd',
        :'nick_name' => :'nickName',
        :'avatar' => :'avatar',
        :'data' => :'data',
        :'email' => :'email',
        :'email_code' => :'emailCode',
        :'phone' => :'phone',
        :'phone_code' => :'phoneCode'
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
        :'user_name' => :'String',
        :'pwd' => :'String',
        :'nick_name' => :'String',
        :'avatar' => :'String',
        :'data' => :'String',
        :'email' => :'String',
        :'email_code' => :'String',
        :'phone' => :'String',
        :'phone_code' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'nick_name',
        :'avatar',
        :'data',
        :'email',
        :'email_code',
        :'phone',
        :'phone_code'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ZSGFClient::SignUpRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ZSGFClient::SignUpRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'user_name')
        self.user_name = attributes[:'user_name']
      else
        self.user_name = nil
      end

      if attributes.key?(:'pwd')
        self.pwd = attributes[:'pwd']
      else
        self.pwd = nil
      end

      if attributes.key?(:'nick_name')
        self.nick_name = attributes[:'nick_name']
      end

      if attributes.key?(:'avatar')
        self.avatar = attributes[:'avatar']
      end

      if attributes.key?(:'data')
        self.data = attributes[:'data']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'email_code')
        self.email_code = attributes[:'email_code']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'phone_code')
        self.phone_code = attributes[:'phone_code']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @user_name.nil?
        invalid_properties.push('invalid value for "user_name", user_name cannot be nil.')
      end

      if @user_name.to_s.length < 1
        invalid_properties.push('invalid value for "user_name", the character length must be great than or equal to 1.')
      end

      if @pwd.nil?
        invalid_properties.push('invalid value for "pwd", pwd cannot be nil.')
      end

      if @pwd.to_s.length > 32
        invalid_properties.push('invalid value for "pwd", the character length must be smaller than or equal to 32.')
      end

      if @pwd.to_s.length < 6
        invalid_properties.push('invalid value for "pwd", the character length must be great than or equal to 6.')
      end

      if !@nick_name.nil? && @nick_name.to_s.length > 99
        invalid_properties.push('invalid value for "nick_name", the character length must be smaller than or equal to 99.')
      end

      if !@avatar.nil? && @avatar.to_s.length > 999
        invalid_properties.push('invalid value for "avatar", the character length must be smaller than or equal to 999.')
      end

      if !@data.nil? && @data.to_s.length > 9999
        invalid_properties.push('invalid value for "data", the character length must be smaller than or equal to 9999.')
      end

      pattern = Regexp.new(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,5}$/)
      if !@email.nil? && @email !~ pattern
        invalid_properties.push("invalid value for \"email\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/\d{4,8}$/)
      if !@email_code.nil? && @email_code !~ pattern
        invalid_properties.push("invalid value for \"email_code\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^(\d{11})?$/)
      if !@phone.nil? && @phone !~ pattern
        invalid_properties.push("invalid value for \"phone\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/\d{4,8}$/)
      if !@phone_code.nil? && @phone_code !~ pattern
        invalid_properties.push("invalid value for \"phone_code\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @user_name.nil?
      return false if @user_name.to_s.length < 1
      return false if @pwd.nil?
      return false if @pwd.to_s.length > 32
      return false if @pwd.to_s.length < 6
      return false if !@nick_name.nil? && @nick_name.to_s.length > 99
      return false if !@avatar.nil? && @avatar.to_s.length > 999
      return false if !@data.nil? && @data.to_s.length > 9999
      return false if !@email.nil? && @email !~ Regexp.new(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,5}$/)
      return false if !@email_code.nil? && @email_code !~ Regexp.new(/\d{4,8}$/)
      return false if !@phone.nil? && @phone !~ Regexp.new(/^(\d{11})?$/)
      return false if !@phone_code.nil? && @phone_code !~ Regexp.new(/\d{4,8}$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] user_name Value to be assigned
    def user_name=(user_name)
      if user_name.nil?
        fail ArgumentError, 'user_name cannot be nil'
      end

      if user_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "user_name", the character length must be great than or equal to 1.'
      end

      @user_name = user_name
    end

    # Custom attribute writer method with validation
    # @param [Object] pwd Value to be assigned
    def pwd=(pwd)
      if pwd.nil?
        fail ArgumentError, 'pwd cannot be nil'
      end

      if pwd.to_s.length > 32
        fail ArgumentError, 'invalid value for "pwd", the character length must be smaller than or equal to 32.'
      end

      if pwd.to_s.length < 6
        fail ArgumentError, 'invalid value for "pwd", the character length must be great than or equal to 6.'
      end

      @pwd = pwd
    end

    # Custom attribute writer method with validation
    # @param [Object] nick_name Value to be assigned
    def nick_name=(nick_name)
      if !nick_name.nil? && nick_name.to_s.length > 99
        fail ArgumentError, 'invalid value for "nick_name", the character length must be smaller than or equal to 99.'
      end

      @nick_name = nick_name
    end

    # Custom attribute writer method with validation
    # @param [Object] avatar Value to be assigned
    def avatar=(avatar)
      if !avatar.nil? && avatar.to_s.length > 999
        fail ArgumentError, 'invalid value for "avatar", the character length must be smaller than or equal to 999.'
      end

      @avatar = avatar
    end

    # Custom attribute writer method with validation
    # @param [Object] data Value to be assigned
    def data=(data)
      if !data.nil? && data.to_s.length > 9999
        fail ArgumentError, 'invalid value for "data", the character length must be smaller than or equal to 9999.'
      end

      @data = data
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      pattern = Regexp.new(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,5}$/)
      if !email.nil? && email !~ pattern
        fail ArgumentError, "invalid value for \"email\", must conform to the pattern #{pattern}."
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] email_code Value to be assigned
    def email_code=(email_code)
      pattern = Regexp.new(/\d{4,8}$/)
      if !email_code.nil? && email_code !~ pattern
        fail ArgumentError, "invalid value for \"email_code\", must conform to the pattern #{pattern}."
      end

      @email_code = email_code
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone)
      pattern = Regexp.new(/^(\d{11})?$/)
      if !phone.nil? && phone !~ pattern
        fail ArgumentError, "invalid value for \"phone\", must conform to the pattern #{pattern}."
      end

      @phone = phone
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_code Value to be assigned
    def phone_code=(phone_code)
      pattern = Regexp.new(/\d{4,8}$/)
      if !phone_code.nil? && phone_code !~ pattern
        fail ArgumentError, "invalid value for \"phone_code\", must conform to the pattern #{pattern}."
      end

      @phone_code = phone_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          user_name == o.user_name &&
          pwd == o.pwd &&
          nick_name == o.nick_name &&
          avatar == o.avatar &&
          data == o.data &&
          email == o.email &&
          email_code == o.email_code &&
          phone == o.phone &&
          phone_code == o.phone_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [user_name, pwd, nick_name, avatar, data, email, email_code, phone, phone_code].hash
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
