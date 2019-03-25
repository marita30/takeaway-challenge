require_relative "orden"
require 'twilio-ruby'

class Message 

	def sendMessage(chequiarOrden)
	account_sid = 'ACbb0808e4d35d035f4c9949d2611ed3f3'
	auth_token = 'd75022080831e76d29ce709994e7d436'
	client = Twilio::REST::Client.new(account_sid, auth_token)
	from = '+12027514654' # Your Twilio number
	to = '+50582751777' # Your mobile phone number

	client.messages.create(
		from: from,
		to: to,
		body: chequiarOrden
		)	
	end
end 