class Orden
	attr_reader :total_platos

	def initialize(platos)
		@platos = platos
		@total_platos = []
	end

	def add(plato, cantidad)
		@total_platos.push({plato => cantidad})

	end
end