# frozen_string_literal: true
VCR.configure do |c|
  c.cassette_library_dir = Rails.root.join('spec', 'cassettes')
  c.hook_into :webmock
  c.configure_rspec_metadata!
  c.ignore_localhost = true
  c.ignore_hosts 'codeclimate.com' # , 'api.stripe.com'
end

RSpec.configure do |c|
  c.before(:each, use_recorded_time: true) do
    recorded_time = VCR.current_cassette&.originally_recorded_at
    travel_to recorded_time if recorded_time
  end

  c.after(:each, use_recorded_time: true) do
    travel_back
  end
end
