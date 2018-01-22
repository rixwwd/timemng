require 'test_helper'

class CurrentActivityControllerTest < ActionDispatch::IntegrationTest
  test "should get start" do
    get current_activity_start_url
    assert_response :success
  end

  test "should get stop" do
    get current_activity_stop_url
    assert_response :success
  end

end
