class CreatePlatoPedidos < ActiveRecord::Migration
  def change
    create_table :plato_pedidos do |t|
      t.plato :references
      t.pedido :refenreces

      t.timestamps null: false
    end
  end
end
