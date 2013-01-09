class Club < ActiveRecord::Base
  attr_accessible :nombre
  
  has_many :producto
  
  def to_s
    self.nombre
  end
  
end
