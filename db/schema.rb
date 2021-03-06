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

ActiveRecord::Schema.define(version: 20150612223130) do

  create_table "clients", force: :cascade do |t|
    t.string   "name",              limit: 70, null: false
    t.string   "alias",             limit: 20, null: false
    t.string   "rif_ci",            limit: 12, null: false
    t.integer  "fiscal_address",    limit: 4,  null: false
    t.integer  "comercial_address", limit: 4,  null: false
    t.string   "phone",             limit: 15, null: false
    t.string   "email",             limit: 40, null: false
    t.string   "type_client",       limit: 15, null: false
    t.string   "active",            limit: 14, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "name",              limit: 70, null: false
    t.string   "alias",             limit: 20
    t.string   "rif",               limit: 12, null: false
    t.integer  "fiscal_address",    limit: 4,  null: false
    t.integer  "comercial_address", limit: 4,  null: false
    t.string   "phone",             limit: 15, null: false
    t.string   "email",             limit: 40, null: false
    t.string   "active",            limit: 14, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "username",               limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
