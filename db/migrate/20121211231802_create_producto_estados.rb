class CreateProductoEstados < ActiveRecord::Migration
  def change
    create_table :producto_estados do |t|
      t.integer :producto_id
      t.integer :estado_id

      t.timestamps
    end
  end
end
