class CreatePlatos < ActiveRecord::Migration
  def change
    create_table :platos do |t|
      t.int :precio
      t.string :nombre
      t.int :cantidad
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
