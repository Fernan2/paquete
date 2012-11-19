require 'test_helper'

class BultosControllerTest < ActionController::TestCase
  setup do
    @bulto = bultos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bultos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bulto" do
    assert_difference('Bulto.count') do
      post :create, :bulto => @bulto.attributes
    end

    assert_redirected_to bulto_path(assigns(:bulto))
  end

  test "should show bulto" do
    get :show, :id => @bulto.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bulto.to_param
    assert_response :success
  end

  test "should update bulto" do
    put :update, :id => @bulto.to_param, :bulto => @bulto.attributes
    assert_redirected_to bulto_path(assigns(:bulto))
  end

  test "should destroy bulto" do
    assert_difference('Bulto.count', -1) do
      delete :destroy, :id => @bulto.to_param
    end

    assert_redirected_to bultos_path
  end
end
