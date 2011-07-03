require 'test_helper'

class StreckesControllerTest < ActionController::TestCase
  setup do
    @strecke = streckes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:streckes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create strecke" do
    assert_difference('Strecke.count') do
      post :create, :strecke => @strecke.attributes
    end

    assert_redirected_to strecke_path(assigns(:strecke))
  end

  test "should show strecke" do
    get :show, :id => @strecke.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @strecke.to_param
    assert_response :success
  end

  test "should update strecke" do
    put :update, :id => @strecke.to_param, :strecke => @strecke.attributes
    assert_redirected_to strecke_path(assigns(:strecke))
  end

  test "should destroy strecke" do
    assert_difference('Strecke.count', -1) do
      delete :destroy, :id => @strecke.to_param
    end

    assert_redirected_to streckes_path
  end
end
