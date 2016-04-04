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

ActiveRecord::Schema.define(version: 20160404153941) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "couriers", force: :cascade do |t|
    t.string   "precinct",   limit: 250, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "dispatcher_offices", force: :cascade do |t|
    t.string   "name",       limit: 100, null: false
    t.string   "address",    limit: 150, null: false
    t.integer  "capacity",               null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "order_number",                    null: false
    t.string   "status",               limit: 80, null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "package_id"
    t.integer  "warehouse_id"
    t.integer  "dispatcher_office_id"
    t.integer  "courier_id"
  end

  add_index "orders", ["order_number"], name: "index_orders_on_order_number", using: :btree

  create_table "packages", force: :cascade do |t|
    t.float    "weight",                       null: false
    t.float    "size_X",                       null: false
    t.float    "size_Y",                       null: false
    t.float    "size_Z",                       null: false
    t.string   "delivery_address", limit: 150, null: false
    t.string   "sender_address",   limit: 150, null: false
    t.string   "actual_place",     limit: 100, null: false
    t.string   "phone",            limit: 15,  null: false
    t.float    "cost",                         null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "name",            limit: 50,                  null: false
    t.string   "surname",         limit: 50,                  null: false
    t.date     "birth_date",                                  null: false
    t.string   "position",        limit: 100,                 null: false
    t.boolean  "is_admin",                    default: false, null: false
    t.boolean  "is_dispather"
    t.boolean  "is_courier"
    t.boolean  "is_warehouse"
    t.boolean  "is_client"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree

  create_table "warehouses", force: :cascade do |t|
    t.string   "name",       limit: 50,  null: false
    t.string   "address",    limit: 100, null: false
    t.integer  "capacity",               null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
