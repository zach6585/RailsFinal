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

ActiveRecord::Schema.define(version: 2021_02_23_014548) do

  create_table "contacts", force: :cascade do |t|
    t.string "company"
    t.string "name"
    t.string "email"
    t.string "number"
    t.string "title"
    t.string "old_address"
    t.string "new_address"
    t.string "category"
    t.string "broker_name"
    t.string "broker_company"
    t.string "broker_number"
    t.string "broker_email"
    t.string "architect_name"
    t.string "architect_company"
    t.string "architect_number"
    t.string "architect_email"
    t.string "consultant_name"
    t.string "consultant_company"
    t.string "consultant_number"
    t.string "consultant_email"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contacts_workers", id: false, force: :cascade do |t|
    t.integer "worker_id", null: false
    t.integer "contact_id", null: false
    t.index ["contact_id"], name: "index_contacts_workers_on_contact_id"
    t.index ["worker_id"], name: "index_contacts_workers_on_worker_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "workers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.boolean "admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
