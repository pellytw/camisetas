class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.integer :tipo_producto_id
      t.integer :club_id
      t.integer :titularidad_id
      t.integer :talle_id
      t.integer :stock
      t.float :precio_lista
      t.float :precio_publico

      t.timestamps
    end
  end
end
