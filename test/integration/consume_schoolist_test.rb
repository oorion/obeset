require 'test_helper'
require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = "test/fixtures/vcr_cassettes"
  config.hook_into :webmock
end

class ConsumeSchoolistTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  test "it can retrieve list of all schools from schoolist api" do
      VCR.use_cassette("schoolslist_index_synopsis") do
        response = Net::HTTP.get_response(URI('http://localhost:3000/v1/schools'))
        visit '/schools'
        assert page.has_content?("16")
        assert page.has_content?("Overweight Percentage")
      end
  end
end
