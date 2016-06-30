require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get rosewood" do
    get :rosewood
    assert_response :success
  end

end
