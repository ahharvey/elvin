require 'test_helper'

class GroupcUsersControllerTest < ActionController::TestCase
  setup do
    @groupc_user = groupc_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groupc_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create groupc_user" do
    assert_difference('GroupcUser.count') do
      post :create, :groupc_user => @groupc_user.attributes
    end

    assert_redirected_to groupc_user_path(assigns(:groupc_user))
  end

  test "should show groupc_user" do
    get :show, :id => @groupc_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @groupc_user.to_param
    assert_response :success
  end

  test "should update groupc_user" do
    put :update, :id => @groupc_user.to_param, :groupc_user => @groupc_user.attributes
    assert_redirected_to groupc_user_path(assigns(:groupc_user))
  end

  test "should destroy groupc_user" do
    assert_difference('GroupcUser.count', -1) do
      delete :destroy, :id => @groupc_user.to_param
    end

    assert_redirected_to groupc_users_path
  end
end
