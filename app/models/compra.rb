class Compra < ActiveRecord::Base
  belongs_to :producto
  belongs_to :distribuidor
end
