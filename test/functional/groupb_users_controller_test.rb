require 'test_helper'

class GroupbUsersControllerTest < ActionController::TestCase
  setup do
    @groupb_user = groupb_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groupb_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create groupb_user" do
    assert_difference('GroupbUser.count') do
      post :create, :groupb_user => @groupb_user.attributes
    end

    assert_redirected_to groupb_user_path(assigns(:groupb_user))
  end

  test "should show groupb_user" do
    get :show, :id => @groupb_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @groupb_user.to_param
    assert_response :success
  end

  test "should update groupb_user" do
    put :update, :id => @groupb_user.to_param, :groupb_user => @groupb_user.attributes
    assert_redirected_to groupb_user_path(assigns(:groupb_user))
  end

  test "should destroy groupb_user" do
    assert_difference('GroupbUser.count', -1) do
      delete :destroy, :id => @groupb_user.to_param
    end

    assert_redirected_to groupb_users_path
  end
end
