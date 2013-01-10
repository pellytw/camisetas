class AgregarImporteAVenta < ActiveRecord::Migration
  def up
    add_column :ventas, :importe, :float
  end

  def down
    remove_column :ventas, :importe
  end
end