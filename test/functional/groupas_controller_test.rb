require 'test_helper'

class GroupasControllerTest < ActionController::TestCase
  setup do
    @groupa = groupas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groupas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create groupa" do
    assert_difference('Groupa.count') do
      post :create, :groupa => @groupa.attributes
    end

    assert_redirected_to groupa_path(assigns(:groupa))
  end

  test "should show groupa" do
    get :show, :id => @groupa.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @groupa.to_param
    assert_response :success
  end

  test "should update groupa" do
    put :update, :id => @groupa.to_param, :groupa => @groupa.attributes
    assert_redirected_to groupa_path(assigns(:groupa))
  end

  test "should destroy groupa" do
    assert_difference('Groupa.count', -1) do
      delete :destroy, :id => @groupa.to_param
    end

    assert_redirected_to groupas_path
  end
end
