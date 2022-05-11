require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Objects::BasicApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').crm.objects.basic_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:update) }
end
