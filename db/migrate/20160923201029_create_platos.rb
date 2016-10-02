class CreatePlatos < ActiveRecord::Migration
  def change
    create_table :platos do |t|
      t.integer :precio
      t.string :nombre
      t.integer :cantidad
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
