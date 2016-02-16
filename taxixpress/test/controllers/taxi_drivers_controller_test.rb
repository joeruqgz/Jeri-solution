require 'test_helper'

class TaxiDriversControllerTest < ActionController::TestCase
  setup do
    @taxi_driver = taxi_drivers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taxi_drivers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taxi_driver" do
    assert_difference('TaxiDriver.count') do
      post :create, taxi_driver: { id_driver: @taxi_driver.id_driver, id_user: @taxi_driver.id_user }
    end

    assert_redirected_to taxi_driver_path(assigns(:taxi_driver))
  end

  test "should show taxi_driver" do
    get :show, id: @taxi_driver
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taxi_driver
    assert_response :success
  end

  test "should update taxi_driver" do
    patch :update, id: @taxi_driver, taxi_driver: { id_driver: @taxi_driver.id_driver, id_user: @taxi_driver.id_user }
    assert_redirected_to taxi_driver_path(assigns(:taxi_driver))
  end

  test "should destroy taxi_driver" do
    assert_difference('TaxiDriver.count', -1) do
      delete :destroy, id: @taxi_driver
    end

    assert_redirected_to taxi_drivers_path
  end
end
