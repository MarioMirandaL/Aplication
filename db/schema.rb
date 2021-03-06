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

ActiveRecord::Schema.define(version: 20160923204347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "telefono"
    t.date     "fechanac"
    t.text     "observaciones"
    t.string   "rut"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "compras", force: :cascade do |t|
    t.integer  "producto_id"
    t.integer  "distribuidor_id"
    t.date     "fecha_compra"
    t.date     "fecha_entrega"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "compras", ["distribuidor_id"], name: "index_compras_on_distribuidor_id", using: :btree
  add_index "compras", ["producto_id"], name: "index_compras_on_producto_id", using: :btree

  create_table "distribuidors", force: :cascade do |t|
    t.string   "Nombre"
    t.string   "razonsocial"
    t.string   "Rut"
    t.string   "Mail"
    t.string   "Telefono"
    t.string   "Ubicacion"
    t.text     "Descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "productos"
  end

  create_table "empleados", force: :cascade do |t|
    t.text     "name"
    t.integer  "age"
    t.string   "rut"
    t.integer  "sueldo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "email"
    t.string   "telefono"
    t.string   "cargo"
  end

  create_table "pedidos", force: :cascade do |t|
    t.string   "rut"
    t.integer  "mesa"
    t.date     "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plato_pedidos", force: :cascade do |t|
    t.integer  "plato_id"
    t.integer  "pedido_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platos", force: :cascade do |t|
    t.integer  "precio"
    t.string   "nombre"
    t.integer  "cantidad"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "producto_platos", force: :cascade do |t|
    t.integer  "producto_id"
    t.integer  "plato_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "producto_platos", ["plato_id"], name: "index_producto_platos_on_plato_id", using: :btree
  add_index "producto_platos", ["producto_id"], name: "index_producto_platos_on_producto_id", using: :btree

  create_table "productos", force: :cascade do |t|
    t.string   "name"
    t.integer  "cantidad"
    t.integer  "precio"
    t.text     "descripcion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "unidadmedida"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "venta", force: :cascade do |t|
    t.integer  "total"
    t.integer  "iva"
    t.integer  "propina"
    t.date     "fecha"
    t.integer  "pedido_id"
    t.integer  "subtotal"
    t.integer  "numdoc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "compras", "distribuidors"
  add_foreign_key "compras", "productos"
  add_foreign_key "producto_platos", "platos"
end
