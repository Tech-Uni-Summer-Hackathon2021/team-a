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

ActiveRecord::Schema.define(version: 2021_08_30_151019) do

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
    t.integer "userid"
    t.integer "dateid"
    t.integer "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "details", force: :cascade do |t|
    t.string "example"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "allplan_id"
  end

  create_table "group_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plan_lists", force: :cascade do |t|
    t.integer "dec_dateid"
    t.string "dec_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planlists", force: :cascade do |t|
    t.integer "dec_dateid"
    t.string "dec_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "allplan_id"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allplan_id"], name: "index_users_on_allplan_id"
  end

end
