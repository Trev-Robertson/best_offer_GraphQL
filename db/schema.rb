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

ActiveRecord::Schema.define(version: 2019_11_30_194358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bids", force: :cascade do |t|
    t.bigint "contractor_id"
    t.bigint "task_id"
    t.integer "price"
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractor_id"], name: "index_bids_on_contractor_id"
    t.index ["task_id"], name: "index_bids_on_task_id"
  end

  create_table "contractors", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "img_url"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contractors_specialties", id: false, force: :cascade do |t|
    t.bigint "contractor_id", null: false
    t.bigint "specialty_id", null: false
    t.index ["contractor_id", "specialty_id"], name: "index_contractors_specialties_on_contractor_id_and_specialty_id"
    t.index ["specialty_id", "contractor_id"], name: "index_contractors_specialties_on_specialty_id_and_contractor_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "contractor_id"
    t.integer "stars"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractor_id"], name: "index_reviews_on_contractor_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "specialty_id"
    t.string "name"
    t.text "description"
    t.boolean "task_done", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["specialty_id"], name: "index_tasks_on_specialty_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "img_url"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bids", "contractors"
  add_foreign_key "bids", "tasks"
  add_foreign_key "reviews", "contractors"
  add_foreign_key "reviews", "users"
  add_foreign_key "tasks", "specialties"
  add_foreign_key "tasks", "users"
end
