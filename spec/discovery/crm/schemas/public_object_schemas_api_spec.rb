require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Schemas::PublicObjectSchemasApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').crm.schemas.public_object_schemas_api }
  
  it { is_expected.to respond_to(:purge) }
end
