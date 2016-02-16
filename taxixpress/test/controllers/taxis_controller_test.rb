require 'test_helper'

class TaxisControllerTest < ActionController::TestCase
  setup do
    @taxi = taxis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taxis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taxi" do
    assert_difference('Taxi.count') do
      post :create, taxi: { id_driver: @taxi.id_driver, id_taxi: @taxi.id_taxi, number_seats: @taxi.number_seats, status: @taxi.status, type_taxi: @taxi.type_taxi }
    end

    assert_redirected_to taxi_path(assigns(:taxi))
  end

  test "should show taxi" do
    get :show, id: @taxi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taxi
    assert_response :success
  end

  test "should update taxi" do
    patch :update, id: @taxi, taxi: { id_driver: @taxi.id_driver, id_taxi: @taxi.id_taxi, number_seats: @taxi.number_seats, status: @taxi.status, type_taxi: @taxi.type_taxi }
    assert_redirected_to taxi_path(assigns(:taxi))
  end

  test "should destroy taxi" do
    assert_difference('Taxi.count', -1) do
      delete :destroy, id: @taxi
    end

    assert_redirected_to taxis_path
  end
end
