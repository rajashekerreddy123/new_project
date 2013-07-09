require 'test_helper'

class AttendenceChildrenControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attendence_children)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attendence_child" do
    assert_difference('AttendenceChild.count') do
      post :create, :attendence_child => { }
    end

    assert_redirected_to attendence_child_path(assigns(:attendence_child))
  end

  test "should show attendence_child" do
    get :show, :id => attendence_children(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => attendence_children(:one).to_param
    assert_response :success
  end

  test "should update attendence_child" do
    put :update, :id => attendence_children(:one).to_param, :attendence_child => { }
    assert_redirected_to attendence_child_path(assigns(:attendence_child))
  end

  test "should destroy attendence_child" do
    assert_difference('AttendenceChild.count', -1) do
      delete :destroy, :id => attendence_children(:one).to_param
    end

    assert_redirected_to attendence_children_path
  end
end
