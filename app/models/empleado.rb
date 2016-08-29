class Empleado < ActiveRecord::Base

	validates :name, :presence => {message: "No puede estar vacio"} 
	validates :age, :presence => {message: "No puede estar vacio"}
	validates_numericality_of :age, :greater_than => 0
	validates_numericality_of :age, :less_than_or_equal_to => 65
	validates :rut, :presence => {message: "No puede estar vacio"}
	validates :rut, rut: true
    validates :email, :presence => {message: "No puede estar vacio"}
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates :telefono, :presence => {message: "No puede estar vacio"}
    validates :sueldo, :presence => {message: "No puede estar vacio"}
    validates_numericality_of :sueldo, :greater_than_or_equal_to => 250000
    validates_numericality_of :sueldo, :less_than_or_equal_to => 1000000
    validates :cargo, :presence => {message: "No puede estar vacio"}
end
