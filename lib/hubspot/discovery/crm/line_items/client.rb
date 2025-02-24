require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module LineItems
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              associations
              basic
              batch
              search
              public_object
            ].freeze
          end
        end
      end
    end
  end
end
