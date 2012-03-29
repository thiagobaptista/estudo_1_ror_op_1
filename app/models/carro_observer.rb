class CarroObserver < ActiveRecord::Observer
	def after_create(carro)
		Notificador.novo_carro(carro, "contato@thiagobaptista.com").deliver
	end
end