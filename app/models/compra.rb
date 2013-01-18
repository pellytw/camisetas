class Compra < ActiveRecord::Base
  attr_accessible :fecha, :importe, :proveedor_id
  
  attr_accessible :detalle_compras_attributes
  
  has_many :detalle_compras, :dependent => :destroy
  accepts_nested_attributes_for :detalle_compras, :allow_destroy => true
  
  belongs_to :proveedor
  
end
