class AddTelefonoToEmpleado < ActiveRecord::Migration
  def change
    add_column :empleados, :telefono, :string
  end
end
