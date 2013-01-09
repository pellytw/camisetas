class Cliente < ActiveRecord::Base
  attr_accessible :apellido, :dni, :email, :nombre
  
  has_many :detalle_venta
    
  def to_s
    self.apellido + ", " + self.nombre
  end
  
end
