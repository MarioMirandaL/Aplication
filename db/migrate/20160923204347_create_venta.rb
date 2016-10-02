class CreateVenta < ActiveRecord::Migration
  def change
    create_table :venta do |t|
      t.int :total
      t.int :iva
      t.int :propina
      t.date :fecha
      t.pedido :references
      t.int :subtotal
      t.int :numdoc

      t.timestamps null: false
    end
  end
end
