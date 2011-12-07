require 'test_helper'

class UserControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end
