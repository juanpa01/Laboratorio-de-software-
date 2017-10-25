require 'rails_helper'

RSpec.describe User, type: :model do

	#------------------ Pruebas para usuarios --------------------#
	before(:all) do
		@user = User.new(nombre: "Anderson", telefono: 31211212, direccion: "Mz 17 c 32", ciudad: "Pereira")
	end

	it "Deberia tener un nombre concordante" do
		expect(@user.nombre).to eq("Anderson")
	end

	it "Deberia tener un telefono erroneo" do
		expect(@user.telefono).not_to eq(3206155724)
	end

	it "La direccion deberia existir" do
		expect(@user.direccion).not_to be_nil
	end

	it "Ningún campo debería ser nulo" do
		expect(@user.nombre).not_to be_nil
		expect(@user.telefono).not_to be_nil
		expect(@user.direccion).not_to be_nil
		expect(@user.ciudad).not_to be_nil
	end
	#-----------------------------------------------------------------#
end