require 'test_helper'

class ShippingAreasControllerTest < ActionController::TestCase
  setup do
    @shipping_area = shipping_areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipping_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipping_area" do
    assert_difference('ShippingArea.count') do
      post :create, shipping_area: { cost: @shipping_area.cost, name: @shipping_area.name }
    end

    assert_redirected_to shipping_area_path(assigns(:shipping_area))
  end

  test "should show shipping_area" do
    get :show, id: @shipping_area
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shipping_area
    assert_response :success
  end

  test "should update shipping_area" do
    patch :update, id: @shipping_area, shipping_area: { cost: @shipping_area.cost, name: @shipping_area.name }
    assert_redirected_to shipping_area_path(assigns(:shipping_area))
  end

  test "should destroy shipping_area" do
    assert_difference('ShippingArea.count', -1) do
      delete :destroy, id: @shipping_area
    end

    assert_redirected_to shipping_areas_path
  end
end
