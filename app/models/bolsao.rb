class Bolsao < ActiveRecord::Base
  belongs_to :bolsistao
  belongs_to :setor
  attr_accessible :setor_id, :bolsistao_id, :bolsadicional, :campo, :dataentrada, :datasaida, :horarioatuacao, :motivo
end
