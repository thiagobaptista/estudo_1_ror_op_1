class Notificador < ActionMailer::Base
  default from: "loja@carros.com"

  def novo_carro(carro, email)
  	@carro = carro

  	mail(:to => email, :subject => carro.nome)
  end
end