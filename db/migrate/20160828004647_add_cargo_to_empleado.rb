class AddCargoToEmpleado < ActiveRecord::Migration
  def change
    add_column :empleados, :cargo, :string
  end
end
