class CreateVenta < ActiveRecord::Migration
  def change
    create_table :venta do |t|
      t.integer :total
      t.integer :iva
      t.integer :propina
      t.date :fecha
      t.references :pedido
      t.integer :subtotal
      t.integer :numdoc

      t.timestamps null: false
    end
  end
end
