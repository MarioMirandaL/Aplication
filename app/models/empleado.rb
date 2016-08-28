class Empleado < ActiveRecord::Base
	validates :name, :age, :rut, :sueldo, :email, :telefono, :sueldo, :cargo, :presence => {message: "No puede estar vacio"}
end
