#encoding: utf-8

require 'spec_helper.rb'

describe Carro do
	include CarroSpec

	before do
		@carro = Carro.new
	end

	it "não deve ser uma instância de Moto" do
		@carro.should_not be_an_instance_of(Moto)
	end

	it "deveria ser novo" do
		@carro.should be_novo
	end

	it "deveria ter uma comissão de 5% do valor" do
		@carro.preco = 32000

		@carro.calcula_comissao.should be == 1600.0
	end

	it "deveria calcular comissao" do
		@carro.preco = 32000
		@comissao = 1600.0

		lambda {
			@carro.calcula_comissao
		}.should ter_valor(@comissao)
	end
end