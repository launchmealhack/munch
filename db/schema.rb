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

ActiveRecord::Schema.define(version: 20131109084543) do

  create_table "friendships", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "friendships", ["friend_id"], name: "index_friendships_on_friend_id"
  add_index "friendships", ["user_id"], name: "index_friendships_on_user_id"

  create_table "meal_tastes", force: true do |t|
    t.integer  "taste_id"
    t.integer  "meal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "meal_tastes", ["meal_id"], name: "index_meal_tastes_on_meal_id"
  add_index "meal_tastes", ["taste_id"], name: "index_meal_tastes_on_taste_id"

  create_table "meal_types", force: true do |t|
    t.integer  "meal_id"
    t.integer  "type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "meal_types", ["meal_id"], name: "index_meal_types_on_meal_id"
  add_index "meal_types", ["type_id"], name: "index_meal_types_on_type_id"

  create_table "meals", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.float    "score"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "meals", ["restaurant_id"], name: "index_meals_on_restaurant_id"

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.integer  "meal_id"
    t.integer  "user_id"
    t.integer  "vote"
    t.decimal  "price_paid"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "reviews", ["meal_id"], name: "index_reviews_on_meal_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "tastes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
