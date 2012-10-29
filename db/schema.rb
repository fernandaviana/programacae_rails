# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121029113414) do

  create_table "bolsistaos", :force => true do |t|
    t.string   "matricula"
    t.string   "numeropasta"
    t.string   "nomebolsista"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "telefoneresidencial"
    t.string   "telefonecelular"
    t.string   "email"
    t.string   "cpf"
    t.string   "rg"
    t.string   "situacao"
    t.string   "nomebanco"
    t.string   "numeroagencia"
    t.string   "numeroconta"
    t.integer  "semestreinicialcurso"
    t.string   "anoinicialcurso"
    t.text     "observacao"
    t.integer  "curso_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "bolsistaos", ["curso_id"], :name => "index_bolsistaos_on_curso_id"

  create_table "cursos", :force => true do |t|
    t.string   "nomecurso"
    t.integer  "numeroperiodo"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "requisicaos", :force => true do |t|
    t.string   "datarequisicao"
    t.integer  "quantidadebolsista"
    t.string   "horariobolsista"
    t.string   "assunto"
    t.string   "nomedebolsista"
    t.integer  "setor_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "requisicaos", ["setor_id"], :name => "index_requisicaos_on_setor_id"

  create_table "setors", :force => true do |t|
    t.string   "nomesetor"
    t.string   "coordenador"
    t.integer  "totalsetor"
    t.string   "emailsetor"
    t.string   "ramal"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
