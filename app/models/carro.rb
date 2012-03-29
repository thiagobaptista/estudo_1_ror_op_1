class Carro < ActiveRecord::Base
	validates_inclusion_of :prioridade, :in => 1..10

	attr_accessor :prioridade

	def novo?
		true
	end

	def calcula_comissao
		preco * 0.05
	end
end