class Empleado < ActiveRecord::Base

	validates :name, :presence => {message: "No puede estar vacio"} 
	validates :age, :presence => {message: "No puede estar vacio"}
	validates_numericality_of :age, :greater_than => 18
	validates_numericality_of :age, :less_than_or_equal_to => 65
	validates :rut, :presence => {message: "No puede estar vacio"}
	validates :rut, rut: true
    validates :email, :presence => {message: "No puede estar vacio"}
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates :telefono, :presence => {message: "No puede estar vacio"}
    validates :telefono, length: {minimum: 9, maximum: 9, too_short: "muy corto recuerde anteponer 9 para celulares y 22 para red fija", too_long: "muy largo recuerde poner solo '9' para celulares y solo '22' para red fija"}
    validates :sueldo, :presence => {message: "No puede estar vacio"}
    validates_numericality_of :sueldo, :greater_than_or_equal_to => 250000
    validates_numericality_of :sueldo, :less_than_or_equal_to => 1000000
    validates :cargo, :presence => {message: "No puede estar vacio"}
end
