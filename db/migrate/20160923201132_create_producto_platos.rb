class CreateProductoPlatos < ActiveRecord::Migration
  def change
    create_table :producto_platos do |t|
      t.producto :references
      t.plato :references

      t.timestamps null: false
    end
  end
end
