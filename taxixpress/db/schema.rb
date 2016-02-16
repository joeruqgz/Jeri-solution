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

ActiveRecord::Schema.define(version: 20160216030057) do

  create_table "assignments", force: :cascade do |t|
    t.integer  "id_assignment",    limit: 4
    t.integer  "id_taxi",          limit: 4
    t.integer  "id_travel",        limit: 4
    t.integer  "status",           limit: 4
    t.integer  "id_user_operator", limit: 4
    t.integer  "id_customer",      limit: 4
    t.string   "username",         limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer  "id_customer", limit: 4
    t.integer  "id_user",     limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "rates", force: :cascade do |t|
    t.integer  "id_rate",     limit: 4
    t.string   "origin",      limit: 255
    t.string   "destination", limit: 255
    t.decimal  "amount",                  precision: 10
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "id_rating",     limit: 4
    t.integer  "id_assignment", limit: 4
    t.integer  "value",         limit: 4
    t.string   "comment",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "taxi_drivers", force: :cascade do |t|
    t.integer  "id_driver",  limit: 4
    t.integer  "id_user",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "taxis", force: :cascade do |t|
    t.integer  "id_taxi",      limit: 4
    t.integer  "type_taxi",    limit: 4
    t.integer  "number_seats", limit: 4
    t.integer  "id_driver",    limit: 4
    t.integer  "status",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "travels", force: :cascade do |t|
    t.integer  "id_travel",          limit: 4
    t.string   "location_start",     limit: 255
    t.string   "des_location_start", limit: 255
    t.string   "location_end",       limit: 255
    t.string   "des_location_end",   limit: 255
    t.integer  "type_pay",           limit: 4
    t.decimal  "cost",                           precision: 10
    t.datetime "booking_time"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "id_user",                limit: 4
    t.string   "name",                   limit: 255
    t.string   "last_name",              limit: 255
    t.string   "email",                  limit: 255
    t.string   "name_user",              limit: 255
    t.string   "password",               limit: 255
    t.integer  "status",                 limit: 4
    t.integer  "type_user",              limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
