class Plato
	attr_reader :platos

	def initialize(list_plato = {'carne asada with tajadas' => 100, 
				'tajadas con queso' => 55,
				'Maduro con queso' => 60,
				'pollo con tajadas' => 110,
				'cerdo con tajadas' => 100})
		@platos = list_plato
	end

	def list_platos
	@platos 

	end

end
	