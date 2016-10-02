class Distribuidor < ActiveRecord::Base
	validates :Nombre, :presence => {message: "No puede estar vacio"}
	validates :razonsocial, :presence => {message: "No puede estar vacio"}
	validates :Rut, :presence => {message: "No puede estar vacio"}
	validates :Rut, rut: true
	validates :Mail, :presence => {message: "No puede estar vacio"}
	validates_format_of :Mail, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :Telefono, :presence => {message: "No puede estar vacio"}
	validates :Ubicacion, :presence => {message: "No puede estar vacio"}
	validates :Descripcion, :presence => {message: "No puede estar vacio"}
	validates :productos, :presence => {message: "No puede estar vacio"}
	has_many :compras
	has_many :productos, :through => :compras
end
