require 'test_helper'

class PredictionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get predictions_index_url
    assert_response :success
  end

end
