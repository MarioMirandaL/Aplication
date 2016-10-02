class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.integer :telefono
      t.date :fechanac
      t.text :observaciones
      t.string :rut

      t.timestamps null: false
    end
  end
end
