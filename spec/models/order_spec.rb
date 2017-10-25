require 'rails_helper'

RSpec.describe Order, type: :model do

	#------------------ Pruebas para las ordenes --------------------#
	before(:all) do
		@order = Order.new(user_id: 1088337733, product_id: 123)

	end

	it "Deberia tener una identificacion de usuario valida" do
		expect(@order.user_id).to eq(1088337733)
	end

	it "Deberia tener un id del producto erroneo" do
		expect(@order.product_id).not_to eq(124)
	end

	it "El id del usuario deberia existir" do
		expect(@order.user_id).not_to be_nil
	end
	#-----------------------------------------------------------------#
end