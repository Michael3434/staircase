require 'test_helper'

class SmsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
