class DetalleCompra < ActiveRecord::Base
  attr_accessible :cantidad, :precio_unitario, :producto_id
end
