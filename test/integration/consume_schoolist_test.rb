require 'test_helper'

class ConsumeSchoolistTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  test "it can retrieve list of all schools from schoolist api" do
    SchoolsController.any_instance.stubs(:get_schools_from_schoolist).returns([{overweight_percentage: "16"}])
    visit '/schools'

    assert page.has_content?("16")
    assert page.has_content?("Overweight Percentage")
  end
end
