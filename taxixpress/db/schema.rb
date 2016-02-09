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

ActiveRecord::Schema.define(version: 0) do

  create_table "assignments", primary_key: "id_assignment", force: :cascade do |t|
    t.decimal  "id_taxi",                      precision: 28, null: false
    t.decimal  "id_travel",                    precision: 28, null: false
    t.decimal  "status",                       precision: 1
    t.decimal  "id_user_operator",             precision: 28
    t.decimal  "id_customer",                  precision: 28
    t.string   "username",         limit: 250
    t.datetime "date_create"
    t.datetime "date_update"
  end

  add_index "assignments", ["id_customer"], name: "customers_assignments_fk", using: :btree
  add_index "assignments", ["id_taxi"], name: "taxis_assignments_fk", using: :btree
  add_index "assignments", ["id_travel"], name: "travels_assignments_fk", using: :btree

  create_table "customers", primary_key: "id_customer", force: :cascade do |t|
    t.decimal  "id_user",     precision: 28, null: false
    t.datetime "date_create"
    t.datetime "date_update"
  end

  create_table "rates", primary_key: "id_rate", force: :cascade do |t|
    t.string  "origin",      limit: 100
    t.string  "destination", limit: 100
    t.decimal "amount",                  precision: 28
  end

  create_table "ratings", primary_key: "id_rating", force: :cascade do |t|
    t.decimal  "id_assignment",       precision: 28, null: false
    t.decimal  "value",               precision: 1
    t.datetime "date_create"
    t.datetime "date_update"
    t.decimal  "assignments_id_taxi", precision: 28, null: false
  end

  create_table "taxi_drivers", primary_key: "id_driver", force: :cascade do |t|
    t.decimal  "id_user",     precision: 28, null: false
    t.datetime "date_create"
    t.datetime "date_update"
  end

  create_table "taxis", primary_key: "id_taxi", force: :cascade do |t|
    t.decimal  "type_taxi",    precision: 1
    t.decimal  "number_seats", precision: 28
    t.decimal  "id_driver",    precision: 28, null: false
    t.datetime "date_create"
    t.datetime "date_update"
  end

  add_index "taxis", ["id_driver"], name: "taxi_drivers_taxis_fk", using: :btree

  create_table "travels", primary_key: "id_travel", force: :cascade do |t|
    t.string   "location_start", limit: 250
    t.string   "location_end",   limit: 250
    t.decimal  "type_pay",                   precision: 1
    t.decimal  "cost",                       precision: 28
    t.datetime "date_create"
    t.datetime "date_update"
    t.datetime "booking_time"
  end

  create_table "users", primary_key: "id_user", force: :cascade do |t|
    t.string   "name",        limit: 100,               null: false
    t.string   "last_name",   limit: 120
    t.string   "email",       limit: 150
    t.string   "user",        limit: 8
    t.string   "password",    limit: 20
    t.decimal  "status",                  precision: 1
    t.decimal  "type_user",               precision: 1
    t.datetime "date_create"
    t.datetime "date_update"
  end

  add_foreign_key "assignments", "customers", column: "id_customer", primary_key: "id_customer", name: "customers_assignments_fk"
  add_foreign_key "assignments", "taxis", column: "id_taxi", primary_key: "id_taxi", name: "taxis_assignments_fk"
  add_foreign_key "assignments", "travels", column: "id_travel", primary_key: "id_travel", name: "travels_assignments_fk"
  add_foreign_key "taxis", "taxi_drivers", column: "id_driver", primary_key: "id_driver", name: "taxi_drivers_taxis_fk"
end
