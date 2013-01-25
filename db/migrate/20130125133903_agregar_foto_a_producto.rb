class AgregarFotoAProducto < ActiveRecord::Migration
  def self.up
    add_attachment :productos, :foto
  end

  def self.down
    remove_attachment :productos, :foto
  end
end



