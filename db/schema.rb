# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_01_165722) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commentts", force: :cascade do |t|
    t.string "name"
    t.text "text"
    t.bigint "userr_id", null: false
    t.bigint "postt_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "author"
    t.index ["postt_id"], name: "index_commentts_on_post_id"
    t.index ["userr_id"], name: "index_commentts_on_user_id"
  end

  create_table "likees", force: :cascade do |t|
    t.string "name"
    t.bigint "userr_id", null: false
    t.bigint "postt_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["postt_id"], name: "index_likees_on_post_id"
    t.index ["userr_id"], name: "index_likees_on_user_id"
  end

  create_table "likees", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "postts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "postts", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.integer "commentts_counter"
    t.integer "likee_counter"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "author"
    t.index ["user_id"], name: "index_postts_on_user_id"
  end

  create_table "userrs", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.text "bio"
    t.integer "postts_counter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "commentts", "posts"
  add_foreign_key "commentts", "users"
  add_foreign_key "likees", "posts"
  add_foreign_key "likees", "users"
  add_foreign_key "postts", "users"
end
