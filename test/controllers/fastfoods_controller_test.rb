require 'test_helper'

class FastfoodsControllerTest < ActionController::TestCase
  setup do
    @fastfood = fastfoods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fastfoods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fastfood" do
    assert_difference('Fastfood.count') do
      post :create, fastfood: { name: @fastfood.name }
    end

    assert_redirected_to fastfood_path(assigns(:fastfood))
  end

  test "should show fastfood" do
    get :show, id: @fastfood
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fastfood
    assert_response :success
  end

  test "should update fastfood" do
    patch :update, id: @fastfood, fastfood: { name: @fastfood.name }
    assert_redirected_to fastfood_path(assigns(:fastfood))
  end

  test "should destroy fastfood" do
    assert_difference('Fastfood.count', -1) do
      delete :destroy, id: @fastfood
    end

    assert_redirected_to fastfoods_path
  end
end
