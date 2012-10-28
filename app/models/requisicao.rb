class Requisicao < ActiveRecord::Base
  belongs_to :setor
  attr_accessible :assunto, :datarequisicao, :horariobolsista, :nomedebolsista, :quantidadebolsista
end
