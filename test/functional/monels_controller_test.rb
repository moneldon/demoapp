require 'test_helper'

class MonelsControllerTest < ActionController::TestCase
  setup do
    @monel = monels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monel" do
    assert_difference('Monel.count') do
      post :create, monel: @monel.attributes
    end

    assert_redirected_to monel_path(assigns(:monel))
  end

  test "should show monel" do
    get :show, id: @monel.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monel.to_param
    assert_response :success
  end

  test "should update monel" do
    put :update, id: @monel.to_param, monel: @monel.attributes
    assert_redirected_to monel_path(assigns(:monel))
  end

  test "should destroy monel" do
    assert_difference('Monel.count', -1) do
      delete :destroy, id: @monel.to_param
    end

    assert_redirected_to monels_path
  end
end
