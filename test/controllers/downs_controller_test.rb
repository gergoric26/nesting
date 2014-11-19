require 'test_helper'

class DownsControllerTest < ActionController::TestCase
  setup do
    @down = downs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:downs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create down" do
    assert_difference('Down.count') do
      post :create, down: { number: @down.number }
    end

    assert_redirected_to down_path(assigns(:down))
  end

  test "should show down" do
    get :show, id: @down
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @down
    assert_response :success
  end

  test "should update down" do
    patch :update, id: @down, down: { number: @down.number }
    assert_redirected_to down_path(assigns(:down))
  end

  test "should destroy down" do
    assert_difference('Down.count', -1) do
      delete :destroy, id: @down
    end

    assert_redirected_to downs_path
  end
end
