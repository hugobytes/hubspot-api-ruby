=begin
#Accounting Extension

#These APIs allow you to interact with HubSpot's Accounting Extension. It allows you to: * Specify the URLs that HubSpot will use when making webhook requests to your external accounting system. * Respond to webhook calls made to your external accounting system by HubSpot 

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Crm
    module Extensions
      module Accounting
        # A request to import external accounting product properties in HubSpot
        class UpdatedProduct
          # The operation to be performed.
          attr_accessor :sync_action

          # The timestamp (ISO8601 format) when the product was updated in the external accounting system.
          attr_accessor :updated_at

          # The price of the product.
          attr_accessor :price

          # The ISO 4217 currency code that represents the currency of the product price.
          attr_accessor :currency_code

          # The ID of the product in the external accounting system.
          attr_accessor :id

          # A map of key-value product properties to be imported.
          attr_accessor :properties

          class EnumAttributeValidator
            attr_reader :datatype
            attr_reader :allowable_values

            def initialize(datatype, allowable_values)
              @allowable_values = allowable_values.map do |value|
                case datatype.to_s
                when /Integer/i
                  value.to_i
                when /Float/i
                  value.to_f
                else
                  value
                end
              end
            end

            def valid?(value)
              !value || allowable_values.include?(value)
            end
          end

          # Attribute mapping from ruby-style variable name to JSON key.
          def self.attribute_map
            {
              :'sync_action' => :'syncAction',
              :'updated_at' => :'updatedAt',
              :'price' => :'price',
              :'currency_code' => :'currencyCode',
              :'id' => :'id',
              :'properties' => :'properties'
            }
          end

          # Returns all the JSON keys this model knows about
          def self.acceptable_attributes
            attribute_map.values
          end

          # Attribute type mapping.
          def self.openapi_types
            {
              :'sync_action' => :'String',
              :'updated_at' => :'Time',
              :'price' => :'Float',
              :'currency_code' => :'String',
              :'id' => :'String',
              :'properties' => :'Hash<String, String>'
            }
          end

          # List of attributes with nullable: true
          def self.openapi_nullable
            Set.new([
            ])
          end

          # Initializes the object
          # @param [Hash] attributes Model attributes in the form of hash
          def initialize(attributes = {})
            if (!attributes.is_a?(Hash))
              fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Crm::Extensions::Accounting::UpdatedProduct` initialize method"
            end

            # check to see if the attribute exists and convert string to symbol for hash key
            attributes = attributes.each_with_object({}) { |(k, v), h|
              if (!self.class.attribute_map.key?(k.to_sym))
                fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Crm::Extensions::Accounting::UpdatedProduct`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
              end
              h[k.to_sym] = v
            }

            if attributes.key?(:'sync_action')
              self.sync_action = attributes[:'sync_action']
            end

            if attributes.key?(:'updated_at')
              self.updated_at = attributes[:'updated_at']
            end

            if attributes.key?(:'price')
              self.price = attributes[:'price']
            end

            if attributes.key?(:'currency_code')
              self.currency_code = attributes[:'currency_code']
            end

            if attributes.key?(:'id')
              self.id = attributes[:'id']
            end

            if attributes.key?(:'properties')
              if (value = attributes[:'properties']).is_a?(Hash)
                self.properties = value
              end
            end
          end

          # Show invalid properties with the reasons. Usually used together with valid?
          # @return Array for valid properties with the reasons
          def list_invalid_properties
            invalid_properties = Array.new
            if @sync_action.nil?
              invalid_properties.push('invalid value for "sync_action", sync_action cannot be nil.')
            end

            if @updated_at.nil?
              invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
            end

            if @price.nil?
              invalid_properties.push('invalid value for "price", price cannot be nil.')
            end

            if @id.nil?
              invalid_properties.push('invalid value for "id", id cannot be nil.')
            end

            if @properties.nil?
              invalid_properties.push('invalid value for "properties", properties cannot be nil.')
            end

            invalid_properties
          end

          # Check to see if the all the properties in the model are valid
          # @return true if the model is valid
          def valid?
            return false if @sync_action.nil?
            sync_action_validator = EnumAttributeValidator.new('String', ["CREATE", "UPDATE", "DELETE"])
            return false unless sync_action_validator.valid?(@sync_action)
            return false if @updated_at.nil?
            return false if @price.nil?
            return false if @id.nil?
            return false if @properties.nil?
            true
          end

          # Custom attribute writer method checking allowed values (enum).
          # @param [Object] sync_action Object to be assigned
          def sync_action=(sync_action)
            validator = EnumAttributeValidator.new('String', ["CREATE", "UPDATE", "DELETE"])
            unless validator.valid?(sync_action)
              fail ArgumentError, "invalid value for \"sync_action\", must be one of #{validator.allowable_values}."
            end
            @sync_action = sync_action
          end

          # Checks equality by comparing each attribute.
          # @param [Object] Object to be compared
          def ==(o)
            return true if self.equal?(o)
            self.class == o.class &&
                sync_action == o.sync_action &&
                updated_at == o.updated_at &&
                price == o.price &&
                currency_code == o.currency_code &&
                id == o.id &&
                properties == o.properties
          end

          # @see the `==` method
          # @param [Object] Object to be compared
          def eql?(o)
            self == o
          end

          # Calculates hash code according to all attributes.
          # @return [Integer] Hash code
          def hash
            [sync_action, updated_at, price, currency_code, id, properties].hash
          end

          # Builds the object from hash
          # @param [Hash] attributes Model attributes in the form of hash
          # @return [Object] Returns the model itself
          def self.build_from_hash(attributes)
            new.build_from_hash(attributes)
          end

          # Builds the object from hash
          # @param [Hash] attributes Model attributes in the form of hash
          # @return [Object] Returns the model itself
          def build_from_hash(attributes)
            return nil unless attributes.is_a?(Hash)
            attributes = attributes.transform_keys(&:to_sym)
            self.class.openapi_types.each_pair do |key, type|
              if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
                self.send("#{key}=", nil)
              elsif type =~ /\AArray<(.*)>/i
                # check to ensure the input is an array given that the attribute
                # is documented as an array but the input is not
                if attributes[self.class.attribute_map[key]].is_a?(Array)
                  self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
                end
              elsif !attributes[self.class.attribute_map[key]].nil?
                self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
              end
            end

            self
          end

          # Deserializes the data based on type
          # @param string type Data type
          # @param string value Value to be deserialized
          # @return [Object] Deserialized data
          def _deserialize(type, value)
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
              klass = Hubspot::Crm::Extensions::Accounting.const_get(type)
              klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
    end
  end
end
