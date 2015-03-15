require 'test_helper'

class SchoolsControllerTest < ActionController::TestCase
  test "can pass list of all schools to index view" do
    VCR.use_cassette("schoolist_index") do
      get :index
      assert_includes response.body, "16.3"
    end
  end
end
