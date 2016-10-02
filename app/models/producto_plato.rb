class ProductoPlato < ActiveRecord::Base
  belongs_to :producto
  belongs_to :plato
end
