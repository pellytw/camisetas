require 'test_helper'

class TitularidadsControllerTest < ActionController::TestCase
  setup do
    @titularidad = titularidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:titularidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create titularidad" do
    assert_difference('Titularidad.count') do
      post :create, titularidad: { nombre: @titularidad.nombre }
    end

    assert_redirected_to titularidad_path(assigns(:titularidad))
  end

  test "should show titularidad" do
    get :show, id: @titularidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @titularidad
    assert_response :success
  end

  test "should update titularidad" do
    put :update, id: @titularidad, titularidad: { nombre: @titularidad.nombre }
    assert_redirected_to titularidad_path(assigns(:titularidad))
  end

  test "should destroy titularidad" do
    assert_difference('Titularidad.count', -1) do
      delete :destroy, id: @titularidad
    end

    assert_redirected_to titularidads_path
  end
end
