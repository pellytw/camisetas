class Proveedor < ActiveRecord::Base
  attr_accessible :email, :nombre
  
  has_many :detalle_compra
  
  
   def to_s
    self.nombre
  end
  
end
