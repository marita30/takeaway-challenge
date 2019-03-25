class Orden
	attr_reader :total_platos

	def initialize(platos = Plato.new)
		@platos = platos
		@total_platos = {}
	end

	def add(plato, cantidad)
		@total_platos.store(plato, cantidad)
	end


	def chequiar 
		chequiar_orden = ''
		total = 0
		@total_platos.each do |plato, cantidad|
			@platos.platos.each do |plato_list, price|
				if plato == plato_list
					chequiar_orden << " #{plato} - #{cantidad} ||"
					total += cantidad * price
				end 
			end
		end

		chequiar_orden << " your total is #{total} $"
	end
		
end