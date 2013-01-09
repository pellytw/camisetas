class CreateDetalleVentas < ActiveRecord::Migration
  def change
    create_table :detalle_ventas do |t|
      t.integer :venta_id
      t.integer :producto_id
      t.float :precio_unitario
      t.integer :cantidad

      t.timestamps
    end
  end
end
