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

ActiveRecord::Schema.define(version: 20160316095953) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.integer  "company_type_id"
    t.string   "street_address"
    t.string   "city"
    t.string   "country"
    t.string   "phone_number"
    t.string   "email"
    t.integer  "added_by_user"
    t.integer  "edited_by_user"
    t.datetime "added_time"
    t.datetime "edit_time"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "company_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contact_people", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.integer  "company_id"
    t.string   "name"
    t.string   "role"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "restaurant_evaluation_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "restaurant_evaluations", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.integer  "company_id"
    t.integer  "restaurant_evaluation_type_id"
    t.integer  "value"
    t.integer  "user_id"
    t.datetime "evaluation_time"
    t.text     "evaluation_comment"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "restaurant_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.integer  "company_id"
    t.string   "street_address"
    t.string   "city"
    t.string   "country"
    t.string   "phone_number"
    t.string   "email"
    t.string   "server_ip"
    t.integer  "restaurant_type_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.integer  "role_id"
    t.boolean  "currently_employed"
    t.boolean  "true"
    t.boolean  "admin"
    t.boolean  "false"
    t.string   "encrypted_password"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "salt"
  end

end
