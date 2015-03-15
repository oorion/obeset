require 'test_helper'

class ConsumeSchoolistTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  test "it can retrieve list of all schools from schoolist api" do
    skip
    VCR.use_cassette("schoolist_index") do
      #response = Net::HTTP.get_response(URI('http://localhost:3000/v1/schools'))
      #parsed_response = JSON.parse(response.body)
      visit '/schools'

      #assert page.has_content?(parsed_response.first["overweight_percentage"])
      assert page.has_content?("Overweight Percentage")
    end
  end
end
