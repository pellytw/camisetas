class DetalleVenta < ActiveRecord::Base
  
  attr_accessible :cantidad, :precio_unitario, :producto_id, :venta_id
  
  belongs_to :venta
  belongs_to :producto
  
end
