class CreateProductoPlatos < ActiveRecord::Migration
  def change
    create_table :producto_platos do |t|
      t.references :producto, index: true, foreing_key: true
      t.references :plato, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
