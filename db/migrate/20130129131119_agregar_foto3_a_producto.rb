class AgregarFoto3AProducto < ActiveRecord::Migration
  def self.up
    add_attachment :productos, :foto3
  end

  def self.down
    remove_attachment :productos, :foto3
  end
end
