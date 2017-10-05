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

ActiveRecord::Schema.define(version: 20170912172550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brewpubs", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip", null: false
    t.text "description", null: false
    t.string "website_url", null: false
    t.string "img_url", null: false
    t.string "logo_url", null: false
    t.string "phone_number", null: false
    t.string "contact_email", null: false
    t.integer "user_id", null: false
    t.integer "rating"
    t.string "hours"
    t.string "beers"
    t.boolean "tours"
    t.string "facebook_url"
    t.string "twitter_url"
    t.string "instagram_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "address"], name: "index_brewpubs_on_name_and_address", unique: true
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "brewpub_id", null: false
    t.integer "rating", null: false
    t.text "body"
    t.string "header"
    t.integer "vote_count"
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
    t.boolean "admin", default: false
    t.string "profile_photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "review_id", null: false
    t.integer "user_vote", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
