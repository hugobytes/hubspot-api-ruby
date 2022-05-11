require 'spec_helper'

describe 'Hubspot::Discovery::Cms::UrlRedirects::RedirectsApi' do
  subject(:redirects_api) { Hubspot::Client.new(api_key: 'test').cms.url_redirects.redirects_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:update) }
end
