class Producto < ActiveRecord::Base
  attr_accessible :club_id, :precio_lista, :precio_publico, :stock, :talle_id, :tipo_producto_id, :titularidad_id
  
  belongs_to :tipo_producto
  belongs_to :club
  belongs_to :talle
  belongs_to :titularidad
  
  def to_s
    self.club.to_s + " " +  self.titularidad.to_s + " " + self.talle.to_s 
  end  
  
end
