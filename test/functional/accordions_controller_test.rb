require 'test_helper'

class AccordionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accordions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accordion" do
    assert_difference('Accordion.count') do
      post :create, :accordion => { }
    end

    assert_redirected_to accordion_path(assigns(:accordion))
  end

  test "should show accordion" do
    get :show, :id => accordions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => accordions(:one).to_param
    assert_response :success
  end

  test "should update accordion" do
    put :update, :id => accordions(:one).to_param, :accordion => { }
    assert_redirected_to accordion_path(assigns(:accordion))
  end

  test "should destroy accordion" do
    assert_difference('Accordion.count', -1) do
      delete :destroy, :id => accordions(:one).to_param
    end

    assert_redirected_to accordions_path
  end
end
