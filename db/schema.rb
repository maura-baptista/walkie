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

ActiveRecord::Schema.define(version: 20180307161709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "walk_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_likes_on_user_id"
    t.index ["walk_id"], name: "index_likes_on_walk_id"
  end

  create_table "points", force: :cascade do |t|
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.text "description"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "walk_id"
    t.string "address"
    t.index ["walk_id"], name: "index_points_on_walk_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.bigint "walk_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reviews_on_user_id"
    t.index ["walk_id"], name: "index_reviews_on_walk_id"
  end

  create_table "user_walks", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "walk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_walks_on_user_id"
    t.index ["walk_id"], name: "index_user_walks_on_walk_id"
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
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "walk_attachments", force: :cascade do |t|
    t.bigint "walk_id"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["walk_id"], name: "index_walk_attachments_on_walk_id"
  end

  create_table "walks", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "location"
    t.string "duration"
    t.string "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_walks_on_category_id"
    t.index ["user_id"], name: "index_walks_on_user_id"
  end

  add_foreign_key "likes", "users"
  add_foreign_key "likes", "walks"
  add_foreign_key "points", "walks"
  add_foreign_key "reviews", "users"
  add_foreign_key "reviews", "walks"
  add_foreign_key "user_walks", "users"
  add_foreign_key "user_walks", "walks"
  add_foreign_key "walk_attachments", "walks"
  add_foreign_key "walks", "categories"
  add_foreign_key "walks", "users"
end
