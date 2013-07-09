require 'test_helper'

class SassPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sass_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sass_page" do
    assert_difference('SassPage.count') do
      post :create, :sass_page => { }
    end

    assert_redirected_to sass_page_path(assigns(:sass_page))
  end

  test "should show sass_page" do
    get :show, :id => sass_pages(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => sass_pages(:one).to_param
    assert_response :success
  end

  test "should update sass_page" do
    put :update, :id => sass_pages(:one).to_param, :sass_page => { }
    assert_redirected_to sass_page_path(assigns(:sass_page))
  end

  test "should destroy sass_page" do
    assert_difference('SassPage.count', -1) do
      delete :destroy, :id => sass_pages(:one).to_param
    end

    assert_redirected_to sass_pages_path
  end
end
