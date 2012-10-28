class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nomecurso
      t.integer :numeroperiodo

      t.timestamps
    end
  end
end
