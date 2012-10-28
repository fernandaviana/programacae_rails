class CreateSetors < ActiveRecord::Migration
  def change
    create_table :setors do |t|
      t.string :nomesetor
      t.string :coordenador
      t.integer :totalsetor
      t.string :emailsetor
      t.string :ramal

      t.timestamps
    end
  end
end
