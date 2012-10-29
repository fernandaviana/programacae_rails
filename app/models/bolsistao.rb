class Bolsistao < ActiveRecord::Base
  belongs_to :curso
  attr_accessible :curso_id, :anoinicialcurso, :bairro, :cidade, :cpf, :email, :endereco, :estado, :matricula, :nomebanco, :nomebolsista, :numeroagencia, :numeroconta, :numeropasta, :observacao, :rg, :semestreinicialcurso, :situacao, :telefonecelular, :telefoneresidencial
end
