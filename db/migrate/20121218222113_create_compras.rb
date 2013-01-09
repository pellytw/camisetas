class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.integer :proveedor_id
      t.integer :detalle_compra_id

      t.timestamps
    end
  end
end
