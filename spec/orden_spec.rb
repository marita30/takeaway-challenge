require "orden"
require "platos"
describe Orden do

	platos = Plato.new
	orden = Orden.new(platos)

	describe "#add" do
		it 'seleccionar un numeros de varios platos' do
			orden.add('tajadas con queso', 2)
			orden.add('pollo con tajadas', 1) 
			orden.add('carne asada with tajadas', 2 )
			expect(orden.total_platos).to eq ({"tajadas con queso" =>2, "pollo con tajadas" =>1, "carne asada with tajadas" =>2})	
		end
	end

	describe '#chequiar' do
		it 'verify thah my order is correct and check that he total' do
			orden.add('tajadas con queso', 2)
			orden.add('pollo con tajadas', 1)
			orden.add('carne asada with tajadas', 2)
			expect(orden.chequiar).to eq " tajadas con queso - 2 || pollo con tajadas - 1 || carne asada with tajadas - 2 || your total is 420 $"
		end
	end	
end