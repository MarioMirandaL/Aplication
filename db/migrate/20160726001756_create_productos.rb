class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :name
      t.integer :cantidad
      t.integer :precio
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
