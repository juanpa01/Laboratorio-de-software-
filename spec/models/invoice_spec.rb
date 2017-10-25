require 'rails_helper'

RSpec.describe Invoice, type: :model do

	#------------------ Pruebas para facturas --------------------#
	before(:all) do
		@invoice = Invoice.new(modo_pago: "Tarjeta", estado: "cancelada")

	end

	it "Deberia tener un modo de pago concordante" do
		expect(@invoice.modo_pago).to eq("Tarjeta")
	end

	it "El estado deberia existir" do
		expect(@invoice.estado).not_to be_nil
	end
	#-----------------------------------------------------------------#
end