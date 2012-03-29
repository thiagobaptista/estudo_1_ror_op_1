#encoding: utf-8

require 'spec_helper.rb'

describe Carro do
	include CarroSpec

	before do
		@carro = Carro.new
	end

	it "testando fábrica" do
		celta = Factory.build :carro
		celta.nome.should be == 'Celta'
		celta.descricao.should be == 'Vendo Celta usado, ano 2001'
		celta.preco.should be == 17000

		fox = Factory.build(:carro, :nome => 'Fox', :descricao => 'Vendo Fox seminovo',
			:preco => 30000)
		fox.nome.should be == 'Fox'
		fox.descricao.should be == 'Vendo Fox seminovo'
		fox.preco.should be == 30000
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

#	it "não deve ter uma prioridade menor do que 1" do
#		@carro.prioridade = 0
#		@carro.should have_exactly(1).error_on(:prioridade)
#	end
#
#	it "não deve ter uma prioridade maior do que 10" do
#		@carro.prioridade = 0
#		@carro.should have_exactly(1).error_on(:prioridade)
#	end
#
# 	(1..10).each do |i|
#		it "deve ser válido com uma prioridade #{i}" do
#			@carro.prioridade = i
#			@carro.should be_valid
#		end
# 	end
end