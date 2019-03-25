require_relative "platos"
require_relative "mensaje"
class Orden
	attr_reader :total_platos, :platos, :message, :chequiar_orden

	def initialize(platos = Plato.new, message = Message.new)
		@platos = platos
		@message = message
		@total_platos = {}
	end

	def add(plato, cantidad)
		@total_platos.store(plato, cantidad)
	end


	def chequiar 
		@chequiar_orden = ''
		total = 0
		@total_platos.each do |plato, cantidad|
			@platos.platos.each do |plato_list, price|
				if plato == plato_list
					@chequiar_orden << " #{plato} - #{cantidad} ||"
					total += cantidad * price
				end 
			end
		end

		@chequiar_orden << " your total is #{total} $"
	end
		
end