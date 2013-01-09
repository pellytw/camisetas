require 'test_helper'

class ProductoEstadosControllerTest < ActionController::TestCase
  setup do
    @producto_estado = producto_estados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producto_estados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto_estado" do
    assert_difference('ProductoEstado.count') do
      post :create, producto_estado: { estado_id: @producto_estado.estado_id, producto_id: @producto_estado.producto_id }
    end

    assert_redirected_to producto_estado_path(assigns(:producto_estado))
  end

  test "should show producto_estado" do
    get :show, id: @producto_estado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto_estado
    assert_response :success
  end

  test "should update producto_estado" do
    put :update, id: @producto_estado, producto_estado: { estado_id: @producto_estado.estado_id, producto_id: @producto_estado.producto_id }
    assert_redirected_to producto_estado_path(assigns(:producto_estado))
  end

  test "should destroy producto_estado" do
    assert_difference('ProductoEstado.count', -1) do
      delete :destroy, id: @producto_estado
    end

    assert_redirected_to producto_estados_path
  end
end
