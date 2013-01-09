require 'test_helper'

class TallesControllerTest < ActionController::TestCase
  setup do
    @talle = talles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:talles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create talle" do
    assert_difference('Talle.count') do
      post :create, talle: { nombre: @talle.nombre }
    end

    assert_redirected_to talle_path(assigns(:talle))
  end

  test "should show talle" do
    get :show, id: @talle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @talle
    assert_response :success
  end

  test "should update talle" do
    put :update, id: @talle, talle: { nombre: @talle.nombre }
    assert_redirected_to talle_path(assigns(:talle))
  end

  test "should destroy talle" do
    assert_difference('Talle.count', -1) do
      delete :destroy, id: @talle
    end

    assert_redirected_to talles_path
  end
end
