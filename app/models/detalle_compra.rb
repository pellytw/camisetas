class DetalleCompra < ActiveRecord::Base
  attr_accessible :cantidad, :compra_id, :precio_unitario, :producto_id
  
  belongs_to :compra
  belongs_to :producto
  
end
