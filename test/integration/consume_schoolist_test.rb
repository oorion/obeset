require 'test_helper'

class ConsumeSchoolistTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  test "it can retrieve list of all schools from schoolist api" do
    VCR.use_cassette("schoolist_index") do
      #response = Net::HTTP.get_response(URI('http://localhost:3000/v1/schools'))
      #parsed_response = JSON.parse(response.body)
      visit '/schools'
      #assert page.has_content?(parsed_response.first["overweight_percentage"])
      assert page.has_content?("16.3")
    end
  end

  test "it can show a specific school pulled from the api" do
    VCR.use_cassette("schoolist_show") do
      visit '/schools/4'
      within('h2') do
        assert page.has_content?("School 4")
      end
      within('.obesity') do
        assert page.has_content?("Overweight Percentage: 16.3")
        assert page.has_content?("Obese Percentage: 15.5")
      end
    end
  end
end
