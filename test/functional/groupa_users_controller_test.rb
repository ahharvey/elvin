require 'test_helper'

class GroupaUsersControllerTest < ActionController::TestCase
  setup do
    @groupa_user = groupa_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groupa_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create groupa_user" do
    assert_difference('GroupaUser.count') do
      post :create, :groupa_user => @groupa_user.attributes
    end

    assert_redirected_to groupa_user_path(assigns(:groupa_user))
  end

  test "should show groupa_user" do
    get :show, :id => @groupa_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @groupa_user.to_param
    assert_response :success
  end

  test "should update groupa_user" do
    put :update, :id => @groupa_user.to_param, :groupa_user => @groupa_user.attributes
    assert_redirected_to groupa_user_path(assigns(:groupa_user))
  end

  test "should destroy groupa_user" do
    assert_difference('GroupaUser.count', -1) do
      delete :destroy, :id => @groupa_user.to_param
    end

    assert_redirected_to groupa_users_path
  end
end
