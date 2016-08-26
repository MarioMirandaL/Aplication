class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.references :producto, index: true, foreign_key: true
      t.references :distribuidor, index: true, foreign_key: true
      t.date :fecha_compra
      t.date :fecha_entrega

      t.timestamps null: false
    end
  end
end
