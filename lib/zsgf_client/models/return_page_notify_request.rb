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
  # 支付宝返回页面通知请求
  class ReturnPageNotifyRequest
    # 应用ID
    attr_accessor :app_id

    # 授权应用ID
    attr_accessor :auth_app_id

    # 字符集
    attr_accessor :charset

    # 接口名称
    attr_accessor :method

    # 商户订单号
    attr_accessor :out_trade_no

    # 卖家支付宝用户号
    attr_accessor :seller_id

    # 签名
    attr_accessor :sign

    # 签名类型
    attr_accessor :sign_type

    # 时间戳
    attr_accessor :timestamp

    # 订单总金额
    attr_accessor :total_amount

    # 支付宝交易号
    attr_accessor :trade_no

    # 接口版本
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'app_id' => :'app_id',
        :'auth_app_id' => :'auth_app_id',
        :'charset' => :'charset',
        :'method' => :'method',
        :'out_trade_no' => :'out_trade_no',
        :'seller_id' => :'seller_id',
        :'sign' => :'sign',
        :'sign_type' => :'sign_type',
        :'timestamp' => :'timestamp',
        :'total_amount' => :'total_amount',
        :'trade_no' => :'trade_no',
        :'version' => :'version'
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
        :'app_id' => :'String',
        :'auth_app_id' => :'String',
        :'charset' => :'String',
        :'method' => :'String',
        :'out_trade_no' => :'String',
        :'seller_id' => :'String',
        :'sign' => :'String',
        :'sign_type' => :'String',
        :'timestamp' => :'String',
        :'total_amount' => :'String',
        :'trade_no' => :'String',
        :'version' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'app_id',
        :'auth_app_id',
        :'charset',
        :'method',
        :'out_trade_no',
        :'seller_id',
        :'sign',
        :'sign_type',
        :'timestamp',
        :'total_amount',
        :'trade_no',
        :'version'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ZSGFClient::ReturnPageNotifyRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ZSGFClient::ReturnPageNotifyRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'app_id')
        self.app_id = attributes[:'app_id']
      end

      if attributes.key?(:'auth_app_id')
        self.auth_app_id = attributes[:'auth_app_id']
      end

      if attributes.key?(:'charset')
        self.charset = attributes[:'charset']
      end

      if attributes.key?(:'method')
        self.method = attributes[:'method']
      end

      if attributes.key?(:'out_trade_no')
        self.out_trade_no = attributes[:'out_trade_no']
      end

      if attributes.key?(:'seller_id')
        self.seller_id = attributes[:'seller_id']
      end

      if attributes.key?(:'sign')
        self.sign = attributes[:'sign']
      end

      if attributes.key?(:'sign_type')
        self.sign_type = attributes[:'sign_type']
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'total_amount')
        self.total_amount = attributes[:'total_amount']
      end

      if attributes.key?(:'trade_no')
        self.trade_no = attributes[:'trade_no']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          app_id == o.app_id &&
          auth_app_id == o.auth_app_id &&
          charset == o.charset &&
          method == o.method &&
          out_trade_no == o.out_trade_no &&
          seller_id == o.seller_id &&
          sign == o.sign &&
          sign_type == o.sign_type &&
          timestamp == o.timestamp &&
          total_amount == o.total_amount &&
          trade_no == o.trade_no &&
          version == o.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [app_id, auth_app_id, charset, method, out_trade_no, seller_id, sign, sign_type, timestamp, total_amount, trade_no, version].hash
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
