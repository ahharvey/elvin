require 'test_helper'

class GroupcsControllerTest < ActionController::TestCase
  setup do
    @groupc = groupcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groupcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create groupc" do
    assert_difference('Groupc.count') do
      post :create, :groupc => @groupc.attributes
    end

    assert_redirected_to groupc_path(assigns(:groupc))
  end

  test "should show groupc" do
    get :show, :id => @groupc.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @groupc.to_param
    assert_response :success
  end

  test "should update groupc" do
    put :update, :id => @groupc.to_param, :groupc => @groupc.attributes
    assert_redirected_to groupc_path(assigns(:groupc))
  end

  test "should destroy groupc" do
    assert_difference('Groupc.count', -1) do
      delete :destroy, :id => @groupc.to_param
    end

    assert_redirected_to groupcs_path
  end
end
