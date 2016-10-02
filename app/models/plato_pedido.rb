class PlatoPedido < ActiveRecord::Base
  belongs_to :pedidos
  belongs_to :plato
end
