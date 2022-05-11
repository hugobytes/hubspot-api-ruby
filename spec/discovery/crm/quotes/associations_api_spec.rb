require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Quotes::AssociationsApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').crm.quotes.associations_api }
  
  it { is_expected.to respond_to(:get_all) }
end
