require 'rails_helper'

RSpec.describe Product, type: :model do
	
	#------------------ Pruebas para productos --------------------#
	before(:all) do
		@product = Product.new(nombre: "Jabón", descripcion: "Jabón para la ropa", marca: "REY", categoria: "Aseo", cantidad: 10, precio: 10000)

	end

	it "Deberia tener un nombre concordante" do
		expect(@product.nombre).to eq("Jabón")
	end

	it "Deberia tener un una descripcion erronea" do
		expect(@product.descripcion).not_to eq("Mi descripcion")
	end

	it "El precio deberia existir" do
		expect(@product.precio).not_to be_nil
	end

	it "Ningún campo debería ser nulo" do
		expect(@product.nombre).not_to be_nil
		expect(@product.descripcion).not_to be_nil
		expect(@product.marca).not_to be_nil
		expect(@product.categoria).not_to be_nil
		expect(@product.cantidad).not_to be_nil
		expect(@product.precio).not_to be_nil
	end
	#-----------------------------------------------------------------#
end