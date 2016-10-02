class CreatePlatoPedidos < ActiveRecord::Migration
  def change
    create_table :plato_pedidos do |t|
      t.references :plato
      t.references :pedido

      t.timestamps null: false
    end
  end
end
