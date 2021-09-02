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

ActiveRecord::Schema.define(version: 2021_09_02_093717) do

  create_table "allplans", force: :cascade do |t|
    t.integer "dec_dateid"
    t.string "dec_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "playeat"
  end

  create_table "days", force: :cascade do |t|
    t.integer "allplan_id"
    t.integer "month"
    t.integer "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allplan_id"], name: "index_days_on_allplan_id"
  end

  create_table "decdates", force: :cascade do |t|
    t.integer "allplan_id"
    t.integer "user_id"
    t.integer "dayid"
    t.integer "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allplan_id"], name: "index_decdates_on_allplan_id"
    t.index ["user_id"], name: "index_decdates_on_user_id"
  end

  create_table "result_todos", force: :cascade do |t|
    t.integer "allplan_id"
    t.string "decdo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["allplan_id"], name: "index_result_todos_on_allplan_id"
  end

  create_table "todopages", force: :cascade do |t|
    t.integer "allplan_id"
    t.text "task"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["allplan_id"], name: "index_todopages_on_allplan_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "allplan_id"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allplan_id"], name: "index_users_on_allplan_id"
  end

  add_foreign_key "days", "allplans"
  add_foreign_key "decdates", "allplans"
  add_foreign_key "decdates", "users"
  add_foreign_key "result_todos", "allplans"
  add_foreign_key "todopages", "allplans"
  add_foreign_key "users", "allplans"
end
