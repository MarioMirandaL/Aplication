class AddUnidadmedidaToProducto < ActiveRecord::Migration
  def change
    add_column :productos, :unidadmedida, :string
  end
end
