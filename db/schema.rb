# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_08_193415) do

  create_table "architects", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.integer "company_id"
  end

  create_table "brokers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.integer "company_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.text "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "email"
    t.string "phone_number"
    t.string "current_address"
    t.string "future_address"
    t.string "website"
    t.string "linkedin"
    t.string "instagram"
    t.integer "company_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer "wb_wood_worker_id"
    t.integer "contact_id"
    t.integer "architect_id"
    t.integer "broker_id"
    t.integer "pm_firm_id"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["architect_id"], name: "index_customers_on_architect_id"
    t.index ["broker_id"], name: "index_customers_on_broker_id"
    t.index ["contact_id"], name: "index_customers_on_contact_id"
    t.index ["pm_firm_id"], name: "index_customers_on_pm_firm_id"
    t.index ["wb_wood_worker_id"], name: "index_customers_on_wb_wood_worker_id"
  end

  create_table "pm_firms", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.integer "company_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wbw_workers", force: :cascade do |t|
    t.string "fullname"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
