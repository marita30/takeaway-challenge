require "platos"
describe Plato do
	let(:platos) { platos = {'carne asada with tajadas' => 100, 
				'tajadas con queso' => 55,
				'Maduro con queso' => 60,
				'pollo con tajadas' => 110,
				'cerdo con tajadas' => 100
			} }

	describe '#list_platos' do
		it 'list of platos with price' do
			orden = Plato.new(platos)
			expect(orden.list_platos).to eq (platos)
		end	
	end		
end
