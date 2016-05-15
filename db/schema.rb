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

ActiveRecord::Schema.define(version: 20160515165202) do

  create_table "agreements", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.integer  "user_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "agreement_length"
    t.integer  "term_of_notice_in_months"
    t.integer  "responsible_user_id"
    t.integer  "invoicing_period_length"
    t.integer  "invoicing_payment_time"
    t.integer  "invoicing_date"
    t.boolean  "signed_by_customer"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

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

  create_table "customers", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "device_in_agreements", force: :cascade do |t|
    t.integer  "agreement_id"
    t.integer  "device_id"
    t.boolean  "price_is_leasing"
    t.decimal  "total_price",      precision: 15, scale: 3
    t.decimal  "monthly_price",    precision: 15, scale: 3
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "device_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "warranty_length"
    t.decimal  "total_price",             precision: 15, scale: 3
    t.decimal  "leasing_price_per_month", precision: 15, scale: 3
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  create_table "devices", force: :cascade do |t|
    t.integer  "device_type_id"
    t.datetime "purchase_day"
    t.boolean  "is_leased"
    t.decimal  "full_price",     precision: 15, scale: 3
    t.decimal  "leasing_price",  precision: 15, scale: 3
    t.integer  "leasing_length"
    t.string   "identifier"
    t.boolean  "rental_device"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "other_billing_in_agreements", force: :cascade do |t|
    t.integer  "agreement_id"
    t.text     "description"
    t.decimal  "total_price",   precision: 15, scale: 3
    t.decimal  "monthly_price", precision: 15, scale: 3
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "restaurant_evaluation_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "restaurant_evaluations", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.integer  "restaurant_evaluation_type_id"
    t.integer  "value"
    t.integer  "user_id"
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

  create_table "software_in_agreements", force: :cascade do |t|
    t.integer  "software_id"
    t.integer  "agreement_id"
    t.decimal  "monthly_price", precision: 15, scale: 3
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "softwares", force: :cascade do |t|
    t.string   "name"
    t.boolean  "addon"
    t.decimal  "BEL_price",  precision: 15, scale: 3
    t.decimal  "price",      precision: 15, scale: 3
    t.string   "identifier"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
