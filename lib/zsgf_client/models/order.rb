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
  # 订单实体，用于记录用户的订单信息。
  class Order
    # 订单的唯一标识符。
    attr_accessor :id

    # 创建订单的用户ID。
    attr_accessor :user_id

    # 订单的支付类型，例如 '信用卡', '支付宝', '微信支付' 等。
    attr_accessor :pay_type

    # 订单的总金额。
    attr_accessor :amount

    # 订单的唯一编号，通常由系统生成。
    attr_accessor :order_no

    # 与订单关联的交易编号，通常由支付平台提供。
    attr_accessor :trade_no

    # 订单的当前状态，例如 '待支付', '已完成', '已取消' 等。
    attr_accessor :status

    # 订单中商品的类型分类。
    attr_accessor :product_type

    # 订单中商品的唯一标识符。
    attr_accessor :product_id

    # 订单中商品的名称。
    attr_accessor :product_name

    # 指示订单是否允许进行退款操作。
    attr_accessor :allow_refund

    # 订单允许进行退款操作的截止时间。
    attr_accessor :allow_refund_until

    # 用于分类或标记订单的标签。
    attr_accessor :tags

    # 订单的额外备注信息。
    attr_accessor :remark

    # 订单的详细描述信息。
    attr_accessor :description

    # 订单完成支付的时间。
    attr_accessor :order_pay_time

    # 订单的过期时间，超过该时间订单将自动取消。
    attr_accessor :expire_time

    # 订单的创建时间，默认为当前时间。
    attr_accessor :create_date

    # 订单的最后更新时间，默认为当前时间。
    attr_accessor :last_update

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'user_id' => :'userID',
        :'pay_type' => :'payType',
        :'amount' => :'amount',
        :'order_no' => :'orderNo',
        :'trade_no' => :'tradeNo',
        :'status' => :'status',
        :'product_type' => :'productType',
        :'product_id' => :'productID',
        :'product_name' => :'productName',
        :'allow_refund' => :'allowRefund',
        :'allow_refund_until' => :'allowRefundUntil',
        :'tags' => :'tags',
        :'remark' => :'remark',
        :'description' => :'description',
        :'order_pay_time' => :'orderPayTime',
        :'expire_time' => :'expireTime',
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
        :'pay_type' => :'String',
        :'amount' => :'Float',
        :'order_no' => :'String',
        :'trade_no' => :'String',
        :'status' => :'String',
        :'product_type' => :'String',
        :'product_id' => :'String',
        :'product_name' => :'String',
        :'allow_refund' => :'Boolean',
        :'allow_refund_until' => :'Time',
        :'tags' => :'String',
        :'remark' => :'String',
        :'description' => :'String',
        :'order_pay_time' => :'Time',
        :'expire_time' => :'Time',
        :'create_date' => :'Time',
        :'last_update' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'pay_type',
        :'order_no',
        :'trade_no',
        :'status',
        :'product_type',
        :'product_id',
        :'product_name',
        :'tags',
        :'remark',
        :'description',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ZSGFClient::Order` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ZSGFClient::Order`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'pay_type')
        self.pay_type = attributes[:'pay_type']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'order_no')
        self.order_no = attributes[:'order_no']
      end

      if attributes.key?(:'trade_no')
        self.trade_no = attributes[:'trade_no']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'product_type')
        self.product_type = attributes[:'product_type']
      end

      if attributes.key?(:'product_id')
        self.product_id = attributes[:'product_id']
      end

      if attributes.key?(:'product_name')
        self.product_name = attributes[:'product_name']
      end

      if attributes.key?(:'allow_refund')
        self.allow_refund = attributes[:'allow_refund']
      end

      if attributes.key?(:'allow_refund_until')
        self.allow_refund_until = attributes[:'allow_refund_until']
      end

      if attributes.key?(:'tags')
        self.tags = attributes[:'tags']
      end

      if attributes.key?(:'remark')
        self.remark = attributes[:'remark']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'order_pay_time')
        self.order_pay_time = attributes[:'order_pay_time']
      end

      if attributes.key?(:'expire_time')
        self.expire_time = attributes[:'expire_time']
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
      if !@pay_type.nil? && @pay_type.to_s.length > 50
        invalid_properties.push('invalid value for "pay_type", the character length must be smaller than or equal to 50.')
      end

      if !@order_no.nil? && @order_no.to_s.length > 50
        invalid_properties.push('invalid value for "order_no", the character length must be smaller than or equal to 50.')
      end

      if !@trade_no.nil? && @trade_no.to_s.length > 50
        invalid_properties.push('invalid value for "trade_no", the character length must be smaller than or equal to 50.')
      end

      if !@status.nil? && @status.to_s.length > 50
        invalid_properties.push('invalid value for "status", the character length must be smaller than or equal to 50.')
      end

      if !@product_type.nil? && @product_type.to_s.length > 50
        invalid_properties.push('invalid value for "product_type", the character length must be smaller than or equal to 50.')
      end

      if !@product_id.nil? && @product_id.to_s.length > 50
        invalid_properties.push('invalid value for "product_id", the character length must be smaller than or equal to 50.')
      end

      if !@product_name.nil? && @product_name.to_s.length > 255
        invalid_properties.push('invalid value for "product_name", the character length must be smaller than or equal to 255.')
      end

      if !@tags.nil? && @tags.to_s.length > 255
        invalid_properties.push('invalid value for "tags", the character length must be smaller than or equal to 255.')
      end

      if !@remark.nil? && @remark.to_s.length > 255
        invalid_properties.push('invalid value for "remark", the character length must be smaller than or equal to 255.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@pay_type.nil? && @pay_type.to_s.length > 50
      return false if !@order_no.nil? && @order_no.to_s.length > 50
      return false if !@trade_no.nil? && @trade_no.to_s.length > 50
      return false if !@status.nil? && @status.to_s.length > 50
      return false if !@product_type.nil? && @product_type.to_s.length > 50
      return false if !@product_id.nil? && @product_id.to_s.length > 50
      return false if !@product_name.nil? && @product_name.to_s.length > 255
      return false if !@tags.nil? && @tags.to_s.length > 255
      return false if !@remark.nil? && @remark.to_s.length > 255
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] pay_type Value to be assigned
    def pay_type=(pay_type)
      if !pay_type.nil? && pay_type.to_s.length > 50
        fail ArgumentError, 'invalid value for "pay_type", the character length must be smaller than or equal to 50.'
      end

      @pay_type = pay_type
    end

    # Custom attribute writer method with validation
    # @param [Object] order_no Value to be assigned
    def order_no=(order_no)
      if !order_no.nil? && order_no.to_s.length > 50
        fail ArgumentError, 'invalid value for "order_no", the character length must be smaller than or equal to 50.'
      end

      @order_no = order_no
    end

    # Custom attribute writer method with validation
    # @param [Object] trade_no Value to be assigned
    def trade_no=(trade_no)
      if !trade_no.nil? && trade_no.to_s.length > 50
        fail ArgumentError, 'invalid value for "trade_no", the character length must be smaller than or equal to 50.'
      end

      @trade_no = trade_no
    end

    # Custom attribute writer method with validation
    # @param [Object] status Value to be assigned
    def status=(status)
      if !status.nil? && status.to_s.length > 50
        fail ArgumentError, 'invalid value for "status", the character length must be smaller than or equal to 50.'
      end

      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] product_type Value to be assigned
    def product_type=(product_type)
      if !product_type.nil? && product_type.to_s.length > 50
        fail ArgumentError, 'invalid value for "product_type", the character length must be smaller than or equal to 50.'
      end

      @product_type = product_type
    end

    # Custom attribute writer method with validation
    # @param [Object] product_id Value to be assigned
    def product_id=(product_id)
      if !product_id.nil? && product_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "product_id", the character length must be smaller than or equal to 50.'
      end

      @product_id = product_id
    end

    # Custom attribute writer method with validation
    # @param [Object] product_name Value to be assigned
    def product_name=(product_name)
      if !product_name.nil? && product_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "product_name", the character length must be smaller than or equal to 255.'
      end

      @product_name = product_name
    end

    # Custom attribute writer method with validation
    # @param [Object] tags Value to be assigned
    def tags=(tags)
      if !tags.nil? && tags.to_s.length > 255
        fail ArgumentError, 'invalid value for "tags", the character length must be smaller than or equal to 255.'
      end

      @tags = tags
    end

    # Custom attribute writer method with validation
    # @param [Object] remark Value to be assigned
    def remark=(remark)
      if !remark.nil? && remark.to_s.length > 255
        fail ArgumentError, 'invalid value for "remark", the character length must be smaller than or equal to 255.'
      end

      @remark = remark
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          user_id == o.user_id &&
          pay_type == o.pay_type &&
          amount == o.amount &&
          order_no == o.order_no &&
          trade_no == o.trade_no &&
          status == o.status &&
          product_type == o.product_type &&
          product_id == o.product_id &&
          product_name == o.product_name &&
          allow_refund == o.allow_refund &&
          allow_refund_until == o.allow_refund_until &&
          tags == o.tags &&
          remark == o.remark &&
          description == o.description &&
          order_pay_time == o.order_pay_time &&
          expire_time == o.expire_time &&
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
      [id, user_id, pay_type, amount, order_no, trade_no, status, product_type, product_id, product_name, allow_refund, allow_refund_until, tags, remark, description, order_pay_time, expire_time, create_date, last_update].hash
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
