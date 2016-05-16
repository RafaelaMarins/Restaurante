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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160509233531) do

  create_table "cardapios", force: :cascade do |t|
    t.string   "nome"
    t.string   "descricao"
    t.float    "preco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "endereco"
    t.string   "numero"
    t.string   "cidade"
    t.string   "estado"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entregas", force: :cascade do |t|
    t.string   "data"
    t.string   "situacao"
    t.integer  "Pedido_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "entregas", ["Pedido_id"], name: "index_entregas_on_Pedido_id"

  create_table "pedidos", force: :cascade do |t|
    t.date     "data"
    t.string   "situacao"
    t.integer  "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pedidos", ["cliente_id"], name: "index_pedidos_on_cliente_id"

end
