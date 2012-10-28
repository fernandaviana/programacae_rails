class CreateRequisicaos < ActiveRecord::Migration
  def change
    create_table :requisicaos do |t|
      t.string :datarequisicao
      t.integer :quantidadebolsista
      t.string :horariobolsista
      t.string :assunto
      t.string :nomedebolsista
      t.references :setor

      t.timestamps
    end
    add_index :requisicaos, :setor_id
  end
end
