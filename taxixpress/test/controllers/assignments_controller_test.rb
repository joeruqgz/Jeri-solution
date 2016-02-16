require 'test_helper'

class AssignmentsControllerTest < ActionController::TestCase
  setup do
    @assignment = assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assignment" do
    assert_difference('Assignment.count') do
      post :create, assignment: { id_assignment: @assignment.id_assignment, id_customer: @assignment.id_customer, id_taxi: @assignment.id_taxi, id_travel: @assignment.id_travel, id_user_operator: @assignment.id_user_operator, status: @assignment.status, username: @assignment.username }
    end

    assert_redirected_to assignment_path(assigns(:assignment))
  end

  test "should show assignment" do
    get :show, id: @assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assignment
    assert_response :success
  end

  test "should update assignment" do
    patch :update, id: @assignment, assignment: { id_assignment: @assignment.id_assignment, id_customer: @assignment.id_customer, id_taxi: @assignment.id_taxi, id_travel: @assignment.id_travel, id_user_operator: @assignment.id_user_operator, status: @assignment.status, username: @assignment.username }
    assert_redirected_to assignment_path(assigns(:assignment))
  end

  test "should destroy assignment" do
    assert_difference('Assignment.count', -1) do
      delete :destroy, id: @assignment
    end

    assert_redirected_to assignments_path
  end
end
