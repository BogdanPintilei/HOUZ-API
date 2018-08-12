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

ActiveRecord::Schema.define(version: 2018_08_12_181631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ar_categories", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ar_products", force: :cascade do |t|
    t.string "product_name"
    t.string "product_description"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ar_subcategories_id"
    t.index ["ar_subcategories_id"], name: "index_ar_products_on_ar_subcategories_id"
  end

  create_table "ar_subcategories", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.string "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ar_category_id"
    t.index ["ar_category_id"], name: "index_ar_subcategories_on_ar_category_id"
  end

  create_table "feed_items", force: :cascade do |t|
    t.string "username"
    t.string "item_description"
    t.string "image_url"
    t.string "video_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "item_type"
    t.index ["user_id"], name: "index_feed_items_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "ar_products", "ar_subcategories", column: "ar_subcategories_id"
  add_foreign_key "ar_subcategories", "ar_categories"
  add_foreign_key "feed_items", "users"
end
