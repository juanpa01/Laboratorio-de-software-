require 'rails_helper'

RSpec.describe Product, type: :model do
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

end