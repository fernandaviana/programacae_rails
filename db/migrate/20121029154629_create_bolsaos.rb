class CreateBolsaos < ActiveRecord::Migration
  def change
    create_table :bolsaos do |t|
      t.string :dataentrada
      t.string :horarioatuacao
      t.string :datasaida
      t.string :campo
      t.string :motivo
      t.string :bolsadicional
      t.references :bolsistao
      t.references :setor

      t.timestamps
    end
    add_index :bolsaos, :bolsistao_id
    add_index :bolsaos, :setor_id
  end
end
