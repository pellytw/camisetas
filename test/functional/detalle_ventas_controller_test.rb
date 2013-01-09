require 'test_helper'

class DetalleVentasControllerTest < ActionController::TestCase
  setup do
    @detalle_venta = detalle_ventas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalle_ventas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalle_venta" do
    assert_difference('DetalleVenta.count') do
      post :create, detalle_venta: { cantidad: @detalle_venta.cantidad, precio_unitario: @detalle_venta.precio_unitario, producto_id: @detalle_venta.producto_id, venta_id: @detalle_venta.venta_id }
    end

    assert_redirected_to detalle_venta_path(assigns(:detalle_venta))
  end

  test "should show detalle_venta" do
    get :show, id: @detalle_venta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalle_venta
    assert_response :success
  end

  test "should update detalle_venta" do
    put :update, id: @detalle_venta, detalle_venta: { cantidad: @detalle_venta.cantidad, precio_unitario: @detalle_venta.precio_unitario, producto_id: @detalle_venta.producto_id, venta_id: @detalle_venta.venta_id }
    assert_redirected_to detalle_venta_path(assigns(:detalle_venta))
  end

  test "should destroy detalle_venta" do
    assert_difference('DetalleVenta.count', -1) do
      delete :destroy, id: @detalle_venta
    end

    assert_redirected_to detalle_ventas_path
  end
end
