class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.integer :proveedor_id
      t.date :fecha
      t.float :importe

      t.timestamps
    end
  end
end
