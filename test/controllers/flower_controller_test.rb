require 'test_helper'

class FlowerControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get flower_create_url
    assert_response :success
  end

end
