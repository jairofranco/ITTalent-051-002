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

ActiveRecord::Schema.define(version: 2018_07_26_210733) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agendas", force: :cascade do |t|
    t.date "dateAgenda"
    t.text "description"
    t.text "tags"
    t.bigint "public_servants_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["public_servants_id"], name: "index_agendas_on_public_servants_id"
  end

  create_table "budgets", force: :cascade do |t|
    t.float "totalValue"
    t.float "education"
    t.float "security"
    t.float "healt"
    t.float "transport"
    t.float "infraestructure"
    t.float "other"
    t.bigint "cities_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cities_id"], name: "index_budgets_on_cities_id"
  end

  create_table "cities", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.date "eventDate"
    t.text "description"
    t.text "theme"
    t.text "tags"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "public_servants", force: :cascade do |t|
    t.text "name"
    t.text "document"
    t.text "position"
    t.integer "age"
    t.text "period"
    t.integer "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "agendas", "public_servants", column: "public_servants_id"
  add_foreign_key "budgets", "cities", column: "cities_id"
end
