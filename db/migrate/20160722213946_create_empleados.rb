class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.text :name
      t.integer :age
      t.string :rut
      t.timestamps null: false
    end
  end
end
