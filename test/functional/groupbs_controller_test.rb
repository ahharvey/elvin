require 'test_helper'

class GroupbsControllerTest < ActionController::TestCase
  setup do
    @groupb = groupbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groupbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create groupb" do
    assert_difference('Groupb.count') do
      post :create, :groupb => @groupb.attributes
    end

    assert_redirected_to groupb_path(assigns(:groupb))
  end

  test "should show groupb" do
    get :show, :id => @groupb.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @groupb.to_param
    assert_response :success
  end

  test "should update groupb" do
    put :update, :id => @groupb.to_param, :groupb => @groupb.attributes
    assert_redirected_to groupb_path(assigns(:groupb))
  end

  test "should destroy groupb" do
    assert_difference('Groupb.count', -1) do
      delete :destroy, :id => @groupb.to_param
    end

    assert_redirected_to groupbs_path
  end
end
