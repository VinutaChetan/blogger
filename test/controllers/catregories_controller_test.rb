require 'test_helper'

class CatregoriesControllerTest < ActionController::TestCase
  setup do
    @catregory = catregories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catregories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catregory" do
    assert_difference('Catregory.count') do
      post :create, catregory: { name: @catregory.name }
    end

    assert_redirected_to catregory_path(assigns(:catregory))
  end

  test "should show catregory" do
    get :show, id: @catregory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catregory
    assert_response :success
  end

  test "should update catregory" do
    patch :update, id: @catregory, catregory: { name: @catregory.name }
    assert_redirected_to catregory_path(assigns(:catregory))
  end

  test "should destroy catregory" do
    assert_difference('Catregory.count', -1) do
      delete :destroy, id: @catregory
    end

    assert_redirected_to catregories_path
  end
end
