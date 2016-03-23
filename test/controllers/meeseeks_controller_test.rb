require 'test_helper'

class MeeseeksControllerTest < ActionController::TestCase
  setup do
    @meeseek = meeseeks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meeseeks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meeseek" do
    assert_difference('Meeseek.count') do
      post :create, meeseek: { address: @meeseek.address, latitude: @meeseek.latitude, longitude: @meeseek.longitude, name: @meeseek.name }
    end

    assert_redirected_to meeseek_path(assigns(:meeseek))
  end

  test "should show meeseek" do
    get :show, id: @meeseek
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meeseek
    assert_response :success
  end

  test "should update meeseek" do
    patch :update, id: @meeseek, meeseek: { address: @meeseek.address, latitude: @meeseek.latitude, longitude: @meeseek.longitude, name: @meeseek.name }
    assert_redirected_to meeseek_path(assigns(:meeseek))
  end

  test "should destroy meeseek" do
    assert_difference('Meeseek.count', -1) do
      delete :destroy, id: @meeseek
    end

    assert_redirected_to meeseeks_path
  end
end
