require 'test_helper'

class DetalleComprasControllerTest < ActionController::TestCase
  setup do
    @detalle_compra = detalle_compras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalle_compras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalle_compra" do
    assert_difference('DetalleCompra.count') do
      post :create, detalle_compra: { cantidad: @detalle_compra.cantidad, precio_unitario: @detalle_compra.precio_unitario, producto_id: @detalle_compra.producto_id }
    end

    assert_redirected_to detalle_compra_path(assigns(:detalle_compra))
  end

  test "should show detalle_compra" do
    get :show, id: @detalle_compra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalle_compra
    assert_response :success
  end

  test "should update detalle_compra" do
    put :update, id: @detalle_compra, detalle_compra: { cantidad: @detalle_compra.cantidad, precio_unitario: @detalle_compra.precio_unitario, producto_id: @detalle_compra.producto_id }
    assert_redirected_to detalle_compra_path(assigns(:detalle_compra))
  end

  test "should destroy detalle_compra" do
    assert_difference('DetalleCompra.count', -1) do
      delete :destroy, id: @detalle_compra
    end

    assert_redirected_to detalle_compras_path
  end
end
