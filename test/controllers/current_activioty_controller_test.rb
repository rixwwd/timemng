require 'test_helper'

class CurrentActiviotyControllerTest < ActionDispatch::IntegrationTest
  test "should get start" do
    get current_activioty_start_url
    assert_response :success
  end

  test "should get stop" do
    get current_activioty_stop_url
    assert_response :success
  end

end
