require 'test_helper'

class SchoolTest < ActiveSupport::TestCase
  test "can return list of all school objects" do
    VCR.use_cassette("schoolist_index") do
      schools = School.all
      assert_equal schools.first.overweight_percentage, "16.3"
    end
  end

  test "can return a school object" do
    VCR.use_cassette("schoolist_show") do
      school = School.find("4")
      assert_equal school.overweight_percentage, "16.3"
    end
  end
end
