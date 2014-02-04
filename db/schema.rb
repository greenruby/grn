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

ActiveRecord::Schema.define(version: 20140203233232) do

  create_table "authorizations", force: true do |t|
    t.string   "provider"
    t.string   "username"
    t.string   "uid"
    t.string   "token"
    t.string   "secret"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "authorizations", ["user_id"], name: "index_authorizations_on_user_id"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["name"], name: "index_categories_on_name"

  create_table "editions", force: true do |t|
    t.string   "title"
    t.datetime "pubdate"
    t.string   "edito"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "editions", ["title"], name: "index_editions_on_title", unique: true

  create_table "items", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "description"
    t.date     "pubdate"
    t.integer  "duration"
    t.string   "quantity"
    t.integer  "reporter_id"
    t.integer  "maintag_id"
    t.integer  "edition_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["category_id"], name: "index_items_on_category_id"
  add_index "items", ["edition_id"], name: "index_items_on_edition_id"
  add_index "items", ["maintag_id"], name: "index_items_on_maintag_id"
  add_index "items", ["reporter_id"], name: "index_items_on_reporter_id"

  create_table "tag_items", id: false, force: true do |t|
    t.integer "tag_id"
    t.integer "item_id"
  end

  add_index "tag_items", ["tag_id", "item_id"], name: "index_tag_items_on_tag_id_and_item_id"

  create_table "tags", force: true do |t|
    t.string "name"
    t.string "longname"
    t.string "icon"
  end

  add_index "tags", ["name"], name: "index_tags_on_name"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "country"
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
