class Producto < ActiveRecord::Base
	validates :name, :presence => {message: "No puede estar vacio"}
	validates :cantidad, :presence => {message: "No puede estar vacio"}
	validates_numericality_of :cantidad, :greater_than => 0
	validates :precio, :presence => {message: "No puede estar vacio"}
	validates_numericality_of :precio, :greater_than => 0
	validates :unidadmedida, :presence => {message: "No puede estar vacio"}
	#:if => :unidadmedida_validates
	#def unidadmedida_validates
	#	self.unidadmedida == "kg"
	#end	
end
