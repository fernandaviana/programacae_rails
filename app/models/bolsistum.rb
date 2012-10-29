class Bolsistum < ActiveRecord::Base
  belongs_to :curso
  attr_accessible :anoinicialcurso, :bairro, :cidade, :cpf, :email, :endereco, :estado, :matricula, :nomebanco, :nomebolsista, :numeroagencia, :numeroconta, :numeropasta, :observacao, :rg, :semestreinicialcurso, :situacao, :telefonecelular, :telefoneresidencial
end
