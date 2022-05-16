require 'spec_helper'

describe 'Hubspot::Discovery::Crm::LineItems::SearchApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').crm.line_items.search_api }
  
  it { is_expected.to respond_to(:do_search) }
end
