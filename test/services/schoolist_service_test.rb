require 'test_helper'

class SchoolistServiceTest < ActiveSupport::TestCase
  test "test can create new instance of service" do
    assert_equal SchoolistService.service.class, Faraday::Connection
  end

  test "test can hit index of schoolist" do
    VCR.use_cassette("schoolist_index") do
      response = SchoolistService.schools
      parsed_response = JSON.parse(response.body)
    end
  end
end
