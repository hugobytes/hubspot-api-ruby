require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Deals::AssociationsApi' do
  subject(:associations_api) { Hubspot::Client.new(api_key: 'test').crm.deals.associations_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_all) }
end
