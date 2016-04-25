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

ActiveRecord::Schema.define(version: 20160424203729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "email",                              default: "", null: false
    t.string   "encrypted_password",                 default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 80,               null: false
    t.string   "surname",                limit: 100,              null: false
    t.string   "phone",                  limit: 15,               null: false
  end

  add_index "clients", ["email"], name: "index_clients_on_email", unique: true, using: :btree
  add_index "clients", ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true, using: :btree

  create_table "couriers", force: :cascade do |t|
    t.string   "name",       limit: 50,  null: false
    t.string   "precinct",   limit: 250, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "dispatcher_offices", force: :cascade do |t|
    t.string   "name",         limit: 100, null: false
    t.string   "city",         limit: 50,  null: false
    t.string   "street",       limit: 50,  null: false
    t.string   "house_number", limit: 10,  null: false
    t.string   "local_number", limit: 10
    t.string   "postcode",     limit: 10,  null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "order_number",         limit: 16, null: false
    t.string   "status",               limit: 80, null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "warehouse_id"
    t.integer  "dispatcher_office_id"
    t.integer  "courier_id"
    t.integer  "client_id"
  end

  add_index "orders", ["order_number"], name: "index_orders_on_order_number", using: :btree

  create_table "packages", force: :cascade do |t|
    t.float    "weight",                           null: false
    t.float    "size_X",                           null: false
    t.float    "size_Y",                           null: false
    t.float    "size_Z",                           null: false
    t.string   "name_of_recipient",     limit: 50, null: false
    t.string   "surname_of_recipient",  limit: 50, null: false
    t.string   "city_delivery",         limit: 50, null: false
    t.string   "street_delivery",       limit: 50, null: false
    t.string   "house_number_delivery", limit: 10, null: false
    t.string   "local_number_delivery", limit: 10
    t.string   "postcode_delivery",     limit: 10, null: false
    t.string   "city_sender",           limit: 50, null: false
    t.string   "street_sender",         limit: 50, null: false
    t.string   "house_number_sender",   limit: 10, null: false
    t.string   "local_number_sender",   limit: 10
    t.string   "postcode_sender",       limit: 10, null: false
    t.string   "phone_delivery",        limit: 15, null: false
    t.string   "phone_sender",          limit: 15, null: false
    t.float    "cost",                             null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "order_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                              default: "",    null: false
    t.string   "encrypted_password",                 default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "name",                   limit: 50,                  null: false
    t.string   "surname",                limit: 50,                  null: false
    t.date     "birth_date",                                         null: false
    t.string   "position",               limit: 100,                 null: false
    t.boolean  "is_admin",                           default: false, null: false
    t.boolean  "is_dispather"
    t.boolean  "is_courier"
    t.boolean  "is_warehouse"
    t.integer  "warehouse_id"
    t.integer  "dispatcher_office_id"
    t.integer  "courier_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "warehouses", force: :cascade do |t|
    t.string   "name",         limit: 50, null: false
    t.string   "city",         limit: 50, null: false
    t.string   "street",       limit: 50, null: false
    t.string   "house_number", limit: 10, null: false
    t.string   "local_number", limit: 10
    t.string   "postcode",     limit: 10, null: false
    t.integer  "capacity",                null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
