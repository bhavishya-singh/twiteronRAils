require 'test_helper'

class AuthenticationControllerTest < ActionController::TestCase
  test "should get signin-get" do
    get :signin-get
    assert_response :success
  end

  test "should get signup-get" do
    get :signup-get
    assert_response :success
  end

  test "should get signin" do
    get :signin
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

end
