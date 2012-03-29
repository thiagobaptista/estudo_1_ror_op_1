# encoding: utf-8

require "spec_helper"

describe Notificador do
  describe "email de carro novo" do
  	carro = Factory.create :carro

  	let(:mail) { Notificador.novo_carro(carro, "contato@thiagobaptista.com") }

  	it "cabeçalhos" do
  		mail.subject.should eq(carro.nome)
  		mail.to.should eq(["contato@thiagobaptista.com"])
  		mail.from.should eq(["loja@carros.com"])
  	end

  	it "exibe o corpo da mensagem" do
  		mail.body.encoded.should match("Novo carro cadastrado!")
  		mail.body.encoded.should match(carro.nome)
  		mail.body.encoded.should match(carro.descricao)
  		mail.body.encoded.should match(carro.preco.to_s)
  	end
  end
end
