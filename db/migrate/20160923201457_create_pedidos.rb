class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :rut
      t.integer :mesa
      t.date :fecha

      t.timestamps null: false
    end
  end
end
