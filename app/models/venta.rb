class Venta < ActiveRecord::Base
  
  attr_accessible :cliente_id, :fecha, :importe
  
  attr_accessible :detalle_ventas_attributes
  
  has_many :detalle_ventas, :dependent => :destroy
  accepts_nested_attributes_for :detalle_ventas, :allow_destroy => true
  
  belongs_to :cliente
     
end
