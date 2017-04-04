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

ActiveRecord::Schema.define(version: 20170402042717) do

  create_table "Bookmarks_Favorites", id: false, force: :cascade do |t|
    t.integer "bookmark_id", null: false
    t.integer "favorite_id", null: false
    t.index ["bookmark_id", "favorite_id"], name: "index_Bookmarks_Favorites_on_bookmark_id_and_favorite_id"
    t.index ["favorite_id", "bookmark_id"], name: "index_Bookmarks_Favorites_on_favorite_id_and_bookmark_id"
  end

  create_table "bookmarks", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "url"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "bookmark_id", default: 1, null: false
    t.integer  "user_id",     default: 1, null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["provider"], name: "index_users_on_provider"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid"], name: "index_users_on_uid"
  end

end
