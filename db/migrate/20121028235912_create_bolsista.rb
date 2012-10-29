class CreateBolsista < ActiveRecord::Migration
  def change
    create_table :bolsista do |t|
      t.string :matricula
      t.string :numeropasta
      t.string :nomebolsista
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :telefoneresidencial
      t.string :telefonecelular
      t.string :email
      t.string :cpf
      t.string :rg
      t.string :situacao
      t.string :nomebanco
      t.string :numeroagencia
      t.string :numeroconta
      t.integer :semestreinicialcurso
      t.string :anoinicialcurso
      t.text :observacao
      t.references :curso

      t.timestamps
    end
    add_index :bolsista, :curso_id
  end
end
