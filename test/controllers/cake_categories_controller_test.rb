require 'test_helper'

class CakeCategoriesControllerTest < ActionController::TestCase
  setup do
    @cake_category = cake_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cake_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cake_category" do
    assert_difference('CakeCategory.count') do
      post :create, cake_category: { category_name: @cake_category.category_name }
    end

    assert_redirected_to cake_category_path(assigns(:cake_category))
  end

  test "should show cake_category" do
    get :show, id: @cake_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cake_category
    assert_response :success
  end

  test "should update cake_category" do
    patch :update, id: @cake_category, cake_category: { category_name: @cake_category.category_name }
    assert_redirected_to cake_category_path(assigns(:cake_category))
  end

  test "should destroy cake_category" do
    assert_difference('CakeCategory.count', -1) do
      delete :destroy, id: @cake_category
    end

    assert_redirected_to cake_categories_path
  end
end
