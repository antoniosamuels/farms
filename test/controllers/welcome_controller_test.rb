require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get store" do
    get :store
    assert_response :success
  end

end
