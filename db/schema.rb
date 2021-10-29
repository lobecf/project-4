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

ActiveRecord::Schema.define(version: 2021_10_29_152139) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "created_stories", force: :cascade do |t|
    t.string "name"
    t.string "main_character"
    t.string "options_type"
    t.string "settings_type"
    t.string "live_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string "name"
    t.text "body_text"
    t.string "images"
    t.string "gifs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "main_character"
    t.string "options_type"
    t.string "settings_type"
    t.string "live_type"
  end

  create_table "user_created_stories", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.bigint "created_stories_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["created_stories_id"], name: "index_user_created_stories_on_created_stories_id"
    t.index ["users_id"], name: "index_user_created_stories_on_users_id"
  end

  create_table "user_stories", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "story_id", null: false
    t.index ["story_id"], name: "index_user_stories_on_story_id"
    t.index ["user_id"], name: "index_user_stories_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "user_created_stories", "created_stories", column: "created_stories_id"
  add_foreign_key "user_created_stories", "users", column: "users_id"
  add_foreign_key "user_stories", "stories"
  add_foreign_key "user_stories", "users"
end
