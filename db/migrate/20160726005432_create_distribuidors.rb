class CreateDistribuidors < ActiveRecord::Migration
  def change
    create_table :distribuidors do |t|
      t.string :Nombre
      t.string :razonsocial
      t.string :Rut
      t.string :Mail
      t.string :Telefono
      t.string :Ubicacion
      t.text :Descripcion

      t.timestamps null: false
    end
  end
end
