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

ActiveRecord::Schema.define(version: 20161023233836) do

  create_table "org_companies", force: :cascade do |t|
    t.string   "name",             limit: 255,   null: false
    t.string   "avatar",           limit: 255
    t.text     "description",      limit: 65535
    t.string   "verification_doc", limit: 255
    t.boolean  "verified",         limit: 1
    t.integer  "typ_fee_id",       limit: 4
    t.integer  "typ_company_id",   limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "org_people", force: :cascade do |t|
    t.integer  "typ_position_id",        limit: 4
    t.integer  "org_company_id",         limit: 4
    t.string   "first_name",             limit: 255,                null: false
    t.string   "last_name",              limit: 255,                null: false
    t.string   "stripe_publishable_key", limit: 255
    t.string   "stripe_secret_key",      limit: 255
    t.string   "stripe_user_id",         limit: 255
    t.string   "stripe_currency",        limit: 255
    t.string   "stripe_account_type",    limit: 255
    t.text     "stripe_account_status",  limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
  end

  add_index "org_people", ["confirmation_token"], name: "index_org_people_on_confirmation_token", unique: true, using: :btree
  add_index "org_people", ["email"], name: "index_org_people_on_email", unique: true, using: :btree
  add_index "org_people", ["reset_password_token"], name: "index_org_people_on_reset_password_token", unique: true, using: :btree

end
