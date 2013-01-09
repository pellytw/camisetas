class CreateDetalleCompras < ActiveRecord::Migration
  def change
    create_table :detalle_compras do |t|
      t.integer :producto_id
      t.integer :cantidad
      t.float :precio_unitario

      t.timestamps
    end
  end
end
