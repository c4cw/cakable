require 'test_helper'

class AuthenticationControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get auth" do
    get :auth
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

  test "should get signin" do
    get :signin
    assert_response :success
  end

end
