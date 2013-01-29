class AgregarFoto2AProducto < ActiveRecord::Migration
  def self.up
    add_attachment :productos, :foto2
  end

  def self.down
    remove_attachment :productos, :foto2
  end
end
