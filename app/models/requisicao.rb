class Requisicao < ActiveRecord::Base
  belongs_to :setor
  attr_accessible :setor_id, :assunto, :datarequisicao, :horariobolsista, :nomedebolsista, :quantidadebolsista
end
