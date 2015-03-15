require 'test_helper'

class SchoolTest < ActiveSupport::TestCase
  test "can return list of all school objects" do
    VCR.use_cassette("schoolist_index") do
      schools = School.all
      assert_equal schools.first["overweight_percentage"], "16.3"
    end
  end
end
