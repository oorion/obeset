require 'test_helper'

class SchoolsControllerTest < ActionController::TestCase
  test "can pass list of all schools to index view" do
    VCR.use_cassette("schoolist_index") do
      get :index
      assert_includes response.body, "16.3"
    end
  end

  test "can pass school to show view" do
    VCR.use_cassette("schoolist_show") do
      get :show, id: 4
      assigns @school
      assert_equal 200, response.status
    end
  end
end
