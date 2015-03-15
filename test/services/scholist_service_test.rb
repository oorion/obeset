class SchoolistServiceTest < Minitest::Test
  def test_can_create_new_instance_of_service
    assert_equal SchoolistService.service.class, Faraday::Connection
  end
end
