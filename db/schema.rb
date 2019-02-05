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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_02_05_192515) do

  create_table "bancos", force: :cascade do |t|
    t.string "descricao"
    t.string "codigo"
    t.string "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cidades", force: :cascade do |t|
    t.string "nome"
    t.integer "estado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estado_id"], name: "index_cidades_on_estado_id"
  end

  create_table "cnaes", force: :cascade do |t|
    t.string "codigo"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contas", force: :cascade do |t|
    t.integer "banco_id"
    t.string "conta_numero"
    t.integer "conta_digito"
    t.string "agencia_numero"
    t.integer "agencia_digito"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["banco_id"], name: "index_contas_on_banco_id"
  end

  create_table "contatos", force: :cascade do |t|
    t.integer "tipo"
    t.string "campo"
    t.integer "pessoa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pessoa_id"], name: "index_contatos_on_pessoa_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.integer "unidade_id"
    t.integer "estado_id"
    t.integer "cidade_id"
    t.string "cep"
    t.string "bairro"
    t.string "descricao"
    t.integer "numero"
    t.string "complemento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cidade_id"], name: "index_enderecos_on_cidade_id"
    t.index ["estado_id"], name: "index_enderecos_on_estado_id"
    t.index ["unidade_id"], name: "index_enderecos_on_unidade_id"
  end

  create_table "estados", force: :cascade do |t|
    t.string "nome"
    t.string "sigla"
    t.integer "unidade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unidade_id"], name: "index_estados_on_unidade_id"
  end

  create_table "movimentos", force: :cascade do |t|
    t.date "data_competencia"
    t.string "descricao"
    t.decimal "valor", precision: 18, scale: 2
    t.date "data_vencimento"
    t.integer "conta_id"
    t.integer "pessoa_id"
    t.integer "nota_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conta_id"], name: "index_movimentos_on_conta_id"
    t.index ["nota_id"], name: "index_movimentos_on_nota_id"
    t.index ["pessoa_id"], name: "index_movimentos_on_pessoa_id"
  end

  create_table "notas", force: :cascade do |t|
    t.string "numero"
    t.string "codigo"
    t.date "data"
    t.string "descricao"
    t.string "rps"
    t.string "serie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pessoafisicas", force: :cascade do |t|
    t.string "nome"
    t.integer "sexo"
    t.string "cpf"
    t.string "rg"
    t.date "data_nascimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pessoajuridicas", force: :cascade do |t|
    t.string "nomefantasia"
    t.string "razaosocial"
    t.string "cnpj"
    t.integer "cnae_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cnae_id"], name: "index_pessoajuridicas_on_cnae_id"
  end

  create_table "pessoas", force: :cascade do |t|
    t.integer "tipo"
    t.integer "pessoafisica_id"
    t.integer "pessoajuridica_id"
    t.integer "endereco_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["endereco_id"], name: "index_pessoas_on_endereco_id"
    t.index ["pessoafisica_id"], name: "index_pessoas_on_pessoafisica_id"
    t.index ["pessoajuridica_id"], name: "index_pessoas_on_pessoajuridica_id"
  end

  create_table "unidades", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

end
