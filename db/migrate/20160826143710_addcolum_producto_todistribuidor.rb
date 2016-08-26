class AddcolumProductoTodistribuidor < ActiveRecord::Migration
  def change
  	add_column :distribuidors, :productos, :string 
  end
end
