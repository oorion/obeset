require 'test_helper'

class SchoolistServiceTest < ActiveSupport::TestCase
  test "test can create new instance of service" do
    assert_equal SchoolistService.new.service.class, Faraday::Connection
  end

  test "test can hit index of schoolist" do
    VCR.use_cassette("schoolist_index") do
      response = SchoolistService.new.schools
      assert_equal response.first["overweight_percentage"], "16.3"
    end
  end
end
