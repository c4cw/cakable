require 'test_helper'

class TargetAgeRangesControllerTest < ActionController::TestCase
  setup do
    @target_age_range = target_age_ranges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:target_age_ranges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create target_age_range" do
    assert_difference('TargetAgeRange.count') do
      post :create, target_age_range: { target_age_range: @target_age_range.target_age_range }
    end

    assert_redirected_to target_age_range_path(assigns(:target_age_range))
  end

  test "should show target_age_range" do
    get :show, id: @target_age_range
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @target_age_range
    assert_response :success
  end

  test "should update target_age_range" do
    patch :update, id: @target_age_range, target_age_range: { target_age_range: @target_age_range.target_age_range }
    assert_redirected_to target_age_range_path(assigns(:target_age_range))
  end

  test "should destroy target_age_range" do
    assert_difference('TargetAgeRange.count', -1) do
      delete :destroy, id: @target_age_range
    end

    assert_redirected_to target_age_ranges_path
  end
end
